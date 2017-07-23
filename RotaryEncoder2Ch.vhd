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

entity RotaryEncoder2Ch is
	Port(
		clk : in std_logic;
		A   : in std_logic;
		B   : in std_logic;
		Q   : out std_logic_vector(9 downto 0);
		
		CCW : out std_logic;
		CW  : out std_logic;
		CHNG: out std_logic --change flag
	);
end entity RotaryEncoder2Ch;

architecture Behavioral of RotaryEncoder2Ch is
	signal initial_run : integer range 0 to 1 := 0;
	signal A_current : std_logic := '0';
	signal B_current : std_logic := '0';
	signal A_prev : std_logic := '0';
	signal B_prev : std_logic := '0';
	signal CHNG_del : std_logic := '0';
begin
	process(clk)is begin
		if(rising_edge(clk))then
			A_prev <= A_current;
			B_prev <= B_current;
			A_current <= A;
			B_current <= B;
			CHNG <= CHNG_del;
			if(A_current='1' and A_prev='0')then --A rising edge
				if(B='0')then
					--CCW motion
					CCW <= '1';
					CW <= '0';
					CHNG_del <= '1';
				elsif(B='1')then
					--CW motion
					CW <= '1';
					CCW <= '0';
					CHNG_del <= '1';
				end if;
			elsif(B_current='1' and B_prev='0')then --B rising edge
				if(A='1')then
					--CCW motion
					CCW <= '1';
					CW <= '0';
					CHNG_del <= '1';
				elsif(A='0')then
					--CW motion
					CW <= '1';
					CCW <= '0';
					CHNG_del <= '1';
				end if;
			elsif(A_current='0' and A_prev='1')then --A falling edge
				if(B='1')then
					--CCW motion
					CCW <= '1';
					CW <= '0';
					CHNG_del <= '1';
				elsif(B='0')then
					--CW motion
					CW <= '1';
					CCW <= '0';
					CHNG_del <= '1';
				end if;
			elsif(B_current='0' and B_prev='1')then --B falling edge
				if(A='0')then
					--CCW motion
					CCW <= '1';
					CW <= '0';
					CHNG_del <= '1';
				elsif(A='1')then
					--CW motion
					CW <= '1';
					CCW <= '0';
					CHNG_del <= '1';
				end if;
			else
				CW <= '0';
				CCW <= '0';
				CHNG_del <= '0';
			end if;
		end if;
	end process;
end Behavioral;