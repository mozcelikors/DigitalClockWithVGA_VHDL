--License:
--	DigitalClockWithFPGA is free software: you can redistribute it and/or modify
--	it under the terms of the GNU General Public License as published by
--	the Free Software Foundation, either version 3 of the License, or
--	(at your option) any later version.
--
--	DigitalClockWithFPGA is distributed in the hope that it will be useful,
--	but WITHOUT ANY WARRANTY; without even the implied warranty of
--	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--	GNU General Public License for more details.
--
--	You should have received a copy of the GNU General Public License
--	along with DigitalClockWithFPGA.  If not, see <http://www.gnu.org/licenses/>.
--
--Description:
--	This software can ported to any FPGA board to display two adjustable digital
--	clocks with adjustable colors. The code was tested on Xilinx Spartan 3E and
--	Altera DE0 boards.
--
--Author: 
--	Mustafa Ozcelikors 
--		thewebblog.net
--		github.com/mozcelikors
--		<mozcelikors@gmail.com>
--	Metin Kundakcioglu
--		<kundakcioglum@gmailc.com>
--		
--Note:
--	This code may contain Turkish commenting.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Displayer is
    Port ( clk : in  STD_LOGIC;
           HS : out  STD_LOGIC;
           VS : out  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR(3 downto 0);
			  G : out  STD_LOGIC_VECTOR(3 downto 0);
			  B : out  STD_LOGIC_VECTOR(3 downto 0);
			  
			  Clock1Region1: in std_logic_vector(6 downto 0);
			  Clock1Region2: in std_logic_vector(6 downto 0);
			  Clock1Region3: in std_logic_vector(6 downto 0);
			  Clock1Region4: in std_logic_vector(6 downto 0);
			  Clock1Region5: in std_logic_vector(6 downto 0);
			  Clock1Region6: in std_logic_vector(6 downto 0);
			  
			  Clock2Region1: in std_logic_vector(6 downto 0);
			  Clock2Region2: in std_logic_vector(6 downto 0);
			  Clock2Region3: in std_logic_vector(6 downto 0);
			  Clock2Region4: in std_logic_vector(6 downto 0);
			  Clock2Region5: in std_logic_vector(6 downto 0);
			  Clock2Region6: in std_logic_vector(6 downto 0);
			  
			  Clock1_R_in : in std_logic_vector(3 downto 0);
			  Clock1_G_in : in std_logic_vector(3 downto 0);
			  Clock1_B_in : in std_logic_vector(3 downto 0);
			  
			  Clock2_R_in : in std_logic_vector(3 downto 0);
			  Clock2_G_in : in std_logic_vector(3 downto 0);
			  Clock2_B_in : in std_logic_vector(3 downto 0)
			  );
end Displayer;

architecture Displayer of Displayer is
  --Region girdileri icin simulasyon sinyallerinin degiskenleri
  type RegionArray is array(1 to 12) of std_logic_vector(6 downto 0);
  signal ClockRegions : RegionArray;
  
  --Bir digiti belli bir pixelde shift ederek tum 12 digiti saglamamiz gerekiyor.
  type HorizShiftArray is array(1 to 12) of integer range 0 to 640;
  constant hshift : HorizShiftArray := (0,96,208,304,416,512,0,96,208,304,416,512); 
  
  type VerticalShiftArray is array(1 to 12) of integer range 0 to 480;
  constant vshift : VerticalShiftArray := (0,0,0,0,0,0,240,240,240,240,240,240); 
  
  type ColorArray is array(1 to 12) of std_logic_vector(3 downto 0);
  signal colorarr_R : ColorArray;
  signal colorarr_G : ColorArray;
  signal colorarr_B : ColorArray;
  
  --digIn:Digit Index
  signal digIn : integer range 1 to 12;
  
  signal pclk: std_logic;
  signal hcntr: integer range 0 to 800;
  signal vcnt : integer range 0 to 530;
  signal clkdiv_cntr : integer := 0;
  signal clknew : std_logic := '0';
  
  signal RGB_cerceve : std_logic_vector(11 downto 0) := x"000";
  signal R_cerceve : std_logic_vector(3 downto 0) := "0000";
  signal G_cerceve : std_logic_vector(3 downto 0) := "0000";
  signal B_cerceve : std_logic_vector(3 downto 0) := "0000";
  
  signal cerceveclk_cnt: integer range 0 to 50000000 :=0;
