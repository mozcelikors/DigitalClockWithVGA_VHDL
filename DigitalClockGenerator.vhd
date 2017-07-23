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

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity DigitalClockGenerator is
	Port (
		Clock : in std_logic;
		Reset : in std_logic;
		
		AdjustHourButton : in std_logic;
		AdjustMinuteButton : in std_logic;
		
		RotaryCCWOut : in std_logic;
		RotaryCWOut : in std_logic;
		
		DigitH1 : out std_logic_vector(3 downto 0);
		DigitH2 : out std_logic_vector(3 downto 0);
		DigitM1 : out std_logic_vector(3 downto 0);
		DigitM2 : out std_logic_vector(3 downto 0);
		DigitS1 : out std_logic_vector(3 downto 0);
		DigitS2 : out std_logic_vector(3 downto 0)
	);
end entity DigitalClockGenerator;

architecture DigitalClockGenerator of DigitalClockGenerator is
	--Hesaplama ve comparison icin asagidaki sinyalleri kullanacagiz
	signal second : integer range 0 to 59 := 0;
	signal minute : integer range 0 to 59 := 0;
	signal hour : integer range 0 to 23 := 0;

	--Digitleri ayri ayri gostermek icin asagidaki sinyalleri kullanacagiz
	signal seconddigit1 : integer range 0 to 5 := 0;
	signal seconddigit2 : integer range 0 to 9 := 0;
	signal minutedigit1 : integer range 0 to 5 := 0;
	signal minutedigit2 : integer range 0 to 9 := 0;
	signal hourdigit1 : integer range 0 to 2 := 0;
	signal hourdigit2 : integer range 0 to 9 := 0;
	
	signal clock_counter : integer range 0 to 50000000 := 0;
	signal adjusthour_button_state : std_logic := '0'; --state reg (0: Idle, 1: Adjust)
	signal adjustminute_button_state : std_logic := '0'; --state reg (0: Idle, 1: Adjust)
	signal AdjustHourButtonOld: std_logic := '0';--buton sample reg
	signal AdjustMinuteButtonOld: std_logic := '0';--buton sample reg
	signal first_time_flag : std_logic := '1';
	
	signal DigitM1_buf : integer;
	signal DigitM2_buf : integer;
	signal DigitS1_buf : integer;
	signal DigitS2_buf : integer;
	signal DigitH1_buf : integer;
	signal DigitH2_buf : integer;
