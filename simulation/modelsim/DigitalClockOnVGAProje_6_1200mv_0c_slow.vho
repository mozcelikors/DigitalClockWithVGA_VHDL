-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/18/2015 16:46:17"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DigitalClockOnVGAProje IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	GPIO_0 : IN std_logic_vector(30 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0)
	);
END DigitalClockOnVGAProje;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[0]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[3]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[4]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[5]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[6]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[8]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[9]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_W13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[22]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[23]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[24]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[25]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[26]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[27]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[28]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[30]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0[29]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DigitalClockOnVGAProje IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL \KD1|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|pclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD3|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD2|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD4|button_out_buffer~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD5|button_out_buffer~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD4|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD5|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|Add8~0_combout\ : std_logic;
SIGNAL \DSP1|Add8~4_combout\ : std_logic;
SIGNAL \DSP1|Add8~6_combout\ : std_logic;
SIGNAL \DSP1|Add12~6_combout\ : std_logic;
SIGNAL \DSP1|Add1~17\ : std_logic;
SIGNAL \DSP1|Add1~18_combout\ : std_logic;
SIGNAL \DSP1|Add0~4_combout\ : std_logic;
SIGNAL \DSP1|Add2~0_combout\ : std_logic;
SIGNAL \DSP1|Add2~6_combout\ : std_logic;
SIGNAL \DSP1|Add2~10_combout\ : std_logic;
SIGNAL \DSP1|Add2~12_combout\ : std_logic;
SIGNAL \DSP1|Add2~26_combout\ : std_logic;
SIGNAL \DSP1|Add2~32_combout\ : std_logic;
SIGNAL \DSP1|Add2~42_combout\ : std_logic;
SIGNAL \DSP1|Add2~48_combout\ : std_logic;
SIGNAL \DCG1|second[0]~6_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[3]~32_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[8]~42_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[10]~46_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[12]~50_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[16]~58_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[18]~62_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[19]~64_combout\ : std_logic;
SIGNAL \DCG1|minute[0]~7_combout\ : std_logic;
SIGNAL \DCG2|minute[3]~13_combout\ : std_logic;
SIGNAL \DCG1|hour[2]~11_combout\ : std_logic;
SIGNAL \DSP1|Add4~4_combout\ : std_logic;
SIGNAL \DSP1|Add4~8_combout\ : std_logic;
SIGNAL \DSP1|Add4~16_combout\ : std_logic;
SIGNAL \DSP1|Add4~20_combout\ : std_logic;
SIGNAL \DSP1|Add4~32_combout\ : std_logic;
SIGNAL \DSP1|Add4~34_combout\ : std_logic;
SIGNAL \DSP1|Add4~36_combout\ : std_logic;
SIGNAL \DSP1|Add4~38_combout\ : std_logic;
SIGNAL \DSP1|Add4~40_combout\ : std_logic;
SIGNAL \KD1|Add0~0_combout\ : std_logic;
SIGNAL \KD1|Add0~1\ : std_logic;
SIGNAL \KD1|Add0~2_combout\ : std_logic;
SIGNAL \KD1|Add0~3\ : std_logic;
SIGNAL \KD1|Add0~4_combout\ : std_logic;
SIGNAL \KD1|Add0~5\ : std_logic;
SIGNAL \KD1|Add0~6_combout\ : std_logic;
SIGNAL \KD1|Add0~7\ : std_logic;
SIGNAL \KD1|Add0~8_combout\ : std_logic;
SIGNAL \KD1|Add0~9\ : std_logic;
SIGNAL \KD1|Add0~10_combout\ : std_logic;
SIGNAL \KD1|Add0~11\ : std_logic;
SIGNAL \KD1|Add0~12_combout\ : std_logic;
SIGNAL \KD1|Add0~13\ : std_logic;
SIGNAL \KD1|Add0~14_combout\ : std_logic;
SIGNAL \KD1|Add0~15\ : std_logic;
SIGNAL \KD1|Add0~16_combout\ : std_logic;
SIGNAL \KD1|Add0~17\ : std_logic;
SIGNAL \KD1|Add0~18_combout\ : std_logic;
SIGNAL \KD1|Add0~19\ : std_logic;
SIGNAL \KD1|Add0~20_combout\ : std_logic;
SIGNAL \KD1|Add0~21\ : std_logic;
SIGNAL \KD1|Add0~22_combout\ : std_logic;
SIGNAL \KD1|Add0~23\ : std_logic;
SIGNAL \KD1|Add0~24_combout\ : std_logic;
SIGNAL \KD1|Add0~25\ : std_logic;
SIGNAL \KD1|Add0~26_combout\ : std_logic;
SIGNAL \KD1|Add0~27\ : std_logic;
SIGNAL \KD1|Add0~28_combout\ : std_logic;
SIGNAL \KD1|Add0~29\ : std_logic;
SIGNAL \KD1|Add0~30_combout\ : std_logic;
SIGNAL \KD1|Add0~31\ : std_logic;
SIGNAL \KD1|Add0~32_combout\ : std_logic;
SIGNAL \KD1|Add0~33\ : std_logic;
SIGNAL \KD1|Add0~34_combout\ : std_logic;
SIGNAL \KD1|Add0~35\ : std_logic;
SIGNAL \KD1|Add0~36_combout\ : std_logic;
SIGNAL \KD1|Add0~37\ : std_logic;
SIGNAL \KD1|Add0~38_combout\ : std_logic;
SIGNAL \KD1|Add0~39\ : std_logic;
SIGNAL \KD1|Add0~40_combout\ : std_logic;
SIGNAL \KD1|Add0~41\ : std_logic;
SIGNAL \KD1|Add0~42_combout\ : std_logic;
SIGNAL \KD1|Add0~43\ : std_logic;
SIGNAL \KD1|Add0~44_combout\ : std_logic;
SIGNAL \KD1|Add0~45\ : std_logic;
SIGNAL \KD1|Add0~46_combout\ : std_logic;
SIGNAL \KD1|Add0~47\ : std_logic;
SIGNAL \KD1|Add0~48_combout\ : std_logic;
SIGNAL \KD1|Add0~49\ : std_logic;
SIGNAL \KD1|Add0~50_combout\ : std_logic;
SIGNAL \KD1|Add0~51\ : std_logic;
SIGNAL \KD1|Add0~52_combout\ : std_logic;
SIGNAL \KD1|Add0~53\ : std_logic;
SIGNAL \KD1|Add0~54_combout\ : std_logic;
SIGNAL \KD1|Add0~55\ : std_logic;
SIGNAL \KD1|Add0~56_combout\ : std_logic;
SIGNAL \KD1|Add0~57\ : std_logic;
SIGNAL \KD1|Add0~58_combout\ : std_logic;
SIGNAL \KD1|Add0~59\ : std_logic;
SIGNAL \KD1|Add0~60_combout\ : std_logic;
SIGNAL \KD1|Add0~61\ : std_logic;
SIGNAL \KD1|Add0~62_combout\ : std_logic;
SIGNAL \DSP1|VS~0_combout\ : std_logic;
SIGNAL \DSP1|Add11~4_combout\ : std_logic;
SIGNAL \DSP1|process_5~11_combout\ : std_logic;
SIGNAL \DSP1|process_5~12_combout\ : std_logic;
SIGNAL \DSP1|process_5~13_combout\ : std_logic;
SIGNAL \DSP1|process_5~14_combout\ : std_logic;
SIGNAL \DSP1|process_5~23_combout\ : std_logic;
SIGNAL \DSP1|process_5~24_combout\ : std_logic;
SIGNAL \DSP1|process_5~25_combout\ : std_logic;
SIGNAL \DSP1|process_5~26_combout\ : std_logic;
SIGNAL \DSP1|Mux5~1_combout\ : std_logic;
SIGNAL \DSP1|Mux5~2_combout\ : std_logic;
SIGNAL \DSP1|R[1]~3_combout\ : std_logic;
SIGNAL \RG6|Mux6~0_combout\ : std_logic;
SIGNAL \RG1|Mux0~0_combout\ : std_logic;
SIGNAL \RG8|Mux6~0_combout\ : std_logic;
SIGNAL \RG2|Mux6~0_combout\ : std_logic;
SIGNAL \DSP1|R[1]~10_combout\ : std_logic;
SIGNAL \DSP1|R[1]~12_combout\ : std_logic;
SIGNAL \DSP1|R[1]~13_combout\ : std_logic;
SIGNAL \DSP1|R[1]~17_combout\ : std_logic;
SIGNAL \DSP1|R[1]~18_combout\ : std_logic;
SIGNAL \RG6|Mux3~0_combout\ : std_logic;
SIGNAL \RG4|Mux3~0_combout\ : std_logic;
SIGNAL \RG8|Mux3~0_combout\ : std_logic;
SIGNAL \RG2|Mux3~0_combout\ : std_logic;
SIGNAL \DSP1|Mux3~0_combout\ : std_logic;
SIGNAL \RG10|Mux3~0_combout\ : std_logic;
SIGNAL \DSP1|Mux3~1_combout\ : std_logic;
SIGNAL \DSP1|Mux3~2_combout\ : std_logic;
SIGNAL \DSP1|Mux3~3_combout\ : std_logic;
SIGNAL \DSP1|R[1]~19_combout\ : std_logic;
SIGNAL \DSP1|R[1]~20_combout\ : std_logic;
SIGNAL \DSP1|R[1]~21_combout\ : std_logic;
SIGNAL \RG4|Mux5~0_combout\ : std_logic;
SIGNAL \RG2|Mux5~0_combout\ : std_logic;
SIGNAL \RG7|Mux1~0_combout\ : std_logic;
SIGNAL \RG4|Mux4~0_combout\ : std_logic;
SIGNAL \RG6|Mux4~0_combout\ : std_logic;
SIGNAL \RG6|Mux0~0_combout\ : std_logic;
SIGNAL \RG4|Mux0~0_combout\ : std_logic;
SIGNAL \RG9|Mux0~0_combout\ : std_logic;
SIGNAL \RG3|Mux0~0_combout\ : std_logic;
SIGNAL \RG1|Mux0~1_combout\ : std_logic;
SIGNAL \DSP1|Mux25~3_combout\ : std_logic;
SIGNAL \RG5|Mux0~0_combout\ : std_logic;
SIGNAL \DSP1|Mux25~4_combout\ : std_logic;
SIGNAL \RG8|Mux0~0_combout\ : std_logic;
SIGNAL \RG10|Mux0~0_combout\ : std_logic;
SIGNAL \DSP1|Mux25~5_combout\ : std_logic;
SIGNAL \RG2|Mux0~0_combout\ : std_logic;
SIGNAL \DSP1|Mux25~6_combout\ : std_logic;
SIGNAL \DSP1|Mux25~7_combout\ : std_logic;
SIGNAL \DSP1|Mux25~8_combout\ : std_logic;
SIGNAL \DSP1|Mux25~9_combout\ : std_logic;
SIGNAL \DSP1|Mux25~10_combout\ : std_logic;
SIGNAL \RG4|Mux1~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~30_combout\ : std_logic;
SIGNAL \DSP1|process_5~32_combout\ : std_logic;
SIGNAL \DSP1|process_5~33_combout\ : std_logic;
SIGNAL \DSP1|process_5~34_combout\ : std_logic;
SIGNAL \DSP1|LessThan47~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan40~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~35_combout\ : std_logic;
SIGNAL \DSP1|process_5~36_combout\ : std_logic;
SIGNAL \DSP1|process_5~38_combout\ : std_logic;
SIGNAL \DSP1|process_5~39_combout\ : std_logic;
SIGNAL \DSP1|process_5~40_combout\ : std_logic;
SIGNAL \DSP1|process_5~41_combout\ : std_logic;
SIGNAL \DSP1|process_5~52_combout\ : std_logic;
SIGNAL \DSP1|process_5~53_combout\ : std_logic;
SIGNAL \DSP1|process_5~54_combout\ : std_logic;
SIGNAL \DSP1|process_5~56_combout\ : std_logic;
SIGNAL \DSP1|process_5~58_combout\ : std_logic;
SIGNAL \DSP1|B[2]~0_combout\ : std_logic;
SIGNAL \DSP1|Equal1~1_combout\ : std_logic;
SIGNAL \DSP1|Equal6~0_combout\ : std_logic;
SIGNAL \DSP1|Equal6~1_combout\ : std_logic;
SIGNAL \DSP1|Equal6~2_combout\ : std_logic;
SIGNAL \DSP1|Equal6~6_combout\ : std_logic;
SIGNAL \DSP1|process_0~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan5~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan5~1_combout\ : std_logic;
SIGNAL \DSP1|digIn~10_combout\ : std_logic;
SIGNAL \DSP1|digIn~11_combout\ : std_logic;
SIGNAL \DCG1|Add13~0_combout\ : std_logic;
SIGNAL \DCG1|seconddigit1~1_combout\ : std_logic;
SIGNAL \DCG1|Equal4~2_combout\ : std_logic;
SIGNAL \DCG1|Equal4~5_combout\ : std_logic;
SIGNAL \DCG1|LessThan0~0_combout\ : std_logic;
SIGNAL \DCG1|LessThan0~1_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~1_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~2_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~4_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~5_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~6_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~7_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[2]~8_combout\ : std_logic;
SIGNAL \DCG2|Add1~0_combout\ : std_logic;
SIGNAL \DCG2|minutedigit1~0_combout\ : std_logic;
SIGNAL \DCG2|minutedigit1[0]~1_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~10_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~12_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~14_combout\ : std_logic;
SIGNAL \DCG1|Add14~1_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~9_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~3_combout\ : std_logic;
SIGNAL \DCG1|minute[5]~6_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~7_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~10_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~11_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~11_combout\ : std_logic;
SIGNAL \DCG1|Add8~0_combout\ : std_logic;
SIGNAL \DSP1|Equal7~2_combout\ : std_logic;
SIGNAL \DSP1|Equal7~5_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~0_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~4_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~10_combout\ : std_logic;
SIGNAL \KD4|Equal1~0_combout\ : std_logic;
SIGNAL \KD4|comb~0_combout\ : std_logic;
SIGNAL \KD5|Equal1~0_combout\ : std_logic;
SIGNAL \KD5|comb~0_combout\ : std_logic;
SIGNAL \KD1|comb~0_combout\ : std_logic;
SIGNAL \RE1|B_prev~q\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~6_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~7_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~8_combout\ : std_logic;
SIGNAL \KD4|clk5ms~q\ : std_logic;
SIGNAL \KD5|clk5ms~q\ : std_logic;
SIGNAL \KD1|clk5ms~q\ : std_logic;
SIGNAL \KD4|Equal0~0_combout\ : std_logic;
SIGNAL \KD4|Equal0~1_combout\ : std_logic;
SIGNAL \KD4|Equal0~2_combout\ : std_logic;
SIGNAL \KD4|Equal0~3_combout\ : std_logic;
SIGNAL \KD4|Equal0~4_combout\ : std_logic;
SIGNAL \KD4|Equal0~5_combout\ : std_logic;
SIGNAL \KD4|Equal0~6_combout\ : std_logic;
SIGNAL \KD4|Equal0~7_combout\ : std_logic;
SIGNAL \KD4|Equal0~8_combout\ : std_logic;
SIGNAL \KD4|Equal0~9_combout\ : std_logic;
SIGNAL \KD4|Equal0~10_combout\ : std_logic;
SIGNAL \KD3|clk5ms~q\ : std_logic;
SIGNAL \KD2|clk5ms~q\ : std_logic;
SIGNAL \KD1|clk_counter~0_combout\ : std_logic;
SIGNAL \KD1|clk_counter~1_combout\ : std_logic;
SIGNAL \KD1|clk_counter~2_combout\ : std_logic;
SIGNAL \KD1|clk_counter~3_combout\ : std_logic;
SIGNAL \KD1|clk_counter~4_combout\ : std_logic;
SIGNAL \KD1|clk_counter~5_combout\ : std_logic;
SIGNAL \KD1|clk_counter~6_combout\ : std_logic;
SIGNAL \KD1|clk_counter~7_combout\ : std_logic;
SIGNAL \DSP1|Mux25~11_combout\ : std_logic;
SIGNAL \DSP1|Add9~6_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~15_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~16_combout\ : std_logic;
SIGNAL \KD4|clk5ms~0_combout\ : std_logic;
SIGNAL \KD5|clk5ms~0_combout\ : std_logic;
SIGNAL \KD1|clk5ms~0_combout\ : std_logic;
SIGNAL \KD3|clk5ms~0_combout\ : std_logic;
SIGNAL \KD2|clk5ms~0_combout\ : std_logic;
SIGNAL \KD4|button_out_buffer~combout\ : std_logic;
SIGNAL \KD5|button_out_buffer~combout\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KD1|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \KD3|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \KD2|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \KD4|button_out_buffer~clkctrl_outclk\ : std_logic;
SIGNAL \KD5|button_out_buffer~clkctrl_outclk\ : std_logic;
SIGNAL \KD4|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \KD5|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \KD4|samples[2]~feeder_combout\ : std_logic;
SIGNAL \KD4|samples[1]~feeder_combout\ : std_logic;
SIGNAL \KD5|samples[2]~feeder_combout\ : std_logic;
SIGNAL \KD5|samples[1]~feeder_combout\ : std_logic;
SIGNAL \KD2|samples[2]~feeder_combout\ : std_logic;
SIGNAL \KD4|clk5ms~feeder_combout\ : std_logic;
SIGNAL \KD5|clk5ms~feeder_combout\ : std_logic;
SIGNAL \KD1|clk5ms~feeder_combout\ : std_logic;
SIGNAL \KD3|clk5ms~feeder_combout\ : std_logic;
SIGNAL \KD2|clk5ms~feeder_combout\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \DSP1|pclk~0_combout\ : std_logic;
SIGNAL \DSP1|pclk~feeder_combout\ : std_logic;
SIGNAL \DSP1|pclk~q\ : std_logic;
SIGNAL \DSP1|pclk~clkctrl_outclk\ : std_logic;
SIGNAL \DSP1|Add1~0_combout\ : std_logic;
SIGNAL \DSP1|Add1~1\ : std_logic;
SIGNAL \DSP1|Add1~2_combout\ : std_logic;
SIGNAL \DSP1|Add1~3\ : std_logic;
SIGNAL \DSP1|Add1~5\ : std_logic;
SIGNAL \DSP1|Add1~6_combout\ : std_logic;
SIGNAL \DSP1|Add1~7\ : std_logic;
SIGNAL \DSP1|Add1~8_combout\ : std_logic;
SIGNAL \DSP1|Add1~4_combout\ : std_logic;
SIGNAL \DSP1|LessThan43~0_combout\ : std_logic;
SIGNAL \DSP1|Equal0~0_combout\ : std_logic;
SIGNAL \DSP1|Add1~9\ : std_logic;
SIGNAL \DSP1|Add1~11\ : std_logic;
SIGNAL \DSP1|Add1~13\ : std_logic;
SIGNAL \DSP1|Add1~14_combout\ : std_logic;
SIGNAL \DSP1|Equal0~1_combout\ : std_logic;
SIGNAL \DSP1|Add1~10_combout\ : std_logic;
SIGNAL \DSP1|hcntr~0_combout\ : std_logic;
SIGNAL \DSP1|HS~1_combout\ : std_logic;
SIGNAL \DSP1|HS~_Duplicate_1_q\ : std_logic;
SIGNAL \DSP1|HS~0_combout\ : std_logic;
SIGNAL \DSP1|HS~2_combout\ : std_logic;
SIGNAL \DSP1|HS~q\ : std_logic;
SIGNAL \DSP1|Add0~0_combout\ : std_logic;
SIGNAL \DSP1|Add1~15\ : std_logic;
SIGNAL \DSP1|Add1~16_combout\ : std_logic;
SIGNAL \DSP1|hcntr~2_combout\ : std_logic;
SIGNAL \DSP1|Equal0~2_combout\ : std_logic;
SIGNAL \DSP1|vcnt[2]~7_combout\ : std_logic;
SIGNAL \DSP1|Add0~3\ : std_logic;
SIGNAL \DSP1|Add0~5\ : std_logic;
SIGNAL \DSP1|Add0~6_combout\ : std_logic;
SIGNAL \DSP1|vcnt[3]~6_combout\ : std_logic;
SIGNAL \DSP1|Add0~7\ : std_logic;
SIGNAL \DSP1|Add0~8_combout\ : std_logic;
SIGNAL \DSP1|vcnt[4]~8_combout\ : std_logic;
SIGNAL \DSP1|Add0~9\ : std_logic;
SIGNAL \DSP1|Add0~10_combout\ : std_logic;
SIGNAL \DSP1|vcnt[5]~0_combout\ : std_logic;
SIGNAL \DSP1|Add0~11\ : std_logic;
SIGNAL \DSP1|Add0~12_combout\ : std_logic;
SIGNAL \DSP1|vcnt[6]~2_combout\ : std_logic;
SIGNAL \DSP1|Add0~13\ : std_logic;
SIGNAL \DSP1|Add0~15\ : std_logic;
SIGNAL \DSP1|Add0~16_combout\ : std_logic;
SIGNAL \DSP1|vcnt[8]~1_combout\ : std_logic;
SIGNAL \DSP1|Add0~17\ : std_logic;
SIGNAL \DSP1|Add0~18_combout\ : std_logic;
SIGNAL \DSP1|vcnt[9]~9_combout\ : std_logic;
SIGNAL \DSP1|Add0~14_combout\ : std_logic;
SIGNAL \DSP1|vcnt[7]~3_combout\ : std_logic;
SIGNAL \DSP1|Equal1~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~4_combout\ : std_logic;
SIGNAL \DSP1|Equal1~2_combout\ : std_logic;
SIGNAL \DSP1|vcnt[9]~4_combout\ : std_logic;
SIGNAL \DSP1|vcnt[0]~5_combout\ : std_logic;
SIGNAL \DSP1|Add0~1\ : std_logic;
SIGNAL \DSP1|Add0~2_combout\ : std_logic;
SIGNAL \DSP1|vcnt[1]~10_combout\ : std_logic;
SIGNAL \DSP1|VS~_Duplicate_1_q\ : std_logic;
SIGNAL \DSP1|LessThan8~0_combout\ : std_logic;
SIGNAL \DSP1|VS~1_combout\ : std_logic;
SIGNAL \DSP1|VS~2_combout\ : std_logic;
SIGNAL \DSP1|VS~q\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \DSP1|LessThan28~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~48_combout\ : std_logic;
SIGNAL \DSP1|process_5~57_combout\ : std_logic;
SIGNAL \DSP1|hcntr~1_combout\ : std_logic;
SIGNAL \DSP1|Add1~12_combout\ : std_logic;
SIGNAL \DSP1|digIn~2_combout\ : std_logic;
SIGNAL \DSP1|process_5~50_combout\ : std_logic;
SIGNAL \DSP1|LessThan26~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~59_combout\ : std_logic;
SIGNAL \DSP1|process_5~60_combout\ : std_logic;
SIGNAL \DSP1|process_5~47_combout\ : std_logic;
SIGNAL \DSP1|process_5~49_combout\ : std_logic;
SIGNAL \DSP1|process_5~51_combout\ : std_logic;
SIGNAL \DSP1|process_5~55_combout\ : std_logic;
SIGNAL \DSP1|process_5~61_combout\ : std_logic;
SIGNAL \DSP1|LessThan4~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~31_combout\ : std_logic;
SIGNAL \DSP1|LessThan4~1_combout\ : std_logic;
SIGNAL \DSP1|process_5~37_combout\ : std_logic;
SIGNAL \DSP1|LessThan13~1_combout\ : std_logic;
SIGNAL \DSP1|LessThan1~0_combout\ : std_logic;
SIGNAL \DSP1|process_0~2_combout\ : std_logic;
SIGNAL \DSP1|process_0~1_combout\ : std_logic;
SIGNAL \DSP1|digIn~4_combout\ : std_logic;
SIGNAL \DSP1|digIn~5_combout\ : std_logic;
SIGNAL \DSP1|digIn[2]~6_combout\ : std_logic;
SIGNAL \DSP1|LessThan44~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan2~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan2~1_combout\ : std_logic;
SIGNAL \DSP1|digIn[2]~8_combout\ : std_logic;
SIGNAL \DSP1|digIn~7_combout\ : std_logic;
SIGNAL \DSP1|digIn~9_combout\ : std_logic;
SIGNAL \DSP1|process_5~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan44~1_combout\ : std_logic;
SIGNAL \DSP1|digIn~3_combout\ : std_logic;
SIGNAL \DSP1|digIn~14_combout\ : std_logic;
SIGNAL \DSP1|digIn~16_combout\ : std_logic;
SIGNAL \DSP1|digIn~15_combout\ : std_logic;
SIGNAL \DSP1|Mux6~0_combout\ : std_logic;
SIGNAL \DSP1|Mux7~0_combout\ : std_logic;
SIGNAL \DSP1|Mux10~0_combout\ : std_logic;
SIGNAL \DSP1|Mux9~0_combout\ : std_logic;
SIGNAL \DSP1|Add11~0_combout\ : std_logic;
SIGNAL \DSP1|Add11~1_combout\ : std_logic;
SIGNAL \DSP1|Mux11~0_combout\ : std_logic;
SIGNAL \DSP1|digIn~12_combout\ : std_logic;
SIGNAL \DSP1|LessThan8~1_combout\ : std_logic;
SIGNAL \DSP1|digIn~13_combout\ : std_logic;
SIGNAL \DSP1|Mux8~0_combout\ : std_logic;
SIGNAL \DSP1|Add11~3_combout\ : std_logic;
SIGNAL \DSP1|LessThan18~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan18~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan18~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan18~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan18~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan18~10_combout\ : std_logic;
SIGNAL \DSP1|Mux12~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~18_combout\ : std_logic;
SIGNAL \DSP1|LessThan46~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan13~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~17_combout\ : std_logic;
SIGNAL \DSP1|process_5~19_combout\ : std_logic;
SIGNAL \DSP1|Add9~4_combout\ : std_logic;
SIGNAL \DSP1|Add9~5_combout\ : std_logic;
SIGNAL \DSP1|LessThan17~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~11_cout\ : std_logic;
SIGNAL \DSP1|LessThan17~12_combout\ : std_logic;
SIGNAL \DSP1|process_5~20_combout\ : std_logic;
SIGNAL \DSP1|process_5~1_combout\ : std_logic;
SIGNAL \DSP1|LessThan23~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan11~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan12~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan12~1_combout\ : std_logic;
SIGNAL \DSP1|process_5~9_combout\ : std_logic;
SIGNAL \DSP1|Mux25~2_combout\ : std_logic;
SIGNAL \DSP1|Add12~1_cout\ : std_logic;
SIGNAL \DSP1|Add12~3\ : std_logic;
SIGNAL \DSP1|Add12~5\ : std_logic;
SIGNAL \DSP1|Add12~7\ : std_logic;
SIGNAL \DSP1|Add12~8_combout\ : std_logic;
SIGNAL \DSP1|Add12~4_combout\ : std_logic;
SIGNAL \DSP1|Add12~2_combout\ : std_logic;
SIGNAL \DSP1|LessThan22~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan22~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan22~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan22~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan22~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan22~10_combout\ : std_logic;
SIGNAL \DSP1|Add12~9\ : std_logic;
SIGNAL \DSP1|Add12~10_combout\ : std_logic;
SIGNAL \DSP1|process_5~21_combout\ : std_logic;
SIGNAL \DSP1|process_5~22_combout\ : std_logic;
SIGNAL \DSP1|Add8~1\ : std_logic;
SIGNAL \DSP1|Add8~3\ : std_logic;
SIGNAL \DSP1|Add8~5\ : std_logic;
SIGNAL \DSP1|Add8~7\ : std_logic;
SIGNAL \DSP1|Add8~9\ : std_logic;
SIGNAL \DSP1|Add8~10_combout\ : std_logic;
SIGNAL \DSP1|Add8~8_combout\ : std_logic;
SIGNAL \DSP1|Add8~2_combout\ : std_logic;
SIGNAL \DSP1|LessThan15~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~11_cout\ : std_logic;
SIGNAL \DSP1|LessThan15~12_combout\ : std_logic;
SIGNAL \DSP1|LessThan16~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan16~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan16~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan16~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan16~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan16~10_combout\ : std_logic;
SIGNAL \DSP1|process_5~16_combout\ : std_logic;
SIGNAL \DSP1|R[1]~1_combout\ : std_logic;
SIGNAL \DSP1|process_5~2_combout\ : std_logic;
SIGNAL \DSP1|process_5~3_combout\ : std_logic;
SIGNAL \DSP1|LessThan23~1_combout\ : std_logic;
SIGNAL \DSP1|process_5~5_combout\ : std_logic;
SIGNAL \DSP1|process_5~6_combout\ : std_logic;
SIGNAL \DSP1|process_5~7_combout\ : std_logic;
SIGNAL \DSP1|process_5~8_combout\ : std_logic;
SIGNAL \DSP1|R~36_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~1_combout\ : std_logic;
SIGNAL \DSP1|Add2~1\ : std_logic;
SIGNAL \DSP1|Add2~2_combout\ : std_logic;
SIGNAL \DSP1|Add2~3\ : std_logic;
SIGNAL \DSP1|Add2~4_combout\ : std_logic;
SIGNAL \DSP1|Add2~5\ : std_logic;
SIGNAL \DSP1|Add2~7\ : std_logic;
SIGNAL \DSP1|Add2~8_combout\ : std_logic;
SIGNAL \DSP1|Add2~9\ : std_logic;
SIGNAL \DSP1|Add2~11\ : std_logic;
SIGNAL \DSP1|Add2~13\ : std_logic;
SIGNAL \DSP1|Add2~14_combout\ : std_logic;
SIGNAL \DSP1|Add2~15\ : std_logic;
SIGNAL \DSP1|Add2~16_combout\ : std_logic;
SIGNAL \DSP1|Add2~17\ : std_logic;
SIGNAL \DSP1|Add2~18_combout\ : std_logic;
SIGNAL \DSP1|Add2~19\ : std_logic;
SIGNAL \DSP1|Add2~20_combout\ : std_logic;
SIGNAL \DSP1|Add2~21\ : std_logic;
SIGNAL \DSP1|Add2~22_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~2_combout\ : std_logic;
SIGNAL \DSP1|Equal6~3_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~12_combout\ : std_logic;
SIGNAL \DSP1|Add2~23\ : std_logic;
SIGNAL \DSP1|Add2~24_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~3_combout\ : std_logic;
SIGNAL \DSP1|Add2~25\ : std_logic;
SIGNAL \DSP1|Add2~27\ : std_logic;
SIGNAL \DSP1|Add2~28_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~5_combout\ : std_logic;
SIGNAL \DSP1|Add2~29\ : std_logic;
SIGNAL \DSP1|Add2~31\ : std_logic;
SIGNAL \DSP1|Add2~33\ : std_logic;
SIGNAL \DSP1|Add2~34_combout\ : std_logic;
SIGNAL \DSP1|Add2~35\ : std_logic;
SIGNAL \DSP1|Add2~37\ : std_logic;
SIGNAL \DSP1|Add2~38_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~8_combout\ : std_logic;
SIGNAL \DSP1|Add2~39\ : std_logic;
SIGNAL \DSP1|Add2~40_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~9_combout\ : std_logic;
SIGNAL \DSP1|Add2~41\ : std_logic;
SIGNAL \DSP1|Add2~43\ : std_logic;
SIGNAL \DSP1|Add2~44_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~11_combout\ : std_logic;
SIGNAL \DSP1|Add2~45\ : std_logic;
SIGNAL \DSP1|Add2~46_combout\ : std_logic;
SIGNAL \DSP1|Add2~47\ : std_logic;
SIGNAL \DSP1|Add2~49\ : std_logic;
SIGNAL \DSP1|Add2~50_combout\ : std_logic;
SIGNAL \DSP1|Add2~51\ : std_logic;
SIGNAL \DSP1|Add2~52_combout\ : std_logic;
SIGNAL \DSP1|Add2~53\ : std_logic;
SIGNAL \DSP1|Add2~54_combout\ : std_logic;
SIGNAL \DSP1|Equal6~7_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~6_combout\ : std_logic;
SIGNAL \DSP1|Add2~36_combout\ : std_logic;
SIGNAL \DSP1|clkdiv_cntr~7_combout\ : std_logic;
SIGNAL \DSP1|Equal6~5_combout\ : std_logic;
SIGNAL \DSP1|Add2~55\ : std_logic;
SIGNAL \DSP1|Add2~56_combout\ : std_logic;
SIGNAL \DSP1|Add2~57\ : std_logic;
SIGNAL \DSP1|Add2~59\ : std_logic;
SIGNAL \DSP1|Add2~60_combout\ : std_logic;
SIGNAL \DSP1|Add2~61\ : std_logic;
SIGNAL \DSP1|Add2~62_combout\ : std_logic;
SIGNAL \DSP1|Add2~58_combout\ : std_logic;
SIGNAL \DSP1|Equal6~8_combout\ : std_logic;
SIGNAL \DSP1|Equal6~9_combout\ : std_logic;
SIGNAL \DSP1|Add2~30_combout\ : std_logic;
SIGNAL \DSP1|Equal6~4_combout\ : std_logic;
SIGNAL \DSP1|Equal6~10_combout\ : std_logic;
SIGNAL \DSP1|clknew~0_combout\ : std_logic;
SIGNAL \DSP1|clknew~q\ : std_logic;
SIGNAL \CG1|ColorMode~0_combout\ : std_logic;
SIGNAL \CG1|ColorMode~1_combout\ : std_logic;
SIGNAL \CG1|R_out[0]~0_combout\ : std_logic;
SIGNAL \DSP1|process_5~10_combout\ : std_logic;
SIGNAL \DSP1|Add11~2_combout\ : std_logic;
SIGNAL \DSP1|LessThan21~1_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~3_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~5_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~7_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~9_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~11_cout\ : std_logic;
SIGNAL \DSP1|LessThan21~12_combout\ : std_logic;
SIGNAL \DSP1|process_5~15_combout\ : std_logic;
SIGNAL \DSP1|R[1]~0_combout\ : std_logic;
SIGNAL \DSP1|R[1]~2_combout\ : std_logic;
SIGNAL \DSP1|Mux5~0_combout\ : std_logic;
SIGNAL \DCG2|minute[0]~7_combout\ : std_logic;
SIGNAL \DCG2|minute[4]~16\ : std_logic;
SIGNAL \DCG2|minute[5]~17_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KD1|samples[1]~feeder_combout\ : std_logic;
SIGNAL \KD1|samples[2]~feeder_combout\ : std_logic;
SIGNAL \KD1|Equal1~0_combout\ : std_logic;
SIGNAL \KD1|button_out_buffer~combout\ : std_logic;
SIGNAL \DCG1|clock_counter[0]~27\ : std_logic;
SIGNAL \DCG1|clock_counter[1]~28_combout\ : std_logic;
SIGNAL \DCG1|seconddigit2[2]~1_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[1]~29\ : std_logic;
SIGNAL \DCG1|clock_counter[2]~30_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[0]~26_combout\ : std_logic;
SIGNAL \DCG1|Equal4~0_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[2]~31\ : std_logic;
SIGNAL \DCG1|clock_counter[3]~33\ : std_logic;
SIGNAL \DCG1|clock_counter[4]~34_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[4]~35\ : std_logic;
SIGNAL \DCG1|clock_counter[5]~36_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[5]~37\ : std_logic;
SIGNAL \DCG1|clock_counter[6]~38_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[6]~39\ : std_logic;
SIGNAL \DCG1|clock_counter[7]~40_combout\ : std_logic;
SIGNAL \DCG1|Equal4~1_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[7]~41\ : std_logic;
SIGNAL \DCG1|clock_counter[8]~43\ : std_logic;
SIGNAL \DCG1|clock_counter[9]~44_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[9]~45\ : std_logic;
SIGNAL \DCG1|clock_counter[10]~47\ : std_logic;
SIGNAL \DCG1|clock_counter[11]~48_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[11]~49\ : std_logic;
SIGNAL \DCG1|clock_counter[12]~51\ : std_logic;
SIGNAL \DCG1|clock_counter[13]~52_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[13]~53\ : std_logic;
SIGNAL \DCG1|clock_counter[14]~54_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[14]~55\ : std_logic;
SIGNAL \DCG1|clock_counter[15]~56_combout\ : std_logic;
SIGNAL \DCG1|Equal4~3_combout\ : std_logic;
SIGNAL \DCG1|Equal4~4_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[15]~57\ : std_logic;
SIGNAL \DCG1|clock_counter[16]~59\ : std_logic;
SIGNAL \DCG1|clock_counter[17]~60_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[17]~61\ : std_logic;
SIGNAL \DCG1|clock_counter[18]~63\ : std_logic;
SIGNAL \DCG1|clock_counter[19]~65\ : std_logic;
SIGNAL \DCG1|clock_counter[20]~66_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[20]~67\ : std_logic;
SIGNAL \DCG1|clock_counter[21]~68_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[21]~69\ : std_logic;
SIGNAL \DCG1|clock_counter[22]~70_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[22]~71\ : std_logic;
SIGNAL \DCG1|clock_counter[23]~72_combout\ : std_logic;
SIGNAL \DCG1|Equal4~6_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[23]~73\ : std_logic;
SIGNAL \DCG1|clock_counter[24]~75\ : std_logic;
SIGNAL \DCG1|clock_counter[25]~76_combout\ : std_logic;
SIGNAL \DCG1|clock_counter[24]~74_combout\ : std_logic;
SIGNAL \DCG1|Equal4~7_combout\ : std_logic;
SIGNAL \DCG1|Equal4~8_combout\ : std_logic;
SIGNAL \DCG1|second[0]~7\ : std_logic;
SIGNAL \DCG1|second[1]~8_combout\ : std_logic;
SIGNAL \DCG1|second[3]~13\ : std_logic;
SIGNAL \DCG1|second[4]~14_combout\ : std_logic;
SIGNAL \DCG1|second[4]~15\ : std_logic;
SIGNAL \DCG1|second[5]~16_combout\ : std_logic;
SIGNAL \DCG1|seconddigit1[2]~0_combout\ : std_logic;
SIGNAL \DCG1|second[1]~9\ : std_logic;
SIGNAL \DCG1|second[2]~11\ : std_logic;
SIGNAL \DCG1|second[3]~12_combout\ : std_logic;
SIGNAL \DCG1|second[2]~10_combout\ : std_logic;
SIGNAL \DCG1|LessThan3~0_combout\ : std_logic;
SIGNAL \DCG1|LessThan3~1_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2[0]~0_combout\ : std_logic;
SIGNAL \DCG2|LessThan4~0_combout\ : std_logic;
SIGNAL \DCG2|LessThan4~1_combout\ : std_logic;
SIGNAL \DCG2|minute[0]~6_combout\ : std_logic;
SIGNAL \DCG2|minute[0]~8\ : std_logic;
SIGNAL \DCG2|minute[1]~9_combout\ : std_logic;
SIGNAL \DCG2|minute[1]~10\ : std_logic;
SIGNAL \DCG2|minute[2]~11_combout\ : std_logic;
SIGNAL \DCG2|minute[2]~12\ : std_logic;
SIGNAL \DCG2|minute[3]~14\ : std_logic;
SIGNAL \DCG2|minute[4]~15_combout\ : std_logic;
SIGNAL \DCG2|hourdigit2[3]~0_combout\ : std_logic;
SIGNAL \DCG2|hour[0]~6_combout\ : std_logic;
SIGNAL \DCG1|first_time_flag~0_combout\ : std_logic;
SIGNAL \DCG1|first_time_flag~q\ : std_logic;
SIGNAL \DCG2|hourdigit2[3]~2_combout\ : std_logic;
SIGNAL \DCG2|hour[0]~7\ : std_logic;
SIGNAL \DCG2|hour[1]~8_combout\ : std_logic;
SIGNAL \DCG2|hour[1]~9\ : std_logic;
SIGNAL \DCG2|hour[2]~10_combout\ : std_logic;
SIGNAL \DCG2|hour[2]~11\ : std_logic;
SIGNAL \DCG2|hour[3]~12_combout\ : std_logic;
SIGNAL \DCG2|hourdigit1[0]~0_combout\ : std_logic;
SIGNAL \DCG2|hour[3]~13\ : std_logic;
SIGNAL \DCG2|hour[4]~14_combout\ : std_logic;
SIGNAL \DCG2|hour[0]~5_combout\ : std_logic;
SIGNAL \DCG2|hourdigit1~1_combout\ : std_logic;
SIGNAL \DCG2|hourdigit2~1_combout\ : std_logic;
SIGNAL \DCG2|hourdigit2~3_combout\ : std_logic;
SIGNAL \DCG2|Add8~0_combout\ : std_logic;
SIGNAL \DCG2|hourdigit2~4_combout\ : std_logic;
SIGNAL \DCG2|Equal2~0_combout\ : std_logic;
SIGNAL \DCG2|hourdigit1[0]~2_combout\ : std_logic;
SIGNAL \DCG2|hourdigit1[0]~3_combout\ : std_logic;
SIGNAL \DCG2|hourdigit1~4_combout\ : std_logic;
SIGNAL \RG7|Mux0~0_combout\ : std_logic;
SIGNAL \DSP1|Mux5~7_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2~1_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2~2_combout\ : std_logic;
SIGNAL \DCG2|Equal0~0_combout\ : std_logic;
SIGNAL \DCG2|Add2~1_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2~4_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2[3]~feeder_combout\ : std_logic;
SIGNAL \RG10|Mux6~0_combout\ : std_logic;
SIGNAL \DSP1|Mux5~8_combout\ : std_logic;
SIGNAL \DSP1|Mux5~9_combout\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \RE1|B_current~q\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \RE1|A_current~q\ : std_logic;
SIGNAL \RE1|A_prev~q\ : std_logic;
SIGNAL \RE1|CCW~2_combout\ : std_logic;
SIGNAL \RE1|CCW~1_combout\ : std_logic;
SIGNAL \RE1|CW~0_combout\ : std_logic;
SIGNAL \RE1|CCW~0_combout\ : std_logic;
SIGNAL \RE1|CW~1_combout\ : std_logic;
SIGNAL \RE1|CW~q\ : std_logic;
SIGNAL \RE1|CCW~3_combout\ : std_logic;
SIGNAL \RE1|CCW~4_combout\ : std_logic;
SIGNAL \RE1|CCW~q\ : std_logic;
SIGNAL \DCG1|process_2~1_combout\ : std_logic;
SIGNAL \DCG1|process_2~0_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~4_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2[0]~0_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2[0]~feeder_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2[3]~6_combout\ : std_logic;
SIGNAL \DCG1|minute[0]~8\ : std_logic;
SIGNAL \DCG1|minute[1]~10\ : std_logic;
SIGNAL \DCG1|minute[2]~12\ : std_logic;
SIGNAL \DCG1|minute[3]~14\ : std_logic;
SIGNAL \DCG1|minute[4]~15_combout\ : std_logic;
SIGNAL \DCG1|minute[5]~17_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KD3|samples[1]~feeder_combout\ : std_logic;
SIGNAL \KD3|samples[2]~feeder_combout\ : std_logic;
SIGNAL \KD3|Equal1~0_combout\ : std_logic;
SIGNAL \KD3|comb~0_combout\ : std_logic;
SIGNAL \KD3|button_out_buffer~combout\ : std_logic;
SIGNAL \DCG1|AdjustMinuteButtonOld~feeder_combout\ : std_logic;
SIGNAL \DCG1|AdjustMinuteButtonOld~q\ : std_logic;
SIGNAL \DCG1|adjustminute_button_state~0_combout\ : std_logic;
SIGNAL \DCG1|adjustminute_button_state~q\ : std_logic;
SIGNAL \DCG1|minutedigit2[3]~9_combout\ : std_logic;
SIGNAL \DCG1|minute[3]~13_combout\ : std_logic;
SIGNAL \DCG1|minute[2]~11_combout\ : std_logic;
SIGNAL \DCG1|minute[1]~9_combout\ : std_logic;
SIGNAL \DCG1|LessThan4~0_combout\ : std_logic;
SIGNAL \DCG1|minute[4]~16\ : std_logic;
SIGNAL \DCG1|minute[5]~18_combout\ : std_logic;
SIGNAL \DCG1|LessThan4~1_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~2_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~5_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~8_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~13_combout\ : std_logic;
SIGNAL \DCG1|Equal0~0_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~12_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2~14_combout\ : std_logic;
SIGNAL \RG4|Mux6~0_combout\ : std_logic;
SIGNAL \DSP1|Mux0~0_combout\ : std_logic;
SIGNAL \DSP1|Mux0~1_combout\ : std_logic;
SIGNAL \DSP1|Mux0~2_combout\ : std_logic;
SIGNAL \DSP1|Mux0~3_combout\ : std_logic;
SIGNAL \DSP1|R[1]~4_combout\ : std_logic;
SIGNAL \DCG2|minutedigit1~3_combout\ : std_logic;
SIGNAL \DCG2|minutedigit1[0]~2_combout\ : std_logic;
SIGNAL \DCG1|Equal1~0_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~9_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~11_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[0]~0_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1[0]~feeder_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~3_combout\ : std_logic;
SIGNAL \DCG1|minutedigit1~13_combout\ : std_logic;
SIGNAL \DSP1|Mux5~3_combout\ : std_logic;
SIGNAL \DSP1|Mux5~4_combout\ : std_logic;
SIGNAL \DSP1|R[1]~11_combout\ : std_logic;
SIGNAL \DSP1|LessThan9~0_combout\ : std_logic;
SIGNAL \DSP1|LessThan9~1_combout\ : std_logic;
SIGNAL \DCG1|seconddigit2~0_combout\ : std_logic;
SIGNAL \DCG1|seconddigit2~2_combout\ : std_logic;
SIGNAL \DCG1|Add14~0_combout\ : std_logic;
SIGNAL \DCG1|seconddigit2~3_combout\ : std_logic;
SIGNAL \DCG1|Equal5~0_combout\ : std_logic;
SIGNAL \DCG1|seconddigit2~4_combout\ : std_logic;
SIGNAL \RG6|Mux2~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~17_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2[2]~4_combout\ : std_logic;
SIGNAL \DCG1|hour[0]~7_combout\ : std_logic;
SIGNAL \DCG1|LessThan1~0_combout\ : std_logic;
SIGNAL \DCG1|LessThan1~1_combout\ : std_logic;
SIGNAL \DCG1|hour[3]~14\ : std_logic;
SIGNAL \DCG1|hour[4]~15_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KD2|samples[1]~feeder_combout\ : std_logic;
SIGNAL \KD2|comb~0_combout\ : std_logic;
SIGNAL \KD2|Equal1~0_combout\ : std_logic;
SIGNAL \KD2|button_out_buffer~combout\ : std_logic;
SIGNAL \DCG1|AdjustHourButtonOld~feeder_combout\ : std_logic;
SIGNAL \DCG1|AdjustHourButtonOld~q\ : std_logic;
SIGNAL \DCG1|adjusthour_button_state~0_combout\ : std_logic;
SIGNAL \DCG1|adjusthour_button_state~q\ : std_logic;
SIGNAL \DCG1|hourdigit2[2]~9_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2[2]~10_combout\ : std_logic;
SIGNAL \DCG1|hour[2]~18_combout\ : std_logic;
SIGNAL \DCG1|hour[2]~17_combout\ : std_logic;
SIGNAL \DCG1|hour[0]~8\ : std_logic;
SIGNAL \DCG1|hour[1]~9_combout\ : std_logic;
SIGNAL \DCG1|hour[1]~10\ : std_logic;
SIGNAL \DCG1|hour[2]~12\ : std_logic;
SIGNAL \DCG1|hour[3]~13_combout\ : std_logic;
SIGNAL \DCG1|LessThan2~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~20_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~8_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~6_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~1_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~2_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2[0]~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2[0]~feeder_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~11_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~3_combout\ : std_logic;
SIGNAL \DCG1|LessThan2~1_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~6_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~5_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~12_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~13_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~14_combout\ : std_logic;
SIGNAL \DCG1|Equal3~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~7_combout\ : std_logic;
SIGNAL \DCG1|hourdigit2~8_combout\ : std_logic;
SIGNAL \DCG1|Equal2~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~7_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~21_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1[0]~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1[0]~feeder_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~10_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~12_combout\ : std_logic;
SIGNAL \DCG2|Add8~1_combout\ : std_logic;
SIGNAL \DCG2|hourdigit2~5_combout\ : std_logic;
SIGNAL \RG8|Mux2~0_combout\ : std_logic;
SIGNAL \DCG2|Add2~0_combout\ : std_logic;
SIGNAL \DCG2|minutedigit2~3_combout\ : std_logic;
SIGNAL \RG10|Mux2~0_combout\ : std_logic;
SIGNAL \RG4|Mux2~0_combout\ : std_logic;
SIGNAL \RG2|Mux2~0_combout\ : std_logic;
SIGNAL \DSP1|Mux4~0_combout\ : std_logic;
SIGNAL \DSP1|Mux4~1_combout\ : std_logic;
SIGNAL \DSP1|R[1]~5_combout\ : std_logic;
SIGNAL \DSP1|R[1]~6_combout\ : std_logic;
SIGNAL \DSP1|R[1]~7_combout\ : std_logic;
SIGNAL \DSP1|R[1]~8_combout\ : std_logic;
SIGNAL \DSP1|R[1]~9_combout\ : std_logic;
SIGNAL \DSP1|process_5~27_combout\ : std_logic;
SIGNAL \DSP1|process_5~28_combout\ : std_logic;
SIGNAL \DSP1|process_5~29_combout\ : std_logic;
SIGNAL \DSP1|R[1]~14_combout\ : std_logic;
SIGNAL \DSP1|R[1]~15_combout\ : std_logic;
SIGNAL \DSP1|R[1]~16_combout\ : std_logic;
SIGNAL \RG8|Mux4~0_combout\ : std_logic;
SIGNAL \RG10|Mux4~0_combout\ : std_logic;
SIGNAL \RG2|Mux4~0_combout\ : std_logic;
SIGNAL \DSP1|Mux2~0_combout\ : std_logic;
SIGNAL \DSP1|Mux2~1_combout\ : std_logic;
SIGNAL \DSP1|R[1]~25_combout\ : std_logic;
SIGNAL \DCG2|minutedigit1~4_combout\ : std_logic;
SIGNAL \DCG1|seconddigit1~3_combout\ : std_logic;
SIGNAL \DCG1|minutedigit2[3]~1_combout\ : std_logic;
SIGNAL \DCG1|seconddigit1[2]~2_combout\ : std_logic;
SIGNAL \DCG1|seconddigit1~4_combout\ : std_logic;
SIGNAL \DSP1|Mux5~5_combout\ : std_logic;
SIGNAL \DSP1|Mux5~6_combout\ : std_logic;
SIGNAL \DSP1|R[1]~24_combout\ : std_logic;
SIGNAL \DSP1|R[1]~26_combout\ : std_logic;
SIGNAL \DSP1|R[1]~22_combout\ : std_logic;
SIGNAL \RG6|Mux5~0_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~14_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~15_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~13_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~16_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1[1]~1_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~18_combout\ : std_logic;
SIGNAL \DCG1|hourdigit1~19_combout\ : std_logic;
SIGNAL \RG1|Mux1~0_combout\ : std_logic;
SIGNAL \RG10|Mux5~0_combout\ : std_logic;
SIGNAL \RG8|Mux5~0_combout\ : std_logic;
SIGNAL \DSP1|Mux1~0_combout\ : std_logic;
SIGNAL \DSP1|Mux1~1_combout\ : std_logic;
SIGNAL \DSP1|Mux1~2_combout\ : std_logic;
SIGNAL \DSP1|Mux1~3_combout\ : std_logic;
SIGNAL \DSP1|R[1]~23_combout\ : std_logic;
SIGNAL \DSP1|R[1]~27_combout\ : std_logic;
SIGNAL \RG6|Mux1~0_combout\ : std_logic;
SIGNAL \RG10|Mux1~0_combout\ : std_logic;
SIGNAL \RG8|Mux1~0_combout\ : std_logic;
SIGNAL \RG2|Mux1~0_combout\ : std_logic;
SIGNAL \DSP1|Mux5~10_combout\ : std_logic;
SIGNAL \DSP1|Mux5~11_combout\ : std_logic;
SIGNAL \DSP1|Mux5~12_combout\ : std_logic;
SIGNAL \DSP1|Mux5~13_combout\ : std_logic;
SIGNAL \DSP1|R[1]~28_combout\ : std_logic;
SIGNAL \DSP1|R[1]~29_combout\ : std_logic;
SIGNAL \DSP1|R[1]~30_combout\ : std_logic;
SIGNAL \DSP1|R[1]~31_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[1]~11_combout\ : std_logic;
SIGNAL \DSP1|Add4~1\ : std_logic;
SIGNAL \DSP1|Add4~2_combout\ : std_logic;
SIGNAL \DSP1|Add4~3\ : std_logic;
SIGNAL \DSP1|Add4~5\ : std_logic;
SIGNAL \DSP1|Add4~7\ : std_logic;
SIGNAL \DSP1|Add4~9\ : std_logic;
SIGNAL \DSP1|Add4~10_combout\ : std_logic;
SIGNAL \DSP1|Add4~11\ : std_logic;
SIGNAL \DSP1|Add4~13\ : std_logic;
SIGNAL \DSP1|Add4~14_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~3_combout\ : std_logic;
SIGNAL \DSP1|Add4~15\ : std_logic;
SIGNAL \DSP1|Add4~17\ : std_logic;
SIGNAL \DSP1|Add4~18_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~4_combout\ : std_logic;
SIGNAL \DSP1|Add4~19\ : std_logic;
SIGNAL \DSP1|Add4~21\ : std_logic;
SIGNAL \DSP1|Add4~22_combout\ : std_logic;
SIGNAL \DSP1|Add4~23\ : std_logic;
SIGNAL \DSP1|Add4~24_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~5_combout\ : std_logic;
SIGNAL \DSP1|Add4~25\ : std_logic;
SIGNAL \DSP1|Add4~26_combout\ : std_logic;
SIGNAL \DSP1|Add4~27\ : std_logic;
SIGNAL \DSP1|Add4~28_combout\ : std_logic;
SIGNAL \DSP1|Add4~29\ : std_logic;
SIGNAL \DSP1|Add4~30_combout\ : std_logic;
SIGNAL \DSP1|Add4~31\ : std_logic;
SIGNAL \DSP1|Add4~33\ : std_logic;
SIGNAL \DSP1|Add4~35\ : std_logic;
SIGNAL \DSP1|Add4~37\ : std_logic;
SIGNAL \DSP1|Add4~39\ : std_logic;
SIGNAL \DSP1|Add4~41\ : std_logic;
SIGNAL \DSP1|Add4~42_combout\ : std_logic;
SIGNAL \DSP1|Add4~43\ : std_logic;
SIGNAL \DSP1|Add4~44_combout\ : std_logic;
SIGNAL \DSP1|Add4~45\ : std_logic;
SIGNAL \DSP1|Add4~46_combout\ : std_logic;
SIGNAL \DSP1|Equal7~6_combout\ : std_logic;
SIGNAL \DSP1|Add4~47\ : std_logic;
SIGNAL \DSP1|Add4~48_combout\ : std_logic;
SIGNAL \DSP1|Add4~49\ : std_logic;
SIGNAL \DSP1|Add4~50_combout\ : std_logic;
SIGNAL \DSP1|Equal7~7_combout\ : std_logic;
SIGNAL \DSP1|Add4~6_combout\ : std_logic;
SIGNAL \DSP1|Add4~0_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~0_combout\ : std_logic;
SIGNAL \DSP1|Equal7~0_combout\ : std_logic;
SIGNAL \DSP1|Equal7~3_combout\ : std_logic;
SIGNAL \DSP1|Add4~12_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~2_combout\ : std_logic;
SIGNAL \DSP1|cerceveclk_cnt~1_combout\ : std_logic;
SIGNAL \DSP1|Equal7~1_combout\ : std_logic;
SIGNAL \DSP1|Equal7~4_combout\ : std_logic;
SIGNAL \DSP1|Equal7~8_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[1]~12\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[2]~14\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[3]~15_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[3]~16\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[4]~18\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[5]~20\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[6]~21_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[6]~22\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[7]~23_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[7]~24\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[8]~25_combout\ : std_logic;
SIGNAL \DSP1|process_5~44_combout\ : std_logic;
SIGNAL \DSP1|process_5~45_combout\ : std_logic;
SIGNAL \DSP1|process_5~42_combout\ : std_logic;
SIGNAL \DSP1|process_5~43_combout\ : std_logic;
SIGNAL \DSP1|process_5~46_combout\ : std_logic;
SIGNAL \DSP1|R~32_combout\ : std_logic;
SIGNAL \CG2|ColorMode[0]~feeder_combout\ : std_logic;
SIGNAL \CG2|ColorMode~1_combout\ : std_logic;
SIGNAL \CG2|R_out[0]~0_combout\ : std_logic;
SIGNAL \DSP1|R~33_combout\ : std_logic;
SIGNAL \DSP1|R~34_combout\ : std_logic;
SIGNAL \DSP1|R~35_combout\ : std_logic;
SIGNAL \DSP1|R~37_combout\ : std_logic;
SIGNAL \DSP1|process_5~62_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[8]~26\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[9]~27_combout\ : std_logic;
SIGNAL \DSP1|R~38_combout\ : std_logic;
SIGNAL \DSP1|R[1]~40_combout\ : std_logic;
SIGNAL \DSP1|R[1]~39_combout\ : std_logic;
SIGNAL \DSP1|R~41_combout\ : std_logic;
SIGNAL \DSP1|R~42_combout\ : std_logic;
SIGNAL \DSP1|R~43_combout\ : std_logic;
SIGNAL \DSP1|B[2]~1_combout\ : std_logic;
SIGNAL \DSP1|Mux24~0_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[9]~28\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[10]~29_combout\ : std_logic;
SIGNAL \DSP1|R~44_combout\ : std_logic;
SIGNAL \DSP1|R~45_combout\ : std_logic;
SIGNAL \DSP1|R~46_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[10]~30\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[11]~31_combout\ : std_logic;
SIGNAL \DSP1|R~47_combout\ : std_logic;
SIGNAL \DSP1|R~48_combout\ : std_logic;
SIGNAL \DSP1|R~49_combout\ : std_logic;
SIGNAL \CG1|G_out[0]~0_combout\ : std_logic;
SIGNAL \CG2|ColorMode~0_combout\ : std_logic;
SIGNAL \CG2|G_out[0]~0_combout\ : std_logic;
SIGNAL \DSP1|Mux20~0_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[4]~17_combout\ : std_logic;
SIGNAL \DSP1|G~0_combout\ : std_logic;
SIGNAL \DSP1|G~1_combout\ : std_logic;
SIGNAL \DSP1|G~2_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[5]~19_combout\ : std_logic;
SIGNAL \DSP1|G~3_combout\ : std_logic;
SIGNAL \DSP1|G~4_combout\ : std_logic;
SIGNAL \DSP1|G~5_combout\ : std_logic;
SIGNAL \DSP1|G~6_combout\ : std_logic;
SIGNAL \DSP1|G~7_combout\ : std_logic;
SIGNAL \DSP1|G~8_combout\ : std_logic;
SIGNAL \DSP1|G~9_combout\ : std_logic;
SIGNAL \DSP1|G~10_combout\ : std_logic;
SIGNAL \CG2|B_out[0]~0_combout\ : std_logic;
SIGNAL \CG1|B_out[0]~0_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[0]~33_combout\ : std_logic;
SIGNAL \DSP1|B~2_combout\ : std_logic;
SIGNAL \DSP1|B~3_combout\ : std_logic;
SIGNAL \DSP1|B~4_combout\ : std_logic;
SIGNAL \DSP1|Mux16~0_combout\ : std_logic;
SIGNAL \DSP1|B~5_combout\ : std_logic;
SIGNAL \DSP1|B~6_combout\ : std_logic;
SIGNAL \DSP1|B~7_combout\ : std_logic;
SIGNAL \DSP1|RGB_cerceve[2]~13_combout\ : std_logic;
SIGNAL \DSP1|B~8_combout\ : std_logic;
SIGNAL \DSP1|B~9_combout\ : std_logic;
SIGNAL \DSP1|B~10_combout\ : std_logic;
SIGNAL \DSP1|B~11_combout\ : std_logic;
SIGNAL \DSP1|B~12_combout\ : std_logic;
SIGNAL \DSP1|B~13_combout\ : std_logic;
SIGNAL \DSP1|B~14_combout\ : std_logic;
SIGNAL \DCG2|hour\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DCG2|hourdigit1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DCG2|hourdigit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DCG2|minute\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DCG2|minutedigit1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DCG2|minutedigit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KD2|samples\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KD3|samples\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CG2|ColorMode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KD4|samples\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KD5|samples\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DSP1|vcnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DSP1|hcntr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DSP1|digIn\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|clkdiv_cntr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DSP1|cerceveclk_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DSP1|R_cerceve\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|RGB_cerceve\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DSP1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|G_cerceve\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|B_cerceve\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DSP1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DCG1|seconddigit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DCG1|seconddigit1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DCG1|second\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DCG1|minutedigit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DCG1|minutedigit1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DCG1|minute\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DCG1|hourdigit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DCG1|hourdigit1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DCG1|hour\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DCG1|clock_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \KD1|samples\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KD1|clk_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CG1|ColorMode\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \KD1|ALT_INV_button_out_buffer~combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_KEY <= KEY;
ww_GPIO_0 <= GPIO_0;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KD1|clk5ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD1|clk5ms~q\);

\DSP1|pclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DSP1|pclk~q\);

\KD3|clk5ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD3|clk5ms~q\);

\KD2|clk5ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD2|clk5ms~q\);

\KD4|button_out_buffer~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD4|button_out_buffer~combout\);

\KD5|button_out_buffer~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD5|button_out_buffer~combout\);

\KD4|clk5ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD4|clk5ms~q\);

\KD5|clk5ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KD5|clk5ms~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\KD1|ALT_INV_button_out_buffer~combout\ <= NOT \KD1|button_out_buffer~combout\;

-- Location: LCCOMB_X37_Y20_N14
\DSP1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~0_combout\ = (\DSP1|Mux11~0_combout\ & (\DSP1|Mux10~0_combout\ $ (VCC))) # (!\DSP1|Mux11~0_combout\ & (\DSP1|Mux10~0_combout\ & VCC))
-- \DSP1|Add8~1\ = CARRY((\DSP1|Mux11~0_combout\ & \DSP1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|Mux10~0_combout\,
	datad => VCC,
	combout => \DSP1|Add8~0_combout\,
	cout => \DSP1|Add8~1\);

-- Location: LCCOMB_X37_Y20_N18
\DSP1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~4_combout\ = (\DSP1|Mux8~0_combout\ & (\DSP1|Add8~3\ $ (GND))) # (!\DSP1|Mux8~0_combout\ & (!\DSP1|Add8~3\ & VCC))
-- \DSP1|Add8~5\ = CARRY((\DSP1|Mux8~0_combout\ & !\DSP1|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux8~0_combout\,
	datad => VCC,
	cin => \DSP1|Add8~3\,
	combout => \DSP1|Add8~4_combout\,
	cout => \DSP1|Add8~5\);

-- Location: LCCOMB_X37_Y20_N20
\DSP1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~6_combout\ = (\DSP1|Mux7~0_combout\ & (!\DSP1|Add8~5\)) # (!\DSP1|Mux7~0_combout\ & ((\DSP1|Add8~5\) # (GND)))
-- \DSP1|Add8~7\ = CARRY((!\DSP1|Add8~5\) # (!\DSP1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Mux7~0_combout\,
	datad => VCC,
	cin => \DSP1|Add8~5\,
	combout => \DSP1|Add8~6_combout\,
	cout => \DSP1|Add8~7\);

-- Location: LCCOMB_X38_Y20_N6
\DSP1|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~6_combout\ = (\DSP1|Mux7~0_combout\ & (!\DSP1|Add12~5\)) # (!\DSP1|Mux7~0_combout\ & ((\DSP1|Add12~5\) # (GND)))
-- \DSP1|Add12~7\ = CARRY((!\DSP1|Add12~5\) # (!\DSP1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Mux7~0_combout\,
	datad => VCC,
	cin => \DSP1|Add12~5\,
	combout => \DSP1|Add12~6_combout\,
	cout => \DSP1|Add12~7\);

-- Location: FF_X35_Y21_N25
\DCG1|minutedigit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit1~16_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|minutedigit1[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit1\(2));

-- Location: FF_X35_Y21_N23
\DCG1|minutedigit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit1~14_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|minutedigit1[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit1\(1));

-- Location: FF_X31_Y20_N23
\DCG1|minutedigit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit2~11_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit2\(2));

-- Location: LCCOMB_X38_Y19_N16
\DSP1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~16_combout\ = (\DSP1|hcntr\(8) & (\DSP1|Add1~15\ $ (GND))) # (!\DSP1|hcntr\(8) & (!\DSP1|Add1~15\ & VCC))
-- \DSP1|Add1~17\ = CARRY((\DSP1|hcntr\(8) & !\DSP1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(8),
	datad => VCC,
	cin => \DSP1|Add1~15\,
	combout => \DSP1|Add1~16_combout\,
	cout => \DSP1|Add1~17\);

-- Location: LCCOMB_X38_Y19_N18
\DSP1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~18_combout\ = \DSP1|hcntr\(9) $ (\DSP1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(9),
	cin => \DSP1|Add1~17\,
	combout => \DSP1|Add1~18_combout\);

-- Location: LCCOMB_X36_Y18_N16
\DSP1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~4_combout\ = (\DSP1|vcnt\(2) & (\DSP1|Add0~3\ $ (GND))) # (!\DSP1|vcnt\(2) & (!\DSP1|Add0~3\ & VCC))
-- \DSP1|Add0~5\ = CARRY((\DSP1|vcnt\(2) & !\DSP1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(2),
	datad => VCC,
	cin => \DSP1|Add0~3\,
	combout => \DSP1|Add0~4_combout\,
	cout => \DSP1|Add0~5\);

-- Location: FF_X30_Y21_N7
\DCG1|second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[0]~6_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(0));

-- Location: FF_X32_Y24_N13
\DCG1|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[3]~32_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(3));

-- Location: FF_X32_Y24_N23
\DCG1|clock_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[8]~42_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(8));

-- Location: FF_X32_Y24_N27
\DCG1|clock_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[10]~46_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(10));

-- Location: FF_X32_Y24_N31
\DCG1|clock_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[12]~50_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(12));

-- Location: FF_X32_Y23_N7
\DCG1|clock_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[16]~58_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(16));

-- Location: FF_X32_Y23_N11
\DCG1|clock_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[18]~62_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(18));

-- Location: FF_X32_Y23_N13
\DCG1|clock_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[19]~64_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(19));

-- Location: FF_X30_Y20_N11
\DCG1|minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[0]~7_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(0));

-- Location: FF_X33_Y21_N7
\DCG2|minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[3]~13_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(3));

-- Location: FF_X30_Y22_N7
\DCG1|hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hour[2]~11_combout\,
	sclr => \DCG1|hour[2]~17_combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hour\(2));

-- Location: LCCOMB_X27_Y20_N0
\DSP1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~0_combout\ = \DSP1|clkdiv_cntr\(0) $ (VCC)
-- \DSP1|Add2~1\ = CARRY(\DSP1|clkdiv_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(0),
	datad => VCC,
	combout => \DSP1|Add2~0_combout\,
	cout => \DSP1|Add2~1\);

-- Location: LCCOMB_X27_Y20_N6
\DSP1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~6_combout\ = (\DSP1|clkdiv_cntr\(3) & (!\DSP1|Add2~5\)) # (!\DSP1|clkdiv_cntr\(3) & ((\DSP1|Add2~5\) # (GND)))
-- \DSP1|Add2~7\ = CARRY((!\DSP1|Add2~5\) # (!\DSP1|clkdiv_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(3),
	datad => VCC,
	cin => \DSP1|Add2~5\,
	combout => \DSP1|Add2~6_combout\,
	cout => \DSP1|Add2~7\);

-- Location: LCCOMB_X27_Y20_N10
\DSP1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~10_combout\ = (\DSP1|clkdiv_cntr\(5) & (!\DSP1|Add2~9\)) # (!\DSP1|clkdiv_cntr\(5) & ((\DSP1|Add2~9\) # (GND)))
-- \DSP1|Add2~11\ = CARRY((!\DSP1|Add2~9\) # (!\DSP1|clkdiv_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(5),
	datad => VCC,
	cin => \DSP1|Add2~9\,
	combout => \DSP1|Add2~10_combout\,
	cout => \DSP1|Add2~11\);

-- Location: LCCOMB_X27_Y20_N12
\DSP1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~12_combout\ = (\DSP1|clkdiv_cntr\(6) & (\DSP1|Add2~11\ $ (GND))) # (!\DSP1|clkdiv_cntr\(6) & (!\DSP1|Add2~11\ & VCC))
-- \DSP1|Add2~13\ = CARRY((\DSP1|clkdiv_cntr\(6) & !\DSP1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(6),
	datad => VCC,
	cin => \DSP1|Add2~11\,
	combout => \DSP1|Add2~12_combout\,
	cout => \DSP1|Add2~13\);

-- Location: LCCOMB_X27_Y20_N26
\DSP1|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~26_combout\ = (\DSP1|clkdiv_cntr\(13) & (!\DSP1|Add2~25\)) # (!\DSP1|clkdiv_cntr\(13) & ((\DSP1|Add2~25\) # (GND)))
-- \DSP1|Add2~27\ = CARRY((!\DSP1|Add2~25\) # (!\DSP1|clkdiv_cntr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(13),
	datad => VCC,
	cin => \DSP1|Add2~25\,
	combout => \DSP1|Add2~26_combout\,
	cout => \DSP1|Add2~27\);

-- Location: LCCOMB_X27_Y19_N0
\DSP1|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~32_combout\ = (\DSP1|clkdiv_cntr\(16) & (\DSP1|Add2~31\ $ (GND))) # (!\DSP1|clkdiv_cntr\(16) & (!\DSP1|Add2~31\ & VCC))
-- \DSP1|Add2~33\ = CARRY((\DSP1|clkdiv_cntr\(16) & !\DSP1|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(16),
	datad => VCC,
	cin => \DSP1|Add2~31\,
	combout => \DSP1|Add2~32_combout\,
	cout => \DSP1|Add2~33\);

-- Location: LCCOMB_X27_Y19_N10
\DSP1|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~42_combout\ = (\DSP1|clkdiv_cntr\(21) & (!\DSP1|Add2~41\)) # (!\DSP1|clkdiv_cntr\(21) & ((\DSP1|Add2~41\) # (GND)))
-- \DSP1|Add2~43\ = CARRY((!\DSP1|Add2~41\) # (!\DSP1|clkdiv_cntr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(21),
	datad => VCC,
	cin => \DSP1|Add2~41\,
	combout => \DSP1|Add2~42_combout\,
	cout => \DSP1|Add2~43\);

-- Location: LCCOMB_X27_Y19_N16
\DSP1|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~48_combout\ = (\DSP1|clkdiv_cntr\(24) & (\DSP1|Add2~47\ $ (GND))) # (!\DSP1|clkdiv_cntr\(24) & (!\DSP1|Add2~47\ & VCC))
-- \DSP1|Add2~49\ = CARRY((\DSP1|clkdiv_cntr\(24) & !\DSP1|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(24),
	datad => VCC,
	cin => \DSP1|Add2~47\,
	combout => \DSP1|Add2~48_combout\,
	cout => \DSP1|Add2~49\);

-- Location: LCCOMB_X30_Y21_N6
\DCG1|second[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[0]~6_combout\ = \DCG1|second\(0) $ (VCC)
-- \DCG1|second[0]~7\ = CARRY(\DCG1|second\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|second\(0),
	datad => VCC,
	combout => \DCG1|second[0]~6_combout\,
	cout => \DCG1|second[0]~7\);

-- Location: LCCOMB_X32_Y24_N12
\DCG1|clock_counter[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[3]~32_combout\ = (\DCG1|clock_counter\(3) & (!\DCG1|clock_counter[2]~31\)) # (!\DCG1|clock_counter\(3) & ((\DCG1|clock_counter[2]~31\) # (GND)))
-- \DCG1|clock_counter[3]~33\ = CARRY((!\DCG1|clock_counter[2]~31\) # (!\DCG1|clock_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(3),
	datad => VCC,
	cin => \DCG1|clock_counter[2]~31\,
	combout => \DCG1|clock_counter[3]~32_combout\,
	cout => \DCG1|clock_counter[3]~33\);

-- Location: LCCOMB_X32_Y24_N22
\DCG1|clock_counter[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[8]~42_combout\ = (\DCG1|clock_counter\(8) & (\DCG1|clock_counter[7]~41\ $ (GND))) # (!\DCG1|clock_counter\(8) & (!\DCG1|clock_counter[7]~41\ & VCC))
-- \DCG1|clock_counter[8]~43\ = CARRY((\DCG1|clock_counter\(8) & !\DCG1|clock_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(8),
	datad => VCC,
	cin => \DCG1|clock_counter[7]~41\,
	combout => \DCG1|clock_counter[8]~42_combout\,
	cout => \DCG1|clock_counter[8]~43\);

-- Location: LCCOMB_X32_Y24_N26
\DCG1|clock_counter[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[10]~46_combout\ = (\DCG1|clock_counter\(10) & (\DCG1|clock_counter[9]~45\ $ (GND))) # (!\DCG1|clock_counter\(10) & (!\DCG1|clock_counter[9]~45\ & VCC))
-- \DCG1|clock_counter[10]~47\ = CARRY((\DCG1|clock_counter\(10) & !\DCG1|clock_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(10),
	datad => VCC,
	cin => \DCG1|clock_counter[9]~45\,
	combout => \DCG1|clock_counter[10]~46_combout\,
	cout => \DCG1|clock_counter[10]~47\);

-- Location: LCCOMB_X32_Y24_N30
\DCG1|clock_counter[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[12]~50_combout\ = (\DCG1|clock_counter\(12) & (\DCG1|clock_counter[11]~49\ $ (GND))) # (!\DCG1|clock_counter\(12) & (!\DCG1|clock_counter[11]~49\ & VCC))
-- \DCG1|clock_counter[12]~51\ = CARRY((\DCG1|clock_counter\(12) & !\DCG1|clock_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(12),
	datad => VCC,
	cin => \DCG1|clock_counter[11]~49\,
	combout => \DCG1|clock_counter[12]~50_combout\,
	cout => \DCG1|clock_counter[12]~51\);

-- Location: LCCOMB_X32_Y23_N6
\DCG1|clock_counter[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[16]~58_combout\ = (\DCG1|clock_counter\(16) & (\DCG1|clock_counter[15]~57\ $ (GND))) # (!\DCG1|clock_counter\(16) & (!\DCG1|clock_counter[15]~57\ & VCC))
-- \DCG1|clock_counter[16]~59\ = CARRY((\DCG1|clock_counter\(16) & !\DCG1|clock_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(16),
	datad => VCC,
	cin => \DCG1|clock_counter[15]~57\,
	combout => \DCG1|clock_counter[16]~58_combout\,
	cout => \DCG1|clock_counter[16]~59\);

-- Location: LCCOMB_X32_Y23_N10
\DCG1|clock_counter[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[18]~62_combout\ = (\DCG1|clock_counter\(18) & (\DCG1|clock_counter[17]~61\ $ (GND))) # (!\DCG1|clock_counter\(18) & (!\DCG1|clock_counter[17]~61\ & VCC))
-- \DCG1|clock_counter[18]~63\ = CARRY((\DCG1|clock_counter\(18) & !\DCG1|clock_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(18),
	datad => VCC,
	cin => \DCG1|clock_counter[17]~61\,
	combout => \DCG1|clock_counter[18]~62_combout\,
	cout => \DCG1|clock_counter[18]~63\);

-- Location: LCCOMB_X32_Y23_N12
\DCG1|clock_counter[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[19]~64_combout\ = (\DCG1|clock_counter\(19) & (!\DCG1|clock_counter[18]~63\)) # (!\DCG1|clock_counter\(19) & ((\DCG1|clock_counter[18]~63\) # (GND)))
-- \DCG1|clock_counter[19]~65\ = CARRY((!\DCG1|clock_counter[18]~63\) # (!\DCG1|clock_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(19),
	datad => VCC,
	cin => \DCG1|clock_counter[18]~63\,
	combout => \DCG1|clock_counter[19]~64_combout\,
	cout => \DCG1|clock_counter[19]~65\);

-- Location: LCCOMB_X30_Y20_N10
\DCG1|minute[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[0]~7_combout\ = \DCG1|minute\(0) $ (VCC)
-- \DCG1|minute[0]~8\ = CARRY(\DCG1|minute\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(0),
	datad => VCC,
	combout => \DCG1|minute[0]~7_combout\,
	cout => \DCG1|minute[0]~8\);

-- Location: LCCOMB_X33_Y21_N6
\DCG2|minute[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[3]~13_combout\ = (\DCG2|minute\(3) & (!\DCG2|minute[2]~12\)) # (!\DCG2|minute\(3) & ((\DCG2|minute[2]~12\) # (GND)))
-- \DCG2|minute[3]~14\ = CARRY((!\DCG2|minute[2]~12\) # (!\DCG2|minute\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minute\(3),
	datad => VCC,
	cin => \DCG2|minute[2]~12\,
	combout => \DCG2|minute[3]~13_combout\,
	cout => \DCG2|minute[3]~14\);

-- Location: LCCOMB_X30_Y22_N6
\DCG1|hour[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[2]~11_combout\ = ((\DCG1|hour\(2) $ (\DCG1|hourdigit2[2]~4_combout\ $ (\DCG1|hour[1]~10\)))) # (GND)
-- \DCG1|hour[2]~12\ = CARRY((\DCG1|hour\(2) & ((!\DCG1|hour[1]~10\) # (!\DCG1|hourdigit2[2]~4_combout\))) # (!\DCG1|hour\(2) & (!\DCG1|hourdigit2[2]~4_combout\ & !\DCG1|hour[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(2),
	datab => \DCG1|hourdigit2[2]~4_combout\,
	datad => VCC,
	cin => \DCG1|hour[1]~10\,
	combout => \DCG1|hour[2]~11_combout\,
	cout => \DCG1|hour[2]~12\);

-- Location: LCCOMB_X39_Y24_N10
\DSP1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~4_combout\ = (\DSP1|cerceveclk_cnt\(2) & (\DSP1|Add4~3\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(2) & (!\DSP1|Add4~3\ & VCC))
-- \DSP1|Add4~5\ = CARRY((\DSP1|cerceveclk_cnt\(2) & !\DSP1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(2),
	datad => VCC,
	cin => \DSP1|Add4~3\,
	combout => \DSP1|Add4~4_combout\,
	cout => \DSP1|Add4~5\);

-- Location: LCCOMB_X39_Y24_N14
\DSP1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~8_combout\ = (\DSP1|cerceveclk_cnt\(4) & (\DSP1|Add4~7\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(4) & (!\DSP1|Add4~7\ & VCC))
-- \DSP1|Add4~9\ = CARRY((\DSP1|cerceveclk_cnt\(4) & !\DSP1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(4),
	datad => VCC,
	cin => \DSP1|Add4~7\,
	combout => \DSP1|Add4~8_combout\,
	cout => \DSP1|Add4~9\);

-- Location: LCCOMB_X39_Y24_N22
\DSP1|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~16_combout\ = (\DSP1|cerceveclk_cnt\(8) & (\DSP1|Add4~15\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(8) & (!\DSP1|Add4~15\ & VCC))
-- \DSP1|Add4~17\ = CARRY((\DSP1|cerceveclk_cnt\(8) & !\DSP1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(8),
	datad => VCC,
	cin => \DSP1|Add4~15\,
	combout => \DSP1|Add4~16_combout\,
	cout => \DSP1|Add4~17\);

-- Location: LCCOMB_X39_Y24_N26
\DSP1|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~20_combout\ = (\DSP1|cerceveclk_cnt\(10) & (\DSP1|Add4~19\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(10) & (!\DSP1|Add4~19\ & VCC))
-- \DSP1|Add4~21\ = CARRY((\DSP1|cerceveclk_cnt\(10) & !\DSP1|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(10),
	datad => VCC,
	cin => \DSP1|Add4~19\,
	combout => \DSP1|Add4~20_combout\,
	cout => \DSP1|Add4~21\);

-- Location: LCCOMB_X39_Y23_N6
\DSP1|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~32_combout\ = (\DSP1|cerceveclk_cnt\(16) & (\DSP1|Add4~31\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(16) & (!\DSP1|Add4~31\ & VCC))
-- \DSP1|Add4~33\ = CARRY((\DSP1|cerceveclk_cnt\(16) & !\DSP1|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(16),
	datad => VCC,
	cin => \DSP1|Add4~31\,
	combout => \DSP1|Add4~32_combout\,
	cout => \DSP1|Add4~33\);

-- Location: LCCOMB_X39_Y23_N8
\DSP1|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~34_combout\ = (\DSP1|cerceveclk_cnt\(17) & (!\DSP1|Add4~33\)) # (!\DSP1|cerceveclk_cnt\(17) & ((\DSP1|Add4~33\) # (GND)))
-- \DSP1|Add4~35\ = CARRY((!\DSP1|Add4~33\) # (!\DSP1|cerceveclk_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(17),
	datad => VCC,
	cin => \DSP1|Add4~33\,
	combout => \DSP1|Add4~34_combout\,
	cout => \DSP1|Add4~35\);

-- Location: LCCOMB_X39_Y23_N10
\DSP1|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~36_combout\ = (\DSP1|cerceveclk_cnt\(18) & (\DSP1|Add4~35\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(18) & (!\DSP1|Add4~35\ & VCC))
-- \DSP1|Add4~37\ = CARRY((\DSP1|cerceveclk_cnt\(18) & !\DSP1|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(18),
	datad => VCC,
	cin => \DSP1|Add4~35\,
	combout => \DSP1|Add4~36_combout\,
	cout => \DSP1|Add4~37\);

-- Location: LCCOMB_X39_Y23_N12
\DSP1|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~38_combout\ = (\DSP1|cerceveclk_cnt\(19) & (!\DSP1|Add4~37\)) # (!\DSP1|cerceveclk_cnt\(19) & ((\DSP1|Add4~37\) # (GND)))
-- \DSP1|Add4~39\ = CARRY((!\DSP1|Add4~37\) # (!\DSP1|cerceveclk_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(19),
	datad => VCC,
	cin => \DSP1|Add4~37\,
	combout => \DSP1|Add4~38_combout\,
	cout => \DSP1|Add4~39\);

-- Location: LCCOMB_X39_Y23_N14
\DSP1|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~40_combout\ = (\DSP1|cerceveclk_cnt\(20) & (\DSP1|Add4~39\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(20) & (!\DSP1|Add4~39\ & VCC))
-- \DSP1|Add4~41\ = CARRY((\DSP1|cerceveclk_cnt\(20) & !\DSP1|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(20),
	datad => VCC,
	cin => \DSP1|Add4~39\,
	combout => \DSP1|Add4~40_combout\,
	cout => \DSP1|Add4~41\);

-- Location: LCCOMB_X21_Y20_N0
\KD1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~0_combout\ = \KD1|clk_counter\(0) $ (VCC)
-- \KD1|Add0~1\ = CARRY(\KD1|clk_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(0),
	datad => VCC,
	combout => \KD1|Add0~0_combout\,
	cout => \KD1|Add0~1\);

-- Location: LCCOMB_X21_Y20_N2
\KD1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~2_combout\ = (\KD1|clk_counter\(1) & (!\KD1|Add0~1\)) # (!\KD1|clk_counter\(1) & ((\KD1|Add0~1\) # (GND)))
-- \KD1|Add0~3\ = CARRY((!\KD1|Add0~1\) # (!\KD1|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(1),
	datad => VCC,
	cin => \KD1|Add0~1\,
	combout => \KD1|Add0~2_combout\,
	cout => \KD1|Add0~3\);

-- Location: LCCOMB_X21_Y20_N4
\KD1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~4_combout\ = (\KD1|clk_counter\(2) & (\KD1|Add0~3\ $ (GND))) # (!\KD1|clk_counter\(2) & (!\KD1|Add0~3\ & VCC))
-- \KD1|Add0~5\ = CARRY((\KD1|clk_counter\(2) & !\KD1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(2),
	datad => VCC,
	cin => \KD1|Add0~3\,
	combout => \KD1|Add0~4_combout\,
	cout => \KD1|Add0~5\);

-- Location: LCCOMB_X21_Y20_N6
\KD1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~6_combout\ = (\KD1|clk_counter\(3) & (!\KD1|Add0~5\)) # (!\KD1|clk_counter\(3) & ((\KD1|Add0~5\) # (GND)))
-- \KD1|Add0~7\ = CARRY((!\KD1|Add0~5\) # (!\KD1|clk_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(3),
	datad => VCC,
	cin => \KD1|Add0~5\,
	combout => \KD1|Add0~6_combout\,
	cout => \KD1|Add0~7\);

-- Location: LCCOMB_X21_Y20_N8
\KD1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~8_combout\ = (\KD1|clk_counter\(4) & (\KD1|Add0~7\ $ (GND))) # (!\KD1|clk_counter\(4) & (!\KD1|Add0~7\ & VCC))
-- \KD1|Add0~9\ = CARRY((\KD1|clk_counter\(4) & !\KD1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(4),
	datad => VCC,
	cin => \KD1|Add0~7\,
	combout => \KD1|Add0~8_combout\,
	cout => \KD1|Add0~9\);

-- Location: LCCOMB_X21_Y20_N10
\KD1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~10_combout\ = (\KD1|clk_counter\(5) & (!\KD1|Add0~9\)) # (!\KD1|clk_counter\(5) & ((\KD1|Add0~9\) # (GND)))
-- \KD1|Add0~11\ = CARRY((!\KD1|Add0~9\) # (!\KD1|clk_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(5),
	datad => VCC,
	cin => \KD1|Add0~9\,
	combout => \KD1|Add0~10_combout\,
	cout => \KD1|Add0~11\);

-- Location: LCCOMB_X21_Y20_N12
\KD1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~12_combout\ = (\KD1|clk_counter\(6) & (\KD1|Add0~11\ $ (GND))) # (!\KD1|clk_counter\(6) & (!\KD1|Add0~11\ & VCC))
-- \KD1|Add0~13\ = CARRY((\KD1|clk_counter\(6) & !\KD1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(6),
	datad => VCC,
	cin => \KD1|Add0~11\,
	combout => \KD1|Add0~12_combout\,
	cout => \KD1|Add0~13\);

-- Location: LCCOMB_X21_Y20_N14
\KD1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~14_combout\ = (\KD1|clk_counter\(7) & (!\KD1|Add0~13\)) # (!\KD1|clk_counter\(7) & ((\KD1|Add0~13\) # (GND)))
-- \KD1|Add0~15\ = CARRY((!\KD1|Add0~13\) # (!\KD1|clk_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(7),
	datad => VCC,
	cin => \KD1|Add0~13\,
	combout => \KD1|Add0~14_combout\,
	cout => \KD1|Add0~15\);

-- Location: LCCOMB_X21_Y20_N16
\KD1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~16_combout\ = (\KD1|clk_counter\(8) & (\KD1|Add0~15\ $ (GND))) # (!\KD1|clk_counter\(8) & (!\KD1|Add0~15\ & VCC))
-- \KD1|Add0~17\ = CARRY((\KD1|clk_counter\(8) & !\KD1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(8),
	datad => VCC,
	cin => \KD1|Add0~15\,
	combout => \KD1|Add0~16_combout\,
	cout => \KD1|Add0~17\);

-- Location: LCCOMB_X21_Y20_N18
\KD1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~18_combout\ = (\KD1|clk_counter\(9) & (!\KD1|Add0~17\)) # (!\KD1|clk_counter\(9) & ((\KD1|Add0~17\) # (GND)))
-- \KD1|Add0~19\ = CARRY((!\KD1|Add0~17\) # (!\KD1|clk_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(9),
	datad => VCC,
	cin => \KD1|Add0~17\,
	combout => \KD1|Add0~18_combout\,
	cout => \KD1|Add0~19\);

-- Location: LCCOMB_X21_Y20_N20
\KD1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~20_combout\ = (\KD1|clk_counter\(10) & (\KD1|Add0~19\ $ (GND))) # (!\KD1|clk_counter\(10) & (!\KD1|Add0~19\ & VCC))
-- \KD1|Add0~21\ = CARRY((\KD1|clk_counter\(10) & !\KD1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(10),
	datad => VCC,
	cin => \KD1|Add0~19\,
	combout => \KD1|Add0~20_combout\,
	cout => \KD1|Add0~21\);

-- Location: LCCOMB_X21_Y20_N22
\KD1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~22_combout\ = (\KD1|clk_counter\(11) & (!\KD1|Add0~21\)) # (!\KD1|clk_counter\(11) & ((\KD1|Add0~21\) # (GND)))
-- \KD1|Add0~23\ = CARRY((!\KD1|Add0~21\) # (!\KD1|clk_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(11),
	datad => VCC,
	cin => \KD1|Add0~21\,
	combout => \KD1|Add0~22_combout\,
	cout => \KD1|Add0~23\);

-- Location: LCCOMB_X21_Y20_N24
\KD1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~24_combout\ = (\KD1|clk_counter\(12) & (\KD1|Add0~23\ $ (GND))) # (!\KD1|clk_counter\(12) & (!\KD1|Add0~23\ & VCC))
-- \KD1|Add0~25\ = CARRY((\KD1|clk_counter\(12) & !\KD1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(12),
	datad => VCC,
	cin => \KD1|Add0~23\,
	combout => \KD1|Add0~24_combout\,
	cout => \KD1|Add0~25\);

-- Location: LCCOMB_X21_Y20_N26
\KD1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~26_combout\ = (\KD1|clk_counter\(13) & (!\KD1|Add0~25\)) # (!\KD1|clk_counter\(13) & ((\KD1|Add0~25\) # (GND)))
-- \KD1|Add0~27\ = CARRY((!\KD1|Add0~25\) # (!\KD1|clk_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(13),
	datad => VCC,
	cin => \KD1|Add0~25\,
	combout => \KD1|Add0~26_combout\,
	cout => \KD1|Add0~27\);

-- Location: LCCOMB_X21_Y20_N28
\KD1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~28_combout\ = (\KD1|clk_counter\(14) & (\KD1|Add0~27\ $ (GND))) # (!\KD1|clk_counter\(14) & (!\KD1|Add0~27\ & VCC))
-- \KD1|Add0~29\ = CARRY((\KD1|clk_counter\(14) & !\KD1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(14),
	datad => VCC,
	cin => \KD1|Add0~27\,
	combout => \KD1|Add0~28_combout\,
	cout => \KD1|Add0~29\);

-- Location: LCCOMB_X21_Y20_N30
\KD1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~30_combout\ = (\KD1|clk_counter\(15) & (!\KD1|Add0~29\)) # (!\KD1|clk_counter\(15) & ((\KD1|Add0~29\) # (GND)))
-- \KD1|Add0~31\ = CARRY((!\KD1|Add0~29\) # (!\KD1|clk_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(15),
	datad => VCC,
	cin => \KD1|Add0~29\,
	combout => \KD1|Add0~30_combout\,
	cout => \KD1|Add0~31\);

-- Location: LCCOMB_X21_Y19_N0
\KD1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~32_combout\ = (\KD1|clk_counter\(16) & (\KD1|Add0~31\ $ (GND))) # (!\KD1|clk_counter\(16) & (!\KD1|Add0~31\ & VCC))
-- \KD1|Add0~33\ = CARRY((\KD1|clk_counter\(16) & !\KD1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(16),
	datad => VCC,
	cin => \KD1|Add0~31\,
	combout => \KD1|Add0~32_combout\,
	cout => \KD1|Add0~33\);

-- Location: LCCOMB_X21_Y19_N2
\KD1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~34_combout\ = (\KD1|clk_counter\(17) & (!\KD1|Add0~33\)) # (!\KD1|clk_counter\(17) & ((\KD1|Add0~33\) # (GND)))
-- \KD1|Add0~35\ = CARRY((!\KD1|Add0~33\) # (!\KD1|clk_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(17),
	datad => VCC,
	cin => \KD1|Add0~33\,
	combout => \KD1|Add0~34_combout\,
	cout => \KD1|Add0~35\);

-- Location: LCCOMB_X21_Y19_N4
\KD1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~36_combout\ = (\KD1|clk_counter\(18) & (\KD1|Add0~35\ $ (GND))) # (!\KD1|clk_counter\(18) & (!\KD1|Add0~35\ & VCC))
-- \KD1|Add0~37\ = CARRY((\KD1|clk_counter\(18) & !\KD1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(18),
	datad => VCC,
	cin => \KD1|Add0~35\,
	combout => \KD1|Add0~36_combout\,
	cout => \KD1|Add0~37\);

-- Location: LCCOMB_X21_Y19_N6
\KD1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~38_combout\ = (\KD1|clk_counter\(19) & (!\KD1|Add0~37\)) # (!\KD1|clk_counter\(19) & ((\KD1|Add0~37\) # (GND)))
-- \KD1|Add0~39\ = CARRY((!\KD1|Add0~37\) # (!\KD1|clk_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(19),
	datad => VCC,
	cin => \KD1|Add0~37\,
	combout => \KD1|Add0~38_combout\,
	cout => \KD1|Add0~39\);

-- Location: LCCOMB_X21_Y19_N8
\KD1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~40_combout\ = (\KD1|clk_counter\(20) & (\KD1|Add0~39\ $ (GND))) # (!\KD1|clk_counter\(20) & (!\KD1|Add0~39\ & VCC))
-- \KD1|Add0~41\ = CARRY((\KD1|clk_counter\(20) & !\KD1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(20),
	datad => VCC,
	cin => \KD1|Add0~39\,
	combout => \KD1|Add0~40_combout\,
	cout => \KD1|Add0~41\);

-- Location: LCCOMB_X21_Y19_N10
\KD1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~42_combout\ = (\KD1|clk_counter\(21) & (!\KD1|Add0~41\)) # (!\KD1|clk_counter\(21) & ((\KD1|Add0~41\) # (GND)))
-- \KD1|Add0~43\ = CARRY((!\KD1|Add0~41\) # (!\KD1|clk_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(21),
	datad => VCC,
	cin => \KD1|Add0~41\,
	combout => \KD1|Add0~42_combout\,
	cout => \KD1|Add0~43\);

-- Location: LCCOMB_X21_Y19_N12
\KD1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~44_combout\ = (\KD1|clk_counter\(22) & (\KD1|Add0~43\ $ (GND))) # (!\KD1|clk_counter\(22) & (!\KD1|Add0~43\ & VCC))
-- \KD1|Add0~45\ = CARRY((\KD1|clk_counter\(22) & !\KD1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(22),
	datad => VCC,
	cin => \KD1|Add0~43\,
	combout => \KD1|Add0~44_combout\,
	cout => \KD1|Add0~45\);

-- Location: LCCOMB_X21_Y19_N14
\KD1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~46_combout\ = (\KD1|clk_counter\(23) & (!\KD1|Add0~45\)) # (!\KD1|clk_counter\(23) & ((\KD1|Add0~45\) # (GND)))
-- \KD1|Add0~47\ = CARRY((!\KD1|Add0~45\) # (!\KD1|clk_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(23),
	datad => VCC,
	cin => \KD1|Add0~45\,
	combout => \KD1|Add0~46_combout\,
	cout => \KD1|Add0~47\);

-- Location: LCCOMB_X21_Y19_N16
\KD1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~48_combout\ = (\KD1|clk_counter\(24) & (\KD1|Add0~47\ $ (GND))) # (!\KD1|clk_counter\(24) & (!\KD1|Add0~47\ & VCC))
-- \KD1|Add0~49\ = CARRY((\KD1|clk_counter\(24) & !\KD1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(24),
	datad => VCC,
	cin => \KD1|Add0~47\,
	combout => \KD1|Add0~48_combout\,
	cout => \KD1|Add0~49\);

-- Location: LCCOMB_X21_Y19_N18
\KD1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~50_combout\ = (\KD1|clk_counter\(25) & (!\KD1|Add0~49\)) # (!\KD1|clk_counter\(25) & ((\KD1|Add0~49\) # (GND)))
-- \KD1|Add0~51\ = CARRY((!\KD1|Add0~49\) # (!\KD1|clk_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(25),
	datad => VCC,
	cin => \KD1|Add0~49\,
	combout => \KD1|Add0~50_combout\,
	cout => \KD1|Add0~51\);

-- Location: LCCOMB_X21_Y19_N20
\KD1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~52_combout\ = (\KD1|clk_counter\(26) & (\KD1|Add0~51\ $ (GND))) # (!\KD1|clk_counter\(26) & (!\KD1|Add0~51\ & VCC))
-- \KD1|Add0~53\ = CARRY((\KD1|clk_counter\(26) & !\KD1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(26),
	datad => VCC,
	cin => \KD1|Add0~51\,
	combout => \KD1|Add0~52_combout\,
	cout => \KD1|Add0~53\);

-- Location: LCCOMB_X21_Y19_N22
\KD1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~54_combout\ = (\KD1|clk_counter\(27) & (!\KD1|Add0~53\)) # (!\KD1|clk_counter\(27) & ((\KD1|Add0~53\) # (GND)))
-- \KD1|Add0~55\ = CARRY((!\KD1|Add0~53\) # (!\KD1|clk_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(27),
	datad => VCC,
	cin => \KD1|Add0~53\,
	combout => \KD1|Add0~54_combout\,
	cout => \KD1|Add0~55\);

-- Location: LCCOMB_X21_Y19_N24
\KD1|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~56_combout\ = (\KD1|clk_counter\(28) & (\KD1|Add0~55\ $ (GND))) # (!\KD1|clk_counter\(28) & (!\KD1|Add0~55\ & VCC))
-- \KD1|Add0~57\ = CARRY((\KD1|clk_counter\(28) & !\KD1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(28),
	datad => VCC,
	cin => \KD1|Add0~55\,
	combout => \KD1|Add0~56_combout\,
	cout => \KD1|Add0~57\);

-- Location: LCCOMB_X21_Y19_N26
\KD1|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~58_combout\ = (\KD1|clk_counter\(29) & (!\KD1|Add0~57\)) # (!\KD1|clk_counter\(29) & ((\KD1|Add0~57\) # (GND)))
-- \KD1|Add0~59\ = CARRY((!\KD1|Add0~57\) # (!\KD1|clk_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(29),
	datad => VCC,
	cin => \KD1|Add0~57\,
	combout => \KD1|Add0~58_combout\,
	cout => \KD1|Add0~59\);

-- Location: LCCOMB_X21_Y19_N28
\KD1|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~60_combout\ = (\KD1|clk_counter\(30) & (\KD1|Add0~59\ $ (GND))) # (!\KD1|clk_counter\(30) & (!\KD1|Add0~59\ & VCC))
-- \KD1|Add0~61\ = CARRY((\KD1|clk_counter\(30) & !\KD1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(30),
	datad => VCC,
	cin => \KD1|Add0~59\,
	combout => \KD1|Add0~60_combout\,
	cout => \KD1|Add0~61\);

-- Location: LCCOMB_X21_Y19_N30
\KD1|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Add0~62_combout\ = \KD1|clk_counter\(31) $ (\KD1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(31),
	cin => \KD1|Add0~61\,
	combout => \KD1|Add0~62_combout\);

-- Location: LCCOMB_X37_Y18_N2
\DSP1|VS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|VS~0_combout\ = (\DSP1|vcnt\(0) & (\DSP1|vcnt\(3) & (!\DSP1|vcnt\(2) & !\DSP1|vcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(0),
	datab => \DSP1|vcnt\(3),
	datac => \DSP1|vcnt\(2),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|VS~0_combout\);

-- Location: LCCOMB_X37_Y21_N30
\DSP1|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add11~4_combout\ = \DSP1|Mux9~0_combout\ $ (((\DSP1|Mux11~0_combout\ & \DSP1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux9~0_combout\,
	datac => \DSP1|Mux11~0_combout\,
	datad => \DSP1|Mux10~0_combout\,
	combout => \DSP1|Add11~4_combout\);

-- Location: LCCOMB_X40_Y18_N22
\DSP1|process_5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~11_combout\ = (\DSP1|vcnt\(9) & ((\DSP1|vcnt\(6)))) # (!\DSP1|vcnt\(9) & (\DSP1|vcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|vcnt\(7),
	datad => \DSP1|vcnt\(6),
	combout => \DSP1|process_5~11_combout\);

-- Location: LCCOMB_X40_Y18_N24
\DSP1|process_5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~12_combout\ = (\DSP1|Mux12~0_combout\ & ((\DSP1|vcnt\(6) & (!\DSP1|process_5~11_combout\)) # (!\DSP1|vcnt\(6) & (\DSP1|process_5~11_combout\ & !\DSP1|LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux12~0_combout\,
	datab => \DSP1|vcnt\(6),
	datac => \DSP1|process_5~11_combout\,
	datad => \DSP1|LessThan13~1_combout\,
	combout => \DSP1|process_5~12_combout\);

-- Location: LCCOMB_X40_Y18_N6
\DSP1|process_5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~13_combout\ = (!\DSP1|vcnt\(6) & (\DSP1|process_5~11_combout\ & ((!\DSP1|LessThan13~1_combout\) # (!\DSP1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux12~0_combout\,
	datab => \DSP1|vcnt\(6),
	datac => \DSP1|process_5~11_combout\,
	datad => \DSP1|LessThan13~1_combout\,
	combout => \DSP1|process_5~13_combout\);

-- Location: LCCOMB_X39_Y20_N30
\DSP1|process_5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~14_combout\ = (\DSP1|vcnt\(8) & (\DSP1|process_5~12_combout\ & ((\DSP1|LessThan23~1_combout\) # (\DSP1|process_5~13_combout\)))) # (!\DSP1|vcnt\(8) & (\DSP1|LessThan23~1_combout\ & (!\DSP1|process_5~12_combout\ & 
-- \DSP1|process_5~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|LessThan23~1_combout\,
	datac => \DSP1|process_5~12_combout\,
	datad => \DSP1|process_5~13_combout\,
	combout => \DSP1|process_5~14_combout\);

-- Location: LCCOMB_X39_Y18_N12
\DSP1|process_5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~23_combout\ = (\DSP1|vcnt\(8) & (!\DSP1|vcnt\(5) & ((\DSP1|Mux12~0_combout\)))) # (!\DSP1|vcnt\(8) & (!\DSP1|Mux12~0_combout\ & ((!\DSP1|vcnt\(4)) # (!\DSP1|vcnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|vcnt\(5),
	datac => \DSP1|vcnt\(4),
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|process_5~23_combout\);

-- Location: LCCOMB_X39_Y18_N2
\DSP1|process_5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~24_combout\ = (\DSP1|vcnt\(8) & (((\DSP1|Equal1~0_combout\ & \DSP1|process_5~23_combout\)))) # (!\DSP1|vcnt\(8) & ((\DSP1|Mux12~0_combout\) # ((\DSP1|Equal1~0_combout\ & \DSP1|process_5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|Equal1~0_combout\,
	datad => \DSP1|process_5~23_combout\,
	combout => \DSP1|process_5~24_combout\);

-- Location: LCCOMB_X37_Y21_N20
\DSP1|process_5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~25_combout\ = (!\DSP1|vcnt\(9) & ((\DSP1|process_5~1_combout\) # (\DSP1|LessThan18~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~1_combout\,
	datac => \DSP1|vcnt\(9),
	datad => \DSP1|LessThan18~10_combout\,
	combout => \DSP1|process_5~25_combout\);

-- Location: LCCOMB_X38_Y21_N8
\DSP1|process_5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~26_combout\ = (\DSP1|LessThan17~12_combout\ & (\DSP1|process_5~24_combout\ & (\DSP1|process_5~25_combout\ & \DSP1|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan17~12_combout\,
	datab => \DSP1|process_5~24_combout\,
	datac => \DSP1|process_5~25_combout\,
	datad => \DSP1|LessThan9~1_combout\,
	combout => \DSP1|process_5~26_combout\);

-- Location: FF_X35_Y21_N1
\DCG1|seconddigit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit1~1_combout\,
	ena => \DCG1|seconddigit1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit1\(2));

-- Location: LCCOMB_X35_Y21_N14
\DSP1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~1_combout\ = (\DSP1|digIn\(1) & ((\DSP1|digIn\(3) & (\DCG1|seconddigit1\(2))) # (!\DSP1|digIn\(3) & ((\DCG1|minutedigit1\(2)))))) # (!\DSP1|digIn\(1) & (\DCG1|seconddigit1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DCG1|seconddigit1\(2),
	datac => \DSP1|digIn\(3),
	datad => \DCG1|minutedigit1\(2),
	combout => \DSP1|Mux5~1_combout\);

-- Location: FF_X33_Y21_N17
\DCG2|minutedigit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minutedigit1~0_combout\,
	ena => \DCG2|minutedigit1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit1\(2));

-- Location: LCCOMB_X35_Y21_N8
\DSP1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~2_combout\ = (\DSP1|digIn\(1) & (\DSP1|Mux5~1_combout\)) # (!\DSP1|digIn\(1) & ((\DSP1|digIn\(2) & (\DSP1|Mux5~1_combout\)) # (!\DSP1|digIn\(2) & ((\DCG2|minutedigit1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|Mux5~1_combout\,
	datac => \DCG2|minutedigit1\(2),
	datad => \DSP1|digIn\(2),
	combout => \DSP1|Mux5~2_combout\);

-- Location: LCCOMB_X39_Y20_N6
\DSP1|R[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~3_combout\ = (\DSP1|Mux5~0_combout\ & ((\DSP1|Mux5~4_combout\ & (\DSP1|Mux5~2_combout\ & !\DSP1|Mux5~6_combout\)) # (!\DSP1|Mux5~4_combout\ & ((\DSP1|Mux5~2_combout\) # (!\DSP1|Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~4_combout\,
	datab => \DSP1|Mux5~0_combout\,
	datac => \DSP1|Mux5~2_combout\,
	datad => \DSP1|Mux5~6_combout\,
	combout => \DSP1|R[1]~3_combout\);

-- Location: LCCOMB_X35_Y22_N12
\RG6|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux6~0_combout\ = (\DCG1|seconddigit2\(0) & ((\DCG1|seconddigit2\(1)) # (\DCG1|seconddigit2\(3) $ (!\DCG1|seconddigit2\(2))))) # (!\DCG1|seconddigit2\(0) & ((\DCG1|seconddigit2\(2) & ((\DCG1|seconddigit2\(3)))) # (!\DCG1|seconddigit2\(2) & 
-- (\DCG1|seconddigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y22_N28
\RG1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG1|Mux0~0_combout\ = (\DCG1|hourdigit1\(0)) # (\DCG1|hourdigit1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|hourdigit1\(1),
	combout => \RG1|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y20_N16
\RG8|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux6~0_combout\ = (\DCG2|hourdigit2\(0) & ((\DCG2|hourdigit2\(1)) # (\DCG2|hourdigit2\(3) $ (!\DCG2|hourdigit2\(2))))) # (!\DCG2|hourdigit2\(0) & ((\DCG2|hourdigit2\(2) & (\DCG2|hourdigit2\(3))) # (!\DCG2|hourdigit2\(2) & ((\DCG2|hourdigit2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \RG8|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y22_N26
\RG2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux6~0_combout\ = (\DCG1|hourdigit2\(0) & ((\DCG1|hourdigit2\(1)) # (\DCG1|hourdigit2\(2) $ (!\DCG1|hourdigit2\(3))))) # (!\DCG1|hourdigit2\(0) & ((\DCG1|hourdigit2\(2) & ((\DCG1|hourdigit2\(3)))) # (!\DCG1|hourdigit2\(2) & (\DCG1|hourdigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(0),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(3),
	combout => \RG2|Mux6~0_combout\);

-- Location: LCCOMB_X39_Y21_N10
\DSP1|R[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~10_combout\ = (\DSP1|Mux5~0_combout\ & (!\DSP1|process_5~22_combout\ & !\DSP1|process_5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Mux5~0_combout\,
	datac => \DSP1|process_5~22_combout\,
	datad => \DSP1|process_5~26_combout\,
	combout => \DSP1|R[1]~10_combout\);

-- Location: LCCOMB_X36_Y21_N26
\DSP1|R[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~12_combout\ = \DSP1|Mux12~0_combout\ $ (!\DSP1|vcnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Mux12~0_combout\,
	datad => \DSP1|vcnt\(8),
	combout => \DSP1|R[1]~12_combout\);

-- Location: LCCOMB_X36_Y21_N8
\DSP1|R[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~13_combout\ = (\DSP1|R[1]~12_combout\ & ((\DSP1|Mux5~2_combout\ & (\DSP1|Mux5~4_combout\ $ (\DSP1|Mux5~6_combout\))) # (!\DSP1|Mux5~2_combout\ & ((\DSP1|Mux5~6_combout\) # (!\DSP1|Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~2_combout\,
	datab => \DSP1|Mux5~4_combout\,
	datac => \DSP1|R[1]~12_combout\,
	datad => \DSP1|Mux5~6_combout\,
	combout => \DSP1|R[1]~13_combout\);

-- Location: LCCOMB_X38_Y21_N30
\DSP1|R[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~17_combout\ = (\DSP1|LessThan21~12_combout\ & (!\DSP1|process_5~1_combout\ & (\DSP1|process_5~9_combout\ & \DSP1|process_5~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan21~12_combout\,
	datab => \DSP1|process_5~1_combout\,
	datac => \DSP1|process_5~9_combout\,
	datad => \DSP1|process_5~21_combout\,
	combout => \DSP1|R[1]~17_combout\);

-- Location: LCCOMB_X39_Y21_N12
\DSP1|R[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~18_combout\ = (!\DSP1|R[1]~17_combout\ & (((!\DSP1|process_5~2_combout\) # (!\DSP1|process_5~24_combout\)) # (!\DSP1|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan9~1_combout\,
	datab => \DSP1|process_5~24_combout\,
	datac => \DSP1|process_5~2_combout\,
	datad => \DSP1|R[1]~17_combout\,
	combout => \DSP1|R[1]~18_combout\);

-- Location: LCCOMB_X35_Y22_N28
\RG6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux3~0_combout\ = (\DCG1|seconddigit2\(1) & (!\DCG1|seconddigit2\(3) & ((!\DCG1|seconddigit2\(2)) # (!\DCG1|seconddigit2\(0))))) # (!\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(3) $ (((\DCG1|seconddigit2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y20_N26
\RG4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux3~0_combout\ = (\DCG1|minutedigit2\(2) & (!\DCG1|minutedigit2\(3) & ((!\DCG1|minutedigit2\(1)) # (!\DCG1|minutedigit2\(0))))) # (!\DCG1|minutedigit2\(2) & ((\DCG1|minutedigit2\(1) $ (\DCG1|minutedigit2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(3),
	combout => \RG4|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y20_N20
\RG8|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux3~0_combout\ = (\DCG2|hourdigit2\(1) & (!\DCG2|hourdigit2\(3) & ((!\DCG2|hourdigit2\(2)) # (!\DCG2|hourdigit2\(0))))) # (!\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(3) $ (((\DCG2|hourdigit2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \RG8|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y22_N14
\RG2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux3~0_combout\ = (\DCG1|hourdigit2\(1) & (!\DCG1|hourdigit2\(3) & ((!\DCG1|hourdigit2\(0)) # (!\DCG1|hourdigit2\(2))))) # (!\DCG1|hourdigit2\(1) & (\DCG1|hourdigit2\(3) $ ((\DCG1|hourdigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(3),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \RG2|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y20_N18
\DSP1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux3~0_combout\ = (\DSP1|Mux5~8_combout\ & ((\DSP1|Mux5~9_combout\) # ((\RG8|Mux3~0_combout\)))) # (!\DSP1|Mux5~8_combout\ & (!\DSP1|Mux5~9_combout\ & ((\RG2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~8_combout\,
	datab => \DSP1|Mux5~9_combout\,
	datac => \RG8|Mux3~0_combout\,
	datad => \RG2|Mux3~0_combout\,
	combout => \DSP1|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y20_N8
\RG10|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux3~0_combout\ = (\DCG2|minutedigit2\(1) & (!\DCG2|minutedigit2\(3) & ((!\DCG2|minutedigit2\(2)) # (!\DCG2|minutedigit2\(0))))) # (!\DCG2|minutedigit2\(1) & ((\DCG2|minutedigit2\(3) $ (\DCG2|minutedigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(1),
	datad => \DCG2|minutedigit2\(2),
	combout => \RG10|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y20_N6
\DSP1|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux3~1_combout\ = (\DSP1|Mux5~9_combout\ & ((\DSP1|Mux3~0_combout\ & ((\RG10|Mux3~0_combout\))) # (!\DSP1|Mux3~0_combout\ & (\RG4|Mux3~0_combout\)))) # (!\DSP1|Mux5~9_combout\ & (((\DSP1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG4|Mux3~0_combout\,
	datab => \RG10|Mux3~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \DSP1|Mux3~0_combout\,
	combout => \DSP1|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y20_N16
\DSP1|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux3~2_combout\ = (\DSP1|digIn\(0) & (((!\DSP1|Mux5~7_combout\ & \DSP1|Mux3~1_combout\)))) # (!\DSP1|digIn\(0) & ((\DCG1|hourdigit1\(1)) # ((\DSP1|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit1\(1),
	datab => \DSP1|digIn\(0),
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux3~1_combout\,
	combout => \DSP1|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y20_N10
\DSP1|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux3~3_combout\ = (\DSP1|Mux5~7_combout\ & ((\DSP1|Mux3~2_combout\ & (\DCG2|hourdigit1\(1))) # (!\DSP1|Mux3~2_combout\ & ((\RG6|Mux3~0_combout\))))) # (!\DSP1|Mux5~7_combout\ & (((\DSP1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit1\(1),
	datab => \DSP1|Mux5~7_combout\,
	datac => \RG6|Mux3~0_combout\,
	datad => \DSP1|Mux3~2_combout\,
	combout => \DSP1|Mux3~3_combout\);

-- Location: LCCOMB_X35_Y20_N0
\DSP1|R[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~19_combout\ = (!\DSP1|Mux5~0_combout\ & \DSP1|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Mux5~0_combout\,
	datad => \DSP1|Mux3~3_combout\,
	combout => \DSP1|R[1]~19_combout\);

-- Location: LCCOMB_X35_Y21_N20
\DSP1|R[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~20_combout\ = (\DSP1|Mux5~0_combout\ & ((\DSP1|Mux5~6_combout\ & ((!\DSP1|Mux5~4_combout\) # (!\DSP1|Mux5~2_combout\))) # (!\DSP1|Mux5~6_combout\ & (\DSP1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~6_combout\,
	datab => \DSP1|Mux5~0_combout\,
	datac => \DSP1|Mux5~2_combout\,
	datad => \DSP1|Mux5~4_combout\,
	combout => \DSP1|R[1]~20_combout\);

-- Location: LCCOMB_X39_Y21_N6
\DSP1|R[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~21_combout\ = (\DSP1|process_5~20_combout\ & (\DSP1|R[1]~18_combout\ & ((\DSP1|R[1]~20_combout\) # (\DSP1|R[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~20_combout\,
	datab => \DSP1|process_5~20_combout\,
	datac => \DSP1|R[1]~19_combout\,
	datad => \DSP1|R[1]~18_combout\,
	combout => \DSP1|R[1]~21_combout\);

-- Location: LCCOMB_X31_Y20_N12
\RG4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux5~0_combout\ = (\DCG1|minutedigit2\(1) & (((\DCG1|minutedigit2\(3))))) # (!\DCG1|minutedigit2\(1) & (\DCG1|minutedigit2\(2) $ (((\DCG1|minutedigit2\(0) & !\DCG1|minutedigit2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(3),
	combout => \RG4|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\RG2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux5~0_combout\ = (\DCG1|hourdigit2\(1) & (\DCG1|hourdigit2\(3))) # (!\DCG1|hourdigit2\(1) & (\DCG1|hourdigit2\(2) $ (((!\DCG1|hourdigit2\(3) & \DCG1|hourdigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(3),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \RG2|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y19_N6
\RG7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG7|Mux1~0_combout\ = (\DCG2|hourdigit1\(1)) # (!\DCG2|hourdigit1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCG2|hourdigit1\(0),
	datad => \DCG2|hourdigit1\(1),
	combout => \RG7|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\RG4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux4~0_combout\ = (\DCG1|minutedigit2\(2) & ((\DCG1|minutedigit2\(3)) # (\DCG1|minutedigit2\(1) $ (\DCG1|minutedigit2\(0))))) # (!\DCG1|minutedigit2\(2) & (\DCG1|minutedigit2\(3) & (\DCG1|minutedigit2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(3),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(0),
	combout => \RG4|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y22_N24
\RG6|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux4~0_combout\ = (\DCG1|seconddigit2\(3) & ((\DCG1|seconddigit2\(1)) # ((\DCG1|seconddigit2\(2))))) # (!\DCG1|seconddigit2\(3) & (\DCG1|seconddigit2\(2) & (\DCG1|seconddigit2\(1) $ (\DCG1|seconddigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y22_N6
\RG6|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux0~0_combout\ = (\DCG1|seconddigit2\(2) & (((\DCG1|seconddigit2\(3))))) # (!\DCG1|seconddigit2\(2) & (\DCG1|seconddigit2\(1) & ((\DCG1|seconddigit2\(3)) # (!\DCG1|seconddigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y20_N16
\RG4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux0~0_combout\ = (\DCG1|minutedigit2\(2) & (\DCG1|minutedigit2\(3))) # (!\DCG1|minutedigit2\(2) & (\DCG1|minutedigit2\(1) & ((\DCG1|minutedigit2\(3)) # (!\DCG1|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(3),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(0),
	combout => \RG4|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y21_N30
\RG9|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG9|Mux0~0_combout\ = (!\DCG2|minutedigit1\(2) & (!\DCG2|minutedigit1\(0) & \DCG2|minutedigit1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minutedigit1\(2),
	datac => \DCG2|minutedigit1\(0),
	datad => \DCG2|minutedigit1\(1),
	combout => \RG9|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y21_N18
\RG3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG3|Mux0~0_combout\ = (!\DCG1|minutedigit1\(2) & (\DCG1|minutedigit1\(1) & !\DCG1|minutedigit1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minutedigit1\(2),
	datac => \DCG1|minutedigit1\(1),
	datad => \DCG1|minutedigit1\(0),
	combout => \RG3|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y22_N16
\RG1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG1|Mux0~1_combout\ = (\DCG1|hourdigit1\(0)) # (!\DCG1|hourdigit1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|hourdigit1\(1),
	combout => \RG1|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y20_N8
\DSP1|Mux25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~3_combout\ = (\DSP1|digIn\(1) & ((\DSP1|digIn\(3)) # ((!\RG3|Mux0~0_combout\)))) # (!\DSP1|digIn\(1) & (!\DSP1|digIn\(3) & (\RG1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|digIn\(3),
	datac => \RG1|Mux0~1_combout\,
	datad => \RG3|Mux0~0_combout\,
	combout => \DSP1|Mux25~3_combout\);

-- Location: LCCOMB_X35_Y21_N12
\RG5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG5|Mux0~0_combout\ = (!\DCG1|seconddigit1\(0) & (\DCG1|seconddigit1\(1) & !\DCG1|seconddigit1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit1\(0),
	datac => \DCG1|seconddigit1\(1),
	datad => \DCG1|seconddigit1\(2),
	combout => \RG5|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y20_N6
\DSP1|Mux25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~4_combout\ = (\DSP1|digIn\(3) & ((\DSP1|Mux25~3_combout\ & ((!\RG5|Mux0~0_combout\))) # (!\DSP1|Mux25~3_combout\ & (!\RG9|Mux0~0_combout\)))) # (!\DSP1|digIn\(3) & (((\DSP1|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG9|Mux0~0_combout\,
	datab => \DSP1|digIn\(3),
	datac => \DSP1|Mux25~3_combout\,
	datad => \RG5|Mux0~0_combout\,
	combout => \DSP1|Mux25~4_combout\);

-- Location: LCCOMB_X33_Y20_N26
\RG8|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux0~0_combout\ = (\DCG2|hourdigit2\(2) & (((\DCG2|hourdigit2\(3))))) # (!\DCG2|hourdigit2\(2) & (\DCG2|hourdigit2\(1) & ((\DCG2|hourdigit2\(3)) # (!\DCG2|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(2),
	datab => \DCG2|hourdigit2\(0),
	datac => \DCG2|hourdigit2\(3),
	datad => \DCG2|hourdigit2\(1),
	combout => \RG8|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y20_N14
\RG10|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux0~0_combout\ = (\DCG2|minutedigit2\(2) & (((\DCG2|minutedigit2\(3))))) # (!\DCG2|minutedigit2\(2) & (\DCG2|minutedigit2\(1) & ((\DCG2|minutedigit2\(3)) # (!\DCG2|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(2),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y20_N16
\DSP1|Mux25~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~5_combout\ = (\DSP1|digIn\(3) & ((\DSP1|digIn\(1) & ((!\RG10|Mux0~0_combout\))) # (!\DSP1|digIn\(1) & (!\RG8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG8|Mux0~0_combout\,
	datab => \DSP1|digIn\(1),
	datac => \DSP1|digIn\(3),
	datad => \RG10|Mux0~0_combout\,
	combout => \DSP1|Mux25~5_combout\);

-- Location: LCCOMB_X32_Y22_N24
\RG2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux0~0_combout\ = (\DCG1|hourdigit2\(2) & (((\DCG1|hourdigit2\(3))))) # (!\DCG1|hourdigit2\(2) & (\DCG1|hourdigit2\(1) & ((\DCG1|hourdigit2\(3)) # (!\DCG1|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(2),
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(0),
	datad => \DCG1|hourdigit2\(3),
	combout => \RG2|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y20_N30
\DSP1|Mux25~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~6_combout\ = (\DSP1|Mux25~5_combout\) # ((!\DSP1|digIn\(3) & (\DSP1|digIn\(1) & !\RG2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(3),
	datab => \DSP1|digIn\(1),
	datac => \RG2|Mux0~0_combout\,
	datad => \DSP1|Mux25~5_combout\,
	combout => \DSP1|Mux25~6_combout\);

-- Location: LCCOMB_X36_Y20_N12
\DSP1|Mux25~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~7_combout\ = (\DSP1|digIn\(2) & (!\DSP1|digIn\(0))) # (!\DSP1|digIn\(2) & ((\DSP1|digIn\(0) & (\DSP1|Mux25~6_combout\)) # (!\DSP1|digIn\(0) & ((\DSP1|Mux25~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(0),
	datac => \DSP1|Mux25~6_combout\,
	datad => \DSP1|Mux25~4_combout\,
	combout => \DSP1|Mux25~7_combout\);

-- Location: LCCOMB_X35_Y19_N28
\DSP1|Mux25~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~8_combout\ = (\DSP1|digIn\(1) & ((\DCG2|hourdigit1\(0)) # (!\DCG2|hourdigit1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit1\(1),
	datab => \DCG2|hourdigit1\(0),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux25~8_combout\);

-- Location: LCCOMB_X36_Y20_N26
\DSP1|Mux25~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~9_combout\ = (!\DSP1|digIn\(3) & ((\DSP1|Mux25~8_combout\) # ((!\DSP1|digIn\(1) & !\RG5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(3),
	datab => \DSP1|digIn\(1),
	datac => \DSP1|Mux25~8_combout\,
	datad => \RG5|Mux0~0_combout\,
	combout => \DSP1|Mux25~9_combout\);

-- Location: LCCOMB_X36_Y20_N0
\DSP1|Mux25~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~10_combout\ = (\DSP1|digIn\(2) & ((\DSP1|Mux25~7_combout\ & ((\DSP1|Mux25~9_combout\))) # (!\DSP1|Mux25~7_combout\ & (!\DSP1|Mux25~11_combout\)))) # (!\DSP1|digIn\(2) & (((\DSP1|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|Mux25~11_combout\,
	datac => \DSP1|Mux25~9_combout\,
	datad => \DSP1|Mux25~7_combout\,
	combout => \DSP1|Mux25~10_combout\);

-- Location: LCCOMB_X31_Y20_N14
\RG4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux1~0_combout\ = (\DCG1|minutedigit2\(1) & ((\DCG1|minutedigit2\(3)) # ((\DCG1|minutedigit2\(2) & \DCG1|minutedigit2\(0))))) # (!\DCG1|minutedigit2\(1) & (\DCG1|minutedigit2\(2) $ (((\DCG1|minutedigit2\(0) & !\DCG1|minutedigit2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(3),
	combout => \RG4|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y19_N4
\DSP1|process_5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~30_combout\ = (\DSP1|hcntr\(6) & (\DSP1|hcntr\(9) & (\DSP1|hcntr\(4) & \DSP1|hcntr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(5),
	combout => \DSP1|process_5~30_combout\);

-- Location: LCCOMB_X39_Y19_N12
\DSP1|process_5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~32_combout\ = (\DSP1|process_5~30_combout\ & ((\DSP1|hcntr\(3) & ((!\DSP1|process_5~31_combout\) # (!\DSP1|LessThan43~0_combout\))) # (!\DSP1|hcntr\(3) & (\DSP1|LessThan43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(3),
	datab => \DSP1|LessThan43~0_combout\,
	datac => \DSP1|process_5~30_combout\,
	datad => \DSP1|process_5~31_combout\,
	combout => \DSP1|process_5~32_combout\);

-- Location: LCCOMB_X39_Y19_N30
\DSP1|process_5~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~33_combout\ = (!\DSP1|hcntr\(9) & (\DSP1|hcntr\(3) $ (((\DSP1|hcntr\(1)) # (\DSP1|hcntr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(1),
	datab => \DSP1|hcntr\(3),
	datac => \DSP1|hcntr\(2),
	datad => \DSP1|hcntr\(9),
	combout => \DSP1|process_5~33_combout\);

-- Location: LCCOMB_X39_Y19_N0
\DSP1|process_5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~34_combout\ = (\DSP1|process_5~32_combout\) # ((\DSP1|process_5~0_combout\ & \DSP1|process_5~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~0_combout\,
	datac => \DSP1|process_5~33_combout\,
	datad => \DSP1|process_5~32_combout\,
	combout => \DSP1|process_5~34_combout\);

-- Location: LCCOMB_X37_Y18_N16
\DSP1|LessThan47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan47~0_combout\ = (\DSP1|vcnt\(0) & (\DSP1|vcnt\(1) & \DSP1|vcnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(0),
	datac => \DSP1|vcnt\(1),
	datad => \DSP1|vcnt\(2),
	combout => \DSP1|LessThan47~0_combout\);

-- Location: LCCOMB_X37_Y18_N18
\DSP1|LessThan40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan40~0_combout\ = (!\DSP1|vcnt\(5) & (((!\DSP1|LessThan47~0_combout\) # (!\DSP1|vcnt\(4))) # (!\DSP1|vcnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(3),
	datab => \DSP1|vcnt\(4),
	datac => \DSP1|vcnt\(5),
	datad => \DSP1|LessThan47~0_combout\,
	combout => \DSP1|LessThan40~0_combout\);

-- Location: LCCOMB_X40_Y18_N16
\DSP1|process_5~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~35_combout\ = (!\DSP1|vcnt\(5) & (!\DSP1|vcnt\(3) & !\DSP1|vcnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datac => \DSP1|vcnt\(3),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~35_combout\);

-- Location: LCCOMB_X37_Y18_N20
\DSP1|process_5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~36_combout\ = (\DSP1|vcnt\(2)) # ((\DSP1|vcnt\(1)) # ((!\DSP1|process_5~35_combout\) # (!\DSP1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(2),
	datab => \DSP1|vcnt\(1),
	datac => \DSP1|Equal1~0_combout\,
	datad => \DSP1|process_5~35_combout\,
	combout => \DSP1|process_5~36_combout\);

-- Location: LCCOMB_X37_Y18_N30
\DSP1|process_5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~38_combout\ = (\DSP1|vcnt\(8) & ((\DSP1|LessThan40~0_combout\) # ((!\DSP1|process_5~37_combout\)))) # (!\DSP1|vcnt\(8) & (((\DSP1|process_5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|LessThan40~0_combout\,
	datac => \DSP1|process_5~37_combout\,
	datad => \DSP1|process_5~36_combout\,
	combout => \DSP1|process_5~38_combout\);

-- Location: LCCOMB_X39_Y19_N26
\DSP1|process_5~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~39_combout\ = (!\DSP1|hcntr\(8) & (!\DSP1|hcntr\(7) & (\DSP1|process_5~38_combout\ & \DSP1|process_5~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|hcntr\(7),
	datac => \DSP1|process_5~38_combout\,
	datad => \DSP1|process_5~34_combout\,
	combout => \DSP1|process_5~39_combout\);

-- Location: LCCOMB_X37_Y18_N8
\DSP1|process_5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~40_combout\ = (\DSP1|vcnt\(7) & (\DSP1|vcnt\(6) & (\DSP1|vcnt\(8) & \DSP1|vcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(7),
	datab => \DSP1|vcnt\(6),
	datac => \DSP1|vcnt\(8),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~40_combout\);

-- Location: LCCOMB_X37_Y18_N14
\DSP1|process_5~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~41_combout\ = (\DSP1|process_5~40_combout\ & (\DSP1|LessThan40~0_combout\ & ((\DSP1|vcnt\(3)) # (\DSP1|LessThan47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(3),
	datab => \DSP1|LessThan47~0_combout\,
	datac => \DSP1|process_5~40_combout\,
	datad => \DSP1|LessThan40~0_combout\,
	combout => \DSP1|process_5~41_combout\);

-- Location: LCCOMB_X39_Y19_N22
\DSP1|process_5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~52_combout\ = (\DSP1|hcntr\(6)) # ((\DSP1|hcntr\(4) & (\DSP1|hcntr\(5))) # (!\DSP1|hcntr\(4) & ((\DSP1|hcntr\(3)) # (!\DSP1|hcntr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(4),
	datab => \DSP1|hcntr\(5),
	datac => \DSP1|hcntr\(3),
	datad => \DSP1|hcntr\(6),
	combout => \DSP1|process_5~52_combout\);

-- Location: LCCOMB_X39_Y19_N8
\DSP1|process_5~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~53_combout\ = (\DSP1|hcntr\(9)) # ((!\DSP1|hcntr\(8)) # (!\DSP1|hcntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|hcntr\(8),
	combout => \DSP1|process_5~53_combout\);

-- Location: LCCOMB_X39_Y19_N6
\DSP1|process_5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~54_combout\ = (\DSP1|process_5~52_combout\) # ((\DSP1|process_5~53_combout\) # ((!\DSP1|hcntr\(5) & !\DSP1|LessThan26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~52_combout\,
	datab => \DSP1|hcntr\(5),
	datac => \DSP1|process_5~53_combout\,
	datad => \DSP1|LessThan26~0_combout\,
	combout => \DSP1|process_5~54_combout\);

-- Location: LCCOMB_X40_Y18_N10
\DSP1|process_5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~56_combout\ = (\DSP1|vcnt\(6) & (((\DSP1|process_5~35_combout\)))) # (!\DSP1|vcnt\(6) & (\DSP1|LessThan28~0_combout\ & ((\DSP1|LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan28~0_combout\,
	datab => \DSP1|process_5~35_combout\,
	datac => \DSP1|vcnt\(6),
	datad => \DSP1|LessThan13~1_combout\,
	combout => \DSP1|process_5~56_combout\);

-- Location: LCCOMB_X38_Y19_N26
\DSP1|process_5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~58_combout\ = (\DSP1|hcntr\(4) & (((!\DSP1|hcntr\(2) & !\DSP1|hcntr\(1))) # (!\DSP1|hcntr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(2),
	datab => \DSP1|hcntr\(3),
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(1),
	combout => \DSP1|process_5~58_combout\);

-- Location: LCCOMB_X40_Y22_N22
\DSP1|B[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B[2]~0_combout\ = (!\DSP1|vcnt\(9) & (!\DSP1|process_5~61_combout\ & ((\DSP1|process_5~46_combout\) # (\DSP1|process_5~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(9),
	datab => \DSP1|process_5~46_combout\,
	datac => \DSP1|process_5~39_combout\,
	datad => \DSP1|process_5~61_combout\,
	combout => \DSP1|B[2]~0_combout\);

-- Location: LCCOMB_X36_Y18_N2
\DSP1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal1~1_combout\ = (!\DSP1|vcnt\(1) & (!\DSP1|vcnt\(0) & (\DSP1|vcnt\(3) & !\DSP1|vcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(1),
	datab => \DSP1|vcnt\(0),
	datac => \DSP1|vcnt\(3),
	datad => \DSP1|vcnt\(2),
	combout => \DSP1|Equal1~1_combout\);

-- Location: FF_X28_Y20_N5
\DSP1|clkdiv_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(0));

-- Location: FF_X27_Y20_N7
\DSP1|clkdiv_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(3));

-- Location: LCCOMB_X28_Y20_N10
\DSP1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~0_combout\ = (!\DSP1|clkdiv_cntr\(1) & (!\DSP1|clkdiv_cntr\(2) & (!\DSP1|clkdiv_cntr\(3) & !\DSP1|clkdiv_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(1),
	datab => \DSP1|clkdiv_cntr\(2),
	datac => \DSP1|clkdiv_cntr\(3),
	datad => \DSP1|clkdiv_cntr\(0),
	combout => \DSP1|Equal6~0_combout\);

-- Location: FF_X27_Y20_N11
\DSP1|clkdiv_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(5));

-- Location: LCCOMB_X28_Y20_N22
\DSP1|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~1_combout\ = (!\DSP1|clkdiv_cntr\(5) & (\DSP1|clkdiv_cntr\(6) & (!\DSP1|clkdiv_cntr\(7) & !\DSP1|clkdiv_cntr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(5),
	datab => \DSP1|clkdiv_cntr\(6),
	datac => \DSP1|clkdiv_cntr\(7),
	datad => \DSP1|clkdiv_cntr\(4),
	combout => \DSP1|Equal6~1_combout\);

-- Location: LCCOMB_X28_Y20_N12
\DSP1|Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~2_combout\ = (\DSP1|Equal6~1_combout\ & \DSP1|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Equal6~1_combout\,
	datad => \DSP1|Equal6~0_combout\,
	combout => \DSP1|Equal6~2_combout\);

-- Location: FF_X28_Y20_N21
\DSP1|clkdiv_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(13));

-- Location: FF_X28_Y19_N31
\DSP1|clkdiv_cntr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(21));

-- Location: LCCOMB_X28_Y19_N10
\DSP1|Equal6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~6_combout\ = (!\DSP1|clkdiv_cntr\(23) & (\DSP1|clkdiv_cntr\(22) & (\DSP1|clkdiv_cntr\(21) & \DSP1|clkdiv_cntr\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(23),
	datab => \DSP1|clkdiv_cntr\(22),
	datac => \DSP1|clkdiv_cntr\(21),
	datad => \DSP1|clkdiv_cntr\(20),
	combout => \DSP1|Equal6~6_combout\);

-- Location: LCCOMB_X37_Y22_N28
\DSP1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_0~0_combout\ = (!\DSP1|LessThan8~0_combout\ & (!\DSP1|vcnt\(9) & ((!\DSP1|hcntr\(9)) # (!\DSP1|LessThan44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan8~0_combout\,
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|LessThan44~1_combout\,
	datad => \DSP1|hcntr\(9),
	combout => \DSP1|process_0~0_combout\);

-- Location: LCCOMB_X38_Y21_N0
\DSP1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan5~0_combout\ = (!\DSP1|hcntr\(5) & (!\DSP1|hcntr\(6) & ((!\DSP1|hcntr\(4)) # (!\DSP1|LessThan44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(5),
	datab => \DSP1|LessThan44~0_combout\,
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(6),
	combout => \DSP1|LessThan5~0_combout\);

-- Location: LCCOMB_X37_Y22_N6
\DSP1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan5~1_combout\ = ((\DSP1|LessThan5~0_combout\) # (!\DSP1|hcntr\(7))) # (!\DSP1|hcntr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(8),
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|LessThan5~0_combout\,
	combout => \DSP1|LessThan5~1_combout\);

-- Location: LCCOMB_X38_Y21_N26
\DSP1|digIn~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~10_combout\ = (\DSP1|digIn~2_combout\ & ((\DSP1|hcntr\(5)) # ((\DSP1|LessThan44~0_combout\) # (\DSP1|hcntr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(5),
	datab => \DSP1|LessThan44~0_combout\,
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|digIn~2_combout\,
	combout => \DSP1|digIn~10_combout\);

-- Location: LCCOMB_X37_Y22_N10
\DSP1|digIn~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~11_combout\ = (\DSP1|LessThan5~1_combout\ & (!\DSP1|LessThan4~1_combout\ & ((\DSP1|digIn~10_combout\) # (\DSP1|hcntr\(8))))) # (!\DSP1|LessThan5~1_combout\ & ((\DSP1|digIn~10_combout\) # ((\DSP1|hcntr\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan5~1_combout\,
	datab => \DSP1|digIn~10_combout\,
	datac => \DSP1|hcntr\(8),
	datad => \DSP1|LessThan4~1_combout\,
	combout => \DSP1|digIn~11_combout\);

-- Location: LCCOMB_X35_Y21_N6
\DCG1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Add13~0_combout\ = \DCG1|seconddigit1\(2) $ (((\DCG1|seconddigit1\(0) & \DCG1|seconddigit1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit1\(0),
	datac => \DCG1|seconddigit1\(1),
	datad => \DCG1|seconddigit1\(2),
	combout => \DCG1|Add13~0_combout\);

-- Location: LCCOMB_X35_Y21_N0
\DCG1|seconddigit1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit1~1_combout\ = (!\DCG1|Equal5~0_combout\ & (!\DCG1|seconddigit1[2]~0_combout\ & \DCG1|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|Equal5~0_combout\,
	datac => \DCG1|seconddigit1[2]~0_combout\,
	datad => \DCG1|Add13~0_combout\,
	combout => \DCG1|seconddigit1~1_combout\);

-- Location: LCCOMB_X32_Y24_N4
\DCG1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~2_combout\ = (\DCG1|clock_counter\(8)) # ((\DCG1|clock_counter\(9)) # ((\DCG1|clock_counter\(10)) # (\DCG1|clock_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(8),
	datab => \DCG1|clock_counter\(9),
	datac => \DCG1|clock_counter\(10),
	datad => \DCG1|clock_counter\(11),
	combout => \DCG1|Equal4~2_combout\);

-- Location: LCCOMB_X32_Y23_N28
\DCG1|Equal4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~5_combout\ = (\DCG1|clock_counter\(16)) # (((\DCG1|clock_counter\(18)) # (!\DCG1|clock_counter\(17))) # (!\DCG1|clock_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(16),
	datab => \DCG1|clock_counter\(19),
	datac => \DCG1|clock_counter\(17),
	datad => \DCG1|clock_counter\(18),
	combout => \DCG1|Equal4~5_combout\);

-- Location: LCCOMB_X30_Y20_N8
\DCG1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan0~0_combout\ = (\DCG1|minute\(0)) # ((\DCG1|minute\(3)) # ((\DCG1|minute\(2)) # (\DCG1|minute\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(0),
	datab => \DCG1|minute\(3),
	datac => \DCG1|minute\(2),
	datad => \DCG1|minute\(1),
	combout => \DCG1|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y20_N2
\DCG1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan0~1_combout\ = (\DCG1|minute\(4)) # ((\DCG1|LessThan0~0_combout\) # (\DCG1|minute\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minute\(4),
	datac => \DCG1|LessThan0~0_combout\,
	datad => \DCG1|minute\(5),
	combout => \DCG1|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y20_N22
\DCG1|minutedigit1[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~1_combout\ = (\DCG1|Equal0~0_combout\ & (((!\DCG1|minute\(5)) # (!\DCG1|LessThan4~0_combout\)) # (!\DCG1|minute\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal0~0_combout\,
	datab => \DCG1|minute\(4),
	datac => \DCG1|LessThan4~0_combout\,
	datad => \DCG1|minute\(5),
	combout => \DCG1|minutedigit1[2]~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\DCG1|minutedigit1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~2_combout\ = ((\DCG1|first_time_flag~q\ & ((\DCG1|minutedigit1[2]~1_combout\) # (\DCG1|LessThan3~1_combout\)))) # (!\DCG1|Equal4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|Equal4~8_combout\,
	datac => \DCG1|minutedigit1[2]~1_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|minutedigit1[2]~2_combout\);

-- Location: LCCOMB_X31_Y21_N6
\DCG1|minutedigit1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~4_combout\ = (\DCG1|LessThan4~1_combout\) # ((\DCG1|minutedigit1[2]~2_combout\ & (!\DCG1|process_2~0_combout\)) # (!\DCG1|minutedigit1[2]~2_combout\ & ((!\DCG1|minutedigit1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1[2]~2_combout\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|minutedigit1~3_combout\,
	datad => \DCG1|LessThan4~1_combout\,
	combout => \DCG1|minutedigit1[2]~4_combout\);

-- Location: LCCOMB_X31_Y21_N24
\DCG1|minutedigit1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~5_combout\ = (\DCG1|minutedigit1[2]~4_combout\ & (!\DCG1|process_2~0_combout\ & (\DCG1|LessThan0~1_combout\ & \DCG1|minutedigit1[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1[2]~4_combout\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|LessThan0~1_combout\,
	datad => \DCG1|minutedigit1[2]~2_combout\,
	combout => \DCG1|minutedigit1~5_combout\);

-- Location: LCCOMB_X31_Y21_N30
\DCG1|minutedigit1[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~6_combout\ = (!\DCG1|process_2~0_combout\ & (((\DCG1|LessThan0~1_combout\ & \DCG1|Equal1~0_combout\)) # (!\DCG1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|LessThan0~1_combout\,
	datab => \DCG1|Equal1~0_combout\,
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|process_2~0_combout\,
	combout => \DCG1|minutedigit1[2]~6_combout\);

-- Location: LCCOMB_X31_Y21_N0
\DCG1|minutedigit1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~7_combout\ = ((\DCG1|Equal0~0_combout\ & (!\DCG1|LessThan4~1_combout\ & \DCG1|process_2~0_combout\))) # (!\DCG1|adjustminute_button_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|adjustminute_button_state~q\,
	datab => \DCG1|Equal0~0_combout\,
	datac => \DCG1|LessThan4~1_combout\,
	datad => \DCG1|process_2~0_combout\,
	combout => \DCG1|minutedigit1[2]~7_combout\);

-- Location: LCCOMB_X31_Y21_N2
\DCG1|minutedigit1[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[2]~8_combout\ = (((!\DCG1|minutedigit1[2]~7_combout\ & !\DCG1|minutedigit1[2]~6_combout\)) # (!\DCG1|minutedigit1[2]~2_combout\)) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG1|minutedigit1[2]~7_combout\,
	datac => \DCG1|minutedigit1[2]~6_combout\,
	datad => \DCG1|minutedigit1[2]~2_combout\,
	combout => \DCG1|minutedigit1[2]~8_combout\);

-- Location: LCCOMB_X33_Y21_N12
\DCG2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Add1~0_combout\ = \DCG2|minutedigit1\(2) $ (((\DCG2|minutedigit1\(0) & \DCG2|minutedigit1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minutedigit1\(2),
	datac => \DCG2|minutedigit1\(0),
	datad => \DCG2|minutedigit1\(1),
	combout => \DCG2|Add1~0_combout\);

-- Location: LCCOMB_X33_Y21_N16
\DCG2|minutedigit1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit1~0_combout\ = (\DCG2|Add1~0_combout\ & (!\DCG2|minute[0]~6_combout\ & !\DCG2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Add1~0_combout\,
	datab => \DCG2|minute[0]~6_combout\,
	datad => \DCG2|Equal0~0_combout\,
	combout => \DCG2|minutedigit1~0_combout\);

-- Location: LCCOMB_X33_Y21_N22
\DCG2|minutedigit1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit1[0]~1_combout\ = (\DCG1|first_time_flag~q\ & ((\DCG1|LessThan3~1_combout\) # ((\DCG2|Equal0~0_combout\ & \DCG2|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Equal0~0_combout\,
	datab => \DCG2|LessThan4~1_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG2|minutedigit1[0]~1_combout\);

-- Location: LCCOMB_X31_Y21_N22
\DCG1|minutedigit1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~10_combout\ = \DCG1|minutedigit1\(0) $ (\DCG1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minutedigit1\(0),
	datad => \DCG1|Equal0~0_combout\,
	combout => \DCG1|minutedigit1~10_combout\);

-- Location: LCCOMB_X31_Y21_N26
\DCG1|minutedigit1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~12_combout\ = (\DCG1|minutedigit1[0]~0_combout\ & ((\DCG1|LessThan3~1_combout\) # ((\DCG1|first_time_flag~q\ & \DCG1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|minutedigit1[0]~0_combout\,
	datac => \DCG1|LessThan3~1_combout\,
	datad => \DCG1|Equal0~0_combout\,
	combout => \DCG1|minutedigit1~12_combout\);

-- Location: LCCOMB_X35_Y21_N22
\DCG1|minutedigit1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~14_combout\ = (\DCG1|minutedigit1~5_combout\ & ((\DCG1|minutedigit1\(0) $ (!\DCG1|minutedigit1\(1))) # (!\DCG1|minutedigit1[2]~4_combout\))) # (!\DCG1|minutedigit1~5_combout\ & (!\DCG1|minutedigit1[2]~4_combout\ & 
-- (\DCG1|minutedigit1\(0) $ (\DCG1|minutedigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1~5_combout\,
	datab => \DCG1|minutedigit1\(0),
	datac => \DCG1|minutedigit1\(1),
	datad => \DCG1|minutedigit1[2]~4_combout\,
	combout => \DCG1|minutedigit1~14_combout\);

-- Location: LCCOMB_X35_Y22_N10
\DCG1|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Add14~1_combout\ = \DCG1|seconddigit2\(3) $ (((\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(0) & \DCG1|seconddigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \DCG1|Add14~1_combout\);

-- Location: LCCOMB_X33_Y22_N26
\DCG1|hourdigit1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~9_combout\ = (!\DCG1|hourdigit1\(0) & (\DCG1|LessThan4~1_combout\ & (!\DCG1|Equal2~0_combout\ & !\DCG1|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit1\(0),
	datab => \DCG1|LessThan4~1_combout\,
	datac => \DCG1|Equal2~0_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|hourdigit1~9_combout\);

-- Location: LCCOMB_X31_Y21_N10
\DCG1|minutedigit2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~3_combout\ = (\DCG1|process_2~0_combout\ & (((!\DCG1|LessThan4~1_combout\)))) # (!\DCG1|process_2~0_combout\ & (\DCG1|LessThan0~1_combout\ & (\DCG1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|LessThan0~1_combout\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|LessThan4~1_combout\,
	combout => \DCG1|minutedigit2~3_combout\);

-- Location: LCCOMB_X30_Y20_N26
\DCG1|minute[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[5]~6_combout\ = (\DCG1|LessThan0~1_combout\ & ((\DCG1|first_time_flag~q\) # (!\DCG1|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|Equal4~8_combout\,
	datad => \DCG1|LessThan0~1_combout\,
	combout => \DCG1|minute[5]~6_combout\);

-- Location: LCCOMB_X31_Y20_N4
\DCG1|minutedigit2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~7_combout\ = (\DCG1|minutedigit2[3]~6_combout\ & (((\DCG1|minutedigit1[2]~1_combout\)))) # (!\DCG1|minutedigit2[3]~6_combout\ & (\DCG1|Equal1~0_combout\ & ((\DCG1|minute[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal1~0_combout\,
	datab => \DCG1|minutedigit1[2]~1_combout\,
	datac => \DCG1|minute[5]~6_combout\,
	datad => \DCG1|minutedigit2[3]~6_combout\,
	combout => \DCG1|minutedigit2~7_combout\);

-- Location: LCCOMB_X31_Y20_N2
\DCG1|minutedigit2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~10_combout\ = \DCG1|minutedigit2\(2) $ (((\DCG1|minutedigit2\(0) & (\DCG1|minutedigit2\(1) & \DCG1|minutedigit2[3]~6_combout\)) # (!\DCG1|minutedigit2\(0) & (!\DCG1|minutedigit2\(1) & !\DCG1|minutedigit2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2[3]~6_combout\,
	combout => \DCG1|minutedigit2~10_combout\);

-- Location: LCCOMB_X31_Y20_N22
\DCG1|minutedigit2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~11_combout\ = (\DCG1|minutedigit2~7_combout\ & \DCG1|minutedigit2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCG1|minutedigit2~7_combout\,
	datad => \DCG1|minutedigit2~10_combout\,
	combout => \DCG1|minutedigit2~11_combout\);

-- Location: LCCOMB_X32_Y22_N10
\DCG1|hourdigit2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~11_combout\ = \DCG1|hourdigit2\(2) $ (((\DCG1|hourdigit2[2]~4_combout\ & (\DCG1|hourdigit2\(1) & \DCG1|hourdigit2\(0))) # (!\DCG1|hourdigit2[2]~4_combout\ & (!\DCG1|hourdigit2\(1) & !\DCG1|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2[2]~4_combout\,
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \DCG1|hourdigit2~11_combout\);

-- Location: LCCOMB_X32_Y22_N8
\DCG1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Add8~0_combout\ = \DCG1|hourdigit2\(3) $ (((\DCG1|hourdigit2\(0) & (\DCG1|hourdigit2\(1) & \DCG1|hourdigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(0),
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(3),
	combout => \DCG1|Add8~0_combout\);

-- Location: FF_X39_Y24_N11
\DSP1|cerceveclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(2));

-- Location: FF_X39_Y24_N23
\DSP1|cerceveclk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(8));

-- Location: FF_X39_Y24_N27
\DSP1|cerceveclk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(10));

-- Location: LCCOMB_X39_Y24_N2
\DSP1|Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~2_combout\ = (!\DSP1|cerceveclk_cnt\(10) & (\DSP1|cerceveclk_cnt\(9) & (!\DSP1|cerceveclk_cnt\(8) & !\DSP1|cerceveclk_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(10),
	datab => \DSP1|cerceveclk_cnt\(9),
	datac => \DSP1|cerceveclk_cnt\(8),
	datad => \DSP1|cerceveclk_cnt\(11),
	combout => \DSP1|Equal7~2_combout\);

-- Location: FF_X40_Y23_N5
\DSP1|cerceveclk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(16));

-- Location: FF_X40_Y23_N3
\DSP1|cerceveclk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(17));

-- Location: FF_X39_Y23_N11
\DSP1|cerceveclk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(18));

-- Location: FF_X39_Y23_N13
\DSP1|cerceveclk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(19));

-- Location: LCCOMB_X40_Y23_N12
\DSP1|Equal7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~5_combout\ = (!\DSP1|cerceveclk_cnt\(18) & (\DSP1|cerceveclk_cnt\(17) & (\DSP1|cerceveclk_cnt\(16) & !\DSP1|cerceveclk_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(18),
	datab => \DSP1|cerceveclk_cnt\(17),
	datac => \DSP1|cerceveclk_cnt\(16),
	datad => \DSP1|cerceveclk_cnt\(19),
	combout => \DSP1|Equal7~5_combout\);

-- Location: FF_X40_Y23_N7
\DSP1|cerceveclk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(20));

-- Location: LCCOMB_X28_Y20_N4
\DSP1|clkdiv_cntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~0_combout\ = (\DSP1|Add2~0_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Add2~0_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\DSP1|clkdiv_cntr~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~4_combout\ = (\DSP1|Add2~26_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Add2~26_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~4_combout\);

-- Location: LCCOMB_X28_Y19_N30
\DSP1|clkdiv_cntr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~10_combout\ = (!\DSP1|Equal6~10_combout\ & \DSP1|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal6~10_combout\,
	datad => \DSP1|Add2~42_combout\,
	combout => \DSP1|clkdiv_cntr~10_combout\);

-- Location: FF_X2_Y27_N25
\KD4|samples[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|clk5ms~clkctrl_outclk\,
	d => \KD4|samples[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD4|samples\(2));

-- Location: FF_X1_Y27_N25
\KD4|samples[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|clk5ms~clkctrl_outclk\,
	d => \KD4|samples[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD4|samples\(1));

-- Location: FF_X0_Y27_N3
\KD4|samples[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|clk5ms~clkctrl_outclk\,
	d => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD4|samples\(0));

-- Location: LCCOMB_X3_Y27_N12
\KD4|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal1~0_combout\ = (!\KD4|samples\(1) & (!\KD4|samples\(0) & !\KD4|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD4|samples\(1),
	datac => \KD4|samples\(0),
	datad => \KD4|samples\(2),
	combout => \KD4|Equal1~0_combout\);

-- Location: LCCOMB_X3_Y27_N10
\KD4|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|comb~0_combout\ = (\KD4|samples\(1) & (\KD4|samples\(0) & \KD4|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD4|samples\(1),
	datac => \KD4|samples\(0),
	datad => \KD4|samples\(2),
	combout => \KD4|comb~0_combout\);

-- Location: FF_X1_Y24_N25
\KD5|samples[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|clk5ms~clkctrl_outclk\,
	d => \KD5|samples[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD5|samples\(2));

-- Location: FF_X1_Y24_N11
\KD5|samples[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|clk5ms~clkctrl_outclk\,
	d => \KD5|samples[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD5|samples\(1));

-- Location: FF_X0_Y24_N3
\KD5|samples[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|clk5ms~clkctrl_outclk\,
	d => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD5|samples\(0));

-- Location: LCCOMB_X1_Y24_N0
\KD5|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|Equal1~0_combout\ = (!\KD5|samples\(1) & (!\KD5|samples\(0) & !\KD5|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD5|samples\(1),
	datab => \KD5|samples\(0),
	datad => \KD5|samples\(2),
	combout => \KD5|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\KD5|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|comb~0_combout\ = (\KD5|samples\(1) & (\KD5|samples\(0) & \KD5|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD5|samples\(1),
	datab => \KD5|samples\(0),
	datad => \KD5|samples\(2),
	combout => \KD5|comb~0_combout\);

-- Location: LCCOMB_X3_Y21_N14
\KD1|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|comb~0_combout\ = (\KD1|samples\(1) & (\KD1|samples\(0) & \KD1|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|samples\(1),
	datac => \KD1|samples\(0),
	datad => \KD1|samples\(2),
	combout => \KD1|comb~0_combout\);

-- Location: FF_X7_Y2_N23
\RE1|B_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RE1|B_current~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|B_prev~q\);

-- Location: LCCOMB_X40_Y23_N4
\DSP1|cerceveclk_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~6_combout\ = (\DSP1|Add4~32_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Add4~32_combout\,
	datad => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~6_combout\);

-- Location: LCCOMB_X40_Y23_N2
\DSP1|cerceveclk_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~7_combout\ = (!\DSP1|Equal7~8_combout\ & \DSP1|Add4~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal7~8_combout\,
	datad => \DSP1|Add4~34_combout\,
	combout => \DSP1|cerceveclk_cnt~7_combout\);

-- Location: LCCOMB_X40_Y23_N6
\DSP1|cerceveclk_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~8_combout\ = (!\DSP1|Equal7~8_combout\ & \DSP1|Add4~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal7~8_combout\,
	datad => \DSP1|Add4~40_combout\,
	combout => \DSP1|cerceveclk_cnt~8_combout\);

-- Location: FF_X22_Y20_N17
\KD4|clk5ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD4|clk5ms~feeder_combout\,
	ena => \KD4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD4|clk5ms~q\);

-- Location: FF_X20_Y20_N23
\KD5|clk5ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD5|clk5ms~feeder_combout\,
	ena => \KD4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD5|clk5ms~q\);

-- Location: FF_X22_Y20_N1
\KD1|clk5ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk5ms~feeder_combout\,
	ena => \KD4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk5ms~q\);

-- Location: FF_X1_Y23_N17
\KD2|samples[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD2|clk5ms~clkctrl_outclk\,
	d => \KD2|samples[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD2|samples\(2));

-- Location: FF_X21_Y20_N27
\KD1|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KD1|clk_counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(3));

-- Location: FF_X21_Y20_N5
\KD1|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(2));

-- Location: FF_X21_Y20_N3
\KD1|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(1));

-- Location: FF_X21_Y20_N7
\KD1|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KD1|clk_counter~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(0));

-- Location: LCCOMB_X22_Y20_N8
\KD4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~0_combout\ = (!\KD1|clk_counter\(0) & (!\KD1|clk_counter\(2) & (\KD1|clk_counter\(3) & !\KD1|clk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(0),
	datab => \KD1|clk_counter\(2),
	datac => \KD1|clk_counter\(3),
	datad => \KD1|clk_counter\(1),
	combout => \KD4|Equal0~0_combout\);

-- Location: FF_X22_Y20_N5
\KD1|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(6));

-- Location: FF_X21_Y20_N9
\KD1|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(4));

-- Location: FF_X21_Y20_N11
\KD1|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(5));

-- Location: FF_X21_Y20_N15
\KD1|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(7));

-- Location: LCCOMB_X22_Y20_N6
\KD4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~1_combout\ = (!\KD1|clk_counter\(4) & (\KD1|clk_counter\(6) & (!\KD1|clk_counter\(5) & !\KD1|clk_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(4),
	datab => \KD1|clk_counter\(6),
	datac => \KD1|clk_counter\(5),
	datad => \KD1|clk_counter\(7),
	combout => \KD4|Equal0~1_combout\);

-- Location: FF_X22_Y20_N3
\KD1|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(11));

-- Location: FF_X21_Y20_N17
\KD1|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(8));

-- Location: FF_X21_Y20_N19
\KD1|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(9));

-- Location: FF_X21_Y20_N21
\KD1|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(10));

-- Location: LCCOMB_X22_Y20_N18
\KD4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~2_combout\ = (!\KD1|clk_counter\(8) & (!\KD1|clk_counter\(9) & (\KD1|clk_counter\(11) & !\KD1|clk_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(8),
	datab => \KD1|clk_counter\(9),
	datac => \KD1|clk_counter\(11),
	datad => \KD1|clk_counter\(10),
	combout => \KD4|Equal0~2_combout\);

-- Location: FF_X20_Y20_N21
\KD1|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(13));

-- Location: FF_X20_Y20_N9
\KD1|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(14));

-- Location: FF_X20_Y20_N11
\KD1|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(15));

-- Location: FF_X21_Y20_N25
\KD1|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(12));

-- Location: LCCOMB_X20_Y20_N2
\KD4|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~3_combout\ = (\KD1|clk_counter\(15) & (\KD1|clk_counter\(13) & (\KD1|clk_counter\(14) & !\KD1|clk_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(15),
	datab => \KD1|clk_counter\(13),
	datac => \KD1|clk_counter\(14),
	datad => \KD1|clk_counter\(12),
	combout => \KD4|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y20_N22
\KD4|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~4_combout\ = (\KD4|Equal0~1_combout\ & (\KD4|Equal0~2_combout\ & (\KD4|Equal0~0_combout\ & \KD4|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD4|Equal0~1_combout\,
	datab => \KD4|Equal0~2_combout\,
	datac => \KD4|Equal0~0_combout\,
	datad => \KD4|Equal0~3_combout\,
	combout => \KD4|Equal0~4_combout\);

-- Location: FF_X22_Y20_N25
\KD1|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|clk_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(16));

-- Location: FF_X21_Y19_N3
\KD1|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(17));

-- Location: FF_X21_Y19_N5
\KD1|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(18));

-- Location: FF_X21_Y19_N7
\KD1|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(19));

-- Location: LCCOMB_X22_Y20_N26
\KD4|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~5_combout\ = (!\KD1|clk_counter\(19) & (\KD1|clk_counter\(16) & (!\KD1|clk_counter\(17) & !\KD1|clk_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(19),
	datab => \KD1|clk_counter\(16),
	datac => \KD1|clk_counter\(17),
	datad => \KD1|clk_counter\(18),
	combout => \KD4|Equal0~5_combout\);

-- Location: FF_X21_Y19_N9
\KD1|clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(20));

-- Location: FF_X21_Y19_N11
\KD1|clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(21));

-- Location: FF_X21_Y19_N13
\KD1|clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(22));

-- Location: FF_X21_Y19_N15
\KD1|clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(23));

-- Location: LCCOMB_X22_Y19_N8
\KD4|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~6_combout\ = (!\KD1|clk_counter\(23) & (!\KD1|clk_counter\(20) & (!\KD1|clk_counter\(21) & !\KD1|clk_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(23),
	datab => \KD1|clk_counter\(20),
	datac => \KD1|clk_counter\(21),
	datad => \KD1|clk_counter\(22),
	combout => \KD4|Equal0~6_combout\);

-- Location: FF_X21_Y19_N17
\KD1|clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(24));

-- Location: FF_X21_Y19_N19
\KD1|clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(25));

-- Location: FF_X21_Y19_N21
\KD1|clk_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(26));

-- Location: FF_X21_Y19_N23
\KD1|clk_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(27));

-- Location: LCCOMB_X22_Y19_N14
\KD4|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~7_combout\ = (!\KD1|clk_counter\(27) & (!\KD1|clk_counter\(25) & (!\KD1|clk_counter\(24) & !\KD1|clk_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(27),
	datab => \KD1|clk_counter\(25),
	datac => \KD1|clk_counter\(24),
	datad => \KD1|clk_counter\(26),
	combout => \KD4|Equal0~7_combout\);

-- Location: FF_X21_Y19_N29
\KD1|clk_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(30));

-- Location: FF_X21_Y19_N31
\KD1|clk_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(31));

-- Location: LCCOMB_X22_Y19_N0
\KD4|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~8_combout\ = (!\KD1|clk_counter\(31) & !\KD1|clk_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD1|clk_counter\(31),
	datad => \KD1|clk_counter\(30),
	combout => \KD4|Equal0~8_combout\);

-- Location: FF_X21_Y19_N25
\KD1|clk_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(28));

-- Location: FF_X21_Y19_N27
\KD1|clk_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|clk_counter\(29));

-- Location: LCCOMB_X22_Y20_N28
\KD4|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~9_combout\ = (!\KD1|clk_counter\(29) & (\KD4|Equal0~8_combout\ & (!\KD1|clk_counter\(28) & \KD4|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk_counter\(29),
	datab => \KD4|Equal0~8_combout\,
	datac => \KD1|clk_counter\(28),
	datad => \KD4|Equal0~7_combout\,
	combout => \KD4|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y20_N14
\KD4|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|Equal0~10_combout\ = (\KD4|Equal0~5_combout\ & (\KD4|Equal0~6_combout\ & (\KD4|Equal0~4_combout\ & \KD4|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD4|Equal0~5_combout\,
	datab => \KD4|Equal0~6_combout\,
	datac => \KD4|Equal0~4_combout\,
	datad => \KD4|Equal0~9_combout\,
	combout => \KD4|Equal0~10_combout\);

-- Location: FF_X23_Y20_N1
\KD3|clk5ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD3|clk5ms~feeder_combout\,
	ena => \KD4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD3|clk5ms~q\);

-- Location: FF_X22_Y20_N13
\KD2|clk5ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KD2|clk5ms~feeder_combout\,
	ena => \KD4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD2|clk5ms~q\);

-- Location: LCCOMB_X22_Y20_N20
\KD1|clk_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~0_combout\ = (\KD1|Add0~6_combout\ & !\KD4|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD1|Add0~6_combout\,
	datac => \KD4|Equal0~10_combout\,
	combout => \KD1|clk_counter~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\KD1|clk_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~1_combout\ = (\KD1|Add0~0_combout\ & !\KD4|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|Add0~0_combout\,
	datac => \KD4|Equal0~10_combout\,
	combout => \KD1|clk_counter~1_combout\);

-- Location: LCCOMB_X22_Y20_N4
\KD1|clk_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~2_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD4|Equal0~10_combout\,
	datad => \KD1|Add0~12_combout\,
	combout => \KD1|clk_counter~2_combout\);

-- Location: LCCOMB_X22_Y20_N2
\KD1|clk_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~3_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD4|Equal0~10_combout\,
	datad => \KD1|Add0~22_combout\,
	combout => \KD1|clk_counter~3_combout\);

-- Location: LCCOMB_X20_Y20_N20
\KD1|clk_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~4_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD4|Equal0~10_combout\,
	datac => \KD1|Add0~26_combout\,
	combout => \KD1|clk_counter~4_combout\);

-- Location: LCCOMB_X20_Y20_N8
\KD1|clk_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~5_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD4|Equal0~10_combout\,
	datad => \KD1|Add0~28_combout\,
	combout => \KD1|clk_counter~5_combout\);

-- Location: LCCOMB_X20_Y20_N10
\KD1|clk_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~6_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD4|Equal0~10_combout\,
	datac => \KD1|Add0~30_combout\,
	combout => \KD1|clk_counter~6_combout\);

-- Location: LCCOMB_X22_Y20_N24
\KD1|clk_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk_counter~7_combout\ = (!\KD4|Equal0~10_combout\ & \KD1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD4|Equal0~10_combout\,
	datad => \KD1|Add0~32_combout\,
	combout => \KD1|clk_counter~7_combout\);

-- Location: LCCOMB_X36_Y20_N18
\DSP1|Mux25~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~11_combout\ = (\DSP1|digIn\(1) & ((\RG6|Mux0~0_combout\) # ((\DSP1|digIn\(3))))) # (!\DSP1|digIn\(1) & ((\DSP1|digIn\(3) & (\RG6|Mux0~0_combout\)) # (!\DSP1|digIn\(3) & ((\RG4|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG6|Mux0~0_combout\,
	datab => \DSP1|digIn\(1),
	datac => \DSP1|digIn\(3),
	datad => \RG4|Mux0~0_combout\,
	combout => \DSP1|Mux25~11_combout\);

-- Location: LCCOMB_X36_Y20_N4
\DSP1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add9~6_combout\ = (\DSP1|digIn\(2) & (!\DSP1|digIn\(3) & (!\DSP1|digIn\(1)))) # (!\DSP1|digIn\(2) & ((\DSP1|digIn\(3) & ((\DSP1|digIn\(1)) # (!\DSP1|digIn\(0)))) # (!\DSP1|digIn\(3) & (\DSP1|digIn\(1) & !\DSP1|digIn\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|digIn\(1),
	datad => \DSP1|digIn\(0),
	combout => \DSP1|Add9~6_combout\);

-- Location: LCCOMB_X35_Y21_N2
\DCG1|minutedigit1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~15_combout\ = (\DCG1|minutedigit1\(1) & (\DCG1|minutedigit1\(0) & ((!\DCG1|minutedigit1[2]~4_combout\)))) # (!\DCG1|minutedigit1\(1) & (!\DCG1|minutedigit1\(0) & (\DCG1|minutedigit1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1\(1),
	datab => \DCG1|minutedigit1\(0),
	datac => \DCG1|minutedigit1~5_combout\,
	datad => \DCG1|minutedigit1[2]~4_combout\,
	combout => \DCG1|minutedigit1~15_combout\);

-- Location: LCCOMB_X35_Y21_N24
\DCG1|minutedigit1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~16_combout\ = (\DCG1|minutedigit1~5_combout\ & ((\DCG1|minutedigit1\(2) & ((!\DCG1|minutedigit1~15_combout\) # (!\DCG1|minutedigit1[2]~4_combout\))) # (!\DCG1|minutedigit1\(2) & ((\DCG1|minutedigit1~15_combout\))))) # 
-- (!\DCG1|minutedigit1~5_combout\ & (!\DCG1|minutedigit1[2]~4_combout\ & (\DCG1|minutedigit1\(2) $ (\DCG1|minutedigit1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1~5_combout\,
	datab => \DCG1|minutedigit1[2]~4_combout\,
	datac => \DCG1|minutedigit1\(2),
	datad => \DCG1|minutedigit1~15_combout\,
	combout => \DCG1|minutedigit1~16_combout\);

-- Location: LCCOMB_X23_Y20_N6
\KD4|clk5ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|clk5ms~0_combout\ = !\KD4|clk5ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD4|clk5ms~q\,
	combout => \KD4|clk5ms~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\KD5|clk5ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|clk5ms~0_combout\ = !\KD5|clk5ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD5|clk5ms~q\,
	combout => \KD5|clk5ms~0_combout\);

-- Location: LCCOMB_X20_Y20_N12
\KD1|clk5ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk5ms~0_combout\ = !\KD1|clk5ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|clk5ms~q\,
	combout => \KD1|clk5ms~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\KD3|clk5ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|clk5ms~0_combout\ = !\KD3|clk5ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD3|clk5ms~q\,
	combout => \KD3|clk5ms~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\KD2|clk5ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|clk5ms~0_combout\ = !\KD2|clk5ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD2|clk5ms~q\,
	combout => \KD2|clk5ms~0_combout\);

-- Location: LCCOMB_X19_Y27_N18
\KD4|button_out_buffer\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|button_out_buffer~combout\ = (!\KD4|Equal1~0_combout\ & ((\KD4|comb~0_combout\) # (\KD4|button_out_buffer~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD4|comb~0_combout\,
	datac => \KD4|Equal1~0_combout\,
	datad => \KD4|button_out_buffer~combout\,
	combout => \KD4|button_out_buffer~combout\);

-- Location: LCCOMB_X1_Y14_N0
\KD5|button_out_buffer\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|button_out_buffer~combout\ = (!\KD5|Equal1~0_combout\ & ((\KD5|comb~0_combout\) # (\KD5|button_out_buffer~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD5|comb~0_combout\,
	datac => \KD5|Equal1~0_combout\,
	datad => \KD5|button_out_buffer~combout\,
	combout => \KD5|button_out_buffer~combout\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: CLKCTRL_G11
\KD1|clk5ms~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD1|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD1|clk5ms~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\KD3|clk5ms~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD3|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD3|clk5ms~clkctrl_outclk\);

-- Location: CLKCTRL_G15
\KD2|clk5ms~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD2|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD2|clk5ms~clkctrl_outclk\);

-- Location: CLKCTRL_G12
\KD4|button_out_buffer~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD4|button_out_buffer~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD4|button_out_buffer~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\KD5|button_out_buffer~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD5|button_out_buffer~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD5|button_out_buffer~clkctrl_outclk\);

-- Location: CLKCTRL_G16
\KD4|clk5ms~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD4|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD4|clk5ms~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\KD5|clk5ms~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KD5|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KD5|clk5ms~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y27_N24
\KD4|samples[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|samples[2]~feeder_combout\ = \KD4|samples\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD4|samples\(1),
	combout => \KD4|samples[2]~feeder_combout\);

-- Location: LCCOMB_X1_Y27_N24
\KD4|samples[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|samples[1]~feeder_combout\ = \KD4|samples\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD4|samples\(0),
	combout => \KD4|samples[1]~feeder_combout\);

-- Location: LCCOMB_X1_Y24_N24
\KD5|samples[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|samples[2]~feeder_combout\ = \KD5|samples\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD5|samples\(1),
	combout => \KD5|samples[2]~feeder_combout\);

-- Location: LCCOMB_X1_Y24_N10
\KD5|samples[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|samples[1]~feeder_combout\ = \KD5|samples\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD5|samples\(0),
	combout => \KD5|samples[1]~feeder_combout\);

-- Location: LCCOMB_X1_Y23_N16
\KD2|samples[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|samples[2]~feeder_combout\ = \KD2|samples\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD2|samples\(1),
	combout => \KD2|samples[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N16
\KD4|clk5ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD4|clk5ms~feeder_combout\ = \KD4|clk5ms~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD4|clk5ms~0_combout\,
	combout => \KD4|clk5ms~feeder_combout\);

-- Location: LCCOMB_X20_Y20_N22
\KD5|clk5ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD5|clk5ms~feeder_combout\ = \KD5|clk5ms~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KD5|clk5ms~0_combout\,
	combout => \KD5|clk5ms~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N0
\KD1|clk5ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|clk5ms~feeder_combout\ = \KD1|clk5ms~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD1|clk5ms~0_combout\,
	combout => \KD1|clk5ms~feeder_combout\);

-- Location: LCCOMB_X23_Y20_N0
\KD3|clk5ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|clk5ms~feeder_combout\ = \KD3|clk5ms~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD3|clk5ms~0_combout\,
	combout => \KD3|clk5ms~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N12
\KD2|clk5ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|clk5ms~feeder_combout\ = \KD2|clk5ms~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD2|clk5ms~0_combout\,
	combout => \KD2|clk5ms~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|HS~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|VS~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|R\(0),
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|R\(1),
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|R\(2),
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|R\(3),
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|G\(0),
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|G\(1),
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|G\(2),
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|G\(3),
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|B\(0),
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|B\(1),
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|B\(2),
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DSP1|B\(3),
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: LCCOMB_X19_Y27_N22
\DSP1|pclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|pclk~0_combout\ = !\DSP1|pclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|pclk~q\,
	combout => \DSP1|pclk~0_combout\);

-- Location: LCCOMB_X19_Y27_N4
\DSP1|pclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|pclk~feeder_combout\ = \DSP1|pclk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|pclk~0_combout\,
	combout => \DSP1|pclk~feeder_combout\);

-- Location: FF_X19_Y27_N5
\DSP1|pclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|pclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|pclk~q\);

-- Location: CLKCTRL_G14
\DSP1|pclk~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DSP1|pclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DSP1|pclk~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y19_N0
\DSP1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~0_combout\ = \DSP1|hcntr\(0) $ (VCC)
-- \DSP1|Add1~1\ = CARRY(\DSP1|hcntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(0),
	datad => VCC,
	combout => \DSP1|Add1~0_combout\,
	cout => \DSP1|Add1~1\);

-- Location: FF_X38_Y19_N1
\DSP1|hcntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(0));

-- Location: LCCOMB_X38_Y19_N2
\DSP1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~2_combout\ = (\DSP1|hcntr\(1) & (!\DSP1|Add1~1\)) # (!\DSP1|hcntr\(1) & ((\DSP1|Add1~1\) # (GND)))
-- \DSP1|Add1~3\ = CARRY((!\DSP1|Add1~1\) # (!\DSP1|hcntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(1),
	datad => VCC,
	cin => \DSP1|Add1~1\,
	combout => \DSP1|Add1~2_combout\,
	cout => \DSP1|Add1~3\);

-- Location: FF_X38_Y19_N3
\DSP1|hcntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(1));

-- Location: LCCOMB_X38_Y19_N4
\DSP1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~4_combout\ = (\DSP1|hcntr\(2) & (\DSP1|Add1~3\ $ (GND))) # (!\DSP1|hcntr\(2) & (!\DSP1|Add1~3\ & VCC))
-- \DSP1|Add1~5\ = CARRY((\DSP1|hcntr\(2) & !\DSP1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(2),
	datad => VCC,
	cin => \DSP1|Add1~3\,
	combout => \DSP1|Add1~4_combout\,
	cout => \DSP1|Add1~5\);

-- Location: LCCOMB_X38_Y19_N6
\DSP1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~6_combout\ = (\DSP1|hcntr\(3) & (!\DSP1|Add1~5\)) # (!\DSP1|hcntr\(3) & ((\DSP1|Add1~5\) # (GND)))
-- \DSP1|Add1~7\ = CARRY((!\DSP1|Add1~5\) # (!\DSP1|hcntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(3),
	datad => VCC,
	cin => \DSP1|Add1~5\,
	combout => \DSP1|Add1~6_combout\,
	cout => \DSP1|Add1~7\);

-- Location: FF_X38_Y19_N7
\DSP1|hcntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(3));

-- Location: LCCOMB_X38_Y19_N8
\DSP1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~8_combout\ = (\DSP1|hcntr\(4) & (\DSP1|Add1~7\ $ (GND))) # (!\DSP1|hcntr\(4) & (!\DSP1|Add1~7\ & VCC))
-- \DSP1|Add1~9\ = CARRY((\DSP1|hcntr\(4) & !\DSP1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(4),
	datad => VCC,
	cin => \DSP1|Add1~7\,
	combout => \DSP1|Add1~8_combout\,
	cout => \DSP1|Add1~9\);

-- Location: FF_X38_Y19_N9
\DSP1|hcntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(4));

-- Location: FF_X38_Y19_N5
\DSP1|hcntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(2));

-- Location: LCCOMB_X38_Y19_N24
\DSP1|LessThan43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan43~0_combout\ = (\DSP1|hcntr\(0) & (\DSP1|hcntr\(2) & \DSP1|hcntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(0),
	datac => \DSP1|hcntr\(2),
	datad => \DSP1|hcntr\(1),
	combout => \DSP1|LessThan43~0_combout\);

-- Location: LCCOMB_X38_Y18_N16
\DSP1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal0~0_combout\ = (\DSP1|hcntr\(9) & (\DSP1|hcntr\(3) & \DSP1|LessThan43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(9),
	datac => \DSP1|hcntr\(3),
	datad => \DSP1|LessThan43~0_combout\,
	combout => \DSP1|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y19_N10
\DSP1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~10_combout\ = (\DSP1|hcntr\(5) & (!\DSP1|Add1~9\)) # (!\DSP1|hcntr\(5) & ((\DSP1|Add1~9\) # (GND)))
-- \DSP1|Add1~11\ = CARRY((!\DSP1|Add1~9\) # (!\DSP1|hcntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(5),
	datad => VCC,
	cin => \DSP1|Add1~9\,
	combout => \DSP1|Add1~10_combout\,
	cout => \DSP1|Add1~11\);

-- Location: LCCOMB_X38_Y19_N12
\DSP1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~12_combout\ = (\DSP1|hcntr\(6) & (\DSP1|Add1~11\ $ (GND))) # (!\DSP1|hcntr\(6) & (!\DSP1|Add1~11\ & VCC))
-- \DSP1|Add1~13\ = CARRY((\DSP1|hcntr\(6) & !\DSP1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datad => VCC,
	cin => \DSP1|Add1~11\,
	combout => \DSP1|Add1~12_combout\,
	cout => \DSP1|Add1~13\);

-- Location: LCCOMB_X38_Y19_N14
\DSP1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add1~14_combout\ = (\DSP1|hcntr\(7) & (!\DSP1|Add1~13\)) # (!\DSP1|hcntr\(7) & ((\DSP1|Add1~13\) # (GND)))
-- \DSP1|Add1~15\ = CARRY((!\DSP1|Add1~13\) # (!\DSP1|hcntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(7),
	datad => VCC,
	cin => \DSP1|Add1~13\,
	combout => \DSP1|Add1~14_combout\,
	cout => \DSP1|Add1~15\);

-- Location: FF_X38_Y19_N15
\DSP1|hcntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(7));

-- Location: LCCOMB_X38_Y18_N30
\DSP1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal0~1_combout\ = (!\DSP1|hcntr\(6) & (!\DSP1|hcntr\(5) & (!\DSP1|hcntr\(7) & \DSP1|hcntr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datab => \DSP1|hcntr\(5),
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|hcntr\(4),
	combout => \DSP1|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y18_N0
\DSP1|hcntr~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|hcntr~0_combout\ = (\DSP1|Add1~10_combout\ & (((!\DSP1|Equal0~1_combout\) # (!\DSP1|Equal0~0_combout\)) # (!\DSP1|hcntr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|Equal0~0_combout\,
	datac => \DSP1|Equal0~1_combout\,
	datad => \DSP1|Add1~10_combout\,
	combout => \DSP1|hcntr~0_combout\);

-- Location: FF_X38_Y18_N1
\DSP1|hcntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|hcntr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(5));

-- Location: LCCOMB_X38_Y19_N30
\DSP1|HS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|HS~1_combout\ = ((\DSP1|hcntr\(4)) # (!\DSP1|hcntr\(5))) # (!\DSP1|hcntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(5),
	combout => \DSP1|HS~1_combout\);

-- Location: FF_X38_Y18_N9
\DSP1|HS~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|HS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|HS~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y18_N20
\DSP1|HS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|HS~0_combout\ = (!\DSP1|hcntr\(8) & (\DSP1|hcntr\(7) & \DSP1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|Equal0~0_combout\,
	combout => \DSP1|HS~0_combout\);

-- Location: LCCOMB_X38_Y18_N8
\DSP1|HS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|HS~2_combout\ = (\DSP1|HS~0_combout\ & ((\DSP1|process_5~0_combout\) # ((\DSP1|HS~1_combout\ & \DSP1|HS~_Duplicate_1_q\)))) # (!\DSP1|HS~0_combout\ & (((\DSP1|HS~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~0_combout\,
	datab => \DSP1|HS~1_combout\,
	datac => \DSP1|HS~_Duplicate_1_q\,
	datad => \DSP1|HS~0_combout\,
	combout => \DSP1|HS~2_combout\);

-- Location: DDIOOUTCELL_X41_Y18_N18
\DSP1|HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|HS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|HS~q\);

-- Location: LCCOMB_X36_Y18_N12
\DSP1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~0_combout\ = \DSP1|vcnt\(0) $ (VCC)
-- \DSP1|Add0~1\ = CARRY(\DSP1|vcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(0),
	datad => VCC,
	combout => \DSP1|Add0~0_combout\,
	cout => \DSP1|Add0~1\);

-- Location: LCCOMB_X38_Y18_N10
\DSP1|hcntr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|hcntr~2_combout\ = (\DSP1|Add1~16_combout\ & (((!\DSP1|Equal0~0_combout\) # (!\DSP1|hcntr\(8))) # (!\DSP1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~1_combout\,
	datab => \DSP1|Add1~16_combout\,
	datac => \DSP1|hcntr\(8),
	datad => \DSP1|Equal0~0_combout\,
	combout => \DSP1|hcntr~2_combout\);

-- Location: FF_X38_Y18_N11
\DSP1|hcntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|hcntr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(8));

-- Location: LCCOMB_X38_Y18_N24
\DSP1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal0~2_combout\ = (\DSP1|hcntr\(8) & (\DSP1|Equal0~1_combout\ & \DSP1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datac => \DSP1|Equal0~1_combout\,
	datad => \DSP1|Equal0~0_combout\,
	combout => \DSP1|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y18_N12
\DSP1|vcnt[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[2]~7_combout\ = (\DSP1|Equal0~2_combout\ & (\DSP1|Add0~4_combout\)) # (!\DSP1|Equal0~2_combout\ & ((\DSP1|vcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add0~4_combout\,
	datac => \DSP1|vcnt\(2),
	datad => \DSP1|Equal0~2_combout\,
	combout => \DSP1|vcnt[2]~7_combout\);

-- Location: FF_X37_Y18_N13
\DSP1|vcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(2));

-- Location: LCCOMB_X36_Y18_N14
\DSP1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~2_combout\ = (\DSP1|vcnt\(1) & (!\DSP1|Add0~1\)) # (!\DSP1|vcnt\(1) & ((\DSP1|Add0~1\) # (GND)))
-- \DSP1|Add0~3\ = CARRY((!\DSP1|Add0~1\) # (!\DSP1|vcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(1),
	datad => VCC,
	cin => \DSP1|Add0~1\,
	combout => \DSP1|Add0~2_combout\,
	cout => \DSP1|Add0~3\);

-- Location: LCCOMB_X36_Y18_N18
\DSP1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~6_combout\ = (\DSP1|vcnt\(3) & (!\DSP1|Add0~5\)) # (!\DSP1|vcnt\(3) & ((\DSP1|Add0~5\) # (GND)))
-- \DSP1|Add0~7\ = CARRY((!\DSP1|Add0~5\) # (!\DSP1|vcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(3),
	datad => VCC,
	cin => \DSP1|Add0~5\,
	combout => \DSP1|Add0~6_combout\,
	cout => \DSP1|Add0~7\);

-- Location: LCCOMB_X37_Y18_N10
\DSP1|vcnt[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[3]~6_combout\ = (\DSP1|vcnt[9]~4_combout\ & ((\DSP1|Add0~6_combout\) # ((\DSP1|vcnt\(3) & !\DSP1|Equal0~2_combout\)))) # (!\DSP1|vcnt[9]~4_combout\ & (((\DSP1|vcnt\(3) & !\DSP1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt[9]~4_combout\,
	datab => \DSP1|Add0~6_combout\,
	datac => \DSP1|vcnt\(3),
	datad => \DSP1|Equal0~2_combout\,
	combout => \DSP1|vcnt[3]~6_combout\);

-- Location: FF_X37_Y18_N11
\DSP1|vcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(3));

-- Location: LCCOMB_X36_Y18_N20
\DSP1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~8_combout\ = (\DSP1|vcnt\(4) & (\DSP1|Add0~7\ $ (GND))) # (!\DSP1|vcnt\(4) & (!\DSP1|Add0~7\ & VCC))
-- \DSP1|Add0~9\ = CARRY((\DSP1|vcnt\(4) & !\DSP1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(4),
	datad => VCC,
	cin => \DSP1|Add0~7\,
	combout => \DSP1|Add0~8_combout\,
	cout => \DSP1|Add0~9\);

-- Location: LCCOMB_X38_Y20_N28
\DSP1|vcnt[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[4]~8_combout\ = (\DSP1|Equal0~2_combout\ & ((\DSP1|Add0~8_combout\))) # (!\DSP1|Equal0~2_combout\ & (\DSP1|vcnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datac => \DSP1|vcnt\(4),
	datad => \DSP1|Add0~8_combout\,
	combout => \DSP1|vcnt[4]~8_combout\);

-- Location: FF_X38_Y20_N29
\DSP1|vcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(4));

-- Location: LCCOMB_X36_Y18_N22
\DSP1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~10_combout\ = (\DSP1|vcnt\(5) & (!\DSP1|Add0~9\)) # (!\DSP1|vcnt\(5) & ((\DSP1|Add0~9\) # (GND)))
-- \DSP1|Add0~11\ = CARRY((!\DSP1|Add0~9\) # (!\DSP1|vcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(5),
	datad => VCC,
	cin => \DSP1|Add0~9\,
	combout => \DSP1|Add0~10_combout\,
	cout => \DSP1|Add0~11\);

-- Location: LCCOMB_X38_Y18_N14
\DSP1|vcnt[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[5]~0_combout\ = (\DSP1|Equal0~2_combout\ & ((\DSP1|Add0~10_combout\))) # (!\DSP1|Equal0~2_combout\ & (\DSP1|vcnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal0~2_combout\,
	datac => \DSP1|vcnt\(5),
	datad => \DSP1|Add0~10_combout\,
	combout => \DSP1|vcnt[5]~0_combout\);

-- Location: FF_X38_Y18_N15
\DSP1|vcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(5));

-- Location: LCCOMB_X36_Y18_N24
\DSP1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~12_combout\ = (\DSP1|vcnt\(6) & (\DSP1|Add0~11\ $ (GND))) # (!\DSP1|vcnt\(6) & (!\DSP1|Add0~11\ & VCC))
-- \DSP1|Add0~13\ = CARRY((\DSP1|vcnt\(6) & !\DSP1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(6),
	datad => VCC,
	cin => \DSP1|Add0~11\,
	combout => \DSP1|Add0~12_combout\,
	cout => \DSP1|Add0~13\);

-- Location: LCCOMB_X37_Y18_N0
\DSP1|vcnt[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[6]~2_combout\ = (\DSP1|Equal0~2_combout\ & ((\DSP1|Add0~12_combout\))) # (!\DSP1|Equal0~2_combout\ & (\DSP1|vcnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal0~2_combout\,
	datac => \DSP1|vcnt\(6),
	datad => \DSP1|Add0~12_combout\,
	combout => \DSP1|vcnt[6]~2_combout\);

-- Location: FF_X37_Y18_N1
\DSP1|vcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(6));

-- Location: LCCOMB_X36_Y18_N26
\DSP1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~14_combout\ = (\DSP1|vcnt\(7) & (!\DSP1|Add0~13\)) # (!\DSP1|vcnt\(7) & ((\DSP1|Add0~13\) # (GND)))
-- \DSP1|Add0~15\ = CARRY((!\DSP1|Add0~13\) # (!\DSP1|vcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(7),
	datad => VCC,
	cin => \DSP1|Add0~13\,
	combout => \DSP1|Add0~14_combout\,
	cout => \DSP1|Add0~15\);

-- Location: LCCOMB_X36_Y18_N28
\DSP1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~16_combout\ = (\DSP1|vcnt\(8) & (\DSP1|Add0~15\ $ (GND))) # (!\DSP1|vcnt\(8) & (!\DSP1|Add0~15\ & VCC))
-- \DSP1|Add0~17\ = CARRY((\DSP1|vcnt\(8) & !\DSP1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(8),
	datad => VCC,
	cin => \DSP1|Add0~15\,
	combout => \DSP1|Add0~16_combout\,
	cout => \DSP1|Add0~17\);

-- Location: LCCOMB_X36_Y18_N0
\DSP1|vcnt[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[8]~1_combout\ = (\DSP1|Equal0~2_combout\ & (\DSP1|Add0~16_combout\)) # (!\DSP1|Equal0~2_combout\ & ((\DSP1|vcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datab => \DSP1|Add0~16_combout\,
	datac => \DSP1|vcnt\(8),
	combout => \DSP1|vcnt[8]~1_combout\);

-- Location: FF_X36_Y18_N1
\DSP1|vcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(8));

-- Location: LCCOMB_X36_Y18_N30
\DSP1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add0~18_combout\ = \DSP1|Add0~17\ $ (\DSP1|vcnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DSP1|vcnt\(9),
	cin => \DSP1|Add0~17\,
	combout => \DSP1|Add0~18_combout\);

-- Location: LCCOMB_X36_Y18_N6
\DSP1|vcnt[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[9]~9_combout\ = (\DSP1|Equal0~2_combout\ & (!\DSP1|Equal1~2_combout\ & ((\DSP1|Add0~18_combout\)))) # (!\DSP1|Equal0~2_combout\ & (((\DSP1|vcnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datab => \DSP1|Equal1~2_combout\,
	datac => \DSP1|vcnt\(9),
	datad => \DSP1|Add0~18_combout\,
	combout => \DSP1|vcnt[9]~9_combout\);

-- Location: FF_X36_Y18_N7
\DSP1|vcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(9));

-- Location: LCCOMB_X36_Y18_N10
\DSP1|vcnt[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[7]~3_combout\ = (\DSP1|Equal0~2_combout\ & ((\DSP1|Add0~14_combout\))) # (!\DSP1|Equal0~2_combout\ & (\DSP1|vcnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datac => \DSP1|vcnt\(7),
	datad => \DSP1|Add0~14_combout\,
	combout => \DSP1|vcnt[7]~3_combout\);

-- Location: FF_X36_Y18_N11
\DSP1|vcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(7));

-- Location: LCCOMB_X37_Y18_N22
\DSP1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal1~0_combout\ = (!\DSP1|vcnt\(6) & !\DSP1|vcnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(6),
	datad => \DSP1|vcnt\(7),
	combout => \DSP1|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y18_N24
\DSP1|process_5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~4_combout\ = (!\DSP1|vcnt\(8) & (!\DSP1|vcnt\(5) & !\DSP1|vcnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datac => \DSP1|vcnt\(5),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~4_combout\);

-- Location: LCCOMB_X37_Y18_N28
\DSP1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal1~2_combout\ = (\DSP1|Equal1~1_combout\ & (\DSP1|vcnt\(9) & (\DSP1|Equal1~0_combout\ & \DSP1|process_5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal1~1_combout\,
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|Equal1~0_combout\,
	datad => \DSP1|process_5~4_combout\,
	combout => \DSP1|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y18_N6
\DSP1|vcnt[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[9]~4_combout\ = (\DSP1|Equal0~1_combout\ & (\DSP1|hcntr\(8) & (\DSP1|Equal0~0_combout\ & !\DSP1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~1_combout\,
	datab => \DSP1|hcntr\(8),
	datac => \DSP1|Equal0~0_combout\,
	datad => \DSP1|Equal1~2_combout\,
	combout => \DSP1|vcnt[9]~4_combout\);

-- Location: LCCOMB_X36_Y18_N8
\DSP1|vcnt[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[0]~5_combout\ = (\DSP1|Equal0~2_combout\ & (\DSP1|Add0~0_combout\ & ((\DSP1|vcnt[9]~4_combout\)))) # (!\DSP1|Equal0~2_combout\ & ((\DSP1|vcnt\(0)) # ((\DSP1|Add0~0_combout\ & \DSP1|vcnt[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datab => \DSP1|Add0~0_combout\,
	datac => \DSP1|vcnt\(0),
	datad => \DSP1|vcnt[9]~4_combout\,
	combout => \DSP1|vcnt[0]~5_combout\);

-- Location: FF_X36_Y18_N9
\DSP1|vcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(0));

-- Location: LCCOMB_X36_Y18_N4
\DSP1|vcnt[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|vcnt[1]~10_combout\ = (\DSP1|Equal0~2_combout\ & (\DSP1|Add0~2_combout\)) # (!\DSP1|Equal0~2_combout\ & ((\DSP1|vcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal0~2_combout\,
	datab => \DSP1|Add0~2_combout\,
	datac => \DSP1|vcnt\(1),
	combout => \DSP1|vcnt[1]~10_combout\);

-- Location: FF_X36_Y18_N5
\DSP1|vcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|vcnt[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|vcnt\(1));

-- Location: FF_X38_Y18_N7
\DSP1|VS~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|VS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|VS~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y18_N28
\DSP1|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan8~0_combout\ = (\DSP1|vcnt\(7) & (\DSP1|vcnt\(5) & (\DSP1|vcnt\(6) & \DSP1|vcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(7),
	datab => \DSP1|vcnt\(5),
	datac => \DSP1|vcnt\(6),
	datad => \DSP1|vcnt\(8),
	combout => \DSP1|LessThan8~0_combout\);

-- Location: LCCOMB_X38_Y18_N18
\DSP1|VS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|VS~1_combout\ = (\DSP1|VS~0_combout\ & (\DSP1|LessThan8~0_combout\ & (!\DSP1|vcnt\(9) & \DSP1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|VS~0_combout\,
	datab => \DSP1|LessThan8~0_combout\,
	datac => \DSP1|vcnt\(9),
	datad => \DSP1|Equal0~2_combout\,
	combout => \DSP1|VS~1_combout\);

-- Location: LCCOMB_X38_Y18_N6
\DSP1|VS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|VS~2_combout\ = (\DSP1|VS~1_combout\ & (!\DSP1|vcnt\(1))) # (!\DSP1|VS~1_combout\ & ((\DSP1|VS~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|vcnt\(1),
	datac => \DSP1|VS~_Duplicate_1_q\,
	datad => \DSP1|VS~1_combout\,
	combout => \DSP1|VS~2_combout\);

-- Location: DDIOOUTCELL_X41_Y18_N25
\DSP1|VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|VS~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|VS~q\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X37_Y18_N26
\DSP1|LessThan28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan28~0_combout\ = (\DSP1|vcnt\(3) & ((\DSP1|vcnt\(1)) # ((\DSP1|vcnt\(2)) # (\DSP1|vcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(3),
	datab => \DSP1|vcnt\(1),
	datac => \DSP1|vcnt\(2),
	datad => \DSP1|vcnt\(0),
	combout => \DSP1|LessThan28~0_combout\);

-- Location: LCCOMB_X40_Y18_N14
\DSP1|process_5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~48_combout\ = (!\DSP1|vcnt\(5) & ((\DSP1|vcnt\(4) & (!\DSP1|vcnt\(3))) # (!\DSP1|vcnt\(4) & ((\DSP1|LessThan28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(3),
	datac => \DSP1|LessThan28~0_combout\,
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~48_combout\);

-- Location: LCCOMB_X40_Y18_N28
\DSP1|process_5~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~57_combout\ = (\DSP1|vcnt\(7) & (((!\DSP1|vcnt\(6) & \DSP1|process_5~48_combout\)))) # (!\DSP1|vcnt\(7) & (\DSP1|process_5~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~56_combout\,
	datab => \DSP1|vcnt\(6),
	datac => \DSP1|process_5~48_combout\,
	datad => \DSP1|vcnt\(7),
	combout => \DSP1|process_5~57_combout\);

-- Location: LCCOMB_X38_Y18_N22
\DSP1|hcntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|hcntr~1_combout\ = (\DSP1|Add1~18_combout\ & (((!\DSP1|hcntr\(8)) # (!\DSP1|Equal0~1_combout\)) # (!\DSP1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add1~18_combout\,
	datab => \DSP1|Equal0~0_combout\,
	datac => \DSP1|Equal0~1_combout\,
	datad => \DSP1|hcntr\(8),
	combout => \DSP1|hcntr~1_combout\);

-- Location: FF_X38_Y18_N23
\DSP1|hcntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|hcntr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(9));

-- Location: FF_X38_Y19_N13
\DSP1|hcntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DSP1|pclk~clkctrl_outclk\,
	d => \DSP1|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|hcntr\(6));

-- Location: LCCOMB_X38_Y19_N22
\DSP1|digIn~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~2_combout\ = (\DSP1|hcntr\(7) & \DSP1|hcntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|hcntr\(6),
	combout => \DSP1|digIn~2_combout\);

-- Location: LCCOMB_X39_Y19_N14
\DSP1|process_5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~50_combout\ = (!\DSP1|hcntr\(8) & (!\DSP1|hcntr\(5) & (!\DSP1|hcntr\(9) & \DSP1|digIn~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|hcntr\(5),
	datac => \DSP1|hcntr\(9),
	datad => \DSP1|digIn~2_combout\,
	combout => \DSP1|process_5~50_combout\);

-- Location: LCCOMB_X38_Y19_N28
\DSP1|LessThan26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan26~0_combout\ = (\DSP1|hcntr\(3) & ((\DSP1|hcntr\(2)) # ((\DSP1|hcntr\(0)) # (\DSP1|hcntr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(2),
	datab => \DSP1|hcntr\(3),
	datac => \DSP1|hcntr\(0),
	datad => \DSP1|hcntr\(1),
	combout => \DSP1|LessThan26~0_combout\);

-- Location: LCCOMB_X39_Y19_N10
\DSP1|process_5~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~59_combout\ = (\DSP1|process_5~58_combout\) # ((!\DSP1|hcntr\(4) & \DSP1|LessThan26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~58_combout\,
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|LessThan26~0_combout\,
	combout => \DSP1|process_5~59_combout\);

-- Location: LCCOMB_X39_Y19_N20
\DSP1|process_5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~60_combout\ = (\DSP1|vcnt\(8) & (((\DSP1|process_5~50_combout\ & \DSP1|process_5~59_combout\)) # (!\DSP1|process_5~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~54_combout\,
	datab => \DSP1|vcnt\(8),
	datac => \DSP1|process_5~50_combout\,
	datad => \DSP1|process_5~59_combout\,
	combout => \DSP1|process_5~60_combout\);

-- Location: LCCOMB_X40_Y18_N20
\DSP1|process_5~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~47_combout\ = (\DSP1|vcnt\(5) & (!\DSP1|vcnt\(3) & ((!\DSP1|vcnt\(4))))) # (!\DSP1|vcnt\(5) & (((\DSP1|LessThan28~0_combout\ & \DSP1|vcnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(3),
	datac => \DSP1|LessThan28~0_combout\,
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~47_combout\);

-- Location: LCCOMB_X40_Y18_N0
\DSP1|process_5~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~49_combout\ = (\DSP1|vcnt\(6) & (!\DSP1|vcnt\(7) & (\DSP1|process_5~48_combout\))) # (!\DSP1|vcnt\(6) & (\DSP1|vcnt\(7) & ((\DSP1|process_5~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(6),
	datab => \DSP1|vcnt\(7),
	datac => \DSP1|process_5~48_combout\,
	datad => \DSP1|process_5~47_combout\,
	combout => \DSP1|process_5~49_combout\);

-- Location: LCCOMB_X39_Y19_N16
\DSP1|process_5~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~51_combout\ = (\DSP1|process_5~50_combout\ & ((\DSP1|hcntr\(4) & (!\DSP1|hcntr\(3))) # (!\DSP1|hcntr\(4) & ((\DSP1|LessThan26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(4),
	datab => \DSP1|hcntr\(3),
	datac => \DSP1|process_5~50_combout\,
	datad => \DSP1|LessThan26~0_combout\,
	combout => \DSP1|process_5~51_combout\);

-- Location: LCCOMB_X39_Y19_N28
\DSP1|process_5~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~55_combout\ = (!\DSP1|vcnt\(8) & (\DSP1|process_5~49_combout\ & ((\DSP1|process_5~51_combout\) # (!\DSP1|process_5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~54_combout\,
	datab => \DSP1|vcnt\(8),
	datac => \DSP1|process_5~49_combout\,
	datad => \DSP1|process_5~51_combout\,
	combout => \DSP1|process_5~55_combout\);

-- Location: LCCOMB_X40_Y18_N18
\DSP1|process_5~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~61_combout\ = (!\DSP1|vcnt\(9) & ((\DSP1|process_5~55_combout\) # ((\DSP1|process_5~57_combout\ & \DSP1|process_5~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(9),
	datab => \DSP1|process_5~57_combout\,
	datac => \DSP1|process_5~60_combout\,
	datad => \DSP1|process_5~55_combout\,
	combout => \DSP1|process_5~61_combout\);

-- Location: LCCOMB_X38_Y21_N2
\DSP1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan4~0_combout\ = (\DSP1|hcntr\(7)) # (\DSP1|hcntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(7),
	datac => \DSP1|hcntr\(6),
	combout => \DSP1|LessThan4~0_combout\);

-- Location: LCCOMB_X39_Y19_N2
\DSP1|process_5~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~31_combout\ = (\DSP1|hcntr\(4) & \DSP1|hcntr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(5),
	combout => \DSP1|process_5~31_combout\);

-- Location: LCCOMB_X38_Y22_N28
\DSP1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan4~1_combout\ = (\DSP1|hcntr\(8) & ((\DSP1|LessThan4~0_combout\) # ((\DSP1|LessThan44~0_combout\ & \DSP1|process_5~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan44~0_combout\,
	datab => \DSP1|hcntr\(8),
	datac => \DSP1|LessThan4~0_combout\,
	datad => \DSP1|process_5~31_combout\,
	combout => \DSP1|LessThan4~1_combout\);

-- Location: LCCOMB_X40_Y18_N30
\DSP1|process_5~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~37_combout\ = (\DSP1|vcnt\(6) & \DSP1|vcnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|vcnt\(6),
	datad => \DSP1|vcnt\(7),
	combout => \DSP1|process_5~37_combout\);

-- Location: LCCOMB_X40_Y18_N12
\DSP1|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan13~1_combout\ = (\DSP1|vcnt\(5) & \DSP1|vcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|vcnt\(5),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|LessThan13~1_combout\);

-- Location: LCCOMB_X40_Y18_N26
\DSP1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan1~0_combout\ = (!\DSP1|vcnt\(8) & (!\DSP1|vcnt\(9) & ((!\DSP1|LessThan13~1_combout\) # (!\DSP1|process_5~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|process_5~37_combout\,
	datad => \DSP1|LessThan13~1_combout\,
	combout => \DSP1|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y22_N14
\DSP1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_0~2_combout\ = (!\DSP1|hcntr\(9) & \DSP1|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(9),
	datad => \DSP1|LessThan1~0_combout\,
	combout => \DSP1|process_0~2_combout\);

-- Location: LCCOMB_X37_Y22_N22
\DSP1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_0~1_combout\ = (!\DSP1|LessThan8~0_combout\ & (!\DSP1|vcnt\(9) & !\DSP1|hcntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan8~0_combout\,
	datab => \DSP1|vcnt\(9),
	datad => \DSP1|hcntr\(9),
	combout => \DSP1|process_0~1_combout\);

-- Location: LCCOMB_X37_Y22_N0
\DSP1|digIn~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~4_combout\ = (!\DSP1|LessThan1~0_combout\ & ((\DSP1|LessThan2~1_combout\) # ((\DSP1|LessThan4~1_combout\) # (!\DSP1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan2~1_combout\,
	datab => \DSP1|LessThan1~0_combout\,
	datac => \DSP1|process_0~1_combout\,
	datad => \DSP1|LessThan4~1_combout\,
	combout => \DSP1|digIn~4_combout\);

-- Location: LCCOMB_X37_Y22_N4
\DSP1|digIn~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~5_combout\ = (\DSP1|process_0~2_combout\ & (((!\DSP1|LessThan4~1_combout\)))) # (!\DSP1|process_0~2_combout\ & ((\DSP1|digIn~3_combout\) # ((\DSP1|digIn~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn~3_combout\,
	datab => \DSP1|LessThan4~1_combout\,
	datac => \DSP1|process_0~2_combout\,
	datad => \DSP1|digIn~4_combout\,
	combout => \DSP1|digIn~5_combout\);

-- Location: LCCOMB_X37_Y22_N8
\DSP1|digIn[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn[2]~6_combout\ = (!\DSP1|LessThan1~0_combout\ & ((!\DSP1|process_0~1_combout\) # (!\DSP1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan5~1_combout\,
	datac => \DSP1|process_0~1_combout\,
	datad => \DSP1|LessThan1~0_combout\,
	combout => \DSP1|digIn[2]~6_combout\);

-- Location: LCCOMB_X38_Y19_N20
\DSP1|LessThan44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan44~0_combout\ = (\DSP1|hcntr\(3)) # ((\DSP1|hcntr\(0)) # ((\DSP1|hcntr\(2)) # (\DSP1|hcntr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(3),
	datab => \DSP1|hcntr\(0),
	datac => \DSP1|hcntr\(2),
	datad => \DSP1|hcntr\(1),
	combout => \DSP1|LessThan44~0_combout\);

-- Location: LCCOMB_X38_Y21_N4
\DSP1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan2~0_combout\ = (((!\DSP1|LessThan44~0_combout\ & !\DSP1|hcntr\(4))) # (!\DSP1|hcntr\(6))) # (!\DSP1|hcntr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(5),
	datab => \DSP1|LessThan44~0_combout\,
	datac => \DSP1|hcntr\(4),
	datad => \DSP1|hcntr\(6),
	combout => \DSP1|LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y22_N24
\DSP1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan2~1_combout\ = (!\DSP1|hcntr\(8) & (!\DSP1|hcntr\(7) & \DSP1|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(8),
	datac => \DSP1|hcntr\(7),
	datad => \DSP1|LessThan2~0_combout\,
	combout => \DSP1|LessThan2~1_combout\);

-- Location: LCCOMB_X37_Y22_N16
\DSP1|digIn[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn[2]~8_combout\ = (\DSP1|digIn[2]~6_combout\) # ((\DSP1|hcntr\(9) & !\DSP1|LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|digIn[2]~6_combout\,
	datad => \DSP1|LessThan2~1_combout\,
	combout => \DSP1|digIn[2]~8_combout\);

-- Location: LCCOMB_X37_Y22_N18
\DSP1|digIn~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~7_combout\ = (!\DSP1|digIn[2]~6_combout\ & ((\DSP1|hcntr\(9) & ((\DSP1|LessThan2~1_combout\))) # (!\DSP1|hcntr\(9) & ((!\DSP1|LessThan2~1_combout\) # (!\DSP1|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan1~0_combout\,
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|digIn[2]~6_combout\,
	datad => \DSP1|LessThan2~1_combout\,
	combout => \DSP1|digIn~7_combout\);

-- Location: LCCOMB_X37_Y20_N28
\DSP1|digIn~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~9_combout\ = (\DSP1|process_0~0_combout\ & ((\DSP1|digIn[2]~8_combout\) # ((\DSP1|digIn~5_combout\ & \DSP1|digIn~7_combout\)))) # (!\DSP1|process_0~0_combout\ & (\DSP1|digIn~5_combout\ & ((\DSP1|digIn~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_0~0_combout\,
	datab => \DSP1|digIn~5_combout\,
	datac => \DSP1|digIn[2]~8_combout\,
	datad => \DSP1|digIn~7_combout\,
	combout => \DSP1|digIn~9_combout\);

-- Location: FF_X37_Y20_N29
\DSP1|digIn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|digIn~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|digIn\(1));

-- Location: LCCOMB_X38_Y21_N28
\DSP1|process_5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~0_combout\ = (!\DSP1|hcntr\(4) & (!\DSP1|hcntr\(6) & !\DSP1|hcntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(4),
	datac => \DSP1|hcntr\(6),
	datad => \DSP1|hcntr\(5),
	combout => \DSP1|process_5~0_combout\);

-- Location: LCCOMB_X38_Y21_N24
\DSP1|LessThan44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan44~1_combout\ = (\DSP1|hcntr\(8)) # (((\DSP1|LessThan44~0_combout\) # (\DSP1|hcntr\(7))) # (!\DSP1|process_5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|process_5~0_combout\,
	datac => \DSP1|LessThan44~0_combout\,
	datad => \DSP1|hcntr\(7),
	combout => \DSP1|LessThan44~1_combout\);

-- Location: LCCOMB_X37_Y22_N30
\DSP1|digIn~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~3_combout\ = (\DSP1|LessThan44~1_combout\ & \DSP1|hcntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|LessThan44~1_combout\,
	datad => \DSP1|hcntr\(9),
	combout => \DSP1|digIn~3_combout\);

-- Location: LCCOMB_X37_Y22_N26
\DSP1|digIn~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~14_combout\ = (\DSP1|LessThan2~1_combout\ & (!\DSP1|process_0~1_combout\ & ((!\DSP1|LessThan1~0_combout\)))) # (!\DSP1|LessThan2~1_combout\ & (((\DSP1|digIn~3_combout\) # (!\DSP1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_0~1_combout\,
	datab => \DSP1|LessThan2~1_combout\,
	datac => \DSP1|digIn~3_combout\,
	datad => \DSP1|LessThan1~0_combout\,
	combout => \DSP1|digIn~14_combout\);

-- Location: FF_X37_Y20_N1
\DSP1|digIn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|digIn~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|digIn\(3));

-- Location: LCCOMB_X37_Y22_N20
\DSP1|digIn~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~16_combout\ = (\DSP1|LessThan1~0_combout\ & ((\DSP1|hcntr\(9) & (!\DSP1|digIn~14_combout\)) # (!\DSP1|hcntr\(9) & ((\DSP1|LessThan4~1_combout\))))) # (!\DSP1|LessThan1~0_combout\ & (((!\DSP1|digIn~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan1~0_combout\,
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|digIn~14_combout\,
	datad => \DSP1|LessThan4~1_combout\,
	combout => \DSP1|digIn~16_combout\);

-- Location: LCCOMB_X37_Y20_N10
\DSP1|digIn~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~15_combout\ = (\DSP1|process_0~0_combout\ & (\DSP1|digIn~16_combout\ & ((\DSP1|digIn~7_combout\)))) # (!\DSP1|process_0~0_combout\ & ((\DSP1|digIn[2]~8_combout\) # ((\DSP1|digIn~16_combout\ & \DSP1|digIn~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_0~0_combout\,
	datab => \DSP1|digIn~16_combout\,
	datac => \DSP1|digIn[2]~8_combout\,
	datad => \DSP1|digIn~7_combout\,
	combout => \DSP1|digIn~15_combout\);

-- Location: FF_X37_Y20_N11
\DSP1|digIn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|digIn~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|digIn\(2));

-- Location: LCCOMB_X38_Y20_N30
\DSP1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux6~0_combout\ = (\DSP1|digIn\(0) & (\DSP1|digIn\(2) & (\DSP1|digIn\(1) $ (\DSP1|digIn\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DSP1|digIn\(1),
	datac => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(2),
	combout => \DSP1|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y20_N4
\DSP1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux7~0_combout\ = (\DSP1|digIn\(2) & (!\DSP1|digIn\(3) & !\DSP1|digIn\(1))) # (!\DSP1|digIn\(2) & (\DSP1|digIn\(3) & \DSP1|digIn\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y20_N2
\DSP1|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux10~0_combout\ = (\DSP1|digIn\(3) & (!\DSP1|digIn\(2) & ((\DSP1|digIn\(0)) # (\DSP1|digIn\(1))))) # (!\DSP1|digIn\(3) & ((\DSP1|digIn\(2) & ((!\DSP1|digIn\(1)))) # (!\DSP1|digIn\(2) & (\DSP1|digIn\(0) & \DSP1|digIn\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|digIn\(2),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y20_N12
\DSP1|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux9~0_combout\ = (!\DSP1|digIn\(2) & (\DSP1|digIn\(3) $ (\DSP1|digIn\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y20_N0
\DSP1|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add11~0_combout\ = (\DSP1|Mux9~0_combout\) # ((\DSP1|Mux11~0_combout\ & \DSP1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|Mux10~0_combout\,
	datad => \DSP1|Mux9~0_combout\,
	combout => \DSP1|Add11~0_combout\);

-- Location: LCCOMB_X37_Y21_N0
\DSP1|Add11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add11~1_combout\ = \DSP1|Mux6~0_combout\ $ (((\DSP1|Mux8~0_combout\ & (\DSP1|Mux7~0_combout\ & \DSP1|Add11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux8~0_combout\,
	datab => \DSP1|Mux6~0_combout\,
	datac => \DSP1|Mux7~0_combout\,
	datad => \DSP1|Add11~0_combout\,
	combout => \DSP1|Add11~1_combout\);

-- Location: LCCOMB_X37_Y20_N8
\DSP1|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux11~0_combout\ = (\DSP1|digIn\(0) & ((\DSP1|digIn\(3) & (!\DSP1|digIn\(2) & \DSP1|digIn\(1))) # (!\DSP1|digIn\(3) & (\DSP1|digIn\(2) & !\DSP1|digIn\(1))))) # (!\DSP1|digIn\(0) & (!\DSP1|digIn\(2) & (\DSP1|digIn\(3) $ (\DSP1|digIn\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|digIn\(2),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux11~0_combout\);

-- Location: LCCOMB_X37_Y22_N12
\DSP1|digIn~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~12_combout\ = (\DSP1|hcntr\(9) & (((!\DSP1|LessThan44~1_combout\)))) # (!\DSP1|hcntr\(9) & ((\DSP1|digIn~11_combout\) # ((\DSP1|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn~11_combout\,
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|LessThan44~1_combout\,
	datad => \DSP1|LessThan2~1_combout\,
	combout => \DSP1|digIn~12_combout\);

-- Location: LCCOMB_X40_Y18_N4
\DSP1|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan8~1_combout\ = (!\DSP1|vcnt\(9) & (((!\DSP1|vcnt\(8)) # (!\DSP1|process_5~37_combout\)) # (!\DSP1|vcnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|process_5~37_combout\,
	datad => \DSP1|vcnt\(8),
	combout => \DSP1|LessThan8~1_combout\);

-- Location: LCCOMB_X37_Y20_N26
\DSP1|digIn~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|digIn~13_combout\ = ((!\DSP1|LessThan1~0_combout\ & !\DSP1|LessThan8~1_combout\)) # (!\DSP1|digIn~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan1~0_combout\,
	datac => \DSP1|digIn~12_combout\,
	datad => \DSP1|LessThan8~1_combout\,
	combout => \DSP1|digIn~13_combout\);

-- Location: FF_X37_Y20_N27
\DSP1|digIn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|digIn~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|digIn\(0));

-- Location: LCCOMB_X37_Y20_N30
\DSP1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux8~0_combout\ = (!\DSP1|digIn\(0) & (\DSP1|digIn\(2) $ (((\DSP1|digIn\(3)) # (\DSP1|digIn\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|digIn\(0),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y21_N24
\DSP1|Add11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add11~3_combout\ = \DSP1|Mux8~0_combout\ $ (((\DSP1|Mux9~0_combout\) # ((\DSP1|Mux11~0_combout\ & \DSP1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux9~0_combout\,
	datab => \DSP1|Mux11~0_combout\,
	datac => \DSP1|Mux8~0_combout\,
	datad => \DSP1|Mux10~0_combout\,
	combout => \DSP1|Add11~3_combout\);

-- Location: LCCOMB_X37_Y21_N8
\DSP1|LessThan18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~1_cout\ = CARRY((!\DSP1|hcntr\(4) & !\DSP1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(4),
	datab => \DSP1|Mux11~0_combout\,
	datad => VCC,
	cout => \DSP1|LessThan18~1_cout\);

-- Location: LCCOMB_X37_Y21_N10
\DSP1|LessThan18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~3_cout\ = CARRY((\DSP1|Add8~0_combout\ & (\DSP1|hcntr\(5) & !\DSP1|LessThan18~1_cout\)) # (!\DSP1|Add8~0_combout\ & ((\DSP1|hcntr\(5)) # (!\DSP1|LessThan18~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~0_combout\,
	datab => \DSP1|hcntr\(5),
	datad => VCC,
	cin => \DSP1|LessThan18~1_cout\,
	cout => \DSP1|LessThan18~3_cout\);

-- Location: LCCOMB_X37_Y21_N12
\DSP1|LessThan18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~5_cout\ = CARRY((\DSP1|Add11~4_combout\ & (!\DSP1|hcntr\(6) & !\DSP1|LessThan18~3_cout\)) # (!\DSP1|Add11~4_combout\ & ((!\DSP1|LessThan18~3_cout\) # (!\DSP1|hcntr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add11~4_combout\,
	datab => \DSP1|hcntr\(6),
	datad => VCC,
	cin => \DSP1|LessThan18~3_cout\,
	cout => \DSP1|LessThan18~5_cout\);

-- Location: LCCOMB_X37_Y21_N14
\DSP1|LessThan18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~7_cout\ = CARRY((\DSP1|hcntr\(7) & ((!\DSP1|LessThan18~5_cout\) # (!\DSP1|Add11~3_combout\))) # (!\DSP1|hcntr\(7) & (!\DSP1|Add11~3_combout\ & !\DSP1|LessThan18~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(7),
	datab => \DSP1|Add11~3_combout\,
	datad => VCC,
	cin => \DSP1|LessThan18~5_cout\,
	cout => \DSP1|LessThan18~7_cout\);

-- Location: LCCOMB_X37_Y21_N16
\DSP1|LessThan18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~9_cout\ = CARRY((\DSP1|Add11~2_combout\ & ((!\DSP1|LessThan18~7_cout\) # (!\DSP1|hcntr\(8)))) # (!\DSP1|Add11~2_combout\ & (!\DSP1|hcntr\(8) & !\DSP1|LessThan18~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add11~2_combout\,
	datab => \DSP1|hcntr\(8),
	datad => VCC,
	cin => \DSP1|LessThan18~7_cout\,
	cout => \DSP1|LessThan18~9_cout\);

-- Location: LCCOMB_X37_Y21_N18
\DSP1|LessThan18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan18~10_combout\ = (\DSP1|hcntr\(9) & (\DSP1|LessThan18~9_cout\ & \DSP1|Add11~1_combout\)) # (!\DSP1|hcntr\(9) & ((\DSP1|LessThan18~9_cout\) # (\DSP1|Add11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(9),
	datad => \DSP1|Add11~1_combout\,
	cin => \DSP1|LessThan18~9_cout\,
	combout => \DSP1|LessThan18~10_combout\);

-- Location: LCCOMB_X36_Y20_N28
\DSP1|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux12~0_combout\ = (\DSP1|digIn\(3)) # ((\DSP1|digIn\(1) & (\DSP1|digIn\(2) & !\DSP1|digIn\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|digIn\(2),
	datac => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(0),
	combout => \DSP1|Mux12~0_combout\);

-- Location: LCCOMB_X36_Y20_N2
\DSP1|process_5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~18_combout\ = (\DSP1|vcnt\(9)) # ((\DSP1|vcnt\(7)) # (\DSP1|Mux12~0_combout\ $ (\DSP1|vcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(9),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|vcnt\(7),
	datad => \DSP1|vcnt\(8),
	combout => \DSP1|process_5~18_combout\);

-- Location: LCCOMB_X39_Y18_N30
\DSP1|LessThan46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan46~0_combout\ = (\DSP1|vcnt\(2)) # ((\DSP1|vcnt\(1)) # ((\DSP1|vcnt\(0)) # (\DSP1|vcnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(2),
	datab => \DSP1|vcnt\(1),
	datac => \DSP1|vcnt\(0),
	datad => \DSP1|vcnt\(3),
	combout => \DSP1|LessThan46~0_combout\);

-- Location: LCCOMB_X39_Y18_N10
\DSP1|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan13~0_combout\ = (\DSP1|vcnt\(5) & ((\DSP1|vcnt\(4) & ((\DSP1|LessThan46~0_combout\) # (\DSP1|Mux12~0_combout\))) # (!\DSP1|vcnt\(4) & (\DSP1|LessThan46~0_combout\ & \DSP1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(4),
	datac => \DSP1|LessThan46~0_combout\,
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|LessThan13~0_combout\);

-- Location: LCCOMB_X38_Y20_N12
\DSP1|process_5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~17_combout\ = (\DSP1|vcnt\(6) & (((!\DSP1|vcnt\(5)) # (!\DSP1|vcnt\(4))) # (!\DSP1|vcnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|vcnt\(4),
	datac => \DSP1|vcnt\(5),
	datad => \DSP1|vcnt\(6),
	combout => \DSP1|process_5~17_combout\);

-- Location: LCCOMB_X37_Y21_N4
\DSP1|process_5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~19_combout\ = (!\DSP1|process_5~18_combout\ & ((\DSP1|LessThan23~0_combout\) # ((\DSP1|LessThan13~0_combout\ & \DSP1|process_5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan23~0_combout\,
	datab => \DSP1|process_5~18_combout\,
	datac => \DSP1|LessThan13~0_combout\,
	datad => \DSP1|process_5~17_combout\,
	combout => \DSP1|process_5~19_combout\);

-- Location: LCCOMB_X37_Y19_N16
\DSP1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add9~4_combout\ = \DSP1|Mux7~0_combout\ $ (((\DSP1|Mux8~0_combout\ & (\DSP1|Mux10~0_combout\ & \DSP1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux8~0_combout\,
	datab => \DSP1|Mux10~0_combout\,
	datac => \DSP1|Mux7~0_combout\,
	datad => \DSP1|Mux9~0_combout\,
	combout => \DSP1|Add9~4_combout\);

-- Location: LCCOMB_X37_Y19_N14
\DSP1|Add9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add9~5_combout\ = \DSP1|Mux8~0_combout\ $ (((\DSP1|Mux9~0_combout\ & \DSP1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux8~0_combout\,
	datac => \DSP1|Mux9~0_combout\,
	datad => \DSP1|Mux10~0_combout\,
	combout => \DSP1|Add9~5_combout\);

-- Location: LCCOMB_X37_Y19_N18
\DSP1|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~1_cout\ = CARRY(\DSP1|LessThan44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan44~0_combout\,
	datad => VCC,
	cout => \DSP1|LessThan17~1_cout\);

-- Location: LCCOMB_X37_Y19_N20
\DSP1|LessThan17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~3_cout\ = CARRY((\DSP1|Mux11~0_combout\ & ((!\DSP1|LessThan17~1_cout\) # (!\DSP1|hcntr\(4)))) # (!\DSP1|Mux11~0_combout\ & (!\DSP1|hcntr\(4) & !\DSP1|LessThan17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|hcntr\(4),
	datad => VCC,
	cin => \DSP1|LessThan17~1_cout\,
	cout => \DSP1|LessThan17~3_cout\);

-- Location: LCCOMB_X37_Y19_N22
\DSP1|LessThan17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~5_cout\ = CARRY((\DSP1|hcntr\(5) & ((\DSP1|Mux10~0_combout\) # (!\DSP1|LessThan17~3_cout\))) # (!\DSP1|hcntr\(5) & (\DSP1|Mux10~0_combout\ & !\DSP1|LessThan17~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(5),
	datab => \DSP1|Mux10~0_combout\,
	datad => VCC,
	cin => \DSP1|LessThan17~3_cout\,
	cout => \DSP1|LessThan17~5_cout\);

-- Location: LCCOMB_X37_Y19_N24
\DSP1|LessThan17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~7_cout\ = CARRY((\DSP1|Add9~6_combout\ & ((!\DSP1|LessThan17~5_cout\) # (!\DSP1|hcntr\(6)))) # (!\DSP1|Add9~6_combout\ & (!\DSP1|hcntr\(6) & !\DSP1|LessThan17~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add9~6_combout\,
	datab => \DSP1|hcntr\(6),
	datad => VCC,
	cin => \DSP1|LessThan17~5_cout\,
	cout => \DSP1|LessThan17~7_cout\);

-- Location: LCCOMB_X37_Y19_N26
\DSP1|LessThan17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~9_cout\ = CARRY((\DSP1|hcntr\(7) & ((!\DSP1|LessThan17~7_cout\) # (!\DSP1|Add9~5_combout\))) # (!\DSP1|hcntr\(7) & (!\DSP1|Add9~5_combout\ & !\DSP1|LessThan17~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(7),
	datab => \DSP1|Add9~5_combout\,
	datad => VCC,
	cin => \DSP1|LessThan17~7_cout\,
	cout => \DSP1|LessThan17~9_cout\);

-- Location: LCCOMB_X37_Y19_N28
\DSP1|LessThan17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~11_cout\ = CARRY((\DSP1|hcntr\(8) & (\DSP1|Add9~4_combout\ & !\DSP1|LessThan17~9_cout\)) # (!\DSP1|hcntr\(8) & ((\DSP1|Add9~4_combout\) # (!\DSP1|LessThan17~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|Add9~4_combout\,
	datad => VCC,
	cin => \DSP1|LessThan17~9_cout\,
	cout => \DSP1|LessThan17~11_cout\);

-- Location: LCCOMB_X37_Y19_N30
\DSP1|LessThan17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan17~12_combout\ = (\DSP1|hcntr\(9) & ((!\DSP1|LessThan17~11_cout\) # (!\DSP1|Mux6~0_combout\))) # (!\DSP1|hcntr\(9) & (!\DSP1|Mux6~0_combout\ & !\DSP1|LessThan17~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(9),
	datab => \DSP1|Mux6~0_combout\,
	cin => \DSP1|LessThan17~11_cout\,
	combout => \DSP1|LessThan17~12_combout\);

-- Location: LCCOMB_X37_Y21_N26
\DSP1|process_5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~20_combout\ = (\DSP1|process_5~19_combout\ & (\DSP1|LessThan17~12_combout\ & ((\DSP1|process_5~1_combout\) # (\DSP1|LessThan18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~1_combout\,
	datab => \DSP1|LessThan18~10_combout\,
	datac => \DSP1|process_5~19_combout\,
	datad => \DSP1|LessThan17~12_combout\,
	combout => \DSP1|process_5~20_combout\);

-- Location: LCCOMB_X37_Y21_N28
\DSP1|process_5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~1_combout\ = (\DSP1|Mux7~0_combout\ & (\DSP1|Add11~0_combout\ & (\DSP1|Mux8~0_combout\ & \DSP1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux7~0_combout\,
	datab => \DSP1|Add11~0_combout\,
	datac => \DSP1|Mux8~0_combout\,
	datad => \DSP1|Mux6~0_combout\,
	combout => \DSP1|process_5~1_combout\);

-- Location: LCCOMB_X39_Y18_N16
\DSP1|LessThan23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan23~0_combout\ = (\DSP1|vcnt\(8) & !\DSP1|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|LessThan23~0_combout\);

-- Location: LCCOMB_X39_Y18_N8
\DSP1|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan11~0_combout\ = (\DSP1|Equal1~0_combout\ & (\DSP1|LessThan13~0_combout\ & (\DSP1|vcnt\(8) $ (!\DSP1|Mux12~0_combout\)))) # (!\DSP1|Equal1~0_combout\ & (\DSP1|vcnt\(8) $ ((!\DSP1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|Equal1~0_combout\,
	datad => \DSP1|LessThan13~0_combout\,
	combout => \DSP1|LessThan11~0_combout\);

-- Location: LCCOMB_X39_Y18_N6
\DSP1|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan12~0_combout\ = (((!\DSP1|Mux12~0_combout\ & !\DSP1|vcnt\(4))) # (!\DSP1|vcnt\(6))) # (!\DSP1|vcnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|vcnt\(4),
	datad => \DSP1|vcnt\(6),
	combout => \DSP1|LessThan12~0_combout\);

-- Location: LCCOMB_X39_Y18_N20
\DSP1|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan12~1_combout\ = (\DSP1|vcnt\(8) & (\DSP1|Mux12~0_combout\ & (!\DSP1|vcnt\(7) & \DSP1|LessThan12~0_combout\))) # (!\DSP1|vcnt\(8) & ((\DSP1|Mux12~0_combout\) # ((!\DSP1|vcnt\(7) & \DSP1|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|vcnt\(7),
	datad => \DSP1|LessThan12~0_combout\,
	combout => \DSP1|LessThan12~1_combout\);

-- Location: LCCOMB_X39_Y18_N18
\DSP1|process_5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~9_combout\ = (!\DSP1|vcnt\(9) & (\DSP1|LessThan12~1_combout\ & ((\DSP1|LessThan23~0_combout\) # (\DSP1|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(9),
	datab => \DSP1|LessThan23~0_combout\,
	datac => \DSP1|LessThan11~0_combout\,
	datad => \DSP1|LessThan12~1_combout\,
	combout => \DSP1|process_5~9_combout\);

-- Location: LCCOMB_X37_Y20_N6
\DSP1|Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux25~2_combout\ = \DSP1|digIn\(3) $ (\DSP1|digIn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux25~2_combout\);

-- Location: LCCOMB_X38_Y20_N0
\DSP1|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~1_cout\ = CARRY(\DSP1|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux10~0_combout\,
	datad => VCC,
	cout => \DSP1|Add12~1_cout\);

-- Location: LCCOMB_X38_Y20_N2
\DSP1|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~2_combout\ = (\DSP1|digIn\(2) & (((!\DSP1|Add12~1_cout\)))) # (!\DSP1|digIn\(2) & ((\DSP1|Mux25~2_combout\ & (\DSP1|Add12~1_cout\ & VCC)) # (!\DSP1|Mux25~2_combout\ & (!\DSP1|Add12~1_cout\))))
-- \DSP1|Add12~3\ = CARRY((!\DSP1|Add12~1_cout\ & ((\DSP1|digIn\(2)) # (!\DSP1|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|Mux25~2_combout\,
	datad => VCC,
	cin => \DSP1|Add12~1_cout\,
	combout => \DSP1|Add12~2_combout\,
	cout => \DSP1|Add12~3\);

-- Location: LCCOMB_X38_Y20_N4
\DSP1|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~4_combout\ = (\DSP1|Mux8~0_combout\ & (\DSP1|Add12~3\ $ (GND))) # (!\DSP1|Mux8~0_combout\ & (!\DSP1|Add12~3\ & VCC))
-- \DSP1|Add12~5\ = CARRY((\DSP1|Mux8~0_combout\ & !\DSP1|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Mux8~0_combout\,
	datad => VCC,
	cin => \DSP1|Add12~3\,
	combout => \DSP1|Add12~4_combout\,
	cout => \DSP1|Add12~5\);

-- Location: LCCOMB_X38_Y20_N8
\DSP1|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~8_combout\ = (\DSP1|Mux6~0_combout\ & (\DSP1|Add12~7\ $ (GND))) # (!\DSP1|Mux6~0_combout\ & (!\DSP1|Add12~7\ & VCC))
-- \DSP1|Add12~9\ = CARRY((\DSP1|Mux6~0_combout\ & !\DSP1|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux6~0_combout\,
	datad => VCC,
	cin => \DSP1|Add12~7\,
	combout => \DSP1|Add12~8_combout\,
	cout => \DSP1|Add12~9\);

-- Location: LCCOMB_X38_Y20_N16
\DSP1|LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~1_cout\ = CARRY((\DSP1|Mux11~0_combout\ & !\DSP1|hcntr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|hcntr\(4),
	datad => VCC,
	cout => \DSP1|LessThan22~1_cout\);

-- Location: LCCOMB_X38_Y20_N18
\DSP1|LessThan22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~3_cout\ = CARRY((\DSP1|Mux10~0_combout\ & ((\DSP1|hcntr\(5)) # (!\DSP1|LessThan22~1_cout\))) # (!\DSP1|Mux10~0_combout\ & (\DSP1|hcntr\(5) & !\DSP1|LessThan22~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux10~0_combout\,
	datab => \DSP1|hcntr\(5),
	datad => VCC,
	cin => \DSP1|LessThan22~1_cout\,
	cout => \DSP1|LessThan22~3_cout\);

-- Location: LCCOMB_X38_Y20_N20
\DSP1|LessThan22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~5_cout\ = CARRY((\DSP1|hcntr\(6) & (\DSP1|Add12~2_combout\ & !\DSP1|LessThan22~3_cout\)) # (!\DSP1|hcntr\(6) & ((\DSP1|Add12~2_combout\) # (!\DSP1|LessThan22~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datab => \DSP1|Add12~2_combout\,
	datad => VCC,
	cin => \DSP1|LessThan22~3_cout\,
	cout => \DSP1|LessThan22~5_cout\);

-- Location: LCCOMB_X38_Y20_N22
\DSP1|LessThan22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~7_cout\ = CARRY((\DSP1|hcntr\(7) & ((!\DSP1|LessThan22~5_cout\) # (!\DSP1|Add12~4_combout\))) # (!\DSP1|hcntr\(7) & (!\DSP1|Add12~4_combout\ & !\DSP1|LessThan22~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(7),
	datab => \DSP1|Add12~4_combout\,
	datad => VCC,
	cin => \DSP1|LessThan22~5_cout\,
	cout => \DSP1|LessThan22~7_cout\);

-- Location: LCCOMB_X38_Y20_N24
\DSP1|LessThan22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~9_cout\ = CARRY((\DSP1|Add12~6_combout\ & ((!\DSP1|LessThan22~7_cout\) # (!\DSP1|hcntr\(8)))) # (!\DSP1|Add12~6_combout\ & (!\DSP1|hcntr\(8) & !\DSP1|LessThan22~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add12~6_combout\,
	datab => \DSP1|hcntr\(8),
	datad => VCC,
	cin => \DSP1|LessThan22~7_cout\,
	cout => \DSP1|LessThan22~9_cout\);

-- Location: LCCOMB_X38_Y20_N26
\DSP1|LessThan22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan22~10_combout\ = (\DSP1|hcntr\(9) & (\DSP1|Add12~8_combout\ & \DSP1|LessThan22~9_cout\)) # (!\DSP1|hcntr\(9) & ((\DSP1|Add12~8_combout\) # (\DSP1|LessThan22~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(9),
	datab => \DSP1|Add12~8_combout\,
	cin => \DSP1|LessThan22~9_cout\,
	combout => \DSP1|LessThan22~10_combout\);

-- Location: LCCOMB_X38_Y20_N10
\DSP1|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add12~10_combout\ = \DSP1|Add12~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DSP1|Add12~9\,
	combout => \DSP1|Add12~10_combout\);

-- Location: LCCOMB_X38_Y20_N14
\DSP1|process_5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~21_combout\ = (\DSP1|LessThan22~10_combout\) # (\DSP1|Add12~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|LessThan22~10_combout\,
	datad => \DSP1|Add12~10_combout\,
	combout => \DSP1|process_5~21_combout\);

-- Location: LCCOMB_X38_Y21_N6
\DSP1|process_5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~22_combout\ = (\DSP1|LessThan21~12_combout\ & (!\DSP1|process_5~1_combout\ & (\DSP1|process_5~9_combout\ & \DSP1|process_5~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan21~12_combout\,
	datab => \DSP1|process_5~1_combout\,
	datac => \DSP1|process_5~9_combout\,
	datad => \DSP1|process_5~21_combout\,
	combout => \DSP1|process_5~22_combout\);

-- Location: LCCOMB_X37_Y20_N16
\DSP1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~2_combout\ = (\DSP1|Add8~1\ & (((\DSP1|digIn\(2))) # (!\DSP1|Mux25~2_combout\))) # (!\DSP1|Add8~1\ & (((\DSP1|Mux25~2_combout\ & !\DSP1|digIn\(2))) # (GND)))
-- \DSP1|Add8~3\ = CARRY(((\DSP1|digIn\(2)) # (!\DSP1|Add8~1\)) # (!\DSP1|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux25~2_combout\,
	datab => \DSP1|digIn\(2),
	datad => VCC,
	cin => \DSP1|Add8~1\,
	combout => \DSP1|Add8~2_combout\,
	cout => \DSP1|Add8~3\);

-- Location: LCCOMB_X37_Y20_N22
\DSP1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~8_combout\ = (\DSP1|Mux6~0_combout\ & (\DSP1|Add8~7\ $ (GND))) # (!\DSP1|Mux6~0_combout\ & (!\DSP1|Add8~7\ & VCC))
-- \DSP1|Add8~9\ = CARRY((\DSP1|Mux6~0_combout\ & !\DSP1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux6~0_combout\,
	datad => VCC,
	cin => \DSP1|Add8~7\,
	combout => \DSP1|Add8~8_combout\,
	cout => \DSP1|Add8~9\);

-- Location: LCCOMB_X37_Y20_N24
\DSP1|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add8~10_combout\ = \DSP1|Add8~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \DSP1|Add8~9\,
	combout => \DSP1|Add8~10_combout\);

-- Location: LCCOMB_X39_Y20_N14
\DSP1|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~1_cout\ = CARRY(\DSP1|LessThan44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan44~0_combout\,
	datad => VCC,
	cout => \DSP1|LessThan15~1_cout\);

-- Location: LCCOMB_X39_Y20_N16
\DSP1|LessThan15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~3_cout\ = CARRY((\DSP1|hcntr\(4) & (!\DSP1|Mux11~0_combout\ & !\DSP1|LessThan15~1_cout\)) # (!\DSP1|hcntr\(4) & ((!\DSP1|LessThan15~1_cout\) # (!\DSP1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(4),
	datab => \DSP1|Mux11~0_combout\,
	datad => VCC,
	cin => \DSP1|LessThan15~1_cout\,
	cout => \DSP1|LessThan15~3_cout\);

-- Location: LCCOMB_X39_Y20_N18
\DSP1|LessThan15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~5_cout\ = CARRY((\DSP1|Add8~0_combout\ & (\DSP1|hcntr\(5) & !\DSP1|LessThan15~3_cout\)) # (!\DSP1|Add8~0_combout\ & ((\DSP1|hcntr\(5)) # (!\DSP1|LessThan15~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~0_combout\,
	datab => \DSP1|hcntr\(5),
	datad => VCC,
	cin => \DSP1|LessThan15~3_cout\,
	cout => \DSP1|LessThan15~5_cout\);

-- Location: LCCOMB_X39_Y20_N20
\DSP1|LessThan15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~7_cout\ = CARRY((\DSP1|hcntr\(6) & (\DSP1|Add8~2_combout\ & !\DSP1|LessThan15~5_cout\)) # (!\DSP1|hcntr\(6) & ((\DSP1|Add8~2_combout\) # (!\DSP1|LessThan15~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datab => \DSP1|Add8~2_combout\,
	datad => VCC,
	cin => \DSP1|LessThan15~5_cout\,
	cout => \DSP1|LessThan15~7_cout\);

-- Location: LCCOMB_X39_Y20_N22
\DSP1|LessThan15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~9_cout\ = CARRY((\DSP1|Add8~4_combout\ & (\DSP1|hcntr\(7) & !\DSP1|LessThan15~7_cout\)) # (!\DSP1|Add8~4_combout\ & ((\DSP1|hcntr\(7)) # (!\DSP1|LessThan15~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~4_combout\,
	datab => \DSP1|hcntr\(7),
	datad => VCC,
	cin => \DSP1|LessThan15~7_cout\,
	cout => \DSP1|LessThan15~9_cout\);

-- Location: LCCOMB_X39_Y20_N24
\DSP1|LessThan15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~11_cout\ = CARRY((\DSP1|Add8~6_combout\ & ((!\DSP1|LessThan15~9_cout\) # (!\DSP1|hcntr\(8)))) # (!\DSP1|Add8~6_combout\ & (!\DSP1|hcntr\(8) & !\DSP1|LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~6_combout\,
	datab => \DSP1|hcntr\(8),
	datad => VCC,
	cin => \DSP1|LessThan15~9_cout\,
	cout => \DSP1|LessThan15~11_cout\);

-- Location: LCCOMB_X39_Y20_N26
\DSP1|LessThan15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan15~12_combout\ = (\DSP1|hcntr\(9) & ((!\DSP1|Add8~8_combout\) # (!\DSP1|LessThan15~11_cout\))) # (!\DSP1|hcntr\(9) & (!\DSP1|LessThan15~11_cout\ & !\DSP1|Add8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|hcntr\(9),
	datad => \DSP1|Add8~8_combout\,
	cin => \DSP1|LessThan15~11_cout\,
	combout => \DSP1|LessThan15~12_combout\);

-- Location: LCCOMB_X37_Y19_N2
\DSP1|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~1_cout\ = CARRY((\DSP1|Mux11~0_combout\ & !\DSP1|hcntr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|hcntr\(4),
	datad => VCC,
	cout => \DSP1|LessThan16~1_cout\);

-- Location: LCCOMB_X37_Y19_N4
\DSP1|LessThan16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~3_cout\ = CARRY((\DSP1|hcntr\(5) & ((\DSP1|Mux10~0_combout\) # (!\DSP1|LessThan16~1_cout\))) # (!\DSP1|hcntr\(5) & (\DSP1|Mux10~0_combout\ & !\DSP1|LessThan16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(5),
	datab => \DSP1|Mux10~0_combout\,
	datad => VCC,
	cin => \DSP1|LessThan16~1_cout\,
	cout => \DSP1|LessThan16~3_cout\);

-- Location: LCCOMB_X37_Y19_N6
\DSP1|LessThan16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~5_cout\ = CARRY((\DSP1|Add9~6_combout\ & ((!\DSP1|LessThan16~3_cout\) # (!\DSP1|hcntr\(6)))) # (!\DSP1|Add9~6_combout\ & (!\DSP1|hcntr\(6) & !\DSP1|LessThan16~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add9~6_combout\,
	datab => \DSP1|hcntr\(6),
	datad => VCC,
	cin => \DSP1|LessThan16~3_cout\,
	cout => \DSP1|LessThan16~5_cout\);

-- Location: LCCOMB_X37_Y19_N8
\DSP1|LessThan16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~7_cout\ = CARRY((\DSP1|hcntr\(7) & ((!\DSP1|LessThan16~5_cout\) # (!\DSP1|Add9~5_combout\))) # (!\DSP1|hcntr\(7) & (!\DSP1|Add9~5_combout\ & !\DSP1|LessThan16~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(7),
	datab => \DSP1|Add9~5_combout\,
	datad => VCC,
	cin => \DSP1|LessThan16~5_cout\,
	cout => \DSP1|LessThan16~7_cout\);

-- Location: LCCOMB_X37_Y19_N10
\DSP1|LessThan16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~9_cout\ = CARRY((\DSP1|hcntr\(8) & (\DSP1|Add9~4_combout\ & !\DSP1|LessThan16~7_cout\)) # (!\DSP1|hcntr\(8) & ((\DSP1|Add9~4_combout\) # (!\DSP1|LessThan16~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|Add9~4_combout\,
	datad => VCC,
	cin => \DSP1|LessThan16~7_cout\,
	cout => \DSP1|LessThan16~9_cout\);

-- Location: LCCOMB_X37_Y19_N12
\DSP1|LessThan16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan16~10_combout\ = (\DSP1|hcntr\(9) & (\DSP1|Mux6~0_combout\ & \DSP1|LessThan16~9_cout\)) # (!\DSP1|hcntr\(9) & ((\DSP1|Mux6~0_combout\) # (\DSP1|LessThan16~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(9),
	datab => \DSP1|Mux6~0_combout\,
	cin => \DSP1|LessThan16~9_cout\,
	combout => \DSP1|LessThan16~10_combout\);

-- Location: LCCOMB_X39_Y20_N28
\DSP1|process_5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~16_combout\ = (\DSP1|process_5~14_combout\ & (!\DSP1|Add8~10_combout\ & (\DSP1|LessThan15~12_combout\ & \DSP1|LessThan16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~14_combout\,
	datab => \DSP1|Add8~10_combout\,
	datac => \DSP1|LessThan15~12_combout\,
	datad => \DSP1|LessThan16~10_combout\,
	combout => \DSP1|process_5~16_combout\);

-- Location: LCCOMB_X39_Y21_N4
\DSP1|R[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~1_combout\ = (!\DSP1|process_5~26_combout\ & (!\DSP1|process_5~20_combout\ & (!\DSP1|process_5~22_combout\ & !\DSP1|process_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~26_combout\,
	datab => \DSP1|process_5~20_combout\,
	datac => \DSP1|process_5~22_combout\,
	datad => \DSP1|process_5~16_combout\,
	combout => \DSP1|R[1]~1_combout\);

-- Location: LCCOMB_X37_Y21_N6
\DSP1|process_5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~2_combout\ = (!\DSP1|vcnt\(9) & (\DSP1|LessThan17~12_combout\ & ((\DSP1|process_5~1_combout\) # (\DSP1|LessThan18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~1_combout\,
	datab => \DSP1|LessThan18~10_combout\,
	datac => \DSP1|vcnt\(9),
	datad => \DSP1|LessThan17~12_combout\,
	combout => \DSP1|process_5~2_combout\);

-- Location: LCCOMB_X37_Y19_N0
\DSP1|process_5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~3_combout\ = (((!\DSP1|vcnt\(5) & !\DSP1|vcnt\(4))) # (!\DSP1|vcnt\(7))) # (!\DSP1|vcnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(6),
	datac => \DSP1|vcnt\(7),
	datad => \DSP1|vcnt\(4),
	combout => \DSP1|process_5~3_combout\);

-- Location: LCCOMB_X39_Y18_N28
\DSP1|LessThan23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan23~1_combout\ = (\DSP1|vcnt\(5) & (((\DSP1|vcnt\(4) & \DSP1|LessThan46~0_combout\)) # (!\DSP1|Mux12~0_combout\))) # (!\DSP1|vcnt\(5) & (!\DSP1|Mux12~0_combout\ & ((\DSP1|vcnt\(4)) # (\DSP1|LessThan46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(4),
	datac => \DSP1|LessThan46~0_combout\,
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|LessThan23~1_combout\);

-- Location: LCCOMB_X39_Y18_N22
\DSP1|process_5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~5_combout\ = (\DSP1|LessThan23~1_combout\ & ((\DSP1|vcnt\(6) & (!\DSP1|Mux12~0_combout\ & \DSP1|process_5~4_combout\)) # (!\DSP1|vcnt\(6) & (\DSP1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(6),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|process_5~4_combout\,
	datad => \DSP1|LessThan23~1_combout\,
	combout => \DSP1|process_5~5_combout\);

-- Location: LCCOMB_X39_Y18_N24
\DSP1|process_5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~6_combout\ = (\DSP1|process_5~5_combout\) # ((!\DSP1|vcnt\(8) & (\DSP1|Mux12~0_combout\ & \DSP1|vcnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|process_5~5_combout\,
	datad => \DSP1|vcnt\(6),
	combout => \DSP1|process_5~6_combout\);

-- Location: LCCOMB_X38_Y18_N12
\DSP1|process_5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~7_combout\ = (\DSP1|vcnt\(7) & ((\DSP1|process_5~6_combout\) # ((\DSP1|process_5~3_combout\ & \DSP1|LessThan23~0_combout\)))) # (!\DSP1|vcnt\(7) & (\DSP1|process_5~3_combout\ & (\DSP1|LessThan23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(7),
	datab => \DSP1|process_5~3_combout\,
	datac => \DSP1|LessThan23~0_combout\,
	datad => \DSP1|process_5~6_combout\,
	combout => \DSP1|process_5~7_combout\);

-- Location: LCCOMB_X38_Y18_N2
\DSP1|process_5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~8_combout\ = (\DSP1|process_5~2_combout\ & (\DSP1|process_5~7_combout\ & (\DSP1|vcnt\(8) $ (!\DSP1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|process_5~2_combout\,
	datad => \DSP1|process_5~7_combout\,
	combout => \DSP1|process_5~8_combout\);

-- Location: LCCOMB_X40_Y22_N20
\DSP1|R~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~36_combout\ = (!\DSP1|R[1]~0_combout\ & (\DSP1|process_5~61_combout\ & (\DSP1|R[1]~1_combout\ & !\DSP1|process_5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~0_combout\,
	datab => \DSP1|process_5~61_combout\,
	datac => \DSP1|R[1]~1_combout\,
	datad => \DSP1|process_5~8_combout\,
	combout => \DSP1|R~36_combout\);

-- Location: LCCOMB_X28_Y20_N0
\DSP1|clkdiv_cntr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~1_combout\ = (\DSP1|Add2~12_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add2~12_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~1_combout\);

-- Location: FF_X28_Y20_N1
\DSP1|clkdiv_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(6));

-- Location: LCCOMB_X27_Y20_N2
\DSP1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~2_combout\ = (\DSP1|clkdiv_cntr\(1) & (!\DSP1|Add2~1\)) # (!\DSP1|clkdiv_cntr\(1) & ((\DSP1|Add2~1\) # (GND)))
-- \DSP1|Add2~3\ = CARRY((!\DSP1|Add2~1\) # (!\DSP1|clkdiv_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(1),
	datad => VCC,
	cin => \DSP1|Add2~1\,
	combout => \DSP1|Add2~2_combout\,
	cout => \DSP1|Add2~3\);

-- Location: FF_X27_Y20_N3
\DSP1|clkdiv_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(1));

-- Location: LCCOMB_X27_Y20_N4
\DSP1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~4_combout\ = (\DSP1|clkdiv_cntr\(2) & (\DSP1|Add2~3\ $ (GND))) # (!\DSP1|clkdiv_cntr\(2) & (!\DSP1|Add2~3\ & VCC))
-- \DSP1|Add2~5\ = CARRY((\DSP1|clkdiv_cntr\(2) & !\DSP1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(2),
	datad => VCC,
	cin => \DSP1|Add2~3\,
	combout => \DSP1|Add2~4_combout\,
	cout => \DSP1|Add2~5\);

-- Location: FF_X27_Y20_N5
\DSP1|clkdiv_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(2));

-- Location: LCCOMB_X27_Y20_N8
\DSP1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~8_combout\ = (\DSP1|clkdiv_cntr\(4) & (\DSP1|Add2~7\ $ (GND))) # (!\DSP1|clkdiv_cntr\(4) & (!\DSP1|Add2~7\ & VCC))
-- \DSP1|Add2~9\ = CARRY((\DSP1|clkdiv_cntr\(4) & !\DSP1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(4),
	datad => VCC,
	cin => \DSP1|Add2~7\,
	combout => \DSP1|Add2~8_combout\,
	cout => \DSP1|Add2~9\);

-- Location: FF_X27_Y20_N9
\DSP1|clkdiv_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(4));

-- Location: LCCOMB_X27_Y20_N14
\DSP1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~14_combout\ = (\DSP1|clkdiv_cntr\(7) & (!\DSP1|Add2~13\)) # (!\DSP1|clkdiv_cntr\(7) & ((\DSP1|Add2~13\) # (GND)))
-- \DSP1|Add2~15\ = CARRY((!\DSP1|Add2~13\) # (!\DSP1|clkdiv_cntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(7),
	datad => VCC,
	cin => \DSP1|Add2~13\,
	combout => \DSP1|Add2~14_combout\,
	cout => \DSP1|Add2~15\);

-- Location: FF_X27_Y20_N15
\DSP1|clkdiv_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(7));

-- Location: LCCOMB_X27_Y20_N16
\DSP1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~16_combout\ = (\DSP1|clkdiv_cntr\(8) & (\DSP1|Add2~15\ $ (GND))) # (!\DSP1|clkdiv_cntr\(8) & (!\DSP1|Add2~15\ & VCC))
-- \DSP1|Add2~17\ = CARRY((\DSP1|clkdiv_cntr\(8) & !\DSP1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(8),
	datad => VCC,
	cin => \DSP1|Add2~15\,
	combout => \DSP1|Add2~16_combout\,
	cout => \DSP1|Add2~17\);

-- Location: FF_X27_Y20_N17
\DSP1|clkdiv_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(8));

-- Location: LCCOMB_X27_Y20_N18
\DSP1|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~18_combout\ = (\DSP1|clkdiv_cntr\(9) & (!\DSP1|Add2~17\)) # (!\DSP1|clkdiv_cntr\(9) & ((\DSP1|Add2~17\) # (GND)))
-- \DSP1|Add2~19\ = CARRY((!\DSP1|Add2~17\) # (!\DSP1|clkdiv_cntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(9),
	datad => VCC,
	cin => \DSP1|Add2~17\,
	combout => \DSP1|Add2~18_combout\,
	cout => \DSP1|Add2~19\);

-- Location: FF_X27_Y20_N19
\DSP1|clkdiv_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(9));

-- Location: LCCOMB_X27_Y20_N20
\DSP1|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~20_combout\ = (\DSP1|clkdiv_cntr\(10) & (\DSP1|Add2~19\ $ (GND))) # (!\DSP1|clkdiv_cntr\(10) & (!\DSP1|Add2~19\ & VCC))
-- \DSP1|Add2~21\ = CARRY((\DSP1|clkdiv_cntr\(10) & !\DSP1|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(10),
	datad => VCC,
	cin => \DSP1|Add2~19\,
	combout => \DSP1|Add2~20_combout\,
	cout => \DSP1|Add2~21\);

-- Location: FF_X27_Y20_N21
\DSP1|clkdiv_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(10));

-- Location: LCCOMB_X27_Y20_N22
\DSP1|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~22_combout\ = (\DSP1|clkdiv_cntr\(11) & (!\DSP1|Add2~21\)) # (!\DSP1|clkdiv_cntr\(11) & ((\DSP1|Add2~21\) # (GND)))
-- \DSP1|Add2~23\ = CARRY((!\DSP1|Add2~21\) # (!\DSP1|clkdiv_cntr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(11),
	datad => VCC,
	cin => \DSP1|Add2~21\,
	combout => \DSP1|Add2~22_combout\,
	cout => \DSP1|Add2~23\);

-- Location: LCCOMB_X28_Y20_N2
\DSP1|clkdiv_cntr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~2_combout\ = (\DSP1|Add2~22_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add2~22_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~2_combout\);

-- Location: FF_X28_Y20_N3
\DSP1|clkdiv_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(11));

-- Location: LCCOMB_X28_Y20_N24
\DSP1|Equal6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~3_combout\ = (!\DSP1|clkdiv_cntr\(8) & (!\DSP1|clkdiv_cntr\(10) & (\DSP1|clkdiv_cntr\(11) & !\DSP1|clkdiv_cntr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(8),
	datab => \DSP1|clkdiv_cntr\(10),
	datac => \DSP1|clkdiv_cntr\(11),
	datad => \DSP1|clkdiv_cntr\(9),
	combout => \DSP1|Equal6~3_combout\);

-- Location: LCCOMB_X28_Y19_N12
\DSP1|clkdiv_cntr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~12_combout\ = (\DSP1|Add2~48_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add2~48_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~12_combout\);

-- Location: FF_X28_Y19_N13
\DSP1|clkdiv_cntr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(24));

-- Location: LCCOMB_X27_Y20_N24
\DSP1|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~24_combout\ = (\DSP1|clkdiv_cntr\(12) & (\DSP1|Add2~23\ $ (GND))) # (!\DSP1|clkdiv_cntr\(12) & (!\DSP1|Add2~23\ & VCC))
-- \DSP1|Add2~25\ = CARRY((\DSP1|clkdiv_cntr\(12) & !\DSP1|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(12),
	datad => VCC,
	cin => \DSP1|Add2~23\,
	combout => \DSP1|Add2~24_combout\,
	cout => \DSP1|Add2~25\);

-- Location: LCCOMB_X28_Y20_N18
\DSP1|clkdiv_cntr~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~3_combout\ = (\DSP1|Add2~24_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add2~24_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~3_combout\);

-- Location: FF_X28_Y20_N19
\DSP1|clkdiv_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(12));

-- Location: LCCOMB_X27_Y20_N28
\DSP1|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~28_combout\ = (\DSP1|clkdiv_cntr\(14) & (\DSP1|Add2~27\ $ (GND))) # (!\DSP1|clkdiv_cntr\(14) & (!\DSP1|Add2~27\ & VCC))
-- \DSP1|Add2~29\ = CARRY((\DSP1|clkdiv_cntr\(14) & !\DSP1|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(14),
	datad => VCC,
	cin => \DSP1|Add2~27\,
	combout => \DSP1|Add2~28_combout\,
	cout => \DSP1|Add2~29\);

-- Location: LCCOMB_X28_Y20_N26
\DSP1|clkdiv_cntr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~5_combout\ = (\DSP1|Add2~28_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add2~28_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~5_combout\);

-- Location: FF_X28_Y20_N27
\DSP1|clkdiv_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(14));

-- Location: LCCOMB_X27_Y20_N30
\DSP1|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~30_combout\ = (\DSP1|clkdiv_cntr\(15) & (!\DSP1|Add2~29\)) # (!\DSP1|clkdiv_cntr\(15) & ((\DSP1|Add2~29\) # (GND)))
-- \DSP1|Add2~31\ = CARRY((!\DSP1|Add2~29\) # (!\DSP1|clkdiv_cntr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(15),
	datad => VCC,
	cin => \DSP1|Add2~29\,
	combout => \DSP1|Add2~30_combout\,
	cout => \DSP1|Add2~31\);

-- Location: LCCOMB_X27_Y19_N2
\DSP1|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~34_combout\ = (\DSP1|clkdiv_cntr\(17) & (!\DSP1|Add2~33\)) # (!\DSP1|clkdiv_cntr\(17) & ((\DSP1|Add2~33\) # (GND)))
-- \DSP1|Add2~35\ = CARRY((!\DSP1|Add2~33\) # (!\DSP1|clkdiv_cntr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(17),
	datad => VCC,
	cin => \DSP1|Add2~33\,
	combout => \DSP1|Add2~34_combout\,
	cout => \DSP1|Add2~35\);

-- Location: FF_X27_Y19_N3
\DSP1|clkdiv_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(17));

-- Location: LCCOMB_X27_Y19_N4
\DSP1|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~36_combout\ = (\DSP1|clkdiv_cntr\(18) & (\DSP1|Add2~35\ $ (GND))) # (!\DSP1|clkdiv_cntr\(18) & (!\DSP1|Add2~35\ & VCC))
-- \DSP1|Add2~37\ = CARRY((\DSP1|clkdiv_cntr\(18) & !\DSP1|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(18),
	datad => VCC,
	cin => \DSP1|Add2~35\,
	combout => \DSP1|Add2~36_combout\,
	cout => \DSP1|Add2~37\);

-- Location: LCCOMB_X27_Y19_N6
\DSP1|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~38_combout\ = (\DSP1|clkdiv_cntr\(19) & (!\DSP1|Add2~37\)) # (!\DSP1|clkdiv_cntr\(19) & ((\DSP1|Add2~37\) # (GND)))
-- \DSP1|Add2~39\ = CARRY((!\DSP1|Add2~37\) # (!\DSP1|clkdiv_cntr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(19),
	datad => VCC,
	cin => \DSP1|Add2~37\,
	combout => \DSP1|Add2~38_combout\,
	cout => \DSP1|Add2~39\);

-- Location: LCCOMB_X28_Y19_N16
\DSP1|clkdiv_cntr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~8_combout\ = (\DSP1|Add2~38_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add2~38_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~8_combout\);

-- Location: FF_X28_Y19_N17
\DSP1|clkdiv_cntr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(19));

-- Location: LCCOMB_X27_Y19_N8
\DSP1|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~40_combout\ = (\DSP1|clkdiv_cntr\(20) & (\DSP1|Add2~39\ $ (GND))) # (!\DSP1|clkdiv_cntr\(20) & (!\DSP1|Add2~39\ & VCC))
-- \DSP1|Add2~41\ = CARRY((\DSP1|clkdiv_cntr\(20) & !\DSP1|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(20),
	datad => VCC,
	cin => \DSP1|Add2~39\,
	combout => \DSP1|Add2~40_combout\,
	cout => \DSP1|Add2~41\);

-- Location: LCCOMB_X28_Y19_N28
\DSP1|clkdiv_cntr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~9_combout\ = (!\DSP1|Equal6~10_combout\ & \DSP1|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal6~10_combout\,
	datad => \DSP1|Add2~40_combout\,
	combout => \DSP1|clkdiv_cntr~9_combout\);

-- Location: FF_X28_Y19_N29
\DSP1|clkdiv_cntr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(20));

-- Location: LCCOMB_X27_Y19_N12
\DSP1|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~44_combout\ = (\DSP1|clkdiv_cntr\(22) & (\DSP1|Add2~43\ $ (GND))) # (!\DSP1|clkdiv_cntr\(22) & (!\DSP1|Add2~43\ & VCC))
-- \DSP1|Add2~45\ = CARRY((\DSP1|clkdiv_cntr\(22) & !\DSP1|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(22),
	datad => VCC,
	cin => \DSP1|Add2~43\,
	combout => \DSP1|Add2~44_combout\,
	cout => \DSP1|Add2~45\);

-- Location: LCCOMB_X28_Y19_N24
\DSP1|clkdiv_cntr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~11_combout\ = (!\DSP1|Equal6~10_combout\ & \DSP1|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal6~10_combout\,
	datad => \DSP1|Add2~44_combout\,
	combout => \DSP1|clkdiv_cntr~11_combout\);

-- Location: FF_X28_Y19_N25
\DSP1|clkdiv_cntr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(22));

-- Location: LCCOMB_X27_Y19_N14
\DSP1|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~46_combout\ = (\DSP1|clkdiv_cntr\(23) & (!\DSP1|Add2~45\)) # (!\DSP1|clkdiv_cntr\(23) & ((\DSP1|Add2~45\) # (GND)))
-- \DSP1|Add2~47\ = CARRY((!\DSP1|Add2~45\) # (!\DSP1|clkdiv_cntr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(23),
	datad => VCC,
	cin => \DSP1|Add2~45\,
	combout => \DSP1|Add2~46_combout\,
	cout => \DSP1|Add2~47\);

-- Location: FF_X27_Y19_N15
\DSP1|clkdiv_cntr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(23));

-- Location: LCCOMB_X27_Y19_N18
\DSP1|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~50_combout\ = (\DSP1|clkdiv_cntr\(25) & (!\DSP1|Add2~49\)) # (!\DSP1|clkdiv_cntr\(25) & ((\DSP1|Add2~49\) # (GND)))
-- \DSP1|Add2~51\ = CARRY((!\DSP1|Add2~49\) # (!\DSP1|clkdiv_cntr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(25),
	datad => VCC,
	cin => \DSP1|Add2~49\,
	combout => \DSP1|Add2~50_combout\,
	cout => \DSP1|Add2~51\);

-- Location: FF_X27_Y19_N19
\DSP1|clkdiv_cntr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(25));

-- Location: LCCOMB_X27_Y19_N20
\DSP1|Add2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~52_combout\ = (\DSP1|clkdiv_cntr\(26) & (\DSP1|Add2~51\ $ (GND))) # (!\DSP1|clkdiv_cntr\(26) & (!\DSP1|Add2~51\ & VCC))
-- \DSP1|Add2~53\ = CARRY((\DSP1|clkdiv_cntr\(26) & !\DSP1|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(26),
	datad => VCC,
	cin => \DSP1|Add2~51\,
	combout => \DSP1|Add2~52_combout\,
	cout => \DSP1|Add2~53\);

-- Location: FF_X27_Y19_N21
\DSP1|clkdiv_cntr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(26));

-- Location: LCCOMB_X27_Y19_N22
\DSP1|Add2~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~54_combout\ = (\DSP1|clkdiv_cntr\(27) & (!\DSP1|Add2~53\)) # (!\DSP1|clkdiv_cntr\(27) & ((\DSP1|Add2~53\) # (GND)))
-- \DSP1|Add2~55\ = CARRY((!\DSP1|Add2~53\) # (!\DSP1|clkdiv_cntr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(27),
	datad => VCC,
	cin => \DSP1|Add2~53\,
	combout => \DSP1|Add2~54_combout\,
	cout => \DSP1|Add2~55\);

-- Location: FF_X27_Y19_N23
\DSP1|clkdiv_cntr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(27));

-- Location: LCCOMB_X28_Y19_N18
\DSP1|Equal6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~7_combout\ = (\DSP1|clkdiv_cntr\(24) & (!\DSP1|clkdiv_cntr\(25) & (!\DSP1|clkdiv_cntr\(27) & !\DSP1|clkdiv_cntr\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(24),
	datab => \DSP1|clkdiv_cntr\(25),
	datac => \DSP1|clkdiv_cntr\(27),
	datad => \DSP1|clkdiv_cntr\(26),
	combout => \DSP1|Equal6~7_combout\);

-- Location: LCCOMB_X28_Y19_N4
\DSP1|clkdiv_cntr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~6_combout\ = (\DSP1|Add2~32_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add2~32_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~6_combout\);

-- Location: FF_X28_Y19_N5
\DSP1|clkdiv_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(16));

-- Location: LCCOMB_X28_Y19_N2
\DSP1|clkdiv_cntr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clkdiv_cntr~7_combout\ = (\DSP1|Add2~36_combout\ & !\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add2~36_combout\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clkdiv_cntr~7_combout\);

-- Location: FF_X28_Y19_N3
\DSP1|clkdiv_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clkdiv_cntr~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(18));

-- Location: LCCOMB_X28_Y19_N26
\DSP1|Equal6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~5_combout\ = (!\DSP1|clkdiv_cntr\(17) & (\DSP1|clkdiv_cntr\(19) & (\DSP1|clkdiv_cntr\(16) & \DSP1|clkdiv_cntr\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(17),
	datab => \DSP1|clkdiv_cntr\(19),
	datac => \DSP1|clkdiv_cntr\(16),
	datad => \DSP1|clkdiv_cntr\(18),
	combout => \DSP1|Equal6~5_combout\);

-- Location: LCCOMB_X27_Y19_N24
\DSP1|Add2~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~56_combout\ = (\DSP1|clkdiv_cntr\(28) & (\DSP1|Add2~55\ $ (GND))) # (!\DSP1|clkdiv_cntr\(28) & (!\DSP1|Add2~55\ & VCC))
-- \DSP1|Add2~57\ = CARRY((\DSP1|clkdiv_cntr\(28) & !\DSP1|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(28),
	datad => VCC,
	cin => \DSP1|Add2~55\,
	combout => \DSP1|Add2~56_combout\,
	cout => \DSP1|Add2~57\);

-- Location: FF_X27_Y19_N25
\DSP1|clkdiv_cntr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(28));

-- Location: LCCOMB_X27_Y19_N26
\DSP1|Add2~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~58_combout\ = (\DSP1|clkdiv_cntr\(29) & (!\DSP1|Add2~57\)) # (!\DSP1|clkdiv_cntr\(29) & ((\DSP1|Add2~57\) # (GND)))
-- \DSP1|Add2~59\ = CARRY((!\DSP1|Add2~57\) # (!\DSP1|clkdiv_cntr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(29),
	datad => VCC,
	cin => \DSP1|Add2~57\,
	combout => \DSP1|Add2~58_combout\,
	cout => \DSP1|Add2~59\);

-- Location: LCCOMB_X27_Y19_N28
\DSP1|Add2~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~60_combout\ = (\DSP1|clkdiv_cntr\(30) & (\DSP1|Add2~59\ $ (GND))) # (!\DSP1|clkdiv_cntr\(30) & (!\DSP1|Add2~59\ & VCC))
-- \DSP1|Add2~61\ = CARRY((\DSP1|clkdiv_cntr\(30) & !\DSP1|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|clkdiv_cntr\(30),
	datad => VCC,
	cin => \DSP1|Add2~59\,
	combout => \DSP1|Add2~60_combout\,
	cout => \DSP1|Add2~61\);

-- Location: FF_X27_Y19_N29
\DSP1|clkdiv_cntr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(30));

-- Location: LCCOMB_X27_Y19_N30
\DSP1|Add2~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add2~62_combout\ = \DSP1|clkdiv_cntr\(31) $ (\DSP1|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(31),
	cin => \DSP1|Add2~61\,
	combout => \DSP1|Add2~62_combout\);

-- Location: FF_X27_Y19_N31
\DSP1|clkdiv_cntr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(31));

-- Location: FF_X27_Y19_N27
\DSP1|clkdiv_cntr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(29));

-- Location: LCCOMB_X28_Y19_N20
\DSP1|Equal6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~8_combout\ = (!\DSP1|clkdiv_cntr\(30) & (!\DSP1|clkdiv_cntr\(31) & (!\DSP1|clkdiv_cntr\(29) & !\DSP1|clkdiv_cntr\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(30),
	datab => \DSP1|clkdiv_cntr\(31),
	datac => \DSP1|clkdiv_cntr\(29),
	datad => \DSP1|clkdiv_cntr\(28),
	combout => \DSP1|Equal6~8_combout\);

-- Location: LCCOMB_X28_Y19_N22
\DSP1|Equal6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~9_combout\ = (\DSP1|Equal6~6_combout\ & (\DSP1|Equal6~7_combout\ & (\DSP1|Equal6~5_combout\ & \DSP1|Equal6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal6~6_combout\,
	datab => \DSP1|Equal6~7_combout\,
	datac => \DSP1|Equal6~5_combout\,
	datad => \DSP1|Equal6~8_combout\,
	combout => \DSP1|Equal6~9_combout\);

-- Location: FF_X27_Y20_N31
\DSP1|clkdiv_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clkdiv_cntr\(15));

-- Location: LCCOMB_X28_Y20_N28
\DSP1|Equal6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~4_combout\ = (\DSP1|clkdiv_cntr\(13) & (!\DSP1|clkdiv_cntr\(15) & (\DSP1|clkdiv_cntr\(14) & \DSP1|clkdiv_cntr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|clkdiv_cntr\(13),
	datab => \DSP1|clkdiv_cntr\(15),
	datac => \DSP1|clkdiv_cntr\(14),
	datad => \DSP1|clkdiv_cntr\(12),
	combout => \DSP1|Equal6~4_combout\);

-- Location: LCCOMB_X28_Y20_N6
\DSP1|Equal6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal6~10_combout\ = (\DSP1|Equal6~2_combout\ & (\DSP1|Equal6~3_combout\ & (\DSP1|Equal6~9_combout\ & \DSP1|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal6~2_combout\,
	datab => \DSP1|Equal6~3_combout\,
	datac => \DSP1|Equal6~9_combout\,
	datad => \DSP1|Equal6~4_combout\,
	combout => \DSP1|Equal6~10_combout\);

-- Location: LCCOMB_X33_Y22_N10
\DSP1|clknew~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|clknew~0_combout\ = \DSP1|clknew~q\ $ (\DSP1|Equal6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|clknew~q\,
	datad => \DSP1|Equal6~10_combout\,
	combout => \DSP1|clknew~0_combout\);

-- Location: FF_X33_Y22_N11
\DSP1|clknew\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|clknew~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|clknew~q\);

-- Location: FF_X39_Y22_N1
\CG1|ColorMode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|button_out_buffer~clkctrl_outclk\,
	asdata => \CG1|R_out[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG1|ColorMode\(0));

-- Location: LCCOMB_X39_Y22_N22
\CG1|ColorMode~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG1|ColorMode~0_combout\ = (\CG1|ColorMode\(1) & (!\CG1|ColorMode\(2) & \CG1|ColorMode\(0))) # (!\CG1|ColorMode\(1) & (\CG1|ColorMode\(2) & !\CG1|ColorMode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG1|ColorMode\(1),
	datac => \CG1|ColorMode\(2),
	datad => \CG1|ColorMode\(0),
	combout => \CG1|ColorMode~0_combout\);

-- Location: FF_X39_Y22_N23
\CG1|ColorMode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|button_out_buffer~clkctrl_outclk\,
	d => \CG1|ColorMode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG1|ColorMode\(2));

-- Location: LCCOMB_X39_Y22_N4
\CG1|ColorMode~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG1|ColorMode~1_combout\ = (!\CG1|ColorMode\(2) & (\CG1|ColorMode\(0) $ (\CG1|ColorMode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CG1|ColorMode\(0),
	datac => \CG1|ColorMode\(1),
	datad => \CG1|ColorMode\(2),
	combout => \CG1|ColorMode~1_combout\);

-- Location: FF_X39_Y22_N5
\CG1|ColorMode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD4|button_out_buffer~clkctrl_outclk\,
	d => \CG1|ColorMode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG1|ColorMode\(1));

-- Location: LCCOMB_X39_Y22_N14
\CG1|R_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG1|R_out[0]~0_combout\ = (!\CG1|ColorMode\(0) & ((!\CG1|ColorMode\(1)) # (!\CG1|ColorMode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG1|ColorMode\(2),
	datac => \CG1|ColorMode\(1),
	datad => \CG1|ColorMode\(0),
	combout => \CG1|R_out[0]~0_combout\);

-- Location: LCCOMB_X39_Y20_N4
\DSP1|process_5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~10_combout\ = (!\DSP1|Add8~10_combout\ & (\DSP1|process_5~9_combout\ & (\DSP1|LessThan15~12_combout\ & \DSP1|LessThan16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~10_combout\,
	datab => \DSP1|process_5~9_combout\,
	datac => \DSP1|LessThan15~12_combout\,
	datad => \DSP1|LessThan16~10_combout\,
	combout => \DSP1|process_5~10_combout\);

-- Location: LCCOMB_X37_Y21_N22
\DSP1|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add11~2_combout\ = \DSP1|Mux7~0_combout\ $ (((\DSP1|Mux8~0_combout\ & \DSP1|Add11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux8~0_combout\,
	datac => \DSP1|Mux7~0_combout\,
	datad => \DSP1|Add11~0_combout\,
	combout => \DSP1|Add11~2_combout\);

-- Location: LCCOMB_X38_Y21_N10
\DSP1|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~1_cout\ = CARRY(\DSP1|LessThan44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|LessThan44~0_combout\,
	datad => VCC,
	cout => \DSP1|LessThan21~1_cout\);

-- Location: LCCOMB_X38_Y21_N12
\DSP1|LessThan21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~3_cout\ = CARRY((\DSP1|Mux11~0_combout\ & (!\DSP1|hcntr\(4) & !\DSP1|LessThan21~1_cout\)) # (!\DSP1|Mux11~0_combout\ & ((!\DSP1|LessThan21~1_cout\) # (!\DSP1|hcntr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux11~0_combout\,
	datab => \DSP1|hcntr\(4),
	datad => VCC,
	cin => \DSP1|LessThan21~1_cout\,
	cout => \DSP1|LessThan21~3_cout\);

-- Location: LCCOMB_X38_Y21_N14
\DSP1|LessThan21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~5_cout\ = CARRY((\DSP1|Add8~0_combout\ & (\DSP1|hcntr\(5) & !\DSP1|LessThan21~3_cout\)) # (!\DSP1|Add8~0_combout\ & ((\DSP1|hcntr\(5)) # (!\DSP1|LessThan21~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add8~0_combout\,
	datab => \DSP1|hcntr\(5),
	datad => VCC,
	cin => \DSP1|LessThan21~3_cout\,
	cout => \DSP1|LessThan21~5_cout\);

-- Location: LCCOMB_X38_Y21_N16
\DSP1|LessThan21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~7_cout\ = CARRY((\DSP1|Add11~4_combout\ & (!\DSP1|hcntr\(6) & !\DSP1|LessThan21~5_cout\)) # (!\DSP1|Add11~4_combout\ & ((!\DSP1|LessThan21~5_cout\) # (!\DSP1|hcntr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add11~4_combout\,
	datab => \DSP1|hcntr\(6),
	datad => VCC,
	cin => \DSP1|LessThan21~5_cout\,
	cout => \DSP1|LessThan21~7_cout\);

-- Location: LCCOMB_X38_Y21_N18
\DSP1|LessThan21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~9_cout\ = CARRY((\DSP1|Add11~3_combout\ & (\DSP1|hcntr\(7) & !\DSP1|LessThan21~7_cout\)) # (!\DSP1|Add11~3_combout\ & ((\DSP1|hcntr\(7)) # (!\DSP1|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add11~3_combout\,
	datab => \DSP1|hcntr\(7),
	datad => VCC,
	cin => \DSP1|LessThan21~7_cout\,
	cout => \DSP1|LessThan21~9_cout\);

-- Location: LCCOMB_X38_Y21_N20
\DSP1|LessThan21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~11_cout\ = CARRY((\DSP1|hcntr\(8) & (\DSP1|Add11~2_combout\ & !\DSP1|LessThan21~9_cout\)) # (!\DSP1|hcntr\(8) & ((\DSP1|Add11~2_combout\) # (!\DSP1|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|Add11~2_combout\,
	datad => VCC,
	cin => \DSP1|LessThan21~9_cout\,
	cout => \DSP1|LessThan21~11_cout\);

-- Location: LCCOMB_X38_Y21_N22
\DSP1|LessThan21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan21~12_combout\ = (\DSP1|Add11~1_combout\ & (!\DSP1|LessThan21~11_cout\ & \DSP1|hcntr\(9))) # (!\DSP1|Add11~1_combout\ & ((\DSP1|hcntr\(9)) # (!\DSP1|LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add11~1_combout\,
	datad => \DSP1|hcntr\(9),
	cin => \DSP1|LessThan21~11_cout\,
	combout => \DSP1|LessThan21~12_combout\);

-- Location: LCCOMB_X39_Y20_N12
\DSP1|process_5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~15_combout\ = (!\DSP1|process_5~1_combout\ & (\DSP1|LessThan21~12_combout\ & ((\DSP1|Add12~10_combout\) # (\DSP1|LessThan22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add12~10_combout\,
	datab => \DSP1|process_5~1_combout\,
	datac => \DSP1|LessThan22~10_combout\,
	datad => \DSP1|LessThan21~12_combout\,
	combout => \DSP1|process_5~15_combout\);

-- Location: LCCOMB_X39_Y20_N2
\DSP1|R[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~0_combout\ = (\DSP1|process_5~10_combout\) # ((\DSP1|process_5~14_combout\ & \DSP1|process_5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~14_combout\,
	datac => \DSP1|process_5~10_combout\,
	datad => \DSP1|process_5~15_combout\,
	combout => \DSP1|R[1]~0_combout\);

-- Location: LCCOMB_X39_Y21_N26
\DSP1|R[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~2_combout\ = ((\DSP1|R[1]~0_combout\) # (\DSP1|process_5~8_combout\)) # (!\DSP1|R[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|R[1]~1_combout\,
	datac => \DSP1|R[1]~0_combout\,
	datad => \DSP1|process_5~8_combout\,
	combout => \DSP1|R[1]~2_combout\);

-- Location: LCCOMB_X36_Y20_N20
\DSP1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~0_combout\ = (!\DSP1|digIn\(0) & ((\DSP1|digIn\(3)) # (\DSP1|digIn\(1) $ (\DSP1|digIn\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(3),
	datab => \DSP1|digIn\(1),
	datac => \DSP1|digIn\(2),
	datad => \DSP1|digIn\(0),
	combout => \DSP1|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y21_N0
\DCG2|minute[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[0]~7_combout\ = \DCG2|minute\(0) $ (VCC)
-- \DCG2|minute[0]~8\ = CARRY(\DCG2|minute\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute\(0),
	datad => VCC,
	combout => \DCG2|minute[0]~7_combout\,
	cout => \DCG2|minute[0]~8\);

-- Location: LCCOMB_X33_Y21_N8
\DCG2|minute[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[4]~15_combout\ = (\DCG2|minute\(4) & (\DCG2|minute[3]~14\ $ (GND))) # (!\DCG2|minute\(4) & (!\DCG2|minute[3]~14\ & VCC))
-- \DCG2|minute[4]~16\ = CARRY((\DCG2|minute\(4) & !\DCG2|minute[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute\(4),
	datad => VCC,
	cin => \DCG2|minute[3]~14\,
	combout => \DCG2|minute[4]~15_combout\,
	cout => \DCG2|minute[4]~16\);

-- Location: LCCOMB_X33_Y21_N10
\DCG2|minute[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[5]~17_combout\ = \DCG2|minute[4]~16\ $ (\DCG2|minute\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DCG2|minute\(5),
	cin => \DCG2|minute[4]~16\,
	combout => \DCG2|minute[5]~17_combout\);

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X0_Y21_N10
\KD1|samples[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD1|clk5ms~clkctrl_outclk\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|samples\(0));

-- Location: LCCOMB_X1_Y21_N28
\KD1|samples[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|samples[1]~feeder_combout\ = \KD1|samples\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD1|samples\(0),
	combout => \KD1|samples[1]~feeder_combout\);

-- Location: FF_X1_Y21_N29
\KD1|samples[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD1|clk5ms~clkctrl_outclk\,
	d => \KD1|samples[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|samples\(1));

-- Location: LCCOMB_X2_Y21_N24
\KD1|samples[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|samples[2]~feeder_combout\ = \KD1|samples\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD1|samples\(1),
	combout => \KD1|samples[2]~feeder_combout\);

-- Location: FF_X2_Y21_N25
\KD1|samples[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD1|clk5ms~clkctrl_outclk\,
	d => \KD1|samples[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD1|samples\(2));

-- Location: LCCOMB_X3_Y21_N24
\KD1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|Equal1~0_combout\ = (!\KD1|samples\(1) & (!\KD1|samples\(0) & !\KD1|samples\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|samples\(1),
	datac => \KD1|samples\(0),
	datad => \KD1|samples\(2),
	combout => \KD1|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y21_N24
\KD1|button_out_buffer\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD1|button_out_buffer~combout\ = (!\KD1|Equal1~0_combout\ & ((\KD1|comb~0_combout\) # (\KD1|button_out_buffer~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|comb~0_combout\,
	datab => \KD1|Equal1~0_combout\,
	datad => \KD1|button_out_buffer~combout\,
	combout => \KD1|button_out_buffer~combout\);

-- Location: LCCOMB_X32_Y24_N6
\DCG1|clock_counter[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[0]~26_combout\ = \DCG1|clock_counter\(0) $ (VCC)
-- \DCG1|clock_counter[0]~27\ = CARRY(\DCG1|clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(0),
	datad => VCC,
	combout => \DCG1|clock_counter[0]~26_combout\,
	cout => \DCG1|clock_counter[0]~27\);

-- Location: LCCOMB_X32_Y24_N8
\DCG1|clock_counter[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[1]~28_combout\ = (\DCG1|clock_counter\(1) & (!\DCG1|clock_counter[0]~27\)) # (!\DCG1|clock_counter\(1) & ((\DCG1|clock_counter[0]~27\) # (GND)))
-- \DCG1|clock_counter[1]~29\ = CARRY((!\DCG1|clock_counter[0]~27\) # (!\DCG1|clock_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(1),
	datad => VCC,
	cin => \DCG1|clock_counter[0]~27\,
	combout => \DCG1|clock_counter[1]~28_combout\,
	cout => \DCG1|clock_counter[1]~29\);

-- Location: LCCOMB_X30_Y21_N22
\DCG1|seconddigit2[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit2[2]~1_combout\ = (\DCG1|Equal4~8_combout\) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datac => \DCG1|Equal4~8_combout\,
	combout => \DCG1|seconddigit2[2]~1_combout\);

-- Location: FF_X32_Y24_N9
\DCG1|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[1]~28_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(1));

-- Location: LCCOMB_X32_Y24_N10
\DCG1|clock_counter[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[2]~30_combout\ = (\DCG1|clock_counter\(2) & (\DCG1|clock_counter[1]~29\ $ (GND))) # (!\DCG1|clock_counter\(2) & (!\DCG1|clock_counter[1]~29\ & VCC))
-- \DCG1|clock_counter[2]~31\ = CARRY((\DCG1|clock_counter\(2) & !\DCG1|clock_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(2),
	datad => VCC,
	cin => \DCG1|clock_counter[1]~29\,
	combout => \DCG1|clock_counter[2]~30_combout\,
	cout => \DCG1|clock_counter[2]~31\);

-- Location: FF_X32_Y24_N11
\DCG1|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[2]~30_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(2));

-- Location: FF_X32_Y24_N7
\DCG1|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[0]~26_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(0));

-- Location: LCCOMB_X32_Y24_N0
\DCG1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~0_combout\ = (\DCG1|clock_counter\(3)) # ((\DCG1|clock_counter\(2)) # ((\DCG1|clock_counter\(1)) # (\DCG1|clock_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(3),
	datab => \DCG1|clock_counter\(2),
	datac => \DCG1|clock_counter\(1),
	datad => \DCG1|clock_counter\(0),
	combout => \DCG1|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y24_N14
\DCG1|clock_counter[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[4]~34_combout\ = (\DCG1|clock_counter\(4) & (\DCG1|clock_counter[3]~33\ $ (GND))) # (!\DCG1|clock_counter\(4) & (!\DCG1|clock_counter[3]~33\ & VCC))
-- \DCG1|clock_counter[4]~35\ = CARRY((\DCG1|clock_counter\(4) & !\DCG1|clock_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(4),
	datad => VCC,
	cin => \DCG1|clock_counter[3]~33\,
	combout => \DCG1|clock_counter[4]~34_combout\,
	cout => \DCG1|clock_counter[4]~35\);

-- Location: FF_X32_Y24_N15
\DCG1|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[4]~34_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(4));

-- Location: LCCOMB_X32_Y24_N16
\DCG1|clock_counter[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[5]~36_combout\ = (\DCG1|clock_counter\(5) & (!\DCG1|clock_counter[4]~35\)) # (!\DCG1|clock_counter\(5) & ((\DCG1|clock_counter[4]~35\) # (GND)))
-- \DCG1|clock_counter[5]~37\ = CARRY((!\DCG1|clock_counter[4]~35\) # (!\DCG1|clock_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(5),
	datad => VCC,
	cin => \DCG1|clock_counter[4]~35\,
	combout => \DCG1|clock_counter[5]~36_combout\,
	cout => \DCG1|clock_counter[5]~37\);

-- Location: FF_X32_Y24_N17
\DCG1|clock_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[5]~36_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(5));

-- Location: LCCOMB_X32_Y24_N18
\DCG1|clock_counter[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[6]~38_combout\ = (\DCG1|clock_counter\(6) & (\DCG1|clock_counter[5]~37\ $ (GND))) # (!\DCG1|clock_counter\(6) & (!\DCG1|clock_counter[5]~37\ & VCC))
-- \DCG1|clock_counter[6]~39\ = CARRY((\DCG1|clock_counter\(6) & !\DCG1|clock_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(6),
	datad => VCC,
	cin => \DCG1|clock_counter[5]~37\,
	combout => \DCG1|clock_counter[6]~38_combout\,
	cout => \DCG1|clock_counter[6]~39\);

-- Location: FF_X32_Y24_N19
\DCG1|clock_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[6]~38_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(6));

-- Location: LCCOMB_X32_Y24_N20
\DCG1|clock_counter[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[7]~40_combout\ = (\DCG1|clock_counter\(7) & (!\DCG1|clock_counter[6]~39\)) # (!\DCG1|clock_counter\(7) & ((\DCG1|clock_counter[6]~39\) # (GND)))
-- \DCG1|clock_counter[7]~41\ = CARRY((!\DCG1|clock_counter[6]~39\) # (!\DCG1|clock_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(7),
	datad => VCC,
	cin => \DCG1|clock_counter[6]~39\,
	combout => \DCG1|clock_counter[7]~40_combout\,
	cout => \DCG1|clock_counter[7]~41\);

-- Location: FF_X32_Y24_N21
\DCG1|clock_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[7]~40_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(7));

-- Location: LCCOMB_X32_Y24_N2
\DCG1|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~1_combout\ = (\DCG1|clock_counter\(5)) # ((\DCG1|clock_counter\(6)) # ((\DCG1|clock_counter\(4)) # (!\DCG1|clock_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(5),
	datab => \DCG1|clock_counter\(6),
	datac => \DCG1|clock_counter\(4),
	datad => \DCG1|clock_counter\(7),
	combout => \DCG1|Equal4~1_combout\);

-- Location: LCCOMB_X32_Y24_N24
\DCG1|clock_counter[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[9]~44_combout\ = (\DCG1|clock_counter\(9) & (!\DCG1|clock_counter[8]~43\)) # (!\DCG1|clock_counter\(9) & ((\DCG1|clock_counter[8]~43\) # (GND)))
-- \DCG1|clock_counter[9]~45\ = CARRY((!\DCG1|clock_counter[8]~43\) # (!\DCG1|clock_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(9),
	datad => VCC,
	cin => \DCG1|clock_counter[8]~43\,
	combout => \DCG1|clock_counter[9]~44_combout\,
	cout => \DCG1|clock_counter[9]~45\);

-- Location: FF_X32_Y24_N25
\DCG1|clock_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[9]~44_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(9));

-- Location: LCCOMB_X32_Y24_N28
\DCG1|clock_counter[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[11]~48_combout\ = (\DCG1|clock_counter\(11) & (!\DCG1|clock_counter[10]~47\)) # (!\DCG1|clock_counter\(11) & ((\DCG1|clock_counter[10]~47\) # (GND)))
-- \DCG1|clock_counter[11]~49\ = CARRY((!\DCG1|clock_counter[10]~47\) # (!\DCG1|clock_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(11),
	datad => VCC,
	cin => \DCG1|clock_counter[10]~47\,
	combout => \DCG1|clock_counter[11]~48_combout\,
	cout => \DCG1|clock_counter[11]~49\);

-- Location: FF_X32_Y24_N29
\DCG1|clock_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[11]~48_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(11));

-- Location: LCCOMB_X32_Y23_N0
\DCG1|clock_counter[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[13]~52_combout\ = (\DCG1|clock_counter\(13) & (!\DCG1|clock_counter[12]~51\)) # (!\DCG1|clock_counter\(13) & ((\DCG1|clock_counter[12]~51\) # (GND)))
-- \DCG1|clock_counter[13]~53\ = CARRY((!\DCG1|clock_counter[12]~51\) # (!\DCG1|clock_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(13),
	datad => VCC,
	cin => \DCG1|clock_counter[12]~51\,
	combout => \DCG1|clock_counter[13]~52_combout\,
	cout => \DCG1|clock_counter[13]~53\);

-- Location: FF_X32_Y23_N1
\DCG1|clock_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[13]~52_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(13));

-- Location: LCCOMB_X32_Y23_N2
\DCG1|clock_counter[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[14]~54_combout\ = (\DCG1|clock_counter\(14) & (\DCG1|clock_counter[13]~53\ $ (GND))) # (!\DCG1|clock_counter\(14) & (!\DCG1|clock_counter[13]~53\ & VCC))
-- \DCG1|clock_counter[14]~55\ = CARRY((\DCG1|clock_counter\(14) & !\DCG1|clock_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(14),
	datad => VCC,
	cin => \DCG1|clock_counter[13]~53\,
	combout => \DCG1|clock_counter[14]~54_combout\,
	cout => \DCG1|clock_counter[14]~55\);

-- Location: FF_X32_Y23_N3
\DCG1|clock_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[14]~54_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(14));

-- Location: LCCOMB_X32_Y23_N4
\DCG1|clock_counter[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[15]~56_combout\ = (\DCG1|clock_counter\(15) & (!\DCG1|clock_counter[14]~55\)) # (!\DCG1|clock_counter\(15) & ((\DCG1|clock_counter[14]~55\) # (GND)))
-- \DCG1|clock_counter[15]~57\ = CARRY((!\DCG1|clock_counter[14]~55\) # (!\DCG1|clock_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(15),
	datad => VCC,
	cin => \DCG1|clock_counter[14]~55\,
	combout => \DCG1|clock_counter[15]~56_combout\,
	cout => \DCG1|clock_counter[15]~57\);

-- Location: FF_X32_Y23_N5
\DCG1|clock_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[15]~56_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(15));

-- Location: LCCOMB_X32_Y23_N26
\DCG1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~3_combout\ = (((!\DCG1|clock_counter\(14)) # (!\DCG1|clock_counter\(15))) # (!\DCG1|clock_counter\(13))) # (!\DCG1|clock_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(12),
	datab => \DCG1|clock_counter\(13),
	datac => \DCG1|clock_counter\(15),
	datad => \DCG1|clock_counter\(14),
	combout => \DCG1|Equal4~3_combout\);

-- Location: LCCOMB_X32_Y20_N28
\DCG1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~4_combout\ = (\DCG1|Equal4~2_combout\) # ((\DCG1|Equal4~0_combout\) # ((\DCG1|Equal4~1_combout\) # (\DCG1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~2_combout\,
	datab => \DCG1|Equal4~0_combout\,
	datac => \DCG1|Equal4~1_combout\,
	datad => \DCG1|Equal4~3_combout\,
	combout => \DCG1|Equal4~4_combout\);

-- Location: LCCOMB_X32_Y23_N8
\DCG1|clock_counter[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[17]~60_combout\ = (\DCG1|clock_counter\(17) & (!\DCG1|clock_counter[16]~59\)) # (!\DCG1|clock_counter\(17) & ((\DCG1|clock_counter[16]~59\) # (GND)))
-- \DCG1|clock_counter[17]~61\ = CARRY((!\DCG1|clock_counter[16]~59\) # (!\DCG1|clock_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(17),
	datad => VCC,
	cin => \DCG1|clock_counter[16]~59\,
	combout => \DCG1|clock_counter[17]~60_combout\,
	cout => \DCG1|clock_counter[17]~61\);

-- Location: FF_X32_Y23_N9
\DCG1|clock_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[17]~60_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(17));

-- Location: LCCOMB_X32_Y23_N14
\DCG1|clock_counter[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[20]~66_combout\ = (\DCG1|clock_counter\(20) & (\DCG1|clock_counter[19]~65\ $ (GND))) # (!\DCG1|clock_counter\(20) & (!\DCG1|clock_counter[19]~65\ & VCC))
-- \DCG1|clock_counter[20]~67\ = CARRY((\DCG1|clock_counter\(20) & !\DCG1|clock_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(20),
	datad => VCC,
	cin => \DCG1|clock_counter[19]~65\,
	combout => \DCG1|clock_counter[20]~66_combout\,
	cout => \DCG1|clock_counter[20]~67\);

-- Location: FF_X32_Y23_N15
\DCG1|clock_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[20]~66_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(20));

-- Location: LCCOMB_X32_Y23_N16
\DCG1|clock_counter[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[21]~68_combout\ = (\DCG1|clock_counter\(21) & (!\DCG1|clock_counter[20]~67\)) # (!\DCG1|clock_counter\(21) & ((\DCG1|clock_counter[20]~67\) # (GND)))
-- \DCG1|clock_counter[21]~69\ = CARRY((!\DCG1|clock_counter[20]~67\) # (!\DCG1|clock_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(21),
	datad => VCC,
	cin => \DCG1|clock_counter[20]~67\,
	combout => \DCG1|clock_counter[21]~68_combout\,
	cout => \DCG1|clock_counter[21]~69\);

-- Location: FF_X32_Y23_N17
\DCG1|clock_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[21]~68_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(21));

-- Location: LCCOMB_X32_Y23_N18
\DCG1|clock_counter[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[22]~70_combout\ = (\DCG1|clock_counter\(22) & (\DCG1|clock_counter[21]~69\ $ (GND))) # (!\DCG1|clock_counter\(22) & (!\DCG1|clock_counter[21]~69\ & VCC))
-- \DCG1|clock_counter[22]~71\ = CARRY((\DCG1|clock_counter\(22) & !\DCG1|clock_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(22),
	datad => VCC,
	cin => \DCG1|clock_counter[21]~69\,
	combout => \DCG1|clock_counter[22]~70_combout\,
	cout => \DCG1|clock_counter[22]~71\);

-- Location: FF_X32_Y23_N19
\DCG1|clock_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[22]~70_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(22));

-- Location: LCCOMB_X32_Y23_N20
\DCG1|clock_counter[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[23]~72_combout\ = (\DCG1|clock_counter\(23) & (!\DCG1|clock_counter[22]~71\)) # (!\DCG1|clock_counter\(23) & ((\DCG1|clock_counter[22]~71\) # (GND)))
-- \DCG1|clock_counter[23]~73\ = CARRY((!\DCG1|clock_counter[22]~71\) # (!\DCG1|clock_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(23),
	datad => VCC,
	cin => \DCG1|clock_counter[22]~71\,
	combout => \DCG1|clock_counter[23]~72_combout\,
	cout => \DCG1|clock_counter[23]~73\);

-- Location: FF_X32_Y23_N21
\DCG1|clock_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[23]~72_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(23));

-- Location: LCCOMB_X32_Y23_N30
\DCG1|Equal4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~6_combout\ = (((!\DCG1|clock_counter\(23)) # (!\DCG1|clock_counter\(20))) # (!\DCG1|clock_counter\(22))) # (!\DCG1|clock_counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(21),
	datab => \DCG1|clock_counter\(22),
	datac => \DCG1|clock_counter\(20),
	datad => \DCG1|clock_counter\(23),
	combout => \DCG1|Equal4~6_combout\);

-- Location: LCCOMB_X32_Y23_N22
\DCG1|clock_counter[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[24]~74_combout\ = (\DCG1|clock_counter\(24) & (\DCG1|clock_counter[23]~73\ $ (GND))) # (!\DCG1|clock_counter\(24) & (!\DCG1|clock_counter[23]~73\ & VCC))
-- \DCG1|clock_counter[24]~75\ = CARRY((\DCG1|clock_counter\(24) & !\DCG1|clock_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|clock_counter\(24),
	datad => VCC,
	cin => \DCG1|clock_counter[23]~73\,
	combout => \DCG1|clock_counter[24]~74_combout\,
	cout => \DCG1|clock_counter[24]~75\);

-- Location: LCCOMB_X32_Y23_N24
\DCG1|clock_counter[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|clock_counter[25]~76_combout\ = \DCG1|clock_counter[24]~75\ $ (\DCG1|clock_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DCG1|clock_counter\(25),
	cin => \DCG1|clock_counter[24]~75\,
	combout => \DCG1|clock_counter[25]~76_combout\);

-- Location: FF_X32_Y23_N25
\DCG1|clock_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[25]~76_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(25));

-- Location: FF_X32_Y23_N23
\DCG1|clock_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|clock_counter[24]~74_combout\,
	sclr => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|clock_counter\(24));

-- Location: LCCOMB_X31_Y23_N4
\DCG1|Equal4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~7_combout\ = (\DCG1|clock_counter\(24)) # (!\DCG1|clock_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|clock_counter\(25),
	datad => \DCG1|clock_counter\(24),
	combout => \DCG1|Equal4~7_combout\);

-- Location: LCCOMB_X32_Y20_N22
\DCG1|Equal4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal4~8_combout\ = (!\DCG1|Equal4~5_combout\ & (!\DCG1|Equal4~4_combout\ & (!\DCG1|Equal4~6_combout\ & !\DCG1|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~5_combout\,
	datab => \DCG1|Equal4~4_combout\,
	datac => \DCG1|Equal4~6_combout\,
	datad => \DCG1|Equal4~7_combout\,
	combout => \DCG1|Equal4~8_combout\);

-- Location: LCCOMB_X30_Y21_N8
\DCG1|second[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[1]~8_combout\ = (\DCG1|second\(1) & (!\DCG1|second[0]~7\)) # (!\DCG1|second\(1) & ((\DCG1|second[0]~7\) # (GND)))
-- \DCG1|second[1]~9\ = CARRY((!\DCG1|second[0]~7\) # (!\DCG1|second\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|second\(1),
	datad => VCC,
	cin => \DCG1|second[0]~7\,
	combout => \DCG1|second[1]~8_combout\,
	cout => \DCG1|second[1]~9\);

-- Location: LCCOMB_X30_Y21_N12
\DCG1|second[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[3]~12_combout\ = (\DCG1|second\(3) & (!\DCG1|second[2]~11\)) # (!\DCG1|second\(3) & ((\DCG1|second[2]~11\) # (GND)))
-- \DCG1|second[3]~13\ = CARRY((!\DCG1|second[2]~11\) # (!\DCG1|second\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|second\(3),
	datad => VCC,
	cin => \DCG1|second[2]~11\,
	combout => \DCG1|second[3]~12_combout\,
	cout => \DCG1|second[3]~13\);

-- Location: LCCOMB_X30_Y21_N14
\DCG1|second[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[4]~14_combout\ = (\DCG1|second\(4) & (\DCG1|second[3]~13\ $ (GND))) # (!\DCG1|second\(4) & (!\DCG1|second[3]~13\ & VCC))
-- \DCG1|second[4]~15\ = CARRY((\DCG1|second\(4) & !\DCG1|second[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|second\(4),
	datad => VCC,
	cin => \DCG1|second[3]~13\,
	combout => \DCG1|second[4]~14_combout\,
	cout => \DCG1|second[4]~15\);

-- Location: FF_X30_Y21_N15
\DCG1|second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[4]~14_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(4));

-- Location: LCCOMB_X30_Y21_N16
\DCG1|second[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[5]~16_combout\ = \DCG1|second[4]~15\ $ (\DCG1|second\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DCG1|second\(5),
	cin => \DCG1|second[4]~15\,
	combout => \DCG1|second[5]~16_combout\);

-- Location: FF_X30_Y21_N17
\DCG1|second[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[5]~16_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(5));

-- Location: LCCOMB_X30_Y21_N2
\DCG1|seconddigit1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit1[2]~0_combout\ = ((!\DCG1|LessThan3~0_combout\ & (\DCG1|second\(4) & \DCG1|second\(5)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG1|LessThan3~0_combout\,
	datac => \DCG1|second\(4),
	datad => \DCG1|second\(5),
	combout => \DCG1|seconddigit1[2]~0_combout\);

-- Location: FF_X30_Y21_N9
\DCG1|second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[1]~8_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(1));

-- Location: LCCOMB_X30_Y21_N10
\DCG1|second[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|second[2]~10_combout\ = (\DCG1|second\(2) & (\DCG1|second[1]~9\ $ (GND))) # (!\DCG1|second\(2) & (!\DCG1|second[1]~9\ & VCC))
-- \DCG1|second[2]~11\ = CARRY((\DCG1|second\(2) & !\DCG1|second[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|second\(2),
	datad => VCC,
	cin => \DCG1|second[1]~9\,
	combout => \DCG1|second[2]~10_combout\,
	cout => \DCG1|second[2]~11\);

-- Location: FF_X30_Y21_N13
\DCG1|second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[3]~12_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(3));

-- Location: FF_X30_Y21_N11
\DCG1|second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|second[2]~10_combout\,
	sclr => \DCG1|seconddigit1[2]~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|second\(2));

-- Location: LCCOMB_X30_Y21_N28
\DCG1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan3~0_combout\ = ((!\DCG1|second\(2) & ((!\DCG1|second\(1)) # (!\DCG1|second\(0))))) # (!\DCG1|second\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|second\(0),
	datab => \DCG1|second\(3),
	datac => \DCG1|second\(1),
	datad => \DCG1|second\(2),
	combout => \DCG1|LessThan3~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\DCG1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan3~1_combout\ = (\DCG1|LessThan3~0_combout\) # ((!\DCG1|second\(5)) # (!\DCG1|second\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|LessThan3~0_combout\,
	datac => \DCG1|second\(4),
	datad => \DCG1|second\(5),
	combout => \DCG1|LessThan3~1_combout\);

-- Location: LCCOMB_X33_Y21_N26
\DCG2|minutedigit2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2[0]~0_combout\ = ((\DCG1|Equal4~8_combout\ & ((!\DCG1|LessThan3~1_combout\) # (!\DCG1|first_time_flag~q\)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \KD1|button_out_buffer~combout\,
	datac => \DCG1|Equal4~8_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG2|minutedigit2[0]~0_combout\);

-- Location: FF_X33_Y21_N11
\DCG2|minute[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[5]~17_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(5));

-- Location: LCCOMB_X33_Y21_N28
\DCG2|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|LessThan4~0_combout\ = ((!\DCG2|minute\(2) & ((!\DCG2|minute\(0)) # (!\DCG2|minute\(1))))) # (!\DCG2|minute\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minute\(3),
	datab => \DCG2|minute\(1),
	datac => \DCG2|minute\(2),
	datad => \DCG2|minute\(0),
	combout => \DCG2|LessThan4~0_combout\);

-- Location: LCCOMB_X32_Y21_N24
\DCG2|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|LessThan4~1_combout\ = ((\DCG2|LessThan4~0_combout\) # (!\DCG2|minute\(5))) # (!\DCG2|minute\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute\(4),
	datac => \DCG2|minute\(5),
	datad => \DCG2|LessThan4~0_combout\,
	combout => \DCG2|LessThan4~1_combout\);

-- Location: LCCOMB_X33_Y21_N18
\DCG2|minute[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[0]~6_combout\ = ((\DCG1|LessThan3~1_combout\) # (!\KD1|button_out_buffer~combout\)) # (!\DCG2|LessThan4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|LessThan4~1_combout\,
	datac => \KD1|button_out_buffer~combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG2|minute[0]~6_combout\);

-- Location: FF_X33_Y21_N1
\DCG2|minute[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[0]~7_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(0));

-- Location: LCCOMB_X33_Y21_N2
\DCG2|minute[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[1]~9_combout\ = (\DCG2|minute\(1) & (!\DCG2|minute[0]~8\)) # (!\DCG2|minute\(1) & ((\DCG2|minute[0]~8\) # (GND)))
-- \DCG2|minute[1]~10\ = CARRY((!\DCG2|minute[0]~8\) # (!\DCG2|minute\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute\(1),
	datad => VCC,
	cin => \DCG2|minute[0]~8\,
	combout => \DCG2|minute[1]~9_combout\,
	cout => \DCG2|minute[1]~10\);

-- Location: FF_X33_Y21_N3
\DCG2|minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[1]~9_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(1));

-- Location: LCCOMB_X33_Y21_N4
\DCG2|minute[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minute[2]~11_combout\ = (\DCG2|minute\(2) & (\DCG2|minute[1]~10\ $ (GND))) # (!\DCG2|minute\(2) & (!\DCG2|minute[1]~10\ & VCC))
-- \DCG2|minute[2]~12\ = CARRY((\DCG2|minute\(2) & !\DCG2|minute[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute\(2),
	datad => VCC,
	cin => \DCG2|minute[1]~10\,
	combout => \DCG2|minute[2]~11_combout\,
	cout => \DCG2|minute[2]~12\);

-- Location: FF_X33_Y21_N5
\DCG2|minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[2]~11_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(2));

-- Location: FF_X33_Y21_N9
\DCG2|minute[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minute[4]~15_combout\,
	sclr => \DCG2|minute[0]~6_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minute\(4));

-- Location: LCCOMB_X32_Y21_N0
\DCG2|hourdigit2[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2[3]~0_combout\ = (!\DCG1|LessThan3~1_combout\ & (\DCG2|minute\(4) & (\DCG2|minute\(5) & !\DCG2|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|LessThan3~1_combout\,
	datab => \DCG2|minute\(4),
	datac => \DCG2|minute\(5),
	datad => \DCG2|LessThan4~0_combout\,
	combout => \DCG2|hourdigit2[3]~0_combout\);

-- Location: LCCOMB_X35_Y19_N16
\DCG2|hour[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[0]~6_combout\ = \DCG2|hour\(0) $ (VCC)
-- \DCG2|hour[0]~7\ = CARRY(\DCG2|hour\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour\(0),
	datad => VCC,
	combout => \DCG2|hour[0]~6_combout\,
	cout => \DCG2|hour[0]~7\);

-- Location: LCCOMB_X30_Y21_N20
\DCG1|first_time_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|first_time_flag~0_combout\ = (\DCG1|first_time_flag~q\) # ((\KD1|button_out_buffer~combout\ & \DCG1|Equal4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG1|Equal4~8_combout\,
	datac => \DCG1|first_time_flag~q\,
	combout => \DCG1|first_time_flag~0_combout\);

-- Location: FF_X30_Y21_N21
\DCG1|first_time_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|first_time_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|first_time_flag~q\);

-- Location: LCCOMB_X35_Y19_N26
\DCG2|hourdigit2[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2[3]~2_combout\ = ((\DCG1|Equal4~8_combout\ & ((\DCG2|hourdigit2[3]~0_combout\) # (!\DCG1|first_time_flag~q\)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG2|hourdigit2[3]~0_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|Equal4~8_combout\,
	combout => \DCG2|hourdigit2[3]~2_combout\);

-- Location: FF_X35_Y19_N17
\DCG2|hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hour[0]~6_combout\,
	sclr => \DCG2|hour[0]~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hour\(0));

-- Location: LCCOMB_X35_Y19_N18
\DCG2|hour[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[1]~8_combout\ = (\DCG2|hour\(1) & (!\DCG2|hour[0]~7\)) # (!\DCG2|hour\(1) & ((\DCG2|hour[0]~7\) # (GND)))
-- \DCG2|hour[1]~9\ = CARRY((!\DCG2|hour[0]~7\) # (!\DCG2|hour\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour\(1),
	datad => VCC,
	cin => \DCG2|hour[0]~7\,
	combout => \DCG2|hour[1]~8_combout\,
	cout => \DCG2|hour[1]~9\);

-- Location: FF_X35_Y19_N19
\DCG2|hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hour[1]~8_combout\,
	sclr => \DCG2|hour[0]~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hour\(1));

-- Location: LCCOMB_X35_Y19_N20
\DCG2|hour[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[2]~10_combout\ = (\DCG2|hour\(2) & (\DCG2|hour[1]~9\ $ (GND))) # (!\DCG2|hour\(2) & (!\DCG2|hour[1]~9\ & VCC))
-- \DCG2|hour[2]~11\ = CARRY((\DCG2|hour\(2) & !\DCG2|hour[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour\(2),
	datad => VCC,
	cin => \DCG2|hour[1]~9\,
	combout => \DCG2|hour[2]~10_combout\,
	cout => \DCG2|hour[2]~11\);

-- Location: FF_X35_Y19_N21
\DCG2|hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hour[2]~10_combout\,
	sclr => \DCG2|hour[0]~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hour\(2));

-- Location: LCCOMB_X35_Y19_N22
\DCG2|hour[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[3]~12_combout\ = (\DCG2|hour\(3) & (!\DCG2|hour[2]~11\)) # (!\DCG2|hour\(3) & ((\DCG2|hour[2]~11\) # (GND)))
-- \DCG2|hour[3]~13\ = CARRY((!\DCG2|hour[2]~11\) # (!\DCG2|hour\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hour\(3),
	datad => VCC,
	cin => \DCG2|hour[2]~11\,
	combout => \DCG2|hour[3]~12_combout\,
	cout => \DCG2|hour[3]~13\);

-- Location: FF_X35_Y19_N23
\DCG2|hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hour[3]~12_combout\,
	sclr => \DCG2|hour[0]~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hour\(3));

-- Location: LCCOMB_X35_Y19_N30
\DCG2|hourdigit1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit1[0]~0_combout\ = (!\DCG2|hour\(3) & (((!\DCG2|hour\(2)) # (!\DCG2|hour\(0))) # (!\DCG2|hour\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hour\(1),
	datab => \DCG2|hour\(0),
	datac => \DCG2|hour\(3),
	datad => \DCG2|hour\(2),
	combout => \DCG2|hourdigit1[0]~0_combout\);

-- Location: LCCOMB_X35_Y19_N24
\DCG2|hour[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[4]~14_combout\ = \DCG2|hour[3]~13\ $ (!\DCG2|hour\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DCG2|hour\(4),
	cin => \DCG2|hour[3]~13\,
	combout => \DCG2|hour[4]~14_combout\);

-- Location: FF_X35_Y19_N25
\DCG2|hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hour[4]~14_combout\,
	sclr => \DCG2|hour[0]~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hour\(4));

-- Location: LCCOMB_X35_Y19_N12
\DCG2|hour[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hour[0]~5_combout\ = (((!\DCG2|hourdigit1[0]~0_combout\ & \DCG2|hour\(4))) # (!\DCG2|hourdigit2[3]~0_combout\)) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG2|hourdigit2[3]~0_combout\,
	datac => \DCG2|hourdigit1[0]~0_combout\,
	datad => \DCG2|hour\(4),
	combout => \DCG2|hour[0]~5_combout\);

-- Location: LCCOMB_X35_Y19_N4
\DCG2|hourdigit1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit1~1_combout\ = (!\DCG2|Equal2~0_combout\ & (!\DCG2|hourdigit1\(0) & !\DCG2|hour[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Equal2~0_combout\,
	datac => \DCG2|hourdigit1\(0),
	datad => \DCG2|hour[0]~5_combout\,
	combout => \DCG2|hourdigit1~1_combout\);

-- Location: LCCOMB_X33_Y20_N4
\DCG2|hourdigit2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2~1_combout\ = (!\DCG2|hour[0]~5_combout\ & (!\DCG2|hourdigit2\(0) & \DCG2|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour[0]~5_combout\,
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|Equal2~0_combout\,
	combout => \DCG2|hourdigit2~1_combout\);

-- Location: FF_X33_Y20_N5
\DCG2|hourdigit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit2~1_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit2\(0));

-- Location: LCCOMB_X33_Y20_N18
\DCG2|hourdigit2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2~3_combout\ = (\DCG2|Equal2~0_combout\ & (!\DCG2|hour[0]~5_combout\ & (\DCG2|hourdigit2\(1) $ (\DCG2|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Equal2~0_combout\,
	datab => \DCG2|hour[0]~5_combout\,
	datac => \DCG2|hourdigit2\(1),
	datad => \DCG2|hourdigit2\(0),
	combout => \DCG2|hourdigit2~3_combout\);

-- Location: FF_X33_Y20_N19
\DCG2|hourdigit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit2~3_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit2\(1));

-- Location: LCCOMB_X33_Y20_N28
\DCG2|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Add8~0_combout\ = \DCG2|hourdigit2\(2) $ (((\DCG2|hourdigit2\(0) & \DCG2|hourdigit2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(2),
	datab => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(1),
	combout => \DCG2|Add8~0_combout\);

-- Location: LCCOMB_X33_Y20_N12
\DCG2|hourdigit2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2~4_combout\ = (!\DCG2|hour[0]~5_combout\ & (\DCG2|Equal2~0_combout\ & \DCG2|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour[0]~5_combout\,
	datac => \DCG2|Equal2~0_combout\,
	datad => \DCG2|Add8~0_combout\,
	combout => \DCG2|hourdigit2~4_combout\);

-- Location: FF_X33_Y20_N13
\DCG2|hourdigit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit2~4_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit2\(2));

-- Location: LCCOMB_X33_Y20_N30
\DCG2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Equal2~0_combout\ = ((\DCG2|hourdigit2\(1)) # ((\DCG2|hourdigit2\(2)) # (!\DCG2|hourdigit2\(0)))) # (!\DCG2|hourdigit2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \DCG2|Equal2~0_combout\);

-- Location: LCCOMB_X35_Y19_N14
\DCG2|hourdigit1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit1[0]~2_combout\ = ((\DCG2|Equal2~0_combout\ & ((\DCG2|hourdigit1[0]~0_combout\) # (!\DCG2|hour\(4))))) # (!\DCG2|hourdigit2[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2[3]~0_combout\,
	datab => \DCG2|hour\(4),
	datac => \DCG2|hourdigit1[0]~0_combout\,
	datad => \DCG2|Equal2~0_combout\,
	combout => \DCG2|hourdigit1[0]~2_combout\);

-- Location: LCCOMB_X35_Y19_N8
\DCG2|hourdigit1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit1[0]~3_combout\ = ((\DCG1|Equal4~8_combout\ & ((!\DCG1|first_time_flag~q\) # (!\DCG2|hourdigit1[0]~2_combout\)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG2|hourdigit1[0]~2_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|Equal4~8_combout\,
	combout => \DCG2|hourdigit1[0]~3_combout\);

-- Location: FF_X35_Y19_N5
\DCG2|hourdigit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit1~1_combout\,
	ena => \DCG2|hourdigit1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit1\(0));

-- Location: LCCOMB_X35_Y19_N10
\DCG2|hourdigit1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit1~4_combout\ = (!\DCG2|Equal2~0_combout\ & (!\DCG2|hour[0]~5_combout\ & (\DCG2|hourdigit1\(0) $ (\DCG2|hourdigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Equal2~0_combout\,
	datab => \DCG2|hourdigit1\(0),
	datac => \DCG2|hourdigit1\(1),
	datad => \DCG2|hour[0]~5_combout\,
	combout => \DCG2|hourdigit1~4_combout\);

-- Location: FF_X35_Y19_N11
\DCG2|hourdigit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit1~4_combout\,
	ena => \DCG2|hourdigit1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit1\(1));

-- Location: LCCOMB_X35_Y19_N0
\RG7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG7|Mux0~0_combout\ = (\DCG2|hourdigit1\(0)) # (\DCG2|hourdigit1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCG2|hourdigit1\(0),
	datad => \DCG2|hourdigit1\(1),
	combout => \RG7|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y20_N10
\DSP1|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~7_combout\ = (\DSP1|digIn\(2) & ((\DSP1|digIn\(1)) # ((\DSP1|digIn\(3)) # (!\DSP1|digIn\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|digIn\(2),
	datad => \DSP1|digIn\(0),
	combout => \DSP1|Mux5~7_combout\);

-- Location: LCCOMB_X32_Y21_N30
\DCG2|minutedigit2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2~1_combout\ = (\DCG2|Equal0~0_combout\ & (!\DCG2|minutedigit2\(0) & !\DCG2|minute[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|Equal0~0_combout\,
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minute[0]~6_combout\,
	combout => \DCG2|minutedigit2~1_combout\);

-- Location: FF_X35_Y20_N23
\DCG2|minutedigit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DCG2|minutedigit2~1_combout\,
	sload => VCC,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit2\(0));

-- Location: LCCOMB_X32_Y21_N8
\DCG2|minutedigit2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2~2_combout\ = (\DCG2|Equal0~0_combout\ & (!\DCG2|minute[0]~6_combout\ & (\DCG2|minutedigit2\(1) $ (\DCG2|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(1),
	datab => \DCG2|Equal0~0_combout\,
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minute[0]~6_combout\,
	combout => \DCG2|minutedigit2~2_combout\);

-- Location: FF_X35_Y20_N9
\DCG2|minutedigit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DCG2|minutedigit2~2_combout\,
	sload => VCC,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit2\(1));

-- Location: LCCOMB_X32_Y21_N14
\DCG2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Equal0~0_combout\ = (\DCG2|minutedigit2\(2)) # (((\DCG2|minutedigit2\(1)) # (!\DCG2|minutedigit2\(0))) # (!\DCG2|minutedigit2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(2),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minutedigit2\(1),
	combout => \DCG2|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y21_N2
\DCG2|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Add2~1_combout\ = \DCG2|minutedigit2\(3) $ (((\DCG2|minutedigit2\(2) & (\DCG2|minutedigit2\(0) & \DCG2|minutedigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(2),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minutedigit2\(1),
	combout => \DCG2|Add2~1_combout\);

-- Location: LCCOMB_X32_Y21_N12
\DCG2|minutedigit2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2~4_combout\ = (!\DCG2|minute[0]~6_combout\ & (\DCG2|Equal0~0_combout\ & \DCG2|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute[0]~6_combout\,
	datac => \DCG2|Equal0~0_combout\,
	datad => \DCG2|Add2~1_combout\,
	combout => \DCG2|minutedigit2~4_combout\);

-- Location: LCCOMB_X35_Y20_N4
\DCG2|minutedigit2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2[3]~feeder_combout\ = \DCG2|minutedigit2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DCG2|minutedigit2~4_combout\,
	combout => \DCG2|minutedigit2[3]~feeder_combout\);

-- Location: FF_X35_Y20_N5
\DCG2|minutedigit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minutedigit2[3]~feeder_combout\,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit2\(3));

-- Location: LCCOMB_X35_Y20_N22
\RG10|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux6~0_combout\ = (\DCG2|minutedigit2\(2) & ((\DCG2|minutedigit2\(3)) # ((\DCG2|minutedigit2\(0) & \DCG2|minutedigit2\(1))))) # (!\DCG2|minutedigit2\(2) & ((\DCG2|minutedigit2\(1)) # ((!\DCG2|minutedigit2\(3) & \DCG2|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(2),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y20_N10
\DSP1|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~8_combout\ = (\DSP1|digIn\(3) & !\DSP1|digIn\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(2),
	combout => \DSP1|Mux5~8_combout\);

-- Location: LCCOMB_X32_Y20_N4
\DSP1|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~9_combout\ = (\DSP1|digIn\(2)) # ((\DSP1|digIn\(3) & \DSP1|digIn\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|digIn\(2),
	datac => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux5~9_combout\);

-- Location: IOIBUF_X7_Y0_N22
\GPIO_0[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: FF_X7_Y0_N24
\RE1|B_current\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GPIO_0[29]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|B_current~q\);

-- Location: IOIBUF_X3_Y0_N29
\GPIO_0[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: FF_X3_Y0_N31
\RE1|A_current\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GPIO_0[30]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|A_current~q\);

-- Location: FF_X7_Y2_N17
\RE1|A_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RE1|A_current~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|A_prev~q\);

-- Location: LCCOMB_X7_Y2_N20
\RE1|CCW~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CCW~2_combout\ = (\RE1|A_current~q\ & (((!\RE1|A_prev~q\)))) # (!\RE1|A_current~q\ & (\RE1|A_prev~q\ & ((\RE1|B_prev~q\) # (!\RE1|B_current~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|B_prev~q\,
	datab => \RE1|B_current~q\,
	datac => \RE1|A_current~q\,
	datad => \RE1|A_prev~q\,
	combout => \RE1|CCW~2_combout\);

-- Location: LCCOMB_X7_Y2_N10
\RE1|CCW~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CCW~1_combout\ = (\RE1|B_prev~q\ & (((\RE1|A_prev~q\) # (!\RE1|A_current~q\)))) # (!\RE1|B_prev~q\ & (!\RE1|B_current~q\ & ((\RE1|A_prev~q\) # (!\RE1|A_current~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|B_prev~q\,
	datab => \RE1|B_current~q\,
	datac => \RE1|A_current~q\,
	datad => \RE1|A_prev~q\,
	combout => \RE1|CCW~1_combout\);

-- Location: LCCOMB_X7_Y2_N24
\RE1|CW~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CW~0_combout\ = (\RE1|CCW~2_combout\ & ((\GPIO_0[29]~input_o\) # ((\RE1|CCW~1_combout\)))) # (!\RE1|CCW~2_combout\ & (((!\GPIO_0[30]~input_o\ & !\RE1|CCW~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[29]~input_o\,
	datab => \RE1|CCW~2_combout\,
	datac => \GPIO_0[30]~input_o\,
	datad => \RE1|CCW~1_combout\,
	combout => \RE1|CW~0_combout\);

-- Location: LCCOMB_X7_Y2_N12
\RE1|CCW~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CCW~0_combout\ = (\RE1|B_prev~q\ & ((\RE1|B_current~q\ & (!\RE1|A_current~q\ & \RE1|A_prev~q\)) # (!\RE1|B_current~q\ & ((\RE1|A_prev~q\) # (!\RE1|A_current~q\))))) # (!\RE1|B_prev~q\ & (!\RE1|B_current~q\ & (!\RE1|A_current~q\ & \RE1|A_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|B_prev~q\,
	datab => \RE1|B_current~q\,
	datac => \RE1|A_current~q\,
	datad => \RE1|A_prev~q\,
	combout => \RE1|CCW~0_combout\);

-- Location: LCCOMB_X7_Y2_N2
\RE1|CW~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CW~1_combout\ = (\RE1|CW~0_combout\ & (((!\RE1|CCW~0_combout\)) # (!\GPIO_0[29]~input_o\))) # (!\RE1|CW~0_combout\ & (((\GPIO_0[30]~input_o\ & \RE1|CCW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[29]~input_o\,
	datab => \RE1|CW~0_combout\,
	datac => \GPIO_0[30]~input_o\,
	datad => \RE1|CCW~0_combout\,
	combout => \RE1|CW~1_combout\);

-- Location: FF_X7_Y2_N3
\RE1|CW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RE1|CW~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|CW~q\);

-- Location: LCCOMB_X7_Y2_N18
\RE1|CCW~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CCW~3_combout\ = (\RE1|CCW~2_combout\ & (((\RE1|CCW~1_combout\)) # (!\GPIO_0[29]~input_o\))) # (!\RE1|CCW~2_combout\ & (((\GPIO_0[30]~input_o\ & !\RE1|CCW~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[29]~input_o\,
	datab => \RE1|CCW~2_combout\,
	datac => \GPIO_0[30]~input_o\,
	datad => \RE1|CCW~1_combout\,
	combout => \RE1|CCW~3_combout\);

-- Location: LCCOMB_X7_Y2_N0
\RE1|CCW~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RE1|CCW~4_combout\ = (\RE1|CCW~3_combout\ & ((\GPIO_0[29]~input_o\) # ((!\RE1|CCW~0_combout\)))) # (!\RE1|CCW~3_combout\ & (((!\GPIO_0[30]~input_o\ & \RE1|CCW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[29]~input_o\,
	datab => \RE1|CCW~3_combout\,
	datac => \GPIO_0[30]~input_o\,
	datad => \RE1|CCW~0_combout\,
	combout => \RE1|CCW~4_combout\);

-- Location: FF_X7_Y2_N1
\RE1|CCW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RE1|CCW~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RE1|CCW~q\);

-- Location: LCCOMB_X31_Y22_N30
\DCG1|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|process_2~1_combout\ = (\RE1|CW~q\ & !\RE1|CCW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RE1|CW~q\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|process_2~1_combout\);

-- Location: LCCOMB_X31_Y22_N8
\DCG1|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|process_2~0_combout\ = (!\RE1|CW~q\ & \RE1|CCW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RE1|CW~q\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|process_2~0_combout\);

-- Location: LCCOMB_X31_Y21_N12
\DCG1|minutedigit2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~4_combout\ = (\DCG1|minutedigit2\(0) & (((!\DCG1|process_2~1_combout\ & !\DCG1|process_2~0_combout\)))) # (!\DCG1|minutedigit2\(0) & (\DCG1|minutedigit2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2~3_combout\,
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|process_2~0_combout\,
	combout => \DCG1|minutedigit2~4_combout\);

-- Location: LCCOMB_X31_Y21_N8
\DCG1|minutedigit2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2[0]~0_combout\ = (\DCG1|adjustminute_button_state~q\ & ((\DCG1|minutedigit2~4_combout\))) # (!\DCG1|adjustminute_button_state~q\ & (\DCG1|minutedigit2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|adjustminute_button_state~q\,
	datac => \DCG1|minutedigit2\(0),
	datad => \DCG1|minutedigit2~4_combout\,
	combout => \DCG1|minutedigit2[0]~0_combout\);

-- Location: LCCOMB_X32_Y20_N24
\DCG1|minutedigit2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2[0]~feeder_combout\ = \DCG1|minutedigit2[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DCG1|minutedigit2[0]~0_combout\,
	combout => \DCG1|minutedigit2[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N28
\DCG1|minutedigit2[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2[3]~6_combout\ = (\DCG1|Equal4~8_combout\ & (((\DCG1|first_time_flag~q\ & \DCG1|process_2~0_combout\)) # (!\DCG1|LessThan3~1_combout\))) # (!\DCG1|Equal4~8_combout\ & (((\DCG1|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|Equal4~8_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|minutedigit2[3]~6_combout\);

-- Location: LCCOMB_X30_Y20_N12
\DCG1|minute[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[1]~9_combout\ = (\DCG1|minute\(1) & ((\DCG1|minutedigit2[3]~6_combout\ & (!\DCG1|minute[0]~8\)) # (!\DCG1|minutedigit2[3]~6_combout\ & (\DCG1|minute[0]~8\ & VCC)))) # (!\DCG1|minute\(1) & ((\DCG1|minutedigit2[3]~6_combout\ & 
-- ((\DCG1|minute[0]~8\) # (GND))) # (!\DCG1|minutedigit2[3]~6_combout\ & (!\DCG1|minute[0]~8\))))
-- \DCG1|minute[1]~10\ = CARRY((\DCG1|minute\(1) & (\DCG1|minutedigit2[3]~6_combout\ & !\DCG1|minute[0]~8\)) # (!\DCG1|minute\(1) & ((\DCG1|minutedigit2[3]~6_combout\) # (!\DCG1|minute[0]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(1),
	datab => \DCG1|minutedigit2[3]~6_combout\,
	datad => VCC,
	cin => \DCG1|minute[0]~8\,
	combout => \DCG1|minute[1]~9_combout\,
	cout => \DCG1|minute[1]~10\);

-- Location: LCCOMB_X30_Y20_N14
\DCG1|minute[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[2]~11_combout\ = ((\DCG1|minute\(2) $ (\DCG1|minutedigit2[3]~6_combout\ $ (\DCG1|minute[1]~10\)))) # (GND)
-- \DCG1|minute[2]~12\ = CARRY((\DCG1|minute\(2) & ((!\DCG1|minute[1]~10\) # (!\DCG1|minutedigit2[3]~6_combout\))) # (!\DCG1|minute\(2) & (!\DCG1|minutedigit2[3]~6_combout\ & !\DCG1|minute[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(2),
	datab => \DCG1|minutedigit2[3]~6_combout\,
	datad => VCC,
	cin => \DCG1|minute[1]~10\,
	combout => \DCG1|minute[2]~11_combout\,
	cout => \DCG1|minute[2]~12\);

-- Location: LCCOMB_X30_Y20_N16
\DCG1|minute[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[3]~13_combout\ = (\DCG1|minute\(3) & ((\DCG1|minutedigit2[3]~6_combout\ & (!\DCG1|minute[2]~12\)) # (!\DCG1|minutedigit2[3]~6_combout\ & (\DCG1|minute[2]~12\ & VCC)))) # (!\DCG1|minute\(3) & ((\DCG1|minutedigit2[3]~6_combout\ & 
-- ((\DCG1|minute[2]~12\) # (GND))) # (!\DCG1|minutedigit2[3]~6_combout\ & (!\DCG1|minute[2]~12\))))
-- \DCG1|minute[3]~14\ = CARRY((\DCG1|minute\(3) & (\DCG1|minutedigit2[3]~6_combout\ & !\DCG1|minute[2]~12\)) # (!\DCG1|minute\(3) & ((\DCG1|minutedigit2[3]~6_combout\) # (!\DCG1|minute[2]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(3),
	datab => \DCG1|minutedigit2[3]~6_combout\,
	datad => VCC,
	cin => \DCG1|minute[2]~12\,
	combout => \DCG1|minute[3]~13_combout\,
	cout => \DCG1|minute[3]~14\);

-- Location: LCCOMB_X30_Y20_N18
\DCG1|minute[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[4]~15_combout\ = ((\DCG1|minutedigit2[3]~6_combout\ $ (\DCG1|minute\(4) $ (\DCG1|minute[3]~14\)))) # (GND)
-- \DCG1|minute[4]~16\ = CARRY((\DCG1|minutedigit2[3]~6_combout\ & (\DCG1|minute\(4) & !\DCG1|minute[3]~14\)) # (!\DCG1|minutedigit2[3]~6_combout\ & ((\DCG1|minute\(4)) # (!\DCG1|minute[3]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2[3]~6_combout\,
	datab => \DCG1|minute\(4),
	datad => VCC,
	cin => \DCG1|minute[3]~14\,
	combout => \DCG1|minute[4]~15_combout\,
	cout => \DCG1|minute[4]~16\);

-- Location: LCCOMB_X31_Y20_N30
\DCG1|minute[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[5]~17_combout\ = ((\DCG1|minutedigit2[3]~6_combout\ & ((\DCG1|LessThan4~1_combout\))) # (!\DCG1|minutedigit2[3]~6_combout\ & (!\DCG1|minute[5]~6_combout\))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute[5]~6_combout\,
	datab => \DCG1|minutedigit2[3]~6_combout\,
	datac => \KD1|button_out_buffer~combout\,
	datad => \DCG1|LessThan4~1_combout\,
	combout => \DCG1|minute[5]~17_combout\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X0_Y23_N17
\KD3|samples[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD3|clk5ms~clkctrl_outclk\,
	d => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD3|samples\(0));

-- Location: LCCOMB_X1_Y23_N18
\KD3|samples[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|samples[1]~feeder_combout\ = \KD3|samples\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD3|samples\(0),
	combout => \KD3|samples[1]~feeder_combout\);

-- Location: FF_X1_Y23_N19
\KD3|samples[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD3|clk5ms~clkctrl_outclk\,
	d => \KD3|samples[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD3|samples\(1));

-- Location: LCCOMB_X1_Y23_N4
\KD3|samples[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|samples[2]~feeder_combout\ = \KD3|samples\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD3|samples\(1),
	combout => \KD3|samples[2]~feeder_combout\);

-- Location: FF_X1_Y23_N5
\KD3|samples[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD3|clk5ms~clkctrl_outclk\,
	d => \KD3|samples[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD3|samples\(2));

-- Location: LCCOMB_X1_Y23_N24
\KD3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|Equal1~0_combout\ = (!\KD3|samples\(0) & (!\KD3|samples\(2) & !\KD3|samples\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD3|samples\(0),
	datac => \KD3|samples\(2),
	datad => \KD3|samples\(1),
	combout => \KD3|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\KD3|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|comb~0_combout\ = (\KD3|samples\(0) & (\KD3|samples\(2) & \KD3|samples\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD3|samples\(0),
	datac => \KD3|samples\(2),
	datad => \KD3|samples\(1),
	combout => \KD3|comb~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\KD3|button_out_buffer\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD3|button_out_buffer~combout\ = (!\KD3|Equal1~0_combout\ & ((\KD3|comb~0_combout\) # (\KD3|button_out_buffer~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD3|Equal1~0_combout\,
	datac => \KD3|comb~0_combout\,
	datad => \KD3|button_out_buffer~combout\,
	combout => \KD3|button_out_buffer~combout\);

-- Location: LCCOMB_X30_Y23_N2
\DCG1|AdjustMinuteButtonOld~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|AdjustMinuteButtonOld~feeder_combout\ = \KD3|button_out_buffer~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD3|button_out_buffer~combout\,
	combout => \DCG1|AdjustMinuteButtonOld~feeder_combout\);

-- Location: FF_X30_Y23_N3
\DCG1|AdjustMinuteButtonOld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|AdjustMinuteButtonOld~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|AdjustMinuteButtonOld~q\);

-- Location: LCCOMB_X30_Y23_N20
\DCG1|adjustminute_button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|adjustminute_button_state~0_combout\ = (\DCG1|adjustminute_button_state~q\ & (\DCG1|first_time_flag~q\ & ((\DCG1|AdjustMinuteButtonOld~q\) # (!\KD3|button_out_buffer~combout\)))) # (!\DCG1|adjustminute_button_state~q\ & 
-- (\KD3|button_out_buffer~combout\ & ((!\DCG1|AdjustMinuteButtonOld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD3|button_out_buffer~combout\,
	datab => \DCG1|first_time_flag~q\,
	datac => \DCG1|adjustminute_button_state~q\,
	datad => \DCG1|AdjustMinuteButtonOld~q\,
	combout => \DCG1|adjustminute_button_state~0_combout\);

-- Location: FF_X30_Y23_N21
\DCG1|adjustminute_button_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|adjustminute_button_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|adjustminute_button_state~q\);

-- Location: LCCOMB_X31_Y22_N12
\DCG1|minutedigit2[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2[3]~9_combout\ = (\DCG2|minutedigit2[0]~0_combout\) # ((\DCG1|adjustminute_button_state~q\ & (\RE1|CW~q\ $ (\RE1|CCW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|CW~q\,
	datab => \DCG1|adjustminute_button_state~q\,
	datac => \DCG2|minutedigit2[0]~0_combout\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|minutedigit2[3]~9_combout\);

-- Location: FF_X30_Y20_N19
\DCG1|minute[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[4]~15_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(4));

-- Location: FF_X30_Y20_N17
\DCG1|minute[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[3]~13_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(3));

-- Location: FF_X30_Y20_N15
\DCG1|minute[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[2]~11_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(2));

-- Location: FF_X30_Y20_N13
\DCG1|minute[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[1]~9_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(1));

-- Location: LCCOMB_X30_Y20_N4
\DCG1|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan4~0_combout\ = (\DCG1|minute\(3) & ((\DCG1|minute\(2)) # ((\DCG1|minute\(0) & \DCG1|minute\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(0),
	datab => \DCG1|minute\(3),
	datac => \DCG1|minute\(2),
	datad => \DCG1|minute\(1),
	combout => \DCG1|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y20_N20
\DCG1|minute[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minute[5]~18_combout\ = \DCG1|minute\(5) $ (\DCG1|minute[4]~16\ $ (!\DCG1|minutedigit2[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minute\(5),
	datad => \DCG1|minutedigit2[3]~6_combout\,
	cin => \DCG1|minute[4]~16\,
	combout => \DCG1|minute[5]~18_combout\);

-- Location: FF_X30_Y20_N21
\DCG1|minute[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minute[5]~18_combout\,
	sclr => \DCG1|minute[5]~17_combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minute\(5));

-- Location: LCCOMB_X30_Y20_N6
\DCG1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan4~1_combout\ = (\DCG1|minute\(4) & (\DCG1|LessThan4~0_combout\ & \DCG1|minute\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minute\(4),
	datac => \DCG1|LessThan4~0_combout\,
	datad => \DCG1|minute\(5),
	combout => \DCG1|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y21_N24
\DCG1|minutedigit2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~2_combout\ = (\DCG1|LessThan3~1_combout\ & (\DCG1|first_time_flag~q\)) # (!\DCG1|LessThan3~1_combout\ & ((!\DCG1|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|first_time_flag~q\,
	datac => \DCG1|LessThan4~1_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|minutedigit2~2_combout\);

-- Location: LCCOMB_X31_Y21_N18
\DCG1|minutedigit2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~5_combout\ = (\DCG1|minutedigit2~2_combout\ & ((\DCG1|LessThan3~1_combout\ & ((\DCG1|minutedigit2[0]~0_combout\))) # (!\DCG1|LessThan3~1_combout\ & (!\DCG1|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|LessThan3~1_combout\,
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2[0]~0_combout\,
	datad => \DCG1|minutedigit2~2_combout\,
	combout => \DCG1|minutedigit2~5_combout\);

-- Location: FF_X32_Y20_N25
\DCG1|minutedigit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit2[0]~feeder_combout\,
	asdata => \DCG1|minutedigit2~5_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	sload => \DCG1|Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit2\(0));

-- Location: LCCOMB_X31_Y20_N8
\DCG1|minutedigit2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~8_combout\ = (\DCG1|minutedigit2~7_combout\ & (\DCG1|minutedigit2\(0) $ (\DCG1|minutedigit2\(1) $ (!\DCG1|minutedigit2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2~7_combout\,
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2[3]~6_combout\,
	combout => \DCG1|minutedigit2~8_combout\);

-- Location: FF_X31_Y20_N9
\DCG1|minutedigit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit2~8_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit2\(1));

-- Location: LCCOMB_X31_Y20_N0
\DCG1|minutedigit2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~13_combout\ = (\DCG1|minutedigit2\(2) & (((!\DCG1|minutedigit2[3]~6_combout\) # (!\DCG1|minutedigit2\(1))) # (!\DCG1|minutedigit2\(0)))) # (!\DCG1|minutedigit2\(2) & ((\DCG1|minutedigit2\(0)) # ((\DCG1|minutedigit2\(1)) # 
-- (\DCG1|minutedigit2[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2[3]~6_combout\,
	combout => \DCG1|minutedigit2~13_combout\);

-- Location: LCCOMB_X31_Y20_N20
\DCG1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal0~0_combout\ = (\DCG1|minutedigit2\(2)) # (((\DCG1|minutedigit2\(1)) # (!\DCG1|minutedigit2\(3))) # (!\DCG1|minutedigit2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(3),
	combout => \DCG1|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y20_N30
\DCG1|minutedigit2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~12_combout\ = (\DCG1|minutedigit2[3]~6_combout\ & (((\DCG1|Equal0~0_combout\ & !\DCG1|LessThan4~1_combout\)))) # (!\DCG1|minutedigit2[3]~6_combout\ & (\DCG1|minute[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute[5]~6_combout\,
	datab => \DCG1|minutedigit2[3]~6_combout\,
	datac => \DCG1|Equal0~0_combout\,
	datad => \DCG1|LessThan4~1_combout\,
	combout => \DCG1|minutedigit2~12_combout\);

-- Location: LCCOMB_X31_Y20_N28
\DCG1|minutedigit2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2~14_combout\ = (\DCG1|minutedigit2~12_combout\ & (\DCG1|minutedigit2~13_combout\ $ (!\DCG1|minutedigit2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minutedigit2~13_combout\,
	datac => \DCG1|minutedigit2\(3),
	datad => \DCG1|minutedigit2~12_combout\,
	combout => \DCG1|minutedigit2~14_combout\);

-- Location: FF_X31_Y20_N29
\DCG1|minutedigit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit2~14_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|minutedigit2[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit2\(3));

-- Location: LCCOMB_X31_Y20_N6
\RG4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux6~0_combout\ = (\DCG1|minutedigit2\(2) & ((\DCG1|minutedigit2\(3)) # ((\DCG1|minutedigit2\(1) & \DCG1|minutedigit2\(0))))) # (!\DCG1|minutedigit2\(2) & ((\DCG1|minutedigit2\(1)) # ((!\DCG1|minutedigit2\(3) & \DCG1|minutedigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(3),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(0),
	combout => \RG4|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y20_N24
\DSP1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux0~0_combout\ = (\DSP1|Mux5~9_combout\ & (((\DSP1|Mux5~8_combout\) # (!\RG4|Mux6~0_combout\)))) # (!\DSP1|Mux5~9_combout\ & (!\RG2|Mux6~0_combout\ & (!\DSP1|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG2|Mux6~0_combout\,
	datab => \DSP1|Mux5~9_combout\,
	datac => \DSP1|Mux5~8_combout\,
	datad => \RG4|Mux6~0_combout\,
	combout => \DSP1|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y20_N2
\DSP1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux0~1_combout\ = (\DSP1|Mux5~8_combout\ & ((\DSP1|Mux0~0_combout\ & ((!\RG10|Mux6~0_combout\))) # (!\DSP1|Mux0~0_combout\ & (!\RG8|Mux6~0_combout\)))) # (!\DSP1|Mux5~8_combout\ & (((\DSP1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG8|Mux6~0_combout\,
	datab => \RG10|Mux6~0_combout\,
	datac => \DSP1|Mux5~8_combout\,
	datad => \DSP1|Mux0~0_combout\,
	combout => \DSP1|Mux0~1_combout\);

-- Location: LCCOMB_X35_Y20_N28
\DSP1|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux0~2_combout\ = (\DSP1|digIn\(0) & (((!\DSP1|Mux5~7_combout\ & \DSP1|Mux0~1_combout\)))) # (!\DSP1|digIn\(0) & (((\DSP1|Mux5~7_combout\)) # (!\RG1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG1|Mux0~0_combout\,
	datab => \DSP1|digIn\(0),
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux0~1_combout\,
	combout => \DSP1|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y20_N26
\DSP1|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux0~3_combout\ = (\DSP1|Mux5~7_combout\ & ((\DSP1|Mux0~2_combout\ & ((!\RG7|Mux0~0_combout\))) # (!\DSP1|Mux0~2_combout\ & (!\RG6|Mux6~0_combout\)))) # (!\DSP1|Mux5~7_combout\ & (((\DSP1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG6|Mux6~0_combout\,
	datab => \RG7|Mux0~0_combout\,
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux0~2_combout\,
	combout => \DSP1|Mux0~3_combout\);

-- Location: LCCOMB_X39_Y20_N8
\DSP1|R[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~4_combout\ = (\DSP1|process_5~10_combout\ & ((\DSP1|R[1]~3_combout\) # ((!\DSP1|Mux5~0_combout\ & \DSP1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~3_combout\,
	datab => \DSP1|Mux5~0_combout\,
	datac => \DSP1|process_5~10_combout\,
	datad => \DSP1|Mux0~3_combout\,
	combout => \DSP1|R[1]~4_combout\);

-- Location: LCCOMB_X33_Y21_N14
\DCG2|minutedigit1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit1~3_combout\ = (!\DCG2|minute[0]~6_combout\ & (!\DCG2|minutedigit1\(0) & !\DCG2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute[0]~6_combout\,
	datac => \DCG2|minutedigit1\(0),
	datad => \DCG2|Equal0~0_combout\,
	combout => \DCG2|minutedigit1~3_combout\);

-- Location: LCCOMB_X33_Y21_N20
\DCG2|minutedigit1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit1[0]~2_combout\ = ((!\DCG2|minutedigit1[0]~1_combout\ & \DCG1|Equal4~8_combout\)) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit1[0]~1_combout\,
	datab => \DCG1|Equal4~8_combout\,
	datac => \KD1|button_out_buffer~combout\,
	combout => \DCG2|minutedigit1[0]~2_combout\);

-- Location: FF_X33_Y21_N15
\DCG2|minutedigit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minutedigit1~3_combout\,
	ena => \DCG2|minutedigit1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit1\(0));

-- Location: LCCOMB_X31_Y20_N18
\DCG1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal1~0_combout\ = (\DCG1|minutedigit2\(2)) # ((\DCG1|minutedigit2\(0)) # ((\DCG1|minutedigit2\(1)) # (\DCG1|minutedigit2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(0),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(3),
	combout => \DCG1|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\DCG1|minutedigit1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~9_combout\ = (\DCG1|process_2~1_combout\ & (\DCG1|LessThan0~1_combout\ & (\DCG1|Equal1~0_combout\ $ (!\DCG1|minutedigit1\(0))))) # (!\DCG1|process_2~1_combout\ & (((\DCG1|minutedigit1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|LessThan0~1_combout\,
	datab => \DCG1|Equal1~0_combout\,
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|minutedigit1\(0),
	combout => \DCG1|minutedigit1~9_combout\);

-- Location: LCCOMB_X31_Y21_N16
\DCG1|minutedigit1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~11_combout\ = (\DCG1|process_2~0_combout\ & (!\DCG1|minutedigit1~10_combout\ & (!\DCG1|LessThan4~1_combout\))) # (!\DCG1|process_2~0_combout\ & (((\DCG1|minutedigit1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1~10_combout\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|LessThan4~1_combout\,
	datad => \DCG1|minutedigit1~9_combout\,
	combout => \DCG1|minutedigit1~11_combout\);

-- Location: LCCOMB_X31_Y21_N14
\DCG1|minutedigit1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[0]~0_combout\ = (\DCG1|adjustminute_button_state~q\ & ((\DCG1|minutedigit1~11_combout\))) # (!\DCG1|adjustminute_button_state~q\ & (\DCG1|minutedigit1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minutedigit1\(0),
	datac => \DCG1|adjustminute_button_state~q\,
	datad => \DCG1|minutedigit1~11_combout\,
	combout => \DCG1|minutedigit1[0]~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\DCG1|minutedigit1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1[0]~feeder_combout\ = \DCG1|minutedigit1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|minutedigit1[0]~0_combout\,
	combout => \DCG1|minutedigit1[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N26
\DCG1|minutedigit1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~3_combout\ = (!\DCG1|Equal0~0_combout\ & (!\DCG1|LessThan3~0_combout\ & (\DCG1|second\(4) & \DCG1|second\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal0~0_combout\,
	datab => \DCG1|LessThan3~0_combout\,
	datac => \DCG1|second\(4),
	datad => \DCG1|second\(5),
	combout => \DCG1|minutedigit1~3_combout\);

-- Location: LCCOMB_X31_Y21_N4
\DCG1|minutedigit1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit1~13_combout\ = (\DCG1|minutedigit2~2_combout\ & ((\DCG1|minutedigit1~12_combout\) # ((\DCG1|minutedigit1~3_combout\ & !\DCG1|minutedigit1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1~12_combout\,
	datab => \DCG1|minutedigit2~2_combout\,
	datac => \DCG1|minutedigit1~3_combout\,
	datad => \DCG1|minutedigit1\(0),
	combout => \DCG1|minutedigit1~13_combout\);

-- Location: FF_X31_Y21_N29
\DCG1|minutedigit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|minutedigit1[0]~feeder_combout\,
	asdata => \DCG1|minutedigit1~13_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	sload => \DCG1|Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|minutedigit1\(0));

-- Location: LCCOMB_X35_Y21_N28
\DSP1|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~3_combout\ = (\DSP1|digIn\(3) & (\DCG1|seconddigit1\(0))) # (!\DSP1|digIn\(3) & ((\DSP1|digIn\(1) & ((\DCG1|minutedigit1\(0)))) # (!\DSP1|digIn\(1) & (\DCG1|seconddigit1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit1\(0),
	datab => \DCG1|minutedigit1\(0),
	datac => \DSP1|digIn\(3),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux5~3_combout\);

-- Location: LCCOMB_X36_Y21_N24
\DSP1|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~4_combout\ = (\DSP1|digIn\(2) & (((\DSP1|Mux5~3_combout\)))) # (!\DSP1|digIn\(2) & ((\DSP1|digIn\(1) & ((\DSP1|Mux5~3_combout\))) # (!\DSP1|digIn\(1) & (\DCG2|minutedigit1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(1),
	datac => \DCG2|minutedigit1\(0),
	datad => \DSP1|Mux5~3_combout\,
	combout => \DSP1|Mux5~4_combout\);

-- Location: LCCOMB_X39_Y20_N0
\DSP1|R[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~11_combout\ = (\DSP1|Mux5~6_combout\ & (!\DSP1|Mux5~4_combout\ & \DSP1|process_5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~6_combout\,
	datac => \DSP1|Mux5~4_combout\,
	datad => \DSP1|process_5~16_combout\,
	combout => \DSP1|R[1]~11_combout\);

-- Location: LCCOMB_X39_Y18_N0
\DSP1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan9~0_combout\ = (\DSP1|vcnt\(5) & ((\DSP1|vcnt\(4)) # ((\DSP1|LessThan46~0_combout\) # (\DSP1|Mux12~0_combout\)))) # (!\DSP1|vcnt\(5) & (\DSP1|vcnt\(4) & (\DSP1|LessThan46~0_combout\ & \DSP1|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(5),
	datab => \DSP1|vcnt\(4),
	datac => \DSP1|LessThan46~0_combout\,
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|LessThan9~0_combout\);

-- Location: LCCOMB_X39_Y18_N14
\DSP1|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|LessThan9~1_combout\ = (\DSP1|vcnt\(8) & (((\DSP1|LessThan9~0_combout\) # (!\DSP1|Equal1~0_combout\)) # (!\DSP1|Mux12~0_combout\))) # (!\DSP1|vcnt\(8) & (!\DSP1|Mux12~0_combout\ & ((\DSP1|LessThan9~0_combout\) # (!\DSP1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|Mux12~0_combout\,
	datac => \DSP1|Equal1~0_combout\,
	datad => \DSP1|LessThan9~0_combout\,
	combout => \DSP1|LessThan9~1_combout\);

-- Location: LCCOMB_X35_Y22_N8
\DCG1|seconddigit2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit2~0_combout\ = (!\DCG1|seconddigit2\(0) & !\DCG1|seconddigit1[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit1[2]~0_combout\,
	combout => \DCG1|seconddigit2~0_combout\);

-- Location: FF_X35_Y22_N9
\DCG1|seconddigit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit2~0_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit2\(0));

-- Location: LCCOMB_X35_Y22_N22
\DCG1|seconddigit2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit2~2_combout\ = (\DCG1|Equal5~0_combout\ & (!\DCG1|seconddigit1[2]~0_combout\ & (\DCG1|seconddigit2\(0) $ (\DCG1|seconddigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal5~0_combout\,
	datab => \DCG1|seconddigit2\(0),
	datac => \DCG1|seconddigit2\(1),
	datad => \DCG1|seconddigit1[2]~0_combout\,
	combout => \DCG1|seconddigit2~2_combout\);

-- Location: FF_X35_Y22_N23
\DCG1|seconddigit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit2~2_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit2\(1));

-- Location: LCCOMB_X35_Y22_N0
\DCG1|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Add14~0_combout\ = \DCG1|seconddigit2\(2) $ (((\DCG1|seconddigit2\(0) & \DCG1|seconddigit2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|seconddigit2\(0),
	datac => \DCG1|seconddigit2\(1),
	datad => \DCG1|seconddigit2\(2),
	combout => \DCG1|Add14~0_combout\);

-- Location: LCCOMB_X35_Y22_N20
\DCG1|seconddigit2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit2~3_combout\ = (\DCG1|Add14~0_combout\ & (\DCG1|Equal5~0_combout\ & !\DCG1|seconddigit1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|Add14~0_combout\,
	datac => \DCG1|Equal5~0_combout\,
	datad => \DCG1|seconddigit1[2]~0_combout\,
	combout => \DCG1|seconddigit2~3_combout\);

-- Location: FF_X35_Y22_N21
\DCG1|seconddigit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit2~3_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit2\(2));

-- Location: LCCOMB_X35_Y22_N26
\DCG1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal5~0_combout\ = (\DCG1|seconddigit2\(1)) # (((\DCG1|seconddigit2\(2)) # (!\DCG1|seconddigit2\(0))) # (!\DCG1|seconddigit2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \DCG1|Equal5~0_combout\);

-- Location: LCCOMB_X35_Y22_N18
\DCG1|seconddigit2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit2~4_combout\ = (\DCG1|Add14~1_combout\ & (\DCG1|Equal5~0_combout\ & !\DCG1|seconddigit1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Add14~1_combout\,
	datac => \DCG1|Equal5~0_combout\,
	datad => \DCG1|seconddigit1[2]~0_combout\,
	combout => \DCG1|seconddigit2~4_combout\);

-- Location: FF_X35_Y22_N19
\DCG1|seconddigit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit2~4_combout\,
	ena => \DCG1|seconddigit2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit2\(3));

-- Location: LCCOMB_X35_Y22_N14
\RG6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux2~0_combout\ = (\DCG1|seconddigit2\(0)) # ((\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(3))) # (!\DCG1|seconddigit2\(1) & ((\DCG1|seconddigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y20_N0
\DCG1|hourdigit1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~17_combout\ = (((\DCG1|LessThan3~1_combout\) # (!\DCG1|LessThan4~0_combout\)) # (!\DCG1|minute\(4))) # (!\DCG1|minute\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minute\(5),
	datab => \DCG1|minute\(4),
	datac => \DCG1|LessThan4~0_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|hourdigit1~17_combout\);

-- Location: LCCOMB_X30_Y22_N16
\DCG1|hourdigit2[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2[2]~4_combout\ = (\DCG1|Equal4~8_combout\ & (((\DCG1|first_time_flag~q\ & \DCG1|process_2~0_combout\)) # (!\DCG1|hourdigit1~17_combout\))) # (!\DCG1|Equal4~8_combout\ & (((\DCG1|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~8_combout\,
	datab => \DCG1|first_time_flag~q\,
	datac => \DCG1|hourdigit1~17_combout\,
	datad => \DCG1|process_2~0_combout\,
	combout => \DCG1|hourdigit2[2]~4_combout\);

-- Location: LCCOMB_X30_Y22_N2
\DCG1|hour[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[0]~7_combout\ = \DCG1|hour\(0) $ (VCC)
-- \DCG1|hour[0]~8\ = CARRY(\DCG1|hour\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hour\(0),
	datad => VCC,
	combout => \DCG1|hour[0]~7_combout\,
	cout => \DCG1|hour[0]~8\);

-- Location: LCCOMB_X30_Y22_N24
\DCG1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan1~0_combout\ = (\DCG1|hour\(3)) # ((\DCG1|hour\(2) & (\DCG1|hour\(1) & \DCG1|hour\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(2),
	datab => \DCG1|hour\(3),
	datac => \DCG1|hour\(1),
	datad => \DCG1|hour\(0),
	combout => \DCG1|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y22_N12
\DCG1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan1~1_combout\ = (\DCG1|hour\(4) & \DCG1|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(4),
	datad => \DCG1|LessThan1~0_combout\,
	combout => \DCG1|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y22_N8
\DCG1|hour[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[3]~13_combout\ = (\DCG1|hourdigit2[2]~4_combout\ & ((\DCG1|hour\(3) & (!\DCG1|hour[2]~12\)) # (!\DCG1|hour\(3) & ((\DCG1|hour[2]~12\) # (GND))))) # (!\DCG1|hourdigit2[2]~4_combout\ & ((\DCG1|hour\(3) & (\DCG1|hour[2]~12\ & VCC)) # 
-- (!\DCG1|hour\(3) & (!\DCG1|hour[2]~12\))))
-- \DCG1|hour[3]~14\ = CARRY((\DCG1|hourdigit2[2]~4_combout\ & ((!\DCG1|hour[2]~12\) # (!\DCG1|hour\(3)))) # (!\DCG1|hourdigit2[2]~4_combout\ & (!\DCG1|hour\(3) & !\DCG1|hour[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2[2]~4_combout\,
	datab => \DCG1|hour\(3),
	datad => VCC,
	cin => \DCG1|hour[2]~12\,
	combout => \DCG1|hour[3]~13_combout\,
	cout => \DCG1|hour[3]~14\);

-- Location: LCCOMB_X30_Y22_N10
\DCG1|hour[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[4]~15_combout\ = \DCG1|hour\(4) $ (\DCG1|hour[3]~14\ $ (\DCG1|hourdigit2[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(4),
	datad => \DCG1|hourdigit2[2]~4_combout\,
	cin => \DCG1|hour[3]~14\,
	combout => \DCG1|hour[4]~15_combout\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X0_Y23_N3
\KD2|samples[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD2|clk5ms~clkctrl_outclk\,
	d => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD2|samples\(0));

-- Location: LCCOMB_X1_Y23_N2
\KD2|samples[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|samples[1]~feeder_combout\ = \KD2|samples\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD2|samples\(0),
	combout => \KD2|samples[1]~feeder_combout\);

-- Location: FF_X1_Y23_N3
\KD2|samples[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD2|clk5ms~clkctrl_outclk\,
	d => \KD2|samples[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KD2|samples\(1));

-- Location: LCCOMB_X26_Y23_N2
\KD2|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|comb~0_combout\ = (\KD2|samples\(2) & (\KD2|samples\(1) & \KD2|samples\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD2|samples\(2),
	datac => \KD2|samples\(1),
	datad => \KD2|samples\(0),
	combout => \KD2|comb~0_combout\);

-- Location: LCCOMB_X26_Y23_N8
\KD2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|Equal1~0_combout\ = (!\KD2|samples\(2) & (!\KD2|samples\(1) & !\KD2|samples\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD2|samples\(2),
	datac => \KD2|samples\(1),
	datad => \KD2|samples\(0),
	combout => \KD2|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y23_N28
\KD2|button_out_buffer\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KD2|button_out_buffer~combout\ = (!\KD2|Equal1~0_combout\ & ((\KD2|comb~0_combout\) # (\KD2|button_out_buffer~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KD2|comb~0_combout\,
	datac => \KD2|Equal1~0_combout\,
	datad => \KD2|button_out_buffer~combout\,
	combout => \KD2|button_out_buffer~combout\);

-- Location: LCCOMB_X30_Y22_N0
\DCG1|AdjustHourButtonOld~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|AdjustHourButtonOld~feeder_combout\ = \KD2|button_out_buffer~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KD2|button_out_buffer~combout\,
	combout => \DCG1|AdjustHourButtonOld~feeder_combout\);

-- Location: FF_X30_Y22_N1
\DCG1|AdjustHourButtonOld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|AdjustHourButtonOld~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|AdjustHourButtonOld~q\);

-- Location: LCCOMB_X30_Y22_N30
\DCG1|adjusthour_button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|adjusthour_button_state~0_combout\ = (\DCG1|adjusthour_button_state~q\ & (\DCG1|first_time_flag~q\ & ((\DCG1|AdjustHourButtonOld~q\) # (!\KD2|button_out_buffer~combout\)))) # (!\DCG1|adjusthour_button_state~q\ & (\KD2|button_out_buffer~combout\ & 
-- ((!\DCG1|AdjustHourButtonOld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD2|button_out_buffer~combout\,
	datab => \DCG1|first_time_flag~q\,
	datac => \DCG1|adjusthour_button_state~q\,
	datad => \DCG1|AdjustHourButtonOld~q\,
	combout => \DCG1|adjusthour_button_state~0_combout\);

-- Location: FF_X30_Y22_N31
\DCG1|adjusthour_button_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|adjusthour_button_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|adjusthour_button_state~q\);

-- Location: LCCOMB_X31_Y22_N6
\DCG1|hourdigit2[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2[2]~9_combout\ = (\KD1|button_out_buffer~combout\ & ((\RE1|CW~q\ $ (!\RE1|CCW~q\)) # (!\DCG1|adjusthour_button_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|CW~q\,
	datab => \DCG1|adjusthour_button_state~q\,
	datac => \KD1|button_out_buffer~combout\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|hourdigit2[2]~9_combout\);

-- Location: LCCOMB_X30_Y22_N20
\DCG1|hourdigit2[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2[2]~10_combout\ = ((\DCG1|Equal4~8_combout\ & ((!\DCG1|first_time_flag~q\) # (!\DCG1|hourdigit1~17_combout\)))) # (!\DCG1|hourdigit2[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~8_combout\,
	datab => \DCG1|hourdigit1~17_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|hourdigit2[2]~9_combout\,
	combout => \DCG1|hourdigit2[2]~10_combout\);

-- Location: FF_X30_Y22_N11
\DCG1|hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hour[4]~15_combout\,
	sclr => \DCG1|hour[2]~17_combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hour\(4));

-- Location: LCCOMB_X30_Y22_N18
\DCG1|hour[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[2]~18_combout\ = (\DCG1|Equal4~8_combout\ & (\DCG1|first_time_flag~q\ & ((\DCG1|LessThan2~0_combout\) # (\DCG1|hour\(4))))) # (!\DCG1|Equal4~8_combout\ & ((\DCG1|LessThan2~0_combout\) # ((\DCG1|hour\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~8_combout\,
	datab => \DCG1|LessThan2~0_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|hour\(4),
	combout => \DCG1|hour[2]~18_combout\);

-- Location: LCCOMB_X30_Y22_N26
\DCG1|hour[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[2]~17_combout\ = ((\DCG1|hourdigit2[2]~4_combout\ & (\DCG1|LessThan1~1_combout\)) # (!\DCG1|hourdigit2[2]~4_combout\ & ((!\DCG1|hour[2]~18_combout\)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG1|hourdigit2[2]~4_combout\,
	datac => \DCG1|LessThan1~1_combout\,
	datad => \DCG1|hour[2]~18_combout\,
	combout => \DCG1|hour[2]~17_combout\);

-- Location: FF_X30_Y22_N3
\DCG1|hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hour[0]~7_combout\,
	sclr => \DCG1|hour[2]~17_combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hour\(0));

-- Location: LCCOMB_X30_Y22_N4
\DCG1|hour[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hour[1]~9_combout\ = (\DCG1|hourdigit2[2]~4_combout\ & ((\DCG1|hour\(1) & (!\DCG1|hour[0]~8\)) # (!\DCG1|hour\(1) & ((\DCG1|hour[0]~8\) # (GND))))) # (!\DCG1|hourdigit2[2]~4_combout\ & ((\DCG1|hour\(1) & (\DCG1|hour[0]~8\ & VCC)) # (!\DCG1|hour\(1) 
-- & (!\DCG1|hour[0]~8\))))
-- \DCG1|hour[1]~10\ = CARRY((\DCG1|hourdigit2[2]~4_combout\ & ((!\DCG1|hour[0]~8\) # (!\DCG1|hour\(1)))) # (!\DCG1|hourdigit2[2]~4_combout\ & (!\DCG1|hour\(1) & !\DCG1|hour[0]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2[2]~4_combout\,
	datab => \DCG1|hour\(1),
	datad => VCC,
	cin => \DCG1|hour[0]~8\,
	combout => \DCG1|hour[1]~9_combout\,
	cout => \DCG1|hour[1]~10\);

-- Location: FF_X30_Y22_N5
\DCG1|hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hour[1]~9_combout\,
	sclr => \DCG1|hour[2]~17_combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hour\(1));

-- Location: FF_X30_Y22_N9
\DCG1|hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hour[3]~13_combout\,
	sclr => \DCG1|hour[2]~17_combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hour\(3));

-- Location: LCCOMB_X30_Y22_N28
\DCG1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan2~0_combout\ = (\DCG1|hour\(2)) # ((\DCG1|hour\(3)) # ((\DCG1|hour\(1)) # (\DCG1|hour\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(2),
	datab => \DCG1|hour\(3),
	datac => \DCG1|hour\(1),
	datad => \DCG1|hour\(0),
	combout => \DCG1|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y22_N24
\DCG1|hourdigit1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~20_combout\ = (\RE1|CW~q\ & (!\RE1|CCW~q\ & ((\DCG1|hour\(4)) # (\DCG1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(4),
	datab => \DCG1|LessThan2~0_combout\,
	datac => \RE1|CW~q\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|hourdigit1~20_combout\);

-- Location: LCCOMB_X31_Y22_N0
\DCG1|hourdigit1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~8_combout\ = (\DCG1|hourdigit1\(0) & (((\DCG1|Equal3~0_combout\ & \DCG1|hourdigit1~20_combout\)) # (!\DCG1|process_2~1_combout\))) # (!\DCG1|hourdigit1\(0) & (!\DCG1|Equal3~0_combout\ & ((\DCG1|hourdigit1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal3~0_combout\,
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|hourdigit1~20_combout\,
	combout => \DCG1|hourdigit1~8_combout\);

-- Location: LCCOMB_X31_Y22_N16
\DCG1|hourdigit1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~6_combout\ = (!\RE1|CW~q\ & (\RE1|CCW~q\ & ((!\DCG1|LessThan1~0_combout\) # (!\DCG1|hour\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(4),
	datab => \DCG1|LessThan1~0_combout\,
	datac => \RE1|CW~q\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|hourdigit1~6_combout\);

-- Location: LCCOMB_X31_Y22_N2
\DCG1|hourdigit2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~1_combout\ = (!\DCG1|hourdigit2\(0) & ((\DCG1|hourdigit1~6_combout\) # ((!\DCG1|process_2~0_combout\ & \DCG1|hourdigit1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(0),
	datab => \DCG1|hourdigit1~6_combout\,
	datac => \DCG1|process_2~0_combout\,
	datad => \DCG1|hourdigit1~20_combout\,
	combout => \DCG1|hourdigit2~1_combout\);

-- Location: LCCOMB_X31_Y22_N4
\DCG1|hourdigit2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~2_combout\ = (\DCG1|hourdigit2~1_combout\) # ((!\DCG1|process_2~1_combout\ & (!\DCG1|process_2~0_combout\ & \DCG1|hourdigit2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|process_2~1_combout\,
	datab => \DCG1|process_2~0_combout\,
	datac => \DCG1|hourdigit2\(0),
	datad => \DCG1|hourdigit2~1_combout\,
	combout => \DCG1|hourdigit2~2_combout\);

-- Location: LCCOMB_X33_Y22_N12
\DCG1|hourdigit2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2[0]~0_combout\ = (\DCG1|adjusthour_button_state~q\ & ((\DCG1|hourdigit2~2_combout\))) # (!\DCG1|adjusthour_button_state~q\ & (\DCG1|hourdigit2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit2\(0),
	datac => \DCG1|hourdigit2~2_combout\,
	datad => \DCG1|adjusthour_button_state~q\,
	combout => \DCG1|hourdigit2[0]~0_combout\);

-- Location: LCCOMB_X33_Y22_N24
\DCG1|hourdigit2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2[0]~feeder_combout\ = \DCG1|hourdigit2[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DCG1|hourdigit2[0]~0_combout\,
	combout => \DCG1|hourdigit2[0]~feeder_combout\);

-- Location: LCCOMB_X33_Y22_N18
\DCG1|hourdigit1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~11_combout\ = (\DCG1|LessThan4~1_combout\ & ((\DCG1|LessThan3~1_combout\ & (!\DCG1|first_time_flag~q\)) # (!\DCG1|LessThan3~1_combout\ & ((\DCG1|LessThan1~1_combout\))))) # (!\DCG1|LessThan4~1_combout\ & (!\DCG1|first_time_flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|LessThan4~1_combout\,
	datac => \DCG1|LessThan1~1_combout\,
	datad => \DCG1|LessThan3~1_combout\,
	combout => \DCG1|hourdigit1~11_combout\);

-- Location: LCCOMB_X33_Y22_N22
\DCG1|hourdigit2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~3_combout\ = (!\DCG1|hourdigit1~11_combout\ & ((\DCG1|hourdigit1~17_combout\ & (\DCG1|hourdigit2[0]~0_combout\)) # (!\DCG1|hourdigit1~17_combout\ & ((!\DCG1|hourdigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2[0]~0_combout\,
	datab => \DCG1|hourdigit2\(0),
	datac => \DCG1|hourdigit1~17_combout\,
	datad => \DCG1|hourdigit1~11_combout\,
	combout => \DCG1|hourdigit2~3_combout\);

-- Location: FF_X33_Y22_N25
\DCG1|hourdigit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit2[0]~feeder_combout\,
	asdata => \DCG1|hourdigit2~3_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	sload => \DCG1|Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit2\(0));

-- Location: LCCOMB_X30_Y22_N22
\DCG1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|LessThan2~1_combout\ = (\DCG1|hour\(4)) # (\DCG1|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hour\(4),
	datad => \DCG1|LessThan2~0_combout\,
	combout => \DCG1|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y22_N14
\DCG1|hourdigit2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~6_combout\ = (\DCG1|LessThan2~1_combout\ & (!\DCG1|hourdigit2[2]~4_combout\ & ((\DCG1|first_time_flag~q\) # (!\DCG1|Equal4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal4~8_combout\,
	datab => \DCG1|first_time_flag~q\,
	datac => \DCG1|LessThan2~1_combout\,
	datad => \DCG1|hourdigit2[2]~4_combout\,
	combout => \DCG1|hourdigit2~6_combout\);

-- Location: LCCOMB_X31_Y22_N10
\DCG1|hourdigit2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~5_combout\ = (\DCG1|Equal2~0_combout\ & (\DCG1|hourdigit2[2]~4_combout\ & ((!\DCG1|hour\(4)) # (!\DCG1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal2~0_combout\,
	datab => \DCG1|LessThan1~0_combout\,
	datac => \DCG1|hourdigit2[2]~4_combout\,
	datad => \DCG1|hour\(4),
	combout => \DCG1|hourdigit2~5_combout\);

-- Location: LCCOMB_X32_Y22_N22
\DCG1|hourdigit2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~12_combout\ = (\DCG1|hourdigit2~11_combout\ & ((\DCG1|hourdigit2~5_combout\) # ((\DCG1|Equal3~0_combout\ & \DCG1|hourdigit2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2~11_combout\,
	datab => \DCG1|Equal3~0_combout\,
	datac => \DCG1|hourdigit2~6_combout\,
	datad => \DCG1|hourdigit2~5_combout\,
	combout => \DCG1|hourdigit2~12_combout\);

-- Location: FF_X32_Y22_N23
\DCG1|hourdigit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit2~12_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit2\(2));

-- Location: LCCOMB_X32_Y22_N2
\DCG1|hourdigit2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~13_combout\ = \DCG1|hourdigit2\(3) $ (((!\DCG1|hourdigit2\(0) & (!\DCG1|hourdigit2\(1) & !\DCG1|hourdigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(0),
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(3),
	combout => \DCG1|hourdigit2~13_combout\);

-- Location: LCCOMB_X32_Y22_N0
\DCG1|hourdigit2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~14_combout\ = (\DCG1|Add8~0_combout\ & ((\DCG1|hourdigit2~5_combout\) # ((\DCG1|hourdigit2~13_combout\ & \DCG1|hourdigit2~6_combout\)))) # (!\DCG1|Add8~0_combout\ & (\DCG1|hourdigit2~13_combout\ & (\DCG1|hourdigit2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Add8~0_combout\,
	datab => \DCG1|hourdigit2~13_combout\,
	datac => \DCG1|hourdigit2~6_combout\,
	datad => \DCG1|hourdigit2~5_combout\,
	combout => \DCG1|hourdigit2~14_combout\);

-- Location: FF_X32_Y22_N1
\DCG1|hourdigit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit2~14_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit2\(3));

-- Location: LCCOMB_X32_Y22_N30
\DCG1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal3~0_combout\ = (\DCG1|hourdigit2\(2)) # ((\DCG1|hourdigit2\(1)) # ((\DCG1|hourdigit2\(0)) # (\DCG1|hourdigit2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(2),
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(0),
	datad => \DCG1|hourdigit2\(3),
	combout => \DCG1|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y22_N20
\DCG1|hourdigit2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~7_combout\ = (\DCG1|hourdigit2~5_combout\) # ((\DCG1|Equal3~0_combout\ & \DCG1|hourdigit2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2~5_combout\,
	datac => \DCG1|Equal3~0_combout\,
	datad => \DCG1|hourdigit2~6_combout\,
	combout => \DCG1|hourdigit2~7_combout\);

-- Location: LCCOMB_X32_Y22_N12
\DCG1|hourdigit2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit2~8_combout\ = (\DCG1|hourdigit2~7_combout\ & (\DCG1|hourdigit2[2]~4_combout\ $ (\DCG1|hourdigit2\(0) $ (!\DCG1|hourdigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2[2]~4_combout\,
	datab => \DCG1|hourdigit2\(0),
	datac => \DCG1|hourdigit2\(1),
	datad => \DCG1|hourdigit2~7_combout\,
	combout => \DCG1|hourdigit2~8_combout\);

-- Location: FF_X32_Y22_N13
\DCG1|hourdigit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit2~8_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	ena => \DCG1|hourdigit2[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit2\(1));

-- Location: LCCOMB_X32_Y22_N20
\DCG1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|Equal2~0_combout\ = (\DCG1|hourdigit2\(2)) # ((\DCG1|hourdigit2\(1)) # ((!\DCG1|hourdigit2\(3)) # (!\DCG1|hourdigit2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(2),
	datab => \DCG1|hourdigit2\(1),
	datac => \DCG1|hourdigit2\(0),
	datad => \DCG1|hourdigit2\(3),
	combout => \DCG1|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y22_N22
\DCG1|hourdigit1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~7_combout\ = (\DCG1|hourdigit1~6_combout\ & (\DCG1|hourdigit1\(0) $ (!\DCG1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|Equal2~0_combout\,
	datad => \DCG1|hourdigit1~6_combout\,
	combout => \DCG1|hourdigit1~7_combout\);

-- Location: LCCOMB_X31_Y22_N18
\DCG1|hourdigit1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~21_combout\ = (\DCG1|hourdigit1~7_combout\) # ((\DCG1|hourdigit1~8_combout\ & ((\RE1|CW~q\) # (!\RE1|CCW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE1|CW~q\,
	datab => \DCG1|hourdigit1~8_combout\,
	datac => \DCG1|hourdigit1~7_combout\,
	datad => \RE1|CCW~q\,
	combout => \DCG1|hourdigit1~21_combout\);

-- Location: LCCOMB_X33_Y22_N14
\DCG1|hourdigit1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1[0]~0_combout\ = (\DCG1|adjusthour_button_state~q\ & ((\DCG1|hourdigit1~21_combout\))) # (!\DCG1|adjusthour_button_state~q\ & (\DCG1|hourdigit1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|hourdigit1~21_combout\,
	datad => \DCG1|adjusthour_button_state~q\,
	combout => \DCG1|hourdigit1[0]~0_combout\);

-- Location: LCCOMB_X33_Y22_N20
\DCG1|hourdigit1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1[0]~feeder_combout\ = \DCG1|hourdigit1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|hourdigit1[0]~0_combout\,
	combout => \DCG1|hourdigit1[0]~feeder_combout\);

-- Location: LCCOMB_X33_Y22_N0
\DCG1|hourdigit1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~10_combout\ = (\DCG1|LessThan3~1_combout\) # (((\DCG1|Equal2~0_combout\ & \DCG1|first_time_flag~q\)) # (!\DCG1|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal2~0_combout\,
	datab => \DCG1|LessThan3~1_combout\,
	datac => \DCG1|first_time_flag~q\,
	datad => \DCG1|LessThan4~1_combout\,
	combout => \DCG1|hourdigit1~10_combout\);

-- Location: LCCOMB_X33_Y22_N8
\DCG1|hourdigit1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~12_combout\ = (!\DCG1|hourdigit1~11_combout\ & ((\DCG1|hourdigit1~9_combout\) # ((\DCG1|hourdigit1~10_combout\ & \DCG1|hourdigit1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit1~9_combout\,
	datab => \DCG1|hourdigit1~10_combout\,
	datac => \DCG1|hourdigit1[0]~0_combout\,
	datad => \DCG1|hourdigit1~11_combout\,
	combout => \DCG1|hourdigit1~12_combout\);

-- Location: FF_X33_Y22_N21
\DCG1|hourdigit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit1[0]~feeder_combout\,
	asdata => \DCG1|hourdigit1~12_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	sload => \DCG1|Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit1\(0));

-- Location: LCCOMB_X33_Y20_N14
\DCG2|Add8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Add8~1_combout\ = \DCG2|hourdigit2\(3) $ (((\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(0) & \DCG2|hourdigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \DCG2|Add8~1_combout\);

-- Location: LCCOMB_X33_Y20_N6
\DCG2|hourdigit2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|hourdigit2~5_combout\ = (!\DCG2|hour[0]~5_combout\ & (\DCG2|Add8~1_combout\ & \DCG2|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|hour[0]~5_combout\,
	datac => \DCG2|Add8~1_combout\,
	datad => \DCG2|Equal2~0_combout\,
	combout => \DCG2|hourdigit2~5_combout\);

-- Location: FF_X33_Y20_N7
\DCG2|hourdigit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|hourdigit2~5_combout\,
	ena => \DCG2|hourdigit2[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|hourdigit2\(3));

-- Location: LCCOMB_X33_Y20_N22
\RG8|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux2~0_combout\ = (\DCG2|hourdigit2\(0)) # ((\DCG2|hourdigit2\(1) & ((\DCG2|hourdigit2\(3)))) # (!\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(2),
	datab => \DCG2|hourdigit2\(0),
	datac => \DCG2|hourdigit2\(3),
	datad => \DCG2|hourdigit2\(1),
	combout => \RG8|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y21_N10
\DCG2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|Add2~0_combout\ = \DCG2|minutedigit2\(2) $ (((\DCG2|minutedigit2\(0) & \DCG2|minutedigit2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(2),
	datac => \DCG2|minutedigit2\(0),
	datad => \DCG2|minutedigit2\(1),
	combout => \DCG2|Add2~0_combout\);

-- Location: LCCOMB_X32_Y21_N28
\DCG2|minutedigit2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit2~3_combout\ = (!\DCG2|minute[0]~6_combout\ & (\DCG2|Equal0~0_combout\ & \DCG2|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG2|minute[0]~6_combout\,
	datac => \DCG2|Equal0~0_combout\,
	datad => \DCG2|Add2~0_combout\,
	combout => \DCG2|minutedigit2~3_combout\);

-- Location: FF_X35_Y20_N15
\DCG2|minutedigit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DCG2|minutedigit2~3_combout\,
	sload => VCC,
	ena => \DCG2|minutedigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit2\(2));

-- Location: LCCOMB_X35_Y20_N12
\RG10|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux2~0_combout\ = (\DCG2|minutedigit2\(0)) # ((\DCG2|minutedigit2\(1) & (\DCG2|minutedigit2\(3))) # (!\DCG2|minutedigit2\(1) & ((\DCG2|minutedigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(2),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y20_N24
\RG4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG4|Mux2~0_combout\ = (\DCG1|minutedigit2\(0)) # ((\DCG1|minutedigit2\(1) & ((\DCG1|minutedigit2\(3)))) # (!\DCG1|minutedigit2\(1) & (\DCG1|minutedigit2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit2\(2),
	datab => \DCG1|minutedigit2\(3),
	datac => \DCG1|minutedigit2\(1),
	datad => \DCG1|minutedigit2\(0),
	combout => \RG4|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y22_N16
\RG2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux2~0_combout\ = (\DCG1|hourdigit2\(0)) # ((\DCG1|hourdigit2\(1) & (\DCG1|hourdigit2\(3))) # (!\DCG1|hourdigit2\(1) & ((\DCG1|hourdigit2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(3),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \RG2|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y20_N6
\DSP1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux4~0_combout\ = (\DSP1|Mux5~8_combout\ & (((\DSP1|Mux5~9_combout\)))) # (!\DSP1|Mux5~8_combout\ & ((\DSP1|Mux5~9_combout\ & (!\RG4|Mux2~0_combout\)) # (!\DSP1|Mux5~9_combout\ & ((!\RG2|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~8_combout\,
	datab => \RG4|Mux2~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \RG2|Mux2~0_combout\,
	combout => \DSP1|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y20_N0
\DSP1|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux4~1_combout\ = (\DSP1|Mux5~8_combout\ & ((\DSP1|Mux4~0_combout\ & ((!\RG10|Mux2~0_combout\))) # (!\DSP1|Mux4~0_combout\ & (!\RG8|Mux2~0_combout\)))) # (!\DSP1|Mux5~8_combout\ & (((\DSP1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~8_combout\,
	datab => \RG8|Mux2~0_combout\,
	datac => \RG10|Mux2~0_combout\,
	datad => \DSP1|Mux4~0_combout\,
	combout => \DSP1|Mux4~1_combout\);

-- Location: LCCOMB_X36_Y21_N18
\DSP1|R[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~5_combout\ = (\DSP1|digIn\(0) & (((\DSP1|Mux5~7_combout\) # (\DSP1|Mux4~1_combout\)))) # (!\DSP1|digIn\(0) & (!\DCG1|hourdigit1\(0) & (!\DSP1|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DCG1|hourdigit1\(0),
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux4~1_combout\,
	combout => \DSP1|R[1]~5_combout\);

-- Location: LCCOMB_X36_Y21_N0
\DSP1|R[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~6_combout\ = (\DSP1|Mux5~7_combout\ & ((\DSP1|R[1]~5_combout\ & ((!\RG6|Mux2~0_combout\))) # (!\DSP1|R[1]~5_combout\ & (!\DCG2|hourdigit1\(0))))) # (!\DSP1|Mux5~7_combout\ & (((\DSP1|R[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit1\(0),
	datab => \DSP1|Mux5~7_combout\,
	datac => \RG6|Mux2~0_combout\,
	datad => \DSP1|R[1]~5_combout\,
	combout => \DSP1|R[1]~6_combout\);

-- Location: LCCOMB_X36_Y21_N30
\DSP1|R[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~7_combout\ = (\DSP1|Mux5~0_combout\ & (!\DSP1|Mux5~2_combout\ & (!\DSP1|Mux5~4_combout\))) # (!\DSP1|Mux5~0_combout\ & (((\DSP1|R[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~2_combout\,
	datab => \DSP1|Mux5~4_combout\,
	datac => \DSP1|Mux5~0_combout\,
	datad => \DSP1|R[1]~6_combout\,
	combout => \DSP1|R[1]~7_combout\);

-- Location: LCCOMB_X36_Y21_N20
\DSP1|R[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~8_combout\ = (\DSP1|R[1]~7_combout\ & (((!\DSP1|process_5~2_combout\) # (!\DSP1|LessThan9~1_combout\)) # (!\DSP1|process_5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~24_combout\,
	datab => \DSP1|LessThan9~1_combout\,
	datac => \DSP1|R[1]~7_combout\,
	datad => \DSP1|process_5~2_combout\,
	combout => \DSP1|R[1]~8_combout\);

-- Location: LCCOMB_X39_Y21_N8
\DSP1|R[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~9_combout\ = (!\DSP1|process_5~20_combout\ & (!\DSP1|process_5~22_combout\ & (\DSP1|R[1]~8_combout\ & \DSP1|process_5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~20_combout\,
	datab => \DSP1|process_5~22_combout\,
	datac => \DSP1|R[1]~8_combout\,
	datad => \DSP1|process_5~16_combout\,
	combout => \DSP1|R[1]~9_combout\);

-- Location: LCCOMB_X38_Y18_N4
\DSP1|process_5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~27_combout\ = (\DSP1|vcnt\(6) & (((!\DSP1|vcnt\(8)) # (!\DSP1|vcnt\(5))) # (!\DSP1|vcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(4),
	datab => \DSP1|vcnt\(5),
	datac => \DSP1|vcnt\(6),
	datad => \DSP1|vcnt\(8),
	combout => \DSP1|process_5~27_combout\);

-- Location: LCCOMB_X39_Y18_N4
\DSP1|process_5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~28_combout\ = (\DSP1|vcnt\(7) & (!\DSP1|vcnt\(8) & ((\DSP1|Mux12~0_combout\)))) # (!\DSP1|vcnt\(7) & (\DSP1|process_5~27_combout\ & ((\DSP1|Mux12~0_combout\) # (!\DSP1|vcnt\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(8),
	datab => \DSP1|vcnt\(7),
	datac => \DSP1|process_5~27_combout\,
	datad => \DSP1|Mux12~0_combout\,
	combout => \DSP1|process_5~28_combout\);

-- Location: LCCOMB_X39_Y18_N26
\DSP1|process_5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~29_combout\ = (\DSP1|vcnt\(7) & (((\DSP1|process_5~28_combout\)))) # (!\DSP1|vcnt\(7) & ((\DSP1|LessThan23~0_combout\) # ((\DSP1|process_5~28_combout\ & \DSP1|LessThan13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(7),
	datab => \DSP1|LessThan23~0_combout\,
	datac => \DSP1|process_5~28_combout\,
	datad => \DSP1|LessThan13~0_combout\,
	combout => \DSP1|process_5~29_combout\);

-- Location: LCCOMB_X39_Y20_N10
\DSP1|R[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~14_combout\ = (\DSP1|Mux5~4_combout\ & (((!\DSP1|process_5~29_combout\ & !\DSP1|process_5~16_combout\)))) # (!\DSP1|Mux5~4_combout\ & ((\DSP1|Mux5~2_combout\ & ((!\DSP1|process_5~16_combout\))) # (!\DSP1|Mux5~2_combout\ & 
-- (!\DSP1|process_5~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~2_combout\,
	datab => \DSP1|Mux5~4_combout\,
	datac => \DSP1|process_5~29_combout\,
	datad => \DSP1|process_5~16_combout\,
	combout => \DSP1|R[1]~14_combout\);

-- Location: LCCOMB_X39_Y21_N20
\DSP1|R[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~15_combout\ = (\DSP1|R[1]~13_combout\ & (\DSP1|process_5~7_combout\ & (\DSP1|process_5~2_combout\ & \DSP1|R[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~13_combout\,
	datab => \DSP1|process_5~7_combout\,
	datac => \DSP1|process_5~2_combout\,
	datad => \DSP1|R[1]~14_combout\,
	combout => \DSP1|R[1]~15_combout\);

-- Location: LCCOMB_X39_Y21_N22
\DSP1|R[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~16_combout\ = (\DSP1|R[1]~9_combout\) # ((\DSP1|R[1]~10_combout\ & ((\DSP1|R[1]~11_combout\) # (\DSP1|R[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~10_combout\,
	datab => \DSP1|R[1]~11_combout\,
	datac => \DSP1|R[1]~9_combout\,
	datad => \DSP1|R[1]~15_combout\,
	combout => \DSP1|R[1]~16_combout\);

-- Location: LCCOMB_X33_Y20_N8
\RG8|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux4~0_combout\ = (\DCG2|hourdigit2\(3) & ((\DCG2|hourdigit2\(1)) # ((\DCG2|hourdigit2\(2))))) # (!\DCG2|hourdigit2\(3) & (\DCG2|hourdigit2\(2) & (\DCG2|hourdigit2\(1) $ (\DCG2|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \RG8|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y20_N20
\RG10|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux4~0_combout\ = (\DCG2|minutedigit2\(2) & ((\DCG2|minutedigit2\(3)) # (\DCG2|minutedigit2\(0) $ (\DCG2|minutedigit2\(1))))) # (!\DCG2|minutedigit2\(2) & (((\DCG2|minutedigit2\(3) & \DCG2|minutedigit2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(2),
	datac => \DCG2|minutedigit2\(3),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y22_N18
\RG2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux4~0_combout\ = (\DCG1|hourdigit2\(3) & ((\DCG1|hourdigit2\(1)) # ((\DCG1|hourdigit2\(2))))) # (!\DCG1|hourdigit2\(3) & (\DCG1|hourdigit2\(2) & (\DCG1|hourdigit2\(1) $ (\DCG1|hourdigit2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(3),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \RG2|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y20_N12
\DSP1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux2~0_combout\ = (\DSP1|Mux5~9_combout\ & (((\DSP1|Mux5~8_combout\)) # (!\RG4|Mux4~0_combout\))) # (!\DSP1|Mux5~9_combout\ & (((!\RG2|Mux4~0_combout\ & !\DSP1|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG4|Mux4~0_combout\,
	datab => \RG2|Mux4~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \DSP1|Mux5~8_combout\,
	combout => \DSP1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y20_N2
\DSP1|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux2~1_combout\ = (\DSP1|Mux5~8_combout\ & ((\DSP1|Mux2~0_combout\ & ((!\RG10|Mux4~0_combout\))) # (!\DSP1|Mux2~0_combout\ & (!\RG8|Mux4~0_combout\)))) # (!\DSP1|Mux5~8_combout\ & (((\DSP1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~8_combout\,
	datab => \RG8|Mux4~0_combout\,
	datac => \RG10|Mux4~0_combout\,
	datad => \DSP1|Mux2~0_combout\,
	combout => \DSP1|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y21_N4
\DSP1|R[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~25_combout\ = ((\DSP1|Mux5~7_combout\ & (!\RG6|Mux4~0_combout\)) # (!\DSP1|Mux5~7_combout\ & ((\DSP1|Mux2~1_combout\)))) # (!\DSP1|digIn\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG6|Mux4~0_combout\,
	datab => \DSP1|Mux5~7_combout\,
	datac => \DSP1|digIn\(0),
	datad => \DSP1|Mux2~1_combout\,
	combout => \DSP1|R[1]~25_combout\);

-- Location: LCCOMB_X33_Y21_N24
\DCG2|minutedigit1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG2|minutedigit1~4_combout\ = (!\DCG2|Equal0~0_combout\ & (!\DCG2|minute[0]~6_combout\ & (\DCG2|minutedigit1\(0) $ (\DCG2|minutedigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|Equal0~0_combout\,
	datab => \DCG2|minutedigit1\(0),
	datac => \DCG2|minutedigit1\(1),
	datad => \DCG2|minute[0]~6_combout\,
	combout => \DCG2|minutedigit1~4_combout\);

-- Location: FF_X33_Y21_N25
\DCG2|minutedigit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG2|minutedigit1~4_combout\,
	ena => \DCG2|minutedigit1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG2|minutedigit1\(1));

-- Location: LCCOMB_X35_Y21_N10
\DCG1|seconddigit1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit1~3_combout\ = (!\DCG1|seconddigit1[2]~0_combout\ & (!\DCG1|seconddigit1\(0) & !\DCG1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit1[2]~0_combout\,
	datac => \DCG1|seconddigit1\(0),
	datad => \DCG1|Equal5~0_combout\,
	combout => \DCG1|seconddigit1~3_combout\);

-- Location: LCCOMB_X30_Y21_N30
\DCG1|minutedigit2[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|minutedigit2[3]~1_combout\ = (\DCG1|first_time_flag~q\ & ((\DCG1|LessThan3~0_combout\) # ((!\DCG1|second\(5)) # (!\DCG1|second\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|first_time_flag~q\,
	datab => \DCG1|LessThan3~0_combout\,
	datac => \DCG1|second\(4),
	datad => \DCG1|second\(5),
	combout => \DCG1|minutedigit2[3]~1_combout\);

-- Location: LCCOMB_X35_Y21_N4
\DCG1|seconddigit1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit1[2]~2_combout\ = ((\DCG1|Equal4~8_combout\ & ((!\DCG1|Equal5~0_combout\) # (!\DCG1|minutedigit2[3]~1_combout\)))) # (!\KD1|button_out_buffer~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KD1|button_out_buffer~combout\,
	datab => \DCG1|minutedigit2[3]~1_combout\,
	datac => \DCG1|Equal5~0_combout\,
	datad => \DCG1|Equal4~8_combout\,
	combout => \DCG1|seconddigit1[2]~2_combout\);

-- Location: FF_X35_Y21_N11
\DCG1|seconddigit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit1~3_combout\,
	ena => \DCG1|seconddigit1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit1\(0));

-- Location: LCCOMB_X35_Y21_N26
\DCG1|seconddigit1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|seconddigit1~4_combout\ = (!\DCG1|seconddigit1[2]~0_combout\ & (!\DCG1|Equal5~0_combout\ & (\DCG1|seconddigit1\(1) $ (\DCG1|seconddigit1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit1[2]~0_combout\,
	datab => \DCG1|Equal5~0_combout\,
	datac => \DCG1|seconddigit1\(1),
	datad => \DCG1|seconddigit1\(0),
	combout => \DCG1|seconddigit1~4_combout\);

-- Location: FF_X35_Y21_N27
\DCG1|seconddigit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|seconddigit1~4_combout\,
	ena => \DCG1|seconddigit1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|seconddigit1\(1));

-- Location: LCCOMB_X35_Y21_N16
\DSP1|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~5_combout\ = (\DSP1|digIn\(3) & (((\DCG1|seconddigit1\(1))))) # (!\DSP1|digIn\(3) & ((\DSP1|digIn\(1) & (\DCG1|minutedigit1\(1))) # (!\DSP1|digIn\(1) & ((\DCG1|seconddigit1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|minutedigit1\(1),
	datab => \DSP1|digIn\(3),
	datac => \DCG1|seconddigit1\(1),
	datad => \DSP1|digIn\(1),
	combout => \DSP1|Mux5~5_combout\);

-- Location: LCCOMB_X35_Y21_N30
\DSP1|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~6_combout\ = (\DSP1|digIn\(2) & (((\DSP1|Mux5~5_combout\)))) # (!\DSP1|digIn\(2) & ((\DSP1|digIn\(1) & ((\DSP1|Mux5~5_combout\))) # (!\DSP1|digIn\(1) & (\DCG2|minutedigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DCG2|minutedigit1\(1),
	datac => \DSP1|digIn\(1),
	datad => \DSP1|Mux5~5_combout\,
	combout => \DSP1|Mux5~6_combout\);

-- Location: LCCOMB_X36_Y21_N6
\DSP1|R[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~24_combout\ = (\DSP1|Mux5~0_combout\ & ((\DSP1|Mux5~4_combout\ $ (!\DSP1|Mux5~6_combout\)) # (!\DSP1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~2_combout\,
	datab => \DSP1|Mux5~4_combout\,
	datac => \DSP1|Mux5~0_combout\,
	datad => \DSP1|Mux5~6_combout\,
	combout => \DSP1|R[1]~24_combout\);

-- Location: LCCOMB_X36_Y21_N10
\DSP1|R[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~26_combout\ = (\DSP1|R[1]~24_combout\) # ((!\DSP1|Mux5~0_combout\ & \DSP1|R[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~0_combout\,
	datac => \DSP1|R[1]~25_combout\,
	datad => \DSP1|R[1]~24_combout\,
	combout => \DSP1|R[1]~26_combout\);

-- Location: LCCOMB_X36_Y21_N22
\DSP1|R[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~22_combout\ = (\DSP1|Mux5~0_combout\ & ((\DSP1|Mux5~6_combout\) # (\DSP1|Mux5~2_combout\ $ (!\DSP1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~2_combout\,
	datab => \DSP1|Mux5~4_combout\,
	datac => \DSP1|Mux5~0_combout\,
	datad => \DSP1|Mux5~6_combout\,
	combout => \DSP1|R[1]~22_combout\);

-- Location: LCCOMB_X35_Y22_N30
\RG6|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux5~0_combout\ = (\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(3))) # (!\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(2) $ (((!\DCG1|seconddigit2\(3) & \DCG1|seconddigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y22_N28
\DCG1|hourdigit1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~14_combout\ = (\DCG1|hourdigit1\(1) & (((\DCG1|Equal3~0_combout\ & \DCG1|LessThan2~1_combout\)) # (!\DCG1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal3~0_combout\,
	datab => \DCG1|hourdigit1\(1),
	datac => \DCG1|process_2~1_combout\,
	datad => \DCG1|LessThan2~1_combout\,
	combout => \DCG1|hourdigit1~14_combout\);

-- Location: LCCOMB_X31_Y22_N26
\DCG1|hourdigit1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~15_combout\ = (!\DCG1|Equal3~0_combout\ & (\DCG1|hourdigit1~20_combout\ & (\DCG1|hourdigit1\(0) $ (!\DCG1|hourdigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal3~0_combout\,
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|hourdigit1\(1),
	datad => \DCG1|hourdigit1~20_combout\,
	combout => \DCG1|hourdigit1~15_combout\);

-- Location: LCCOMB_X31_Y22_N14
\DCG1|hourdigit1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~13_combout\ = (\DCG1|hourdigit1~6_combout\ & (\DCG1|hourdigit1\(1) $ (((!\DCG1|Equal2~0_combout\ & \DCG1|hourdigit1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|Equal2~0_combout\,
	datab => \DCG1|hourdigit1\(0),
	datac => \DCG1|hourdigit1\(1),
	datad => \DCG1|hourdigit1~6_combout\,
	combout => \DCG1|hourdigit1~13_combout\);

-- Location: LCCOMB_X32_Y22_N28
\DCG1|hourdigit1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~16_combout\ = (\DCG1|hourdigit1~13_combout\) # ((!\DCG1|process_2~0_combout\ & ((\DCG1|hourdigit1~14_combout\) # (\DCG1|hourdigit1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|process_2~0_combout\,
	datab => \DCG1|hourdigit1~14_combout\,
	datac => \DCG1|hourdigit1~15_combout\,
	datad => \DCG1|hourdigit1~13_combout\,
	combout => \DCG1|hourdigit1~16_combout\);

-- Location: LCCOMB_X33_Y22_N6
\DCG1|hourdigit1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1[1]~1_combout\ = (\DCG1|adjusthour_button_state~q\ & ((\DCG1|hourdigit1~16_combout\))) # (!\DCG1|adjusthour_button_state~q\ & (\DCG1|hourdigit1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DCG1|adjusthour_button_state~q\,
	datac => \DCG1|hourdigit1\(1),
	datad => \DCG1|hourdigit1~16_combout\,
	combout => \DCG1|hourdigit1[1]~1_combout\);

-- Location: LCCOMB_X33_Y22_N2
\DCG1|hourdigit1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~18_combout\ = (!\DCG1|hourdigit1~17_combout\ & (!\DCG1|Equal2~0_combout\ & (\DCG1|hourdigit1\(0) $ (\DCG1|hourdigit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit1\(0),
	datab => \DCG1|hourdigit1~17_combout\,
	datac => \DCG1|Equal2~0_combout\,
	datad => \DCG1|hourdigit1\(1),
	combout => \DCG1|hourdigit1~18_combout\);

-- Location: LCCOMB_X33_Y22_N4
\DCG1|hourdigit1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DCG1|hourdigit1~19_combout\ = (!\DCG1|hourdigit1~11_combout\ & ((\DCG1|hourdigit1~18_combout\) # ((\DCG1|hourdigit1[1]~1_combout\ & \DCG1|hourdigit1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit1[1]~1_combout\,
	datab => \DCG1|hourdigit1~10_combout\,
	datac => \DCG1|hourdigit1~18_combout\,
	datad => \DCG1|hourdigit1~11_combout\,
	combout => \DCG1|hourdigit1~19_combout\);

-- Location: FF_X33_Y22_N7
\DCG1|hourdigit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DCG1|hourdigit1[1]~1_combout\,
	asdata => \DCG1|hourdigit1~19_combout\,
	sclr => \KD1|ALT_INV_button_out_buffer~combout\,
	sload => \DCG1|Equal4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DCG1|hourdigit1\(1));

-- Location: LCCOMB_X33_Y22_N30
\RG1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG1|Mux1~0_combout\ = (\DCG1|hourdigit1\(1)) # (!\DCG1|hourdigit1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DCG1|hourdigit1\(1),
	datad => \DCG1|hourdigit1\(0),
	combout => \RG1|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y20_N18
\RG10|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux5~0_combout\ = (\DCG2|minutedigit2\(1) & (((\DCG2|minutedigit2\(3))))) # (!\DCG2|minutedigit2\(1) & (\DCG2|minutedigit2\(2) $ (((\DCG2|minutedigit2\(0) & !\DCG2|minutedigit2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(3),
	datac => \DCG2|minutedigit2\(2),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y20_N10
\RG8|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux5~0_combout\ = (\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(3))) # (!\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(2) $ (((!\DCG2|hourdigit2\(3) & \DCG2|hourdigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \RG8|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y20_N16
\DSP1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux1~0_combout\ = (\DSP1|Mux5~9_combout\ & (((\DSP1|Mux5~8_combout\)))) # (!\DSP1|Mux5~9_combout\ & ((\DSP1|Mux5~8_combout\ & ((!\RG8|Mux5~0_combout\))) # (!\DSP1|Mux5~8_combout\ & (!\RG2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG2|Mux5~0_combout\,
	datab => \RG8|Mux5~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \DSP1|Mux5~8_combout\,
	combout => \DSP1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y20_N14
\DSP1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux1~1_combout\ = (\DSP1|Mux5~9_combout\ & ((\DSP1|Mux1~0_combout\ & ((!\RG10|Mux5~0_combout\))) # (!\DSP1|Mux1~0_combout\ & (!\RG4|Mux5~0_combout\)))) # (!\DSP1|Mux5~9_combout\ & (((\DSP1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG4|Mux5~0_combout\,
	datab => \DSP1|Mux5~9_combout\,
	datac => \RG10|Mux5~0_combout\,
	datad => \DSP1|Mux1~0_combout\,
	combout => \DSP1|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y21_N12
\DSP1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux1~2_combout\ = (\DSP1|digIn\(0) & (!\DSP1|Mux5~7_combout\ & ((\DSP1|Mux1~1_combout\)))) # (!\DSP1|digIn\(0) & ((\DSP1|Mux5~7_combout\) # ((\RG1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DSP1|Mux5~7_combout\,
	datac => \RG1|Mux1~0_combout\,
	datad => \DSP1|Mux1~1_combout\,
	combout => \DSP1|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y21_N2
\DSP1|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux1~3_combout\ = (\DSP1|Mux5~7_combout\ & ((\DSP1|Mux1~2_combout\ & (\RG7|Mux1~0_combout\)) # (!\DSP1|Mux1~2_combout\ & ((!\RG6|Mux5~0_combout\))))) # (!\DSP1|Mux5~7_combout\ & (((\DSP1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG7|Mux1~0_combout\,
	datab => \RG6|Mux5~0_combout\,
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux1~2_combout\,
	combout => \DSP1|Mux1~3_combout\);

-- Location: LCCOMB_X36_Y21_N16
\DSP1|R[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~23_combout\ = (\DSP1|R[1]~22_combout\) # ((!\DSP1|Mux5~0_combout\ & \DSP1|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~0_combout\,
	datac => \DSP1|R[1]~22_combout\,
	datad => \DSP1|Mux1~3_combout\,
	combout => \DSP1|R[1]~23_combout\);

-- Location: LCCOMB_X39_Y21_N24
\DSP1|R[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~27_combout\ = (\DSP1|process_5~26_combout\ & (((\DSP1|R[1]~23_combout\)))) # (!\DSP1|process_5~26_combout\ & (\DSP1|R[1]~26_combout\ & (\DSP1|process_5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~26_combout\,
	datab => \DSP1|R[1]~26_combout\,
	datac => \DSP1|process_5~22_combout\,
	datad => \DSP1|R[1]~23_combout\,
	combout => \DSP1|R[1]~27_combout\);

-- Location: LCCOMB_X35_Y22_N16
\RG6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG6|Mux1~0_combout\ = (\DCG1|seconddigit2\(1) & ((\DCG1|seconddigit2\(3)) # ((\DCG1|seconddigit2\(0) & \DCG1|seconddigit2\(2))))) # (!\DCG1|seconddigit2\(1) & (\DCG1|seconddigit2\(2) $ (((!\DCG1|seconddigit2\(3) & \DCG1|seconddigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|seconddigit2\(1),
	datab => \DCG1|seconddigit2\(3),
	datac => \DCG1|seconddigit2\(0),
	datad => \DCG1|seconddigit2\(2),
	combout => \RG6|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y20_N30
\RG10|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG10|Mux1~0_combout\ = (\DCG2|minutedigit2\(1) & ((\DCG2|minutedigit2\(3)) # ((\DCG2|minutedigit2\(0) & \DCG2|minutedigit2\(2))))) # (!\DCG2|minutedigit2\(1) & (\DCG2|minutedigit2\(2) $ (((\DCG2|minutedigit2\(0) & !\DCG2|minutedigit2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|minutedigit2\(0),
	datab => \DCG2|minutedigit2\(2),
	datac => \DCG2|minutedigit2\(3),
	datad => \DCG2|minutedigit2\(1),
	combout => \RG10|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y20_N24
\RG8|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG8|Mux1~0_combout\ = (\DCG2|hourdigit2\(1) & ((\DCG2|hourdigit2\(3)) # ((\DCG2|hourdigit2\(0) & \DCG2|hourdigit2\(2))))) # (!\DCG2|hourdigit2\(1) & (\DCG2|hourdigit2\(2) $ (((!\DCG2|hourdigit2\(3) & \DCG2|hourdigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG2|hourdigit2\(3),
	datab => \DCG2|hourdigit2\(1),
	datac => \DCG2|hourdigit2\(0),
	datad => \DCG2|hourdigit2\(2),
	combout => \RG8|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y22_N6
\RG2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RG2|Mux1~0_combout\ = (\DCG1|hourdigit2\(1) & ((\DCG1|hourdigit2\(3)) # ((\DCG1|hourdigit2\(2) & \DCG1|hourdigit2\(0))))) # (!\DCG1|hourdigit2\(1) & (\DCG1|hourdigit2\(2) $ (((!\DCG1|hourdigit2\(3) & \DCG1|hourdigit2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DCG1|hourdigit2\(1),
	datab => \DCG1|hourdigit2\(3),
	datac => \DCG1|hourdigit2\(2),
	datad => \DCG1|hourdigit2\(0),
	combout => \RG2|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y20_N20
\DSP1|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~10_combout\ = (\DSP1|Mux5~8_combout\ & (((\DSP1|Mux5~9_combout\)) # (!\RG8|Mux1~0_combout\))) # (!\DSP1|Mux5~8_combout\ & (((!\DSP1|Mux5~9_combout\ & !\RG2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux5~8_combout\,
	datab => \RG8|Mux1~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \RG2|Mux1~0_combout\,
	combout => \DSP1|Mux5~10_combout\);

-- Location: LCCOMB_X32_Y20_N30
\DSP1|Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~11_combout\ = (\DSP1|Mux5~9_combout\ & ((\DSP1|Mux5~10_combout\ & ((!\RG10|Mux1~0_combout\))) # (!\DSP1|Mux5~10_combout\ & (!\RG4|Mux1~0_combout\)))) # (!\DSP1|Mux5~9_combout\ & (((\DSP1|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG4|Mux1~0_combout\,
	datab => \RG10|Mux1~0_combout\,
	datac => \DSP1|Mux5~9_combout\,
	datad => \DSP1|Mux5~10_combout\,
	combout => \DSP1|Mux5~11_combout\);

-- Location: LCCOMB_X36_Y21_N28
\DSP1|Mux5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~12_combout\ = (\DSP1|digIn\(0) & (!\DSP1|Mux5~7_combout\ & ((\DSP1|Mux5~11_combout\)))) # (!\DSP1|digIn\(0) & ((\DSP1|Mux5~7_combout\) # ((\RG1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(0),
	datab => \DSP1|Mux5~7_combout\,
	datac => \RG1|Mux1~0_combout\,
	datad => \DSP1|Mux5~11_combout\,
	combout => \DSP1|Mux5~12_combout\);

-- Location: LCCOMB_X36_Y21_N14
\DSP1|Mux5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux5~13_combout\ = (\DSP1|Mux5~7_combout\ & ((\DSP1|Mux5~12_combout\ & (\RG7|Mux1~0_combout\)) # (!\DSP1|Mux5~12_combout\ & ((!\RG6|Mux1~0_combout\))))) # (!\DSP1|Mux5~7_combout\ & (((\DSP1|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG7|Mux1~0_combout\,
	datab => \RG6|Mux1~0_combout\,
	datac => \DSP1|Mux5~7_combout\,
	datad => \DSP1|Mux5~12_combout\,
	combout => \DSP1|Mux5~13_combout\);

-- Location: LCCOMB_X39_Y21_N2
\DSP1|R[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~28_combout\ = (\DSP1|process_5~8_combout\ & (((!\DSP1|Mux5~0_combout\ & \DSP1|Mux5~13_combout\)))) # (!\DSP1|process_5~8_combout\ & (\DSP1|Mux25~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux25~10_combout\,
	datab => \DSP1|Mux5~0_combout\,
	datac => \DSP1|Mux5~13_combout\,
	datad => \DSP1|process_5~8_combout\,
	combout => \DSP1|R[1]~28_combout\);

-- Location: LCCOMB_X39_Y21_N28
\DSP1|R[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~29_combout\ = (\DSP1|R[1]~21_combout\) # ((\DSP1|R[1]~27_combout\) # ((\DSP1|R[1]~1_combout\ & \DSP1|R[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~21_combout\,
	datab => \DSP1|R[1]~27_combout\,
	datac => \DSP1|R[1]~1_combout\,
	datad => \DSP1|R[1]~28_combout\,
	combout => \DSP1|R[1]~29_combout\);

-- Location: LCCOMB_X39_Y21_N18
\DSP1|R[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~30_combout\ = (\DSP1|R[1]~4_combout\) # ((!\DSP1|process_5~10_combout\ & ((\DSP1|R[1]~16_combout\) # (\DSP1|R[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~10_combout\,
	datab => \DSP1|R[1]~4_combout\,
	datac => \DSP1|R[1]~16_combout\,
	datad => \DSP1|R[1]~29_combout\,
	combout => \DSP1|R[1]~30_combout\);

-- Location: LCCOMB_X39_Y21_N0
\DSP1|R[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~31_combout\ = (\DSP1|digIn\(3)) # ((!\DSP1|R[1]~30_combout\) # (!\DSP1|R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|digIn\(3),
	datac => \DSP1|R[1]~2_combout\,
	datad => \DSP1|R[1]~30_combout\,
	combout => \DSP1|R[1]~31_combout\);

-- Location: LCCOMB_X40_Y20_N4
\DSP1|RGB_cerceve[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[1]~11_combout\ = (\DSP1|RGB_cerceve\(0) & (\DSP1|RGB_cerceve\(1) $ (VCC))) # (!\DSP1|RGB_cerceve\(0) & (\DSP1|RGB_cerceve\(1) & VCC))
-- \DSP1|RGB_cerceve[1]~12\ = CARRY((\DSP1|RGB_cerceve\(0) & \DSP1|RGB_cerceve\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|RGB_cerceve\(0),
	datab => \DSP1|RGB_cerceve\(1),
	datad => VCC,
	combout => \DSP1|RGB_cerceve[1]~11_combout\,
	cout => \DSP1|RGB_cerceve[1]~12\);

-- Location: LCCOMB_X39_Y24_N6
\DSP1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~0_combout\ = \DSP1|cerceveclk_cnt\(0) $ (VCC)
-- \DSP1|Add4~1\ = CARRY(\DSP1|cerceveclk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(0),
	datad => VCC,
	combout => \DSP1|Add4~0_combout\,
	cout => \DSP1|Add4~1\);

-- Location: LCCOMB_X39_Y24_N8
\DSP1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~2_combout\ = (\DSP1|cerceveclk_cnt\(1) & (!\DSP1|Add4~1\)) # (!\DSP1|cerceveclk_cnt\(1) & ((\DSP1|Add4~1\) # (GND)))
-- \DSP1|Add4~3\ = CARRY((!\DSP1|Add4~1\) # (!\DSP1|cerceveclk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(1),
	datad => VCC,
	cin => \DSP1|Add4~1\,
	combout => \DSP1|Add4~2_combout\,
	cout => \DSP1|Add4~3\);

-- Location: FF_X39_Y24_N9
\DSP1|cerceveclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(1));

-- Location: LCCOMB_X39_Y24_N12
\DSP1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~6_combout\ = (\DSP1|cerceveclk_cnt\(3) & (!\DSP1|Add4~5\)) # (!\DSP1|cerceveclk_cnt\(3) & ((\DSP1|Add4~5\) # (GND)))
-- \DSP1|Add4~7\ = CARRY((!\DSP1|Add4~5\) # (!\DSP1|cerceveclk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(3),
	datad => VCC,
	cin => \DSP1|Add4~5\,
	combout => \DSP1|Add4~6_combout\,
	cout => \DSP1|Add4~7\);

-- Location: LCCOMB_X39_Y24_N16
\DSP1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~10_combout\ = (\DSP1|cerceveclk_cnt\(5) & (!\DSP1|Add4~9\)) # (!\DSP1|cerceveclk_cnt\(5) & ((\DSP1|Add4~9\) # (GND)))
-- \DSP1|Add4~11\ = CARRY((!\DSP1|Add4~9\) # (!\DSP1|cerceveclk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(5),
	datad => VCC,
	cin => \DSP1|Add4~9\,
	combout => \DSP1|Add4~10_combout\,
	cout => \DSP1|Add4~11\);

-- Location: FF_X39_Y24_N17
\DSP1|cerceveclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(5));

-- Location: LCCOMB_X39_Y24_N18
\DSP1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~12_combout\ = (\DSP1|cerceveclk_cnt\(6) & (\DSP1|Add4~11\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(6) & (!\DSP1|Add4~11\ & VCC))
-- \DSP1|Add4~13\ = CARRY((\DSP1|cerceveclk_cnt\(6) & !\DSP1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(6),
	datad => VCC,
	cin => \DSP1|Add4~11\,
	combout => \DSP1|Add4~12_combout\,
	cout => \DSP1|Add4~13\);

-- Location: LCCOMB_X39_Y24_N20
\DSP1|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~14_combout\ = (\DSP1|cerceveclk_cnt\(7) & (!\DSP1|Add4~13\)) # (!\DSP1|cerceveclk_cnt\(7) & ((\DSP1|Add4~13\) # (GND)))
-- \DSP1|Add4~15\ = CARRY((!\DSP1|Add4~13\) # (!\DSP1|cerceveclk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(7),
	datad => VCC,
	cin => \DSP1|Add4~13\,
	combout => \DSP1|Add4~14_combout\,
	cout => \DSP1|Add4~15\);

-- Location: LCCOMB_X40_Y24_N12
\DSP1|cerceveclk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~3_combout\ = (\DSP1|Add4~14_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add4~14_combout\,
	datad => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~3_combout\);

-- Location: FF_X40_Y24_N13
\DSP1|cerceveclk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(7));

-- Location: LCCOMB_X39_Y24_N24
\DSP1|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~18_combout\ = (\DSP1|cerceveclk_cnt\(9) & (!\DSP1|Add4~17\)) # (!\DSP1|cerceveclk_cnt\(9) & ((\DSP1|Add4~17\) # (GND)))
-- \DSP1|Add4~19\ = CARRY((!\DSP1|Add4~17\) # (!\DSP1|cerceveclk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(9),
	datad => VCC,
	cin => \DSP1|Add4~17\,
	combout => \DSP1|Add4~18_combout\,
	cout => \DSP1|Add4~19\);

-- Location: LCCOMB_X39_Y24_N4
\DSP1|cerceveclk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~4_combout\ = (\DSP1|Add4~18_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add4~18_combout\,
	datac => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~4_combout\);

-- Location: FF_X39_Y24_N5
\DSP1|cerceveclk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(9));

-- Location: LCCOMB_X39_Y24_N28
\DSP1|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~22_combout\ = (\DSP1|cerceveclk_cnt\(11) & (!\DSP1|Add4~21\)) # (!\DSP1|cerceveclk_cnt\(11) & ((\DSP1|Add4~21\) # (GND)))
-- \DSP1|Add4~23\ = CARRY((!\DSP1|Add4~21\) # (!\DSP1|cerceveclk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(11),
	datad => VCC,
	cin => \DSP1|Add4~21\,
	combout => \DSP1|Add4~22_combout\,
	cout => \DSP1|Add4~23\);

-- Location: FF_X39_Y24_N29
\DSP1|cerceveclk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(11));

-- Location: LCCOMB_X39_Y24_N30
\DSP1|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~24_combout\ = (\DSP1|cerceveclk_cnt\(12) & (\DSP1|Add4~23\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(12) & (!\DSP1|Add4~23\ & VCC))
-- \DSP1|Add4~25\ = CARRY((\DSP1|cerceveclk_cnt\(12) & !\DSP1|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(12),
	datad => VCC,
	cin => \DSP1|Add4~23\,
	combout => \DSP1|Add4~24_combout\,
	cout => \DSP1|Add4~25\);

-- Location: LCCOMB_X39_Y24_N0
\DSP1|cerceveclk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~5_combout\ = (!\DSP1|Equal7~8_combout\ & \DSP1|Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Equal7~8_combout\,
	datac => \DSP1|Add4~24_combout\,
	combout => \DSP1|cerceveclk_cnt~5_combout\);

-- Location: FF_X39_Y24_N1
\DSP1|cerceveclk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(12));

-- Location: LCCOMB_X39_Y23_N0
\DSP1|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~26_combout\ = (\DSP1|cerceveclk_cnt\(13) & (!\DSP1|Add4~25\)) # (!\DSP1|cerceveclk_cnt\(13) & ((\DSP1|Add4~25\) # (GND)))
-- \DSP1|Add4~27\ = CARRY((!\DSP1|Add4~25\) # (!\DSP1|cerceveclk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(13),
	datad => VCC,
	cin => \DSP1|Add4~25\,
	combout => \DSP1|Add4~26_combout\,
	cout => \DSP1|Add4~27\);

-- Location: FF_X39_Y23_N1
\DSP1|cerceveclk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(13));

-- Location: LCCOMB_X39_Y23_N2
\DSP1|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~28_combout\ = (\DSP1|cerceveclk_cnt\(14) & (\DSP1|Add4~27\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(14) & (!\DSP1|Add4~27\ & VCC))
-- \DSP1|Add4~29\ = CARRY((\DSP1|cerceveclk_cnt\(14) & !\DSP1|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(14),
	datad => VCC,
	cin => \DSP1|Add4~27\,
	combout => \DSP1|Add4~28_combout\,
	cout => \DSP1|Add4~29\);

-- Location: FF_X39_Y23_N3
\DSP1|cerceveclk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(14));

-- Location: LCCOMB_X39_Y23_N4
\DSP1|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~30_combout\ = (\DSP1|cerceveclk_cnt\(15) & (!\DSP1|Add4~29\)) # (!\DSP1|cerceveclk_cnt\(15) & ((\DSP1|Add4~29\) # (GND)))
-- \DSP1|Add4~31\ = CARRY((!\DSP1|Add4~29\) # (!\DSP1|cerceveclk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(15),
	datad => VCC,
	cin => \DSP1|Add4~29\,
	combout => \DSP1|Add4~30_combout\,
	cout => \DSP1|Add4~31\);

-- Location: FF_X39_Y23_N5
\DSP1|cerceveclk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(15));

-- Location: LCCOMB_X39_Y23_N16
\DSP1|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~42_combout\ = (\DSP1|cerceveclk_cnt\(21) & (!\DSP1|Add4~41\)) # (!\DSP1|cerceveclk_cnt\(21) & ((\DSP1|Add4~41\) # (GND)))
-- \DSP1|Add4~43\ = CARRY((!\DSP1|Add4~41\) # (!\DSP1|cerceveclk_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(21),
	datad => VCC,
	cin => \DSP1|Add4~41\,
	combout => \DSP1|Add4~42_combout\,
	cout => \DSP1|Add4~43\);

-- Location: FF_X39_Y23_N17
\DSP1|cerceveclk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(21));

-- Location: LCCOMB_X39_Y23_N18
\DSP1|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~44_combout\ = (\DSP1|cerceveclk_cnt\(22) & (\DSP1|Add4~43\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(22) & (!\DSP1|Add4~43\ & VCC))
-- \DSP1|Add4~45\ = CARRY((\DSP1|cerceveclk_cnt\(22) & !\DSP1|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(22),
	datad => VCC,
	cin => \DSP1|Add4~43\,
	combout => \DSP1|Add4~44_combout\,
	cout => \DSP1|Add4~45\);

-- Location: FF_X39_Y23_N19
\DSP1|cerceveclk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(22));

-- Location: LCCOMB_X39_Y23_N20
\DSP1|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~46_combout\ = (\DSP1|cerceveclk_cnt\(23) & (!\DSP1|Add4~45\)) # (!\DSP1|cerceveclk_cnt\(23) & ((\DSP1|Add4~45\) # (GND)))
-- \DSP1|Add4~47\ = CARRY((!\DSP1|Add4~45\) # (!\DSP1|cerceveclk_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|cerceveclk_cnt\(23),
	datad => VCC,
	cin => \DSP1|Add4~45\,
	combout => \DSP1|Add4~46_combout\,
	cout => \DSP1|Add4~47\);

-- Location: FF_X39_Y23_N21
\DSP1|cerceveclk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(23));

-- Location: LCCOMB_X39_Y23_N28
\DSP1|Equal7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~6_combout\ = (\DSP1|cerceveclk_cnt\(20) & (!\DSP1|cerceveclk_cnt\(22) & (!\DSP1|cerceveclk_cnt\(23) & !\DSP1|cerceveclk_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(20),
	datab => \DSP1|cerceveclk_cnt\(22),
	datac => \DSP1|cerceveclk_cnt\(23),
	datad => \DSP1|cerceveclk_cnt\(21),
	combout => \DSP1|Equal7~6_combout\);

-- Location: LCCOMB_X39_Y23_N22
\DSP1|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~48_combout\ = (\DSP1|cerceveclk_cnt\(24) & (\DSP1|Add4~47\ $ (GND))) # (!\DSP1|cerceveclk_cnt\(24) & (!\DSP1|Add4~47\ & VCC))
-- \DSP1|Add4~49\ = CARRY((\DSP1|cerceveclk_cnt\(24) & !\DSP1|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(24),
	datad => VCC,
	cin => \DSP1|Add4~47\,
	combout => \DSP1|Add4~48_combout\,
	cout => \DSP1|Add4~49\);

-- Location: FF_X39_Y23_N23
\DSP1|cerceveclk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(24));

-- Location: LCCOMB_X39_Y23_N24
\DSP1|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Add4~50_combout\ = \DSP1|Add4~49\ $ (\DSP1|cerceveclk_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DSP1|cerceveclk_cnt\(25),
	cin => \DSP1|Add4~49\,
	combout => \DSP1|Add4~50_combout\);

-- Location: FF_X39_Y23_N25
\DSP1|cerceveclk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(25));

-- Location: LCCOMB_X39_Y23_N26
\DSP1|Equal7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~7_combout\ = (!\DSP1|cerceveclk_cnt\(24) & !\DSP1|cerceveclk_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|cerceveclk_cnt\(24),
	datad => \DSP1|cerceveclk_cnt\(25),
	combout => \DSP1|Equal7~7_combout\);

-- Location: FF_X39_Y24_N13
\DSP1|cerceveclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(3));

-- Location: LCCOMB_X40_Y24_N4
\DSP1|cerceveclk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~0_combout\ = (\DSP1|Add4~0_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|Add4~0_combout\,
	datad => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~0_combout\);

-- Location: FF_X40_Y24_N5
\DSP1|cerceveclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(0));

-- Location: LCCOMB_X40_Y24_N18
\DSP1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~0_combout\ = (!\DSP1|cerceveclk_cnt\(2) & (!\DSP1|cerceveclk_cnt\(3) & (!\DSP1|cerceveclk_cnt\(0) & !\DSP1|cerceveclk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(2),
	datab => \DSP1|cerceveclk_cnt\(3),
	datac => \DSP1|cerceveclk_cnt\(0),
	datad => \DSP1|cerceveclk_cnt\(1),
	combout => \DSP1|Equal7~0_combout\);

-- Location: LCCOMB_X39_Y23_N30
\DSP1|Equal7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~3_combout\ = (\DSP1|cerceveclk_cnt\(12) & (!\DSP1|cerceveclk_cnt\(13) & (!\DSP1|cerceveclk_cnt\(15) & !\DSP1|cerceveclk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(12),
	datab => \DSP1|cerceveclk_cnt\(13),
	datac => \DSP1|cerceveclk_cnt\(15),
	datad => \DSP1|cerceveclk_cnt\(14),
	combout => \DSP1|Equal7~3_combout\);

-- Location: LCCOMB_X40_Y24_N2
\DSP1|cerceveclk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~2_combout\ = (\DSP1|Add4~12_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|Add4~12_combout\,
	datad => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~2_combout\);

-- Location: FF_X40_Y24_N3
\DSP1|cerceveclk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(6));

-- Location: LCCOMB_X40_Y24_N20
\DSP1|cerceveclk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|cerceveclk_cnt~1_combout\ = (\DSP1|Add4~8_combout\ & !\DSP1|Equal7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Add4~8_combout\,
	datad => \DSP1|Equal7~8_combout\,
	combout => \DSP1|cerceveclk_cnt~1_combout\);

-- Location: FF_X40_Y24_N21
\DSP1|cerceveclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|cerceveclk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|cerceveclk_cnt\(4));

-- Location: LCCOMB_X40_Y24_N10
\DSP1|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~1_combout\ = (\DSP1|cerceveclk_cnt\(7) & (\DSP1|cerceveclk_cnt\(6) & (!\DSP1|cerceveclk_cnt\(5) & \DSP1|cerceveclk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|cerceveclk_cnt\(7),
	datab => \DSP1|cerceveclk_cnt\(6),
	datac => \DSP1|cerceveclk_cnt\(5),
	datad => \DSP1|cerceveclk_cnt\(4),
	combout => \DSP1|Equal7~1_combout\);

-- Location: LCCOMB_X40_Y24_N24
\DSP1|Equal7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~4_combout\ = (\DSP1|Equal7~2_combout\ & (\DSP1|Equal7~0_combout\ & (\DSP1|Equal7~3_combout\ & \DSP1|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal7~2_combout\,
	datab => \DSP1|Equal7~0_combout\,
	datac => \DSP1|Equal7~3_combout\,
	datad => \DSP1|Equal7~1_combout\,
	combout => \DSP1|Equal7~4_combout\);

-- Location: LCCOMB_X40_Y23_N20
\DSP1|Equal7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Equal7~8_combout\ = (\DSP1|Equal7~5_combout\ & (\DSP1|Equal7~6_combout\ & (\DSP1|Equal7~7_combout\ & \DSP1|Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Equal7~5_combout\,
	datab => \DSP1|Equal7~6_combout\,
	datac => \DSP1|Equal7~7_combout\,
	datad => \DSP1|Equal7~4_combout\,
	combout => \DSP1|Equal7~8_combout\);

-- Location: FF_X40_Y20_N5
\DSP1|RGB_cerceve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[1]~11_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(1));

-- Location: LCCOMB_X40_Y20_N6
\DSP1|RGB_cerceve[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[2]~13_combout\ = (\DSP1|RGB_cerceve\(2) & (!\DSP1|RGB_cerceve[1]~12\)) # (!\DSP1|RGB_cerceve\(2) & ((\DSP1|RGB_cerceve[1]~12\) # (GND)))
-- \DSP1|RGB_cerceve[2]~14\ = CARRY((!\DSP1|RGB_cerceve[1]~12\) # (!\DSP1|RGB_cerceve\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|RGB_cerceve\(2),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[1]~12\,
	combout => \DSP1|RGB_cerceve[2]~13_combout\,
	cout => \DSP1|RGB_cerceve[2]~14\);

-- Location: LCCOMB_X40_Y20_N8
\DSP1|RGB_cerceve[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[3]~15_combout\ = (\DSP1|RGB_cerceve\(3) & (\DSP1|RGB_cerceve[2]~14\ $ (GND))) # (!\DSP1|RGB_cerceve\(3) & (!\DSP1|RGB_cerceve[2]~14\ & VCC))
-- \DSP1|RGB_cerceve[3]~16\ = CARRY((\DSP1|RGB_cerceve\(3) & !\DSP1|RGB_cerceve[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|RGB_cerceve\(3),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[2]~14\,
	combout => \DSP1|RGB_cerceve[3]~15_combout\,
	cout => \DSP1|RGB_cerceve[3]~16\);

-- Location: FF_X40_Y20_N9
\DSP1|RGB_cerceve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[3]~15_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(3));

-- Location: LCCOMB_X40_Y20_N10
\DSP1|RGB_cerceve[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[4]~17_combout\ = (\DSP1|RGB_cerceve\(4) & (!\DSP1|RGB_cerceve[3]~16\)) # (!\DSP1|RGB_cerceve\(4) & ((\DSP1|RGB_cerceve[3]~16\) # (GND)))
-- \DSP1|RGB_cerceve[4]~18\ = CARRY((!\DSP1|RGB_cerceve[3]~16\) # (!\DSP1|RGB_cerceve\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|RGB_cerceve\(4),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[3]~16\,
	combout => \DSP1|RGB_cerceve[4]~17_combout\,
	cout => \DSP1|RGB_cerceve[4]~18\);

-- Location: LCCOMB_X40_Y20_N12
\DSP1|RGB_cerceve[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[5]~19_combout\ = (\DSP1|RGB_cerceve\(5) & (\DSP1|RGB_cerceve[4]~18\ $ (GND))) # (!\DSP1|RGB_cerceve\(5) & (!\DSP1|RGB_cerceve[4]~18\ & VCC))
-- \DSP1|RGB_cerceve[5]~20\ = CARRY((\DSP1|RGB_cerceve\(5) & !\DSP1|RGB_cerceve[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|RGB_cerceve\(5),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[4]~18\,
	combout => \DSP1|RGB_cerceve[5]~19_combout\,
	cout => \DSP1|RGB_cerceve[5]~20\);

-- Location: LCCOMB_X40_Y20_N14
\DSP1|RGB_cerceve[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[6]~21_combout\ = (\DSP1|RGB_cerceve\(6) & (!\DSP1|RGB_cerceve[5]~20\)) # (!\DSP1|RGB_cerceve\(6) & ((\DSP1|RGB_cerceve[5]~20\) # (GND)))
-- \DSP1|RGB_cerceve[6]~22\ = CARRY((!\DSP1|RGB_cerceve[5]~20\) # (!\DSP1|RGB_cerceve\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|RGB_cerceve\(6),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[5]~20\,
	combout => \DSP1|RGB_cerceve[6]~21_combout\,
	cout => \DSP1|RGB_cerceve[6]~22\);

-- Location: FF_X40_Y20_N15
\DSP1|RGB_cerceve[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[6]~21_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(6));

-- Location: LCCOMB_X40_Y20_N16
\DSP1|RGB_cerceve[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[7]~23_combout\ = (\DSP1|RGB_cerceve\(7) & (\DSP1|RGB_cerceve[6]~22\ $ (GND))) # (!\DSP1|RGB_cerceve\(7) & (!\DSP1|RGB_cerceve[6]~22\ & VCC))
-- \DSP1|RGB_cerceve[7]~24\ = CARRY((\DSP1|RGB_cerceve\(7) & !\DSP1|RGB_cerceve[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|RGB_cerceve\(7),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[6]~22\,
	combout => \DSP1|RGB_cerceve[7]~23_combout\,
	cout => \DSP1|RGB_cerceve[7]~24\);

-- Location: FF_X40_Y20_N17
\DSP1|RGB_cerceve[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[7]~23_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(7));

-- Location: LCCOMB_X40_Y20_N18
\DSP1|RGB_cerceve[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[8]~25_combout\ = (\DSP1|RGB_cerceve\(8) & (!\DSP1|RGB_cerceve[7]~24\)) # (!\DSP1|RGB_cerceve\(8) & ((\DSP1|RGB_cerceve[7]~24\) # (GND)))
-- \DSP1|RGB_cerceve[8]~26\ = CARRY((!\DSP1|RGB_cerceve[7]~24\) # (!\DSP1|RGB_cerceve\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|RGB_cerceve\(8),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[7]~24\,
	combout => \DSP1|RGB_cerceve[8]~25_combout\,
	cout => \DSP1|RGB_cerceve[8]~26\);

-- Location: FF_X40_Y20_N19
\DSP1|RGB_cerceve[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[8]~25_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(8));

-- Location: FF_X40_Y22_N13
\DSP1|R_cerceve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(8),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R_cerceve\(0));

-- Location: LCCOMB_X39_Y19_N24
\DSP1|process_5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~44_combout\ = (\DSP1|hcntr\(6) & (\DSP1|LessThan43~0_combout\ & (\DSP1|hcntr\(3) & \DSP1|process_5~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(6),
	datab => \DSP1|LessThan43~0_combout\,
	datac => \DSP1|hcntr\(3),
	datad => \DSP1|process_5~31_combout\,
	combout => \DSP1|process_5~44_combout\);

-- Location: LCCOMB_X39_Y22_N6
\DSP1|process_5~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~45_combout\ = (\DSP1|hcntr\(9) & ((\DSP1|hcntr\(7)) # ((\DSP1|process_5~44_combout\) # (\DSP1|hcntr\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(7),
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|process_5~44_combout\,
	datad => \DSP1|hcntr\(8),
	combout => \DSP1|process_5~45_combout\);

-- Location: LCCOMB_X37_Y18_N4
\DSP1|process_5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~42_combout\ = (\DSP1|vcnt\(3) & (!\DSP1|vcnt\(2) & (!\DSP1|vcnt\(1)))) # (!\DSP1|vcnt\(3) & ((\DSP1|vcnt\(2)) # ((\DSP1|vcnt\(1)) # (\DSP1|vcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|vcnt\(3),
	datab => \DSP1|vcnt\(2),
	datac => \DSP1|vcnt\(1),
	datad => \DSP1|vcnt\(0),
	combout => \DSP1|process_5~42_combout\);

-- Location: LCCOMB_X38_Y18_N26
\DSP1|process_5~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~43_combout\ = (\DSP1|process_5~41_combout\) # ((\DSP1|process_5~4_combout\ & (\DSP1|process_5~42_combout\ & \DSP1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~41_combout\,
	datab => \DSP1|process_5~4_combout\,
	datac => \DSP1|process_5~42_combout\,
	datad => \DSP1|Equal1~0_combout\,
	combout => \DSP1|process_5~43_combout\);

-- Location: LCCOMB_X39_Y22_N20
\DSP1|process_5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~46_combout\ = (!\DSP1|process_5~45_combout\ & (\DSP1|process_5~43_combout\ & ((\DSP1|LessThan44~1_combout\) # (\DSP1|hcntr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|LessThan44~1_combout\,
	datab => \DSP1|hcntr\(9),
	datac => \DSP1|process_5~45_combout\,
	datad => \DSP1|process_5~43_combout\,
	combout => \DSP1|process_5~46_combout\);

-- Location: LCCOMB_X40_Y22_N12
\DSP1|R~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~32_combout\ = (!\DSP1|vcnt\(9) & (\DSP1|R_cerceve\(0) & ((\DSP1|process_5~39_combout\) # (\DSP1|process_5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~39_combout\,
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|R_cerceve\(0),
	datad => \DSP1|process_5~46_combout\,
	combout => \DSP1|R~32_combout\);

-- Location: LCCOMB_X39_Y22_N8
\CG2|ColorMode[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|ColorMode[0]~feeder_combout\ = \CG2|R_out[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CG2|R_out[0]~0_combout\,
	combout => \CG2|ColorMode[0]~feeder_combout\);

-- Location: FF_X39_Y22_N9
\CG2|ColorMode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|button_out_buffer~clkctrl_outclk\,
	d => \CG2|ColorMode[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG2|ColorMode\(0));

-- Location: LCCOMB_X39_Y22_N24
\CG2|ColorMode~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|ColorMode~1_combout\ = (!\CG2|ColorMode\(2) & (\CG2|ColorMode\(1) $ (\CG2|ColorMode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|ColorMode\(2),
	datac => \CG2|ColorMode\(1),
	datad => \CG2|ColorMode\(0),
	combout => \CG2|ColorMode~1_combout\);

-- Location: FF_X39_Y22_N25
\CG2|ColorMode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|button_out_buffer~clkctrl_outclk\,
	d => \CG2|ColorMode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG2|ColorMode\(1));

-- Location: LCCOMB_X39_Y22_N18
\CG2|R_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|R_out[0]~0_combout\ = (!\CG2|ColorMode\(0) & ((!\CG2|ColorMode\(1)) # (!\CG2|ColorMode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|ColorMode\(2),
	datac => \CG2|ColorMode\(0),
	datad => \CG2|ColorMode\(1),
	combout => \CG2|R_out[0]~0_combout\);

-- Location: LCCOMB_X40_Y22_N14
\DSP1|R~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~33_combout\ = (\DSP1|digIn\(3) & ((!\CG2|R_out[0]~0_combout\))) # (!\DSP1|digIn\(3) & (!\DSP1|digIn\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datad => \CG2|R_out[0]~0_combout\,
	combout => \DSP1|R~33_combout\);

-- Location: LCCOMB_X40_Y22_N16
\DSP1|R~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~34_combout\ = (\DSP1|R[1]~2_combout\ & (((\DSP1|R~33_combout\ & \DSP1|R[1]~30_combout\)))) # (!\DSP1|R[1]~2_combout\ & (\DSP1|R~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~2_combout\,
	datab => \DSP1|R~32_combout\,
	datac => \DSP1|R~33_combout\,
	datad => \DSP1|R[1]~30_combout\,
	combout => \DSP1|R~34_combout\);

-- Location: LCCOMB_X40_Y22_N10
\DSP1|R~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~35_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|R~34_combout\)))) # (!\DSP1|R[1]~31_combout\ & ((\DSP1|R~34_combout\ & ((!\CG1|R_out[0]~0_combout\))) # (!\DSP1|R~34_combout\ & (\DSP1|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux24~0_combout\,
	datab => \CG1|R_out[0]~0_combout\,
	datac => \DSP1|R[1]~31_combout\,
	datad => \DSP1|R~34_combout\,
	combout => \DSP1|R~35_combout\);

-- Location: LCCOMB_X40_Y22_N26
\DSP1|R~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~37_combout\ = (\DSP1|R~36_combout\ & (\DSP1|clknew~q\)) # (!\DSP1|R~36_combout\ & ((\DSP1|R~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|R~36_combout\,
	datac => \DSP1|clknew~q\,
	datad => \DSP1|R~35_combout\,
	combout => \DSP1|R~37_combout\);

-- Location: LCCOMB_X39_Y19_N18
\DSP1|process_5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|process_5~62_combout\ = (\DSP1|LessThan8~1_combout\ & (((!\DSP1|hcntr\(8) & !\DSP1|hcntr\(7))) # (!\DSP1|hcntr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|hcntr\(8),
	datab => \DSP1|hcntr\(7),
	datac => \DSP1|LessThan8~1_combout\,
	datad => \DSP1|hcntr\(9),
	combout => \DSP1|process_5~62_combout\);

-- Location: DDIOOUTCELL_X41_Y23_N25
\DSP1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|R~37_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R\(0));

-- Location: LCCOMB_X40_Y20_N20
\DSP1|RGB_cerceve[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[9]~27_combout\ = (\DSP1|RGB_cerceve\(9) & (\DSP1|RGB_cerceve[8]~26\ $ (GND))) # (!\DSP1|RGB_cerceve\(9) & (!\DSP1|RGB_cerceve[8]~26\ & VCC))
-- \DSP1|RGB_cerceve[9]~28\ = CARRY((\DSP1|RGB_cerceve\(9) & !\DSP1|RGB_cerceve[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|RGB_cerceve\(9),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[8]~26\,
	combout => \DSP1|RGB_cerceve[9]~27_combout\,
	cout => \DSP1|RGB_cerceve[9]~28\);

-- Location: FF_X40_Y20_N21
\DSP1|RGB_cerceve[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[9]~27_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(9));

-- Location: FF_X40_Y22_N9
\DSP1|R_cerceve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(9),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R_cerceve\(1));

-- Location: LCCOMB_X40_Y22_N8
\DSP1|R~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~38_combout\ = (!\DSP1|vcnt\(9) & (\DSP1|R_cerceve\(1) & ((\DSP1|process_5~39_combout\) # (\DSP1|process_5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~39_combout\,
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|R_cerceve\(1),
	datad => \DSP1|process_5~46_combout\,
	combout => \DSP1|R~38_combout\);

-- Location: LCCOMB_X39_Y21_N30
\DSP1|R[1]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~40_combout\ = (\DSP1|R[1]~2_combout\ & ((\DSP1|digIn\(2)) # ((\DSP1|digIn\(3)) # (!\DSP1|R[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(2),
	datab => \DSP1|digIn\(3),
	datac => \DSP1|R[1]~2_combout\,
	datad => \DSP1|R[1]~30_combout\,
	combout => \DSP1|R[1]~40_combout\);

-- Location: LCCOMB_X40_Y22_N18
\DSP1|R[1]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R[1]~39_combout\ = ((\DSP1|digIn\(3) & \DSP1|R[1]~30_combout\)) # (!\DSP1|R[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~2_combout\,
	datab => \DSP1|digIn\(3),
	datad => \DSP1|R[1]~30_combout\,
	combout => \DSP1|R[1]~39_combout\);

-- Location: LCCOMB_X40_Y22_N28
\DSP1|R~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~41_combout\ = (\DSP1|R[1]~40_combout\ & (!\CG2|R_out[0]~0_combout\ & ((\DSP1|R[1]~39_combout\)))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|R~38_combout\) # (!\DSP1|R[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|R_out[0]~0_combout\,
	datab => \DSP1|R~38_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|R[1]~39_combout\,
	combout => \DSP1|R~41_combout\);

-- Location: LCCOMB_X40_Y22_N2
\DSP1|R~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~42_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|R~41_combout\)))) # (!\DSP1|R[1]~31_combout\ & ((\DSP1|R~41_combout\ & ((!\CG1|R_out[0]~0_combout\))) # (!\DSP1|R~41_combout\ & (\DSP1|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux24~0_combout\,
	datab => \CG1|R_out[0]~0_combout\,
	datac => \DSP1|R[1]~31_combout\,
	datad => \DSP1|R~41_combout\,
	combout => \DSP1|R~42_combout\);

-- Location: LCCOMB_X40_Y22_N24
\DSP1|R~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~43_combout\ = (\DSP1|R~36_combout\ & (\DSP1|clknew~q\)) # (!\DSP1|R~36_combout\ & ((\DSP1|R~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|R~36_combout\,
	datac => \DSP1|clknew~q\,
	datad => \DSP1|R~42_combout\,
	combout => \DSP1|R~43_combout\);

-- Location: DDIOOUTCELL_X41_Y25_N4
\DSP1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|R~43_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R\(1));

-- Location: LCCOMB_X39_Y21_N16
\DSP1|B[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B[2]~1_combout\ = (\DSP1|R[1]~31_combout\ & ((\DSP1|R[1]~40_combout\ & ((!\DSP1|R[1]~30_combout\))) # (!\DSP1|R[1]~40_combout\ & (!\DSP1|B[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|B[2]~0_combout\,
	datab => \DSP1|R[1]~30_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|R[1]~31_combout\,
	combout => \DSP1|B[2]~1_combout\);

-- Location: LCCOMB_X39_Y22_N28
\DSP1|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux24~0_combout\ = (\DSP1|digIn\(1) & ((\DSP1|digIn\(0) & (!\CG1|R_out[0]~0_combout\)) # (!\DSP1|digIn\(0) & ((!\CG2|R_out[0]~0_combout\))))) # (!\DSP1|digIn\(1) & (((!\CG1|R_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|digIn\(0),
	datac => \CG1|R_out[0]~0_combout\,
	datad => \CG2|R_out[0]~0_combout\,
	combout => \DSP1|Mux24~0_combout\);

-- Location: LCCOMB_X40_Y20_N22
\DSP1|RGB_cerceve[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[10]~29_combout\ = (\DSP1|RGB_cerceve\(10) & (!\DSP1|RGB_cerceve[9]~28\)) # (!\DSP1|RGB_cerceve\(10) & ((\DSP1|RGB_cerceve[9]~28\) # (GND)))
-- \DSP1|RGB_cerceve[10]~30\ = CARRY((!\DSP1|RGB_cerceve[9]~28\) # (!\DSP1|RGB_cerceve\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|RGB_cerceve\(10),
	datad => VCC,
	cin => \DSP1|RGB_cerceve[9]~28\,
	combout => \DSP1|RGB_cerceve[10]~29_combout\,
	cout => \DSP1|RGB_cerceve[10]~30\);

-- Location: FF_X40_Y20_N23
\DSP1|RGB_cerceve[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[10]~29_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(10));

-- Location: FF_X40_Y21_N21
\DSP1|R_cerceve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(10),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R_cerceve\(2));

-- Location: LCCOMB_X40_Y21_N20
\DSP1|R~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~44_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|R_cerceve\(2)) # (\DSP1|R[1]~40_combout\)))) # (!\DSP1|R[1]~31_combout\ & (!\CG1|R_out[0]~0_combout\ & ((!\DSP1|R[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG1|R_out[0]~0_combout\,
	datac => \DSP1|R_cerceve\(2),
	datad => \DSP1|R[1]~40_combout\,
	combout => \DSP1|R~44_combout\);

-- Location: LCCOMB_X40_Y21_N18
\DSP1|R~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~45_combout\ = (\DSP1|R[1]~40_combout\ & ((\DSP1|R~44_combout\ & (!\CG2|R_out[0]~0_combout\)) # (!\DSP1|R~44_combout\ & ((\DSP1|Mux24~0_combout\))))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|R~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|R_out[0]~0_combout\,
	datab => \DSP1|R[1]~40_combout\,
	datac => \DSP1|Mux24~0_combout\,
	datad => \DSP1|R~44_combout\,
	combout => \DSP1|R~45_combout\);

-- Location: LCCOMB_X40_Y21_N0
\DSP1|R~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~46_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|R~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|R~45_combout\,
	combout => \DSP1|R~46_combout\);

-- Location: DDIOOUTCELL_X41_Y22_N4
\DSP1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|R~46_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R\(2));

-- Location: LCCOMB_X40_Y20_N24
\DSP1|RGB_cerceve[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[11]~31_combout\ = \DSP1|RGB_cerceve[10]~30\ $ (!\DSP1|RGB_cerceve\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DSP1|RGB_cerceve\(11),
	cin => \DSP1|RGB_cerceve[10]~30\,
	combout => \DSP1|RGB_cerceve[11]~31_combout\);

-- Location: FF_X40_Y20_N25
\DSP1|RGB_cerceve[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[11]~31_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(11));

-- Location: FF_X40_Y21_N7
\DSP1|R_cerceve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(11),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R_cerceve\(3));

-- Location: LCCOMB_X40_Y21_N28
\DSP1|R~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~47_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|R[1]~40_combout\)))) # (!\DSP1|R[1]~31_combout\ & ((\DSP1|R[1]~40_combout\ & (\DSP1|Mux24~0_combout\)) # (!\DSP1|R[1]~40_combout\ & ((!\CG1|R_out[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux24~0_combout\,
	datab => \CG1|R_out[0]~0_combout\,
	datac => \DSP1|R[1]~31_combout\,
	datad => \DSP1|R[1]~40_combout\,
	combout => \DSP1|R~47_combout\);

-- Location: LCCOMB_X40_Y21_N6
\DSP1|R~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~48_combout\ = (\DSP1|R[1]~31_combout\ & ((\DSP1|R~47_combout\ & (!\CG2|R_out[0]~0_combout\)) # (!\DSP1|R~47_combout\ & ((\DSP1|R_cerceve\(3)))))) # (!\DSP1|R[1]~31_combout\ & (((\DSP1|R~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG2|R_out[0]~0_combout\,
	datac => \DSP1|R_cerceve\(3),
	datad => \DSP1|R~47_combout\,
	combout => \DSP1|R~48_combout\);

-- Location: LCCOMB_X40_Y21_N26
\DSP1|R~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|R~49_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|R~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|R~48_combout\,
	combout => \DSP1|R~49_combout\);

-- Location: DDIOOUTCELL_X41_Y21_N25
\DSP1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|R~49_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|R\(3));

-- Location: LCCOMB_X39_Y22_N2
\CG1|G_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG1|G_out[0]~0_combout\ = (\CG1|ColorMode\(2) & (!\CG1|ColorMode\(1) & !\CG1|ColorMode\(0))) # (!\CG1|ColorMode\(2) & (\CG1|ColorMode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG1|ColorMode\(2),
	datac => \CG1|ColorMode\(1),
	datad => \CG1|ColorMode\(0),
	combout => \CG1|G_out[0]~0_combout\);

-- Location: LCCOMB_X39_Y22_N26
\CG2|ColorMode~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|ColorMode~0_combout\ = (\CG2|ColorMode\(1) & (!\CG2|ColorMode\(2) & \CG2|ColorMode\(0))) # (!\CG2|ColorMode\(1) & (\CG2|ColorMode\(2) & !\CG2|ColorMode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CG2|ColorMode\(1),
	datac => \CG2|ColorMode\(2),
	datad => \CG2|ColorMode\(0),
	combout => \CG2|ColorMode~0_combout\);

-- Location: FF_X39_Y22_N27
\CG2|ColorMode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KD5|button_out_buffer~clkctrl_outclk\,
	d => \CG2|ColorMode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CG2|ColorMode\(2));

-- Location: LCCOMB_X39_Y22_N16
\CG2|G_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|G_out[0]~0_combout\ = (\CG2|ColorMode\(2) & (!\CG2|ColorMode\(0) & !\CG2|ColorMode\(1))) # (!\CG2|ColorMode\(2) & ((\CG2|ColorMode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CG2|ColorMode\(0),
	datac => \CG2|ColorMode\(2),
	datad => \CG2|ColorMode\(1),
	combout => \CG2|G_out[0]~0_combout\);

-- Location: LCCOMB_X39_Y22_N30
\DSP1|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux20~0_combout\ = (\DSP1|digIn\(1) & ((\DSP1|digIn\(0) & (\CG1|G_out[0]~0_combout\)) # (!\DSP1|digIn\(0) & ((\CG2|G_out[0]~0_combout\))))) # (!\DSP1|digIn\(1) & (\CG1|G_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \CG1|G_out[0]~0_combout\,
	datac => \DSP1|digIn\(0),
	datad => \CG2|G_out[0]~0_combout\,
	combout => \DSP1|Mux20~0_combout\);

-- Location: FF_X40_Y20_N11
\DSP1|RGB_cerceve[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[4]~17_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(4));

-- Location: FF_X40_Y21_N13
\DSP1|G_cerceve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(4),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G_cerceve\(0));

-- Location: LCCOMB_X40_Y21_N12
\DSP1|G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~0_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|G_cerceve\(0)) # (\DSP1|R[1]~40_combout\)))) # (!\DSP1|R[1]~31_combout\ & (\CG1|G_out[0]~0_combout\ & ((!\DSP1|R[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG1|G_out[0]~0_combout\,
	datac => \DSP1|G_cerceve\(0),
	datad => \DSP1|R[1]~40_combout\,
	combout => \DSP1|G~0_combout\);

-- Location: LCCOMB_X40_Y21_N10
\DSP1|G~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~1_combout\ = (\DSP1|R[1]~40_combout\ & ((\DSP1|G~0_combout\ & (\CG2|G_out[0]~0_combout\)) # (!\DSP1|G~0_combout\ & ((\DSP1|Mux20~0_combout\))))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|G_out[0]~0_combout\,
	datab => \DSP1|R[1]~40_combout\,
	datac => \DSP1|Mux20~0_combout\,
	datad => \DSP1|G~0_combout\,
	combout => \DSP1|G~1_combout\);

-- Location: LCCOMB_X40_Y21_N4
\DSP1|G~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~2_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|G~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|G~1_combout\,
	combout => \DSP1|G~2_combout\);

-- Location: DDIOOUTCELL_X41_Y20_N4
\DSP1|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|G~2_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G\(0));

-- Location: FF_X40_Y20_N13
\DSP1|RGB_cerceve[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[5]~19_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(5));

-- Location: FF_X40_Y21_N3
\DSP1|G_cerceve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(5),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G_cerceve\(1));

-- Location: LCCOMB_X39_Y21_N14
\DSP1|G~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~3_combout\ = (\DSP1|R[1]~40_combout\ & (((\DSP1|Mux20~0_combout\) # (\DSP1|R[1]~31_combout\)))) # (!\DSP1|R[1]~40_combout\ & (\CG1|G_out[0]~0_combout\ & ((!\DSP1|R[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~40_combout\,
	datab => \CG1|G_out[0]~0_combout\,
	datac => \DSP1|Mux20~0_combout\,
	datad => \DSP1|R[1]~31_combout\,
	combout => \DSP1|G~3_combout\);

-- Location: LCCOMB_X40_Y21_N2
\DSP1|G~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~4_combout\ = (\DSP1|R[1]~31_combout\ & ((\DSP1|G~3_combout\ & (\CG2|G_out[0]~0_combout\)) # (!\DSP1|G~3_combout\ & ((\DSP1|G_cerceve\(1)))))) # (!\DSP1|R[1]~31_combout\ & (((\DSP1|G~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG2|G_out[0]~0_combout\,
	datac => \DSP1|G_cerceve\(1),
	datad => \DSP1|G~3_combout\,
	combout => \DSP1|G~4_combout\);

-- Location: LCCOMB_X40_Y21_N8
\DSP1|G~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~5_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|G~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|G~4_combout\,
	combout => \DSP1|G~5_combout\);

-- Location: DDIOOUTCELL_X41_Y24_N25
\DSP1|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|G~5_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G\(1));

-- Location: FF_X40_Y21_N23
\DSP1|G_cerceve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(6),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G_cerceve\(2));

-- Location: LCCOMB_X40_Y21_N22
\DSP1|G~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~6_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|G_cerceve\(2)) # (\DSP1|R[1]~40_combout\)))) # (!\DSP1|R[1]~31_combout\ & (\CG1|G_out[0]~0_combout\ & ((!\DSP1|R[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG1|G_out[0]~0_combout\,
	datac => \DSP1|G_cerceve\(2),
	datad => \DSP1|R[1]~40_combout\,
	combout => \DSP1|G~6_combout\);

-- Location: LCCOMB_X40_Y21_N24
\DSP1|G~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~7_combout\ = (\DSP1|G~6_combout\ & (((\CG2|G_out[0]~0_combout\) # (!\DSP1|R[1]~40_combout\)))) # (!\DSP1|G~6_combout\ & (\DSP1|Mux20~0_combout\ & ((\DSP1|R[1]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux20~0_combout\,
	datab => \CG2|G_out[0]~0_combout\,
	datac => \DSP1|G~6_combout\,
	datad => \DSP1|R[1]~40_combout\,
	combout => \DSP1|G~7_combout\);

-- Location: LCCOMB_X40_Y21_N14
\DSP1|G~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~8_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|G~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|G~7_combout\,
	combout => \DSP1|G~8_combout\);

-- Location: DDIOOUTCELL_X41_Y21_N18
\DSP1|G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|G~8_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G\(2));

-- Location: FF_X40_Y21_N17
\DSP1|G_cerceve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(7),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G_cerceve\(3));

-- Location: LCCOMB_X40_Y21_N16
\DSP1|G~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~9_combout\ = (\DSP1|R[1]~31_combout\ & ((\DSP1|G~3_combout\ & (\CG2|G_out[0]~0_combout\)) # (!\DSP1|G~3_combout\ & ((\DSP1|G_cerceve\(3)))))) # (!\DSP1|R[1]~31_combout\ & (((\DSP1|G~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG2|G_out[0]~0_combout\,
	datac => \DSP1|G_cerceve\(3),
	datad => \DSP1|G~3_combout\,
	combout => \DSP1|G~9_combout\);

-- Location: LCCOMB_X40_Y21_N30
\DSP1|G~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|G~10_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|G~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|G~9_combout\,
	combout => \DSP1|G~10_combout\);

-- Location: DDIOOUTCELL_X41_Y20_N25
\DSP1|G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|G~10_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|G\(3));

-- Location: LCCOMB_X39_Y22_N0
\CG2|B_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG2|B_out[0]~0_combout\ = (\CG2|ColorMode\(2)) # ((!\CG2|ColorMode\(1) & !\CG2|ColorMode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|ColorMode\(2),
	datab => \CG2|ColorMode\(1),
	datad => \CG2|ColorMode\(0),
	combout => \CG2|B_out[0]~0_combout\);

-- Location: LCCOMB_X39_Y22_N12
\CG1|B_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CG1|B_out[0]~0_combout\ = (\CG1|ColorMode\(2)) # ((!\CG1|ColorMode\(0) & !\CG1|ColorMode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CG1|ColorMode\(0),
	datac => \CG1|ColorMode\(2),
	datad => \CG1|ColorMode\(1),
	combout => \CG1|B_out[0]~0_combout\);

-- Location: LCCOMB_X40_Y20_N28
\DSP1|RGB_cerceve[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|RGB_cerceve[0]~33_combout\ = !\DSP1|RGB_cerceve\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|RGB_cerceve\(0),
	combout => \DSP1|RGB_cerceve[0]~33_combout\);

-- Location: FF_X40_Y20_N29
\DSP1|RGB_cerceve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[0]~33_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(0));

-- Location: FF_X40_Y19_N29
\DSP1|B_cerceve[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(0),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B_cerceve\(0));

-- Location: LCCOMB_X40_Y19_N28
\DSP1|B~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~2_combout\ = (\DSP1|R[1]~40_combout\ & (((\DSP1|R[1]~31_combout\)))) # (!\DSP1|R[1]~40_combout\ & ((\DSP1|R[1]~31_combout\ & ((\DSP1|B_cerceve\(0)))) # (!\DSP1|R[1]~31_combout\ & (\CG1|B_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~40_combout\,
	datab => \CG1|B_out[0]~0_combout\,
	datac => \DSP1|B_cerceve\(0),
	datad => \DSP1|R[1]~31_combout\,
	combout => \DSP1|B~2_combout\);

-- Location: LCCOMB_X40_Y19_N2
\DSP1|B~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~3_combout\ = (\DSP1|R[1]~40_combout\ & ((\DSP1|B~2_combout\ & ((\CG2|B_out[0]~0_combout\))) # (!\DSP1|B~2_combout\ & (\DSP1|Mux16~0_combout\)))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|B~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux16~0_combout\,
	datab => \CG2|B_out[0]~0_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|B~2_combout\,
	combout => \DSP1|B~3_combout\);

-- Location: LCCOMB_X40_Y19_N12
\DSP1|B~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~4_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|B~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|B~3_combout\,
	combout => \DSP1|B~4_combout\);

-- Location: DDIOOUTCELL_X41_Y19_N18
\DSP1|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|B~4_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B\(0));

-- Location: FF_X40_Y19_N19
\DSP1|B_cerceve[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(1),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B_cerceve\(1));

-- Location: LCCOMB_X39_Y22_N10
\DSP1|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|Mux16~0_combout\ = (\DSP1|digIn\(1) & ((\DSP1|digIn\(0) & ((\CG1|B_out[0]~0_combout\))) # (!\DSP1|digIn\(0) & (\CG2|B_out[0]~0_combout\)))) # (!\DSP1|digIn\(1) & (((\CG1|B_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|digIn\(1),
	datab => \DSP1|digIn\(0),
	datac => \CG2|B_out[0]~0_combout\,
	datad => \CG1|B_out[0]~0_combout\,
	combout => \DSP1|Mux16~0_combout\);

-- Location: LCCOMB_X40_Y19_N0
\DSP1|B~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~5_combout\ = (\DSP1|R[1]~40_combout\ & (((\DSP1|Mux16~0_combout\) # (\DSP1|R[1]~31_combout\)))) # (!\DSP1|R[1]~40_combout\ & (\CG1|B_out[0]~0_combout\ & ((!\DSP1|R[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG1|B_out[0]~0_combout\,
	datab => \DSP1|Mux16~0_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|R[1]~31_combout\,
	combout => \DSP1|B~5_combout\);

-- Location: LCCOMB_X40_Y19_N18
\DSP1|B~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~6_combout\ = (\DSP1|R[1]~31_combout\ & ((\DSP1|B~5_combout\ & (\CG2|B_out[0]~0_combout\)) # (!\DSP1|B~5_combout\ & ((\DSP1|B_cerceve\(1)))))) # (!\DSP1|R[1]~31_combout\ & (((\DSP1|B~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~31_combout\,
	datab => \CG2|B_out[0]~0_combout\,
	datac => \DSP1|B_cerceve\(1),
	datad => \DSP1|B~5_combout\,
	combout => \DSP1|B~6_combout\);

-- Location: LCCOMB_X40_Y19_N26
\DSP1|B~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~7_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|B~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|B~6_combout\,
	combout => \DSP1|B~7_combout\);

-- Location: DDIOOUTCELL_X41_Y19_N11
\DSP1|B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|B~7_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B\(1));

-- Location: FF_X40_Y20_N7
\DSP1|RGB_cerceve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|RGB_cerceve[2]~13_combout\,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|RGB_cerceve\(2));

-- Location: FF_X40_Y19_N25
\DSP1|B_cerceve[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(2),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B_cerceve\(2));

-- Location: LCCOMB_X40_Y19_N24
\DSP1|B~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~8_combout\ = (\DSP1|R[1]~40_combout\ & (((\DSP1|R[1]~31_combout\)))) # (!\DSP1|R[1]~40_combout\ & ((\DSP1|R[1]~31_combout\ & ((\DSP1|B_cerceve\(2)))) # (!\DSP1|R[1]~31_combout\ & (\CG1|B_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|R[1]~40_combout\,
	datab => \CG1|B_out[0]~0_combout\,
	datac => \DSP1|B_cerceve\(2),
	datad => \DSP1|R[1]~31_combout\,
	combout => \DSP1|B~8_combout\);

-- Location: LCCOMB_X40_Y19_N10
\DSP1|B~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~9_combout\ = (\DSP1|R[1]~40_combout\ & ((\DSP1|B~8_combout\ & ((\CG2|B_out[0]~0_combout\))) # (!\DSP1|B~8_combout\ & (\DSP1|Mux16~0_combout\)))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|B~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux16~0_combout\,
	datab => \CG2|B_out[0]~0_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|B~8_combout\,
	combout => \DSP1|B~9_combout\);

-- Location: LCCOMB_X40_Y19_N8
\DSP1|B~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~10_combout\ = (!\DSP1|B[2]~1_combout\ & \DSP1|B~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DSP1|B[2]~1_combout\,
	datad => \DSP1|B~9_combout\,
	combout => \DSP1|B~10_combout\);

-- Location: DDIOOUTCELL_X41_Y19_N4
\DSP1|B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|B~10_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B\(2));

-- Location: FF_X40_Y22_N5
\DSP1|B_cerceve[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DSP1|RGB_cerceve\(3),
	sload => VCC,
	ena => \DSP1|Equal7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B_cerceve\(3));

-- Location: LCCOMB_X40_Y22_N4
\DSP1|B~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~11_combout\ = (!\DSP1|vcnt\(9) & (\DSP1|B_cerceve\(3) & ((\DSP1|process_5~39_combout\) # (\DSP1|process_5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|process_5~39_combout\,
	datab => \DSP1|vcnt\(9),
	datac => \DSP1|B_cerceve\(3),
	datad => \DSP1|process_5~46_combout\,
	combout => \DSP1|B~11_combout\);

-- Location: LCCOMB_X40_Y22_N6
\DSP1|B~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~12_combout\ = (\DSP1|R[1]~40_combout\ & (\CG2|B_out[0]~0_combout\ & ((\DSP1|R[1]~39_combout\)))) # (!\DSP1|R[1]~40_combout\ & (((\DSP1|B~11_combout\) # (!\DSP1|R[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CG2|B_out[0]~0_combout\,
	datab => \DSP1|B~11_combout\,
	datac => \DSP1|R[1]~40_combout\,
	datad => \DSP1|R[1]~39_combout\,
	combout => \DSP1|B~12_combout\);

-- Location: LCCOMB_X40_Y22_N0
\DSP1|B~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~13_combout\ = (\DSP1|R[1]~31_combout\ & (((\DSP1|B~12_combout\)))) # (!\DSP1|R[1]~31_combout\ & ((\DSP1|B~12_combout\ & ((\CG1|B_out[0]~0_combout\))) # (!\DSP1|B~12_combout\ & (\DSP1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DSP1|Mux16~0_combout\,
	datab => \CG1|B_out[0]~0_combout\,
	datac => \DSP1|R[1]~31_combout\,
	datad => \DSP1|B~12_combout\,
	combout => \DSP1|B~13_combout\);

-- Location: LCCOMB_X40_Y22_N30
\DSP1|B~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DSP1|B~14_combout\ = (\DSP1|R~36_combout\ & (\DSP1|clknew~q\)) # (!\DSP1|R~36_combout\ & ((\DSP1|B~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DSP1|R~36_combout\,
	datac => \DSP1|clknew~q\,
	datad => \DSP1|B~13_combout\,
	combout => \DSP1|B~14_combout\);

-- Location: DDIOOUTCELL_X41_Y21_N11
\DSP1|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DSP1|B~14_combout\,
	ena => \DSP1|process_5~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSP1|B\(3));

-- Location: IOIBUF_X28_Y0_N15
\GPIO_0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\GPIO_0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\GPIO_0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\GPIO_0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\GPIO_0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\GPIO_0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\GPIO_0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\GPIO_0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\GPIO_0[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\GPIO_0[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\GPIO_0[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\GPIO_0[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\GPIO_0[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\GPIO_0[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\GPIO_0[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\GPIO_0[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\GPIO_0[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\GPIO_0[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\GPIO_0[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\GPIO_0[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\GPIO_0[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\GPIO_0[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\GPIO_0[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\GPIO_0[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\GPIO_0[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\GPIO_0[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\GPIO_0[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\GPIO_0[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\GPIO_0[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;
END structure;