begin
ClockRegions <= (Clock1Region1,Clock1Region2,Clock1Region3,Clock1Region4,Clock1Region5,Clock1Region6,Clock2Region1,Clock2Region2,Clock2Region3,Clock2Region4,Clock2Region5,Clock2Region6);
colorarr_R <= (Clock1_R_in,Clock1_R_in,Clock1_R_in,Clock1_R_in,Clock1_R_in,Clock1_R_in,Clock2_R_in,Clock2_R_in,Clock2_R_in,Clock2_R_in,Clock2_R_in,Clock2_R_in);
colorarr_G <= (Clock1_G_in,Clock1_G_in,Clock1_G_in,Clock1_G_in,Clock1_G_in,Clock1_G_in,Clock2_G_in,Clock2_G_in,Clock2_G_in,Clock2_G_in,Clock2_G_in,Clock2_G_in);
colorarr_B <= (Clock1_B_in,Clock1_B_in,Clock1_B_in,Clock1_B_in,Clock1_B_in,Clock1_B_in,Clock2_B_in,Clock2_B_in,Clock2_B_in,Clock2_B_in,Clock2_B_in,Clock2_B_in);

--digIn sinyali olusturucu
process(clk) is begin
	if(rising_edge(clk)) then
		if(hcntr<97 and vcnt<240)then
			digIn <= 1;
		elsif(hcntr<193 and vcnt<240)then
			digIn <= 2;
		elsif(hcntr<305 and vcnt<240)then
			digIn <= 3;
		elsif(hcntr<401 and vcnt<240)then
			digIn <= 4;
		elsif(hcntr<513 and vcnt<240)then
			digIn <= 5;
		elsif(hcntr<609 and vcnt<240)then
			digIn <= 6;
		elsif(hcntr<97 and vcnt<480)then
			digIn <= 7;
		elsif(hcntr<193 and vcnt<480)then
			digIn <= 8;
		elsif(hcntr<305 and vcnt<480)then
			digIn <= 9;
		elsif(hcntr<401 and vcnt<480)then
			digIn <= 10;
		elsif(hcntr<513 and vcnt<480)then
			digIn <= 11;
		elsif(hcntr<609 and vcnt<480)then
			digIn <= 12;
		else
			digIn <= 12;
		end if;
	end if;
end process;

-- pixel frequency 25 MHz oldugundan 50'yi 2'ye bölüyoruz 
process(clk) is begin
  if(rising_edge(clk)) then
    pclk<=not pclk;
  end if;
end process;  

-- HS-VS sinyallerini üretmek için
process(pclk) is begin
  if(rising_edge(pclk)) then
    if(hcntr=799) then
      hcntr <= 0;
      if(vcnt=520) then
        vcnt<=0;
      else
        vcnt <= vcnt+1;
        if(vcnt=489) then
          VS <='1';
        elsif(vcnt=491) then
          VS <= '0';
        end if;
      end if;
    else
      hcntr <= hcntr+1;
      if(hcntr=655) then
        HS <= '1';
      elsif(hcntr=751) then
        HS <= '0';
      end if;
    end if;
  end if;
end process;

-- Yarim saniyelik clock olusturalim ve iki nokta ustustelerin animasyonu icin kullanalim
process(clk) is begin
	if(rising_edge(clk))then
		if(clkdiv_cntr=25000000)then
			clknew <= not clknew;
			clkdiv_cntr <= 0;
		else
			clkdiv_cntr <= clkdiv_cntr + 1;
		end if;
	end if;
end process;

