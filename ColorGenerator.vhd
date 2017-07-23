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

entity ColorGenerator is 
	Port (
		ChangeColorButton : in std_logic;
		R_out : out std_logic_vector(3 downto 0);
		G_out : out std_logic_vector(3 downto 0);
		B_out : out std_logic_vector(3 downto 0)
	);
end entity ColorGenerator;

architecture ColorGenerator of ColorGenerator is
	signal ColorMode: integer range 0 to 5 := 0; --0:Blue 1:Red 2:Green
begin

	process(ColorMode) is begin
		if(ColorMode=0)then
			R_out <= "0000";
			G_out <= "0000";
			B_out <= "1111";
		elsif(ColorMode=1)then
			R_out <= "1111";
			G_out <= "0000";
			B_out <= "0000";
		elsif(ColorMode=2)then
			R_out <= "0000";
			G_out <= "1111";
			B_out <= "0000";
		elsif(ColorMode=3)then
			R_out <= "1111";
			G_out <= "1111";
			B_out <= "0000";
		elsif(ColorMode=4)then
			R_out <= "0000";
			G_out <= "1111";
			B_out <= "1111";
		else
			R_out <= "1111";
			G_out <= "0000";
			B_out <= "1111";
		end if;
	end process;
	
	process(ChangeColorButton) is begin
		if(rising_edge(ChangeColorButton))then
			if(ColorMode<5)then
				ColorMode <= ColorMode + 1;
			else
				ColorMode <= 0;
			end if;
		end if;
	end process;
	
end architecture ColorGenerator;