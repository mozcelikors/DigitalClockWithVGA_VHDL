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

entity RegionGenerator is
	Port (
		Digit : in std_logic_vector(3 downto 0);
		Region : out std_logic_vector(6 downto 0)
	);
end entity RegionGenerator;


--              -----2-----
--             |           |
--             |           |
--             1           3
--             |           |
--             |           |
--              -----4-----
--             |           |
--             |           |
--             5           7
--             |           |
--             |           |      
--              -----6-----
--           Region: 7654321 : 7-bit

architecture RegionGenerator of RegionGenerator is
	
begin
	  with Digit select
		 Region <=
		 "1110111" when x"0",
		 "1000100" when x"1",
		 "0111110" when x"2",
		 "1101110" when x"3",
		 "1001101" when x"4",
		 "1101011" when x"5",
		 "1111011" when x"6",
		 "1000110" when x"7",
		 "1111111" when x"8",
		 "1101111" when x"9",
		 "0000000" when others;

end architecture RegionGenerator;