--Cerceve Rengini Degistiren Process
process(clk) is begin
	if(rising_edge(clk))then
		if(cerceveclk_cnt=1250000)then
			RGB_cerceve <= RGB_cerceve + 1;
			R_cerceve <= (RGB_cerceve(11 downto 8)) and x"f";
			G_cerceve <= (RGB_cerceve(7 downto 4)) and x"f";
			B_cerceve <= (RGB_cerceve(3 downto 0)) and x"f";
			cerceveclk_cnt <= 0;
		else
			cerceveclk_cnt <= cerceveclk_cnt + 1;
		end if;
	end if;
end process;


--Digitleri Gosteren Process
process(clk) is begin
  if(rising_edge(clk)) then
    if(hcntr<640) and (vcnt<480) then
			--1 numarali region---------------------------------------
			if(hcntr>16+hshift(digIn) and hcntr<32+hshift(digIn) and vcnt>48+vshift(digIn) and vcnt<112+vshift(digIn))then
				if(ClockRegions(digIn)(0)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(0)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>32+hshift(digIn) and hcntr<80+hshift(digIn) and vcnt>32+vshift(digIn) and vcnt<48+vshift(digIn))then --2 numarali region---------------------------------------
				if(ClockRegions(digIn)(1)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(1)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>80+hshift(digIn) and hcntr<96+hshift(digIn) and vcnt>48+vshift(digIn) and vcnt<112+vshift(digIn))then --3 numarali region---------------------------------------
				if(ClockRegions(digIn)(2)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(2)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>32+hshift(digIn) and hcntr<80+hshift(digIn) and vcnt>112+vshift(digIn) and vcnt<128+vshift(digIn))then --4 numarali region---------------------------------------
				if(ClockRegions(digIn)(3)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(3)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>16+hshift(digIn) and hcntr<32+hshift(digIn) and vcnt>128+vshift(digIn) and vcnt<192+vshift(digIn))then --5 numarali region---------------------------------------
				if(ClockRegions(digIn)(4)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(4)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>32+hshift(digIn) and hcntr<80+hshift(digIn) and vcnt>192+vshift(digIn) and vcnt<208+vshift(digIn))then --6 numarali region---------------------------------------
				if(ClockRegions(digIn)(5)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(5)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			elsif(hcntr>80+hshift(digIn) and hcntr<96+hshift(digIn) and vcnt>128+vshift(digIn) and vcnt<192+vshift(digIn))then --7 numarali region---------------------------------------
				if(ClockRegions(digIn)(6)='1')then
					B<=colorarr_B(digIn);
					G<=colorarr_G(digIn);
					R<=colorarr_R(digIn);
				elsif(ClockRegions(digIn)(6)='0')then
					B<="0000";
					G<="0000";
					R<="0000";
				end if;
			-- Noktalar
			elsif((hcntr<216 and hcntr>200 and vcnt<88 and vcnt>72) or (hcntr<216 and hcntr>200 and vcnt<168 and vcnt>152) or (hcntr<424 and hcntr>408 and vcnt<88 and vcnt>72) or (hcntr<424 and hcntr>408 and vcnt<168 and vcnt>152) or (hcntr<218 and hcntr>200 and vcnt<328 and vcnt>312) or (hcntr<218 and hcntr>200 and vcnt<408 and vcnt>392) or (hcntr<424 and hcntr>408 and vcnt<328 and vcnt>312) or (hcntr<424 and hcntr>408 and vcnt<408 and vcnt>392))then
					if(clknew='1')then
						B<="1000";
						R<="0011";
						G<="0000";
					else
						B<="0000";
						G<="0000";
						R<="0000";
					end if;
			-- Etraftaki cerceve
			elsif((hcntr<10 and hcntr>1 and vcnt<479 and vcnt>1) or (hcntr<639 and hcntr>630 and vcnt<479 and vcnt>1) or (hcntr<639 and hcntr>0 and vcnt<10 and vcnt>0) or (hcntr<639 and hcntr>0 and vcnt<479 and vcnt>470))then
				R<=R_cerceve;
				G<=G_cerceve;
				B<=B_cerceve;
			else
				B<="0000";
				G<="0000";
				R<="0000";
			end if;

    end if;
  end if;
end process;
end Displayer;

