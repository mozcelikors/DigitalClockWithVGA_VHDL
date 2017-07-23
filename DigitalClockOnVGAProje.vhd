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
use IEEE.NUMERIC_STD.ALL;

entity DigitalClockOnVGAProje is
    Port ( CLOCK_50 : in  STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC;
           VGA_R : out  STD_LOGIC_VECTOR(3 downto 0);
			  VGA_G : out  STD_LOGIC_VECTOR(3 downto 0);
			  VGA_B : out  STD_LOGIC_VECTOR(3 downto 0);
			  KEY : in std_LOGIC_VECTOR(2 downto 0);
			  GPIO_0 : in std_logic_vector(30 downto 0);
			  SW : in std_LOGIC_VECTOR(9 downto 0)
			  );
end entity DigitalClockOnVGAProje;

architecture DigitalClockOnVGAProje of DigitalClockOnVGAProje is
	signal Clock1DigitH1_wire : std_logic_vector(3 downto 0);
	signal Clock1DigitH2_wire : std_logic_vector(3 downto 0);
	signal Clock1DigitM1_wire : std_logic_vector(3 downto 0);
	signal Clock1DigitM2_wire : std_logic_vector(3 downto 0);
	signal Clock1DigitS1_wire : std_logic_vector(3 downto 0);
	signal Clock1DigitS2_wire : std_logic_vector(3 downto 0);
	
	signal Clock2DigitH1_wire : std_logic_vector(3 downto 0);
	signal Clock2DigitH2_wire : std_logic_vector(3 downto 0);
	signal Clock2DigitM1_wire : std_logic_vector(3 downto 0);
	signal Clock2DigitM2_wire : std_logic_vector(3 downto 0);
	signal Clock2DigitS1_wire : std_logic_vector(3 downto 0);
	signal Clock2DigitS2_wire : std_logic_vector(3 downto 0);
	
	signal Clock1AdjustHourButton_wire : std_logic;
	signal Clock1AdjustMinuteButton_wire : std_logic;
	
	signal Clock2AdjustHourButton_wire : std_logic;
	signal Clock2AdjustMinuteButton_wire : std_logic;
	
	signal Clock1Region1_wire : std_logic_vector(6 downto 0);
	signal Clock1Region2_wire : std_logic_vector(6 downto 0);
	signal Clock1Region3_wire : std_logic_vector(6 downto 0);
	signal Clock1Region4_wire : std_logic_vector(6 downto 0);
	signal Clock1Region5_wire : std_logic_vector(6 downto 0);
	signal Clock1Region6_wire : std_logic_vector(6 downto 0);
	
	signal Clock2Region1_wire : std_logic_vector(6 downto 0);
	signal Clock2Region2_wire : std_logic_vector(6 downto 0);
	signal Clock2Region3_wire : std_logic_vector(6 downto 0);
	signal Clock2Region4_wire : std_logic_vector(6 downto 0);
	signal Clock2Region5_wire : std_logic_vector(6 downto 0);
	signal Clock2Region6_wire : std_logic_vector(6 downto 0);
	
	signal ResetClock1_wire : std_logic;	
	signal ResetClock2_wire : std_logic;	
	
	signal ChangeColorButton1_wire : std_logic;
	signal ChangeColorButton2_wire : std_logic;
	
	signal Clock1_R_in_wire : std_logic_vector(3 downto 0);
	signal Clock1_G_in_wire : std_logic_vector(3 downto 0);
	signal Clock1_B_in_wire : std_logic_vector(3 downto 0);
	
	signal Clock2_R_in_wire : std_logic_vector(3 downto 0);
	signal Clock2_G_in_wire : std_logic_vector(3 downto 0);
	signal Clock2_B_in_wire : std_logic_vector(3 downto 0);
	
	signal RotaryCCWOut_wire : std_logic;
	signal RotaryCWOut_wire : std_logic;
	
	component Displayer is
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
	end component;
	
	component RotaryEncoder2Ch is
		Port(
			clk : in std_logic;
			A   : in std_logic;
			B   : in std_logic;
			Q   : out std_logic_vector(9 downto 0);
			
			CCW : out std_logic;
			CW  : out std_logic;
			CHNG: out std_logic --change flag
		);
	end component;
	
	component RegionGenerator is
		Port (
			Digit : in std_logic_vector(3 downto 0);
			Region : out std_logic_vector(6 downto 0)
		);
	end component;
	
	component DigitalClockGenerator is
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
	end component;
	
	component KeyDebouncer is
		Port(
			clk : in std_logic;
			button_in : in std_logic;
			button_out : out std_logic
		);
	end component;
	
	component ColorGenerator is 
		Port (
			ChangeColorButton : in std_logic;
			R_out : out std_logic_vector(3 downto 0);
			G_out : out std_logic_vector(3 downto 0);
			B_out : out std_logic_vector(3 downto 0)
		);
	end component;