begin
	
	--Adjust hour butonunun stateini bir registerda tutalim
	process(Clock)is begin
		if(rising_edge(Clock))then
			if(first_time_flag='1')then
				adjusthour_button_state <= '0';
			end if;
			AdjustHourButtonOld <= AdjustHourButton;
			if(AdjustHourButtonOld='0' and AdjustHourButton='1')then --AdjustHourButton rising edge
				if(adjusthour_button_state ='1')then
					adjusthour_button_state <= '0'; --State: Idle(saat calisiyor, ayarlama yok)
				elsif(adjusthour_button_state ='0')then
					adjusthour_button_state <= '1'; --State: AdjustHour
				end if;
			end if;
		end if;
	end process;
	
	--Adjust minute butonunun stateini bir registerda tutalim
	process(Clock)is begin
		if(rising_edge(Clock))then
			if(first_time_flag='1')then
				adjustminute_button_state <= '0';
			end if;
			AdjustMinuteButtonOld <= AdjustMinuteButton;
			if(AdjustMinuteButtonOld='0' and AdjustMinuteButton='1')then --AdjustHourButton rising edge
				if(adjustminute_button_state='1')then
					adjustminute_button_state <= '0'; --State: Idle(saat calisiyor, ayarlama yok)
				elsif(adjustminute_button_state='0')then
					adjustminute_button_state <= '1'; --State: AdjustHour
				end if;
			end if;
		end if;
	end process;
	
	
	process(Clock) is begin
		if(rising_edge(Clock))then
			---ADJUST-START-------------------------------------------------------------------????????????????
			if(adjustminute_button_state='1')then
				if(RotaryCCWOut='1' and RotaryCWOut='0')then
					if(minute<59)then
						minute <= minute + 1;
						if(minutedigit2 = 9)then
							minutedigit2 <= 0;
							minutedigit1 <= minutedigit1 + 1;
						else
							minutedigit2 <= minutedigit2 + 1;
						end if;
					else
						minute <= 0;
						minutedigit1 <= 0;
						minutedigit2 <= 0;
					end if;
				elsif(RotaryCCWOut='0' and RotaryCWOut='1')then
					if(minute>0)then
						minute <= minute - 1;
						if(minutedigit2 = 0)then
							minutedigit2 <= 9;
							minutedigit1 <= minutedigit1 - 1;
						else
							minutedigit2 <= minutedigit2 - 1;
						end if;
					else
						minute <= 0;
						minutedigit1 <= 0;
						minutedigit2 <= 0;
					end if;
				end if;
			end if;
			
			if(adjusthour_button_state='1')then
				if(RotaryCCWOut='1' and RotaryCWOut='0')then
					if(hour<23)then
						hour <= hour + 1;
						if(hourdigit2 = 9)then
							hourdigit2 <= 0;
							hourdigit1 <= hourdigit1 + 1;
						else
							hourdigit2 <= hourdigit2 + 1;
						end if;
					else
						hour <= 0;
						hourdigit1 <= 0;
						hourdigit2 <= 0;
					end if;
				elsif(RotaryCCWOut='0' and RotaryCWOut='1')then
					if(hour>0)then
						hour <= hour - 1;
						if(hourdigit2 = 0)then
							hourdigit2 <= 9;
							hourdigit1 <= hourdigit1 - 1;
						else
							hourdigit2 <= hourdigit2 - 1;
						end if;
					else
						hour <= 0;
						hourdigit1 <= 0;
						hourdigit2 <= 0;
					end if;
				end if;
			end if;
			---ADJUST-FINISH------------------------------------------------------------------
			
			if(Reset='0')then
				second <= 0;
				seconddigit1 <= 0;
				seconddigit2 <= 0;
				
				minute <= 0;
				minutedigit1 <= 0;
				minutedigit2 <= 0;
				
				hour <= 0;
				hourdigit1 <= 0;
				hourdigit2 <= 0;
				
				clock_counter <= 0;
			elsif(clock_counter = 50000000)then
				if(first_time_flag='1')then
					second <= 0;
					seconddigit1 <= 0;
					seconddigit2 <= 0;
					
					minute <= 0;
					minutedigit1 <= 0;
					minutedigit2 <= 0;
					
					hour <= 0;
					hourdigit1 <= 0;
					hourdigit2 <= 0;
					first_time_flag <= '0';
				end if;
				-- Asil saat isleri
				if(second < 59) then
					second <= second + 1;
					if(seconddigit2 = 9)then
						seconddigit2 <= 0;
						seconddigit1 <= seconddigit1 + 1;
					else
						seconddigit2 <= seconddigit2 + 1;
					end if;
				else
					second <= 0;
					seconddigit1 <= 0;
					seconddigit2 <= 0;
					if(minute < 59) then
						minute <= minute + 1;
						if(minutedigit2 = 9)then
							minutedigit2 <= 0;
							minutedigit1 <= minutedigit1 + 1;
						else
							minutedigit2 <= minutedigit2 + 1;
						end if;
					else
						minute <= 0;
						minutedigit1 <= 0;
						minutedigit2 <= 0;
						if (hour < 23) then
							hour <= hour + 1;
							if(hourdigit2 = 9)then
								hourdigit2 <= 0;
								hourdigit1 <= hourdigit1 + 1;
							else
								hourdigit2 <= hourdigit2 + 1;
							end if;
						else
							hour <= 0;
							hourdigit1 <= 0;
							hourdigit2 <= 0;
						end if;
					end if;
				end if;
				clock_counter <= 0;
			else
				clock_counter <= clock_counter + 1;
			end if;
		end if;
	end process;
	
	
	--Saat Ciktisi
	DigitH1_buf <= hourdigit1;--hour / 10;
	DigitH2_buf <= hourdigit2;--hour mod 10;

	--Dakika Ciktisi
	DigitM1_buf <= minutedigit1;--minute / 10;
	DigitM2_buf <= minutedigit2;--minute mod 10;
		
	--Saniye Ciktisi
	DigitS1_buf <= seconddigit1;--second / 10;
	DigitS2_buf <= seconddigit2;--second mod 10;
	
	
	--Saat Ciktisi
	DigitH1 <= std_logic_vector(to_unsigned(DigitH1_buf,DigitH1'length));
	DigitH2 <= std_logic_vector(to_unsigned(DigitH2_buf,DigitH2'length));

	--Dakika Ciktisi
	DigitM1 <= std_logic_vector(to_unsigned(DigitM1_buf,DigitM1'length));
	DigitM2 <= std_logic_vector(to_unsigned(DigitM2_buf,DigitM2'length));
		
	--Saniye Ciktisi
	DigitS1 <= std_logic_vector(to_unsigned(DigitS1_buf,DigitS1'length));
	DigitS2 <= std_logic_vector(to_unsigned(DigitS2_buf,DigitS2'length));
	

end architecture DigitalClockGenerator;