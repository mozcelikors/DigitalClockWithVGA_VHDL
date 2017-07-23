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
*/
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity KeyDebouncer is
	Port(
		clk : in std_logic;
		button_in : in std_logic;
		button_out : out std_logic
	);
end entity KeyDebouncer;

architecture KeyDebouncer of KeyDebouncer is 
signal button_out_buffer : std_logic := '0';
signal samples : std_logic_vector(2 downto 0) := "000";
signal clk_counter : integer := 0;
signal clk5ms : std_logic := '0';
begin
	ClockDivider: process(clk) is begin
		if(rising_edge(clk))then
			clk_counter <= clk_counter + 1;
			if(clk_counter = 125000) then
				clk5ms <= not clk5ms;
				clk_counter <= 0;
			end if;
		end if;
	end process ClockDivider;
	
	TakeSamples: process(clk5ms) is begin
		if(rising_edge(clk5ms))then
			samples <= samples(1 downto 0) & button_in; -- &: Concatenation
		end if;
	end process TakeSamples;
	
	Debouncer: process(samples) is begin
		if(samples="000")then
			button_out_buffer <= '0';
		elsif(samples="111")then
			button_out_buffer <= '1';
		end if;
	end process Debouncer;
	
	button_out <= button_out_buffer;

end KeyDebouncer;