begin
	DSP1: entity work.Displayer port map (
		clk => CLOCK_50,
		HS => VGA_HS,
		VS => VGA_VS,
		R => VGA_R,
		G => VGA_G,
		B => VGA_B,
		Clock1Region1 => Clock1Region1_wire,
		Clock1Region2 => Clock1Region2_wire,
		Clock1Region3 => Clock1Region3_wire,
		Clock1Region4 => Clock1Region4_wire,
		Clock1Region5 => Clock1Region5_wire,
		Clock1Region6 => Clock1Region6_wire,
		Clock2Region1 => Clock2Region1_wire,
		Clock2Region2 => Clock2Region2_wire,
		Clock2Region3 => Clock2Region3_wire,
		Clock2Region4 => Clock2Region4_wire,
		Clock2Region5 => Clock2Region5_wire,
		Clock2Region6 => Clock2Region6_wire,
		Clock1_R_in => Clock1_R_in_wire,
		Clock1_G_in => Clock1_G_in_wire,
		Clock1_B_in => CLock1_B_in_wire,
		Clock2_R_in => Clock2_R_in_wire,
		Clock2_G_in => Clock2_G_in_wire,
		Clock2_B_in => CLock2_B_in_wire
	);
	
	RG1: RegionGenerator port map (
		Digit => Clock1DigitH1_wire,
		Region => Clock1Region1_wire
	);
	
	RG2: RegionGenerator port map (
		Digit => Clock1DigitH2_wire,
		Region => Clock1Region2_wire
	);
	
	RG3: RegionGenerator port map (
		Digit => Clock1DigitM1_wire,
		Region => Clock1Region3_wire
	);
	
	RG4: RegionGenerator port map (
		Digit => Clock1DigitM2_wire,
		Region => Clock1Region4_wire
	);
	
	RG5: RegionGenerator port map (
		Digit => Clock1DigitS1_wire,
		Region => Clock1Region5_wire
	);
	
	RG6: RegionGenerator port map (
		Digit => Clock1DigitS2_wire,
		Region => Clock1Region6_wire
	);
	
	RG7: RegionGenerator port map (
		Digit => Clock2DigitH1_wire,
		Region => Clock2Region1_wire
	);
	
	RG8: RegionGenerator port map (
		Digit => Clock2DigitH2_wire,
		Region => Clock2Region2_wire
	);
	
	RG9: RegionGenerator port map (
		Digit => Clock2DigitM1_wire,
		Region => Clock2Region3_wire
	);
	
	RG10: RegionGenerator port map (
		Digit => Clock2DigitM2_wire,
		Region => Clock2Region4_wire
	);
	
	RG11: RegionGenerator port map (
		Digit => Clock2DigitS1_wire,
		Region => Clock2Region5_wire
	);
	
	RG12: RegionGenerator port map (
		Digit => Clock2DigitS2_wire,
		Region => Clock2Region6_wire
	);
	
	RE1: RotaryEncoder2Ch port map (
		clk => CLOCK_50,
		A => GPIO_0(30),
		B => GPIO_0(29),
		CCW => RotaryCCWOut_wire,
		CW  => RotaryCWOut_wire
	);
	
	DCG1: DigitalClockGenerator port map (
		Clock => CLOCK_50,
		Reset => ResetClock1_wire,
		AdjustHourButton => Clock1AdjustHourButton_wire,
		AdjustMinuteButton => Clock1AdjustMinuteButton_wire,
		DigitH1 => Clock1DigitH1_wire,
		DigitH2 => Clock1DigitH2_wire,
		DigitM1 => Clock1DigitM1_wire,
		DigitM2 => Clock1DigitM2_wire,
		DigitS1 => Clock1DigitS1_wire,
		DigitS2 => Clock1DigitS2_wire,
		RotaryCCWOut => RotaryCCWOut_wire,
		RotaryCWOut => RotaryCWOut_wire
	);
	
	DCG2: DigitalClockGenerator port map (
		Clock => CLOCK_50,
		Reset => ResetClock1_wire,
		AdjustHourButton => Clock2AdjustHourButton_wire,
		AdjustMinuteButton => Clock2AdjustMinuteButton_wire,
		DigitH1 => Clock2DigitH1_wire,
		DigitH2 => Clock2DigitH2_wire,
		DigitM1 => Clock2DigitM1_wire,
		DigitM2 => Clock2DigitM2_wire,
		DigitS1 => Clock2DigitS1_wire,
		DigitS2 => Clock2DigitS2_wire,
		RotaryCCWOut => RotaryCCWOut_wire,
		RotaryCWOut => RotaryCWOut_wire
	);
	
	-- KEY 0 RESET
	KD1: KeyDebouncer port map(
		clk => CLOCK_50,
		button_in => KEY(0),
		button_out => ResetClock1_wire
	);
	
	KD2: KeyDebouncer port map(
		clk => CLOCK_50,
		button_in => KEY(2),
		button_out => Clock1AdjustHourButton_wire
	);
	
	KD3: KeyDebouncer port map(
		clk => CLOCK_50,
		button_in => KEY(1),
		button_out => Clock1AdjustMinuteButton_wire
	);
	
	CG1: ColorGenerator port map(
		ChangeColorButton => ChangeColorButton1_wire,
		R_out => Clock1_R_in_wire,
		B_out => Clock1_B_in_wire,
		G_out => Clock1_G_in_wire
	);
	
	CG2: ColorGenerator port map(
		ChangeColorButton => ChangeColorButton2_wire,
		R_out => Clock2_R_in_wire,
		B_out => Clock2_B_in_wire,
		G_out => Clock2_G_in_wire
	);
	
	KD4: KeyDebouncer port map(
		clk => CLOCK_50,
		button_in => SW(1),
		button_out => ChangeColorButton1_wire
	);
	
	KD5: KeyDebouncer port map(
		clk => CLOCK_50,
		button_in => SW(0),
		button_out => ChangeColorButton2_wire
	);
	
	Clock2AdjustHourButton_wire <= '0';
	Clock2AdjustMinuteButton_wire <= '0';
	ResetClock2_wire <= '0';
	
	
end DigitalClockOnVGAProje;