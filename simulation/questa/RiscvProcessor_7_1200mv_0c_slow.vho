-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "02/11/2023 17:34:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RV32I IS
    PORT (
	clk : IN std_logic;
	Inst_addr : IN std_logic_vector(31 DOWNTO 0);
	rst : IN std_logic;
	result : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END RV32I;

-- Design Ports Information
-- Inst_addr[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[8]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[10]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[12]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[13]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[14]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[15]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[16]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[17]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[18]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[19]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[20]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[21]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[22]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[23]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[24]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[25]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[26]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[27]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[28]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[29]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[30]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[31]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inst_addr[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RV32I IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Inst_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_addr[0]~input_o\ : std_logic;
SIGNAL \Inst_addr[1]~input_o\ : std_logic;
SIGNAL \Inst_addr[8]~input_o\ : std_logic;
SIGNAL \Inst_addr[9]~input_o\ : std_logic;
SIGNAL \Inst_addr[10]~input_o\ : std_logic;
SIGNAL \Inst_addr[11]~input_o\ : std_logic;
SIGNAL \Inst_addr[12]~input_o\ : std_logic;
SIGNAL \Inst_addr[13]~input_o\ : std_logic;
SIGNAL \Inst_addr[14]~input_o\ : std_logic;
SIGNAL \Inst_addr[15]~input_o\ : std_logic;
SIGNAL \Inst_addr[16]~input_o\ : std_logic;
SIGNAL \Inst_addr[17]~input_o\ : std_logic;
SIGNAL \Inst_addr[18]~input_o\ : std_logic;
SIGNAL \Inst_addr[19]~input_o\ : std_logic;
SIGNAL \Inst_addr[20]~input_o\ : std_logic;
SIGNAL \Inst_addr[21]~input_o\ : std_logic;
SIGNAL \Inst_addr[22]~input_o\ : std_logic;
SIGNAL \Inst_addr[23]~input_o\ : std_logic;
SIGNAL \Inst_addr[24]~input_o\ : std_logic;
SIGNAL \Inst_addr[25]~input_o\ : std_logic;
SIGNAL \Inst_addr[26]~input_o\ : std_logic;
SIGNAL \Inst_addr[27]~input_o\ : std_logic;
SIGNAL \Inst_addr[28]~input_o\ : std_logic;
SIGNAL \Inst_addr[29]~input_o\ : std_logic;
SIGNAL \Inst_addr[30]~input_o\ : std_logic;
SIGNAL \Inst_addr[31]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \Inst_addr[5]~input_o\ : std_logic;
SIGNAL \Inst_addr[3]~input_o\ : std_logic;
SIGNAL \Inst_addr[7]~input_o\ : std_logic;
SIGNAL \Inst_addr[6]~input_o\ : std_logic;
SIGNAL \instruction_memory_module|Mux7~1_combout\ : std_logic;
SIGNAL \Inst_addr[4]~input_o\ : std_logic;
SIGNAL \Inst_addr[2]~input_o\ : std_logic;
SIGNAL \instruction_memory_module|Mux10~0_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux11~0_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux7~0_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux8~0_combout\ : std_logic;
SIGNAL \register_file|Mux63~12_combout\ : std_logic;
SIGNAL \register_file|Mux63~13_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \register_file|Mux8~7_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][0]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][0]~q\ : std_logic;
SIGNAL \register_file|Mux63~11_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux12~1_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux12~0_combout\ : std_logic;
SIGNAL \instruction_memory_module|Mux12~2_combout\ : std_logic;
SIGNAL \register_file|Mux8~3_combout\ : std_logic;
SIGNAL \register_file|Mux8~4_combout\ : std_logic;
SIGNAL \register_file|Mux8~9_combout\ : std_logic;
SIGNAL \register_file|Mux31~0_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][1]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][1]~q\ : std_logic;
SIGNAL \register_file|Mux62~2_combout\ : std_logic;
SIGNAL \register_file|Mux30~0_combout\ : std_logic;
SIGNAL \ALU|Add0~1\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][2]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][2]~q\ : std_logic;
SIGNAL \register_file|Mux63~7_combout\ : std_logic;
SIGNAL \register_file|Mux63~14_combout\ : std_logic;
SIGNAL \register_file|Mux61~0_combout\ : std_logic;
SIGNAL \register_file|Mux29~0_combout\ : std_logic;
SIGNAL \ALU|Add0~3\ : std_logic;
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][3]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][3]~q\ : std_logic;
SIGNAL \register_file|Mux28~0_combout\ : std_logic;
SIGNAL \register_file|Mux60~0_combout\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][4]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][4]~q\ : std_logic;
SIGNAL \register_file|Mux59~0_combout\ : std_logic;
SIGNAL \register_file|Mux27~0_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][5]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][5]~q\ : std_logic;
SIGNAL \register_file|Mux58~0_combout\ : std_logic;
SIGNAL \register_file|Mux26~0_combout\ : std_logic;
SIGNAL \ALU|Add0~9\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][6]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][6]~q\ : std_logic;
SIGNAL \register_file|Mux25~0_combout\ : std_logic;
SIGNAL \register_file|Mux57~0_combout\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][7]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][7]~q\ : std_logic;
SIGNAL \register_file|Mux24~0_combout\ : std_logic;
SIGNAL \register_file|Mux56~0_combout\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][8]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][8]~q\ : std_logic;
SIGNAL \register_file|Mux23~0_combout\ : std_logic;
SIGNAL \register_file|Mux55~0_combout\ : std_logic;
SIGNAL \ALU|Add0~15\ : std_logic;
SIGNAL \ALU|Add0~16_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][9]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][9]~q\ : std_logic;
SIGNAL \register_file|Mux54~0_combout\ : std_logic;
SIGNAL \register_file|Mux22~0_combout\ : std_logic;
SIGNAL \ALU|Add0~17\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][10]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][10]~q\ : std_logic;
SIGNAL \register_file|Mux53~0_combout\ : std_logic;
SIGNAL \register_file|Mux21~0_combout\ : std_logic;
SIGNAL \ALU|Add0~19\ : std_logic;
SIGNAL \ALU|Add0~20_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][11]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][11]~q\ : std_logic;
SIGNAL \register_file|Mux20~0_combout\ : std_logic;
SIGNAL \register_file|Mux52~0_combout\ : std_logic;
SIGNAL \ALU|Add0~21\ : std_logic;
SIGNAL \ALU|Add0~22_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][12]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][12]~q\ : std_logic;
SIGNAL \register_file|Mux19~0_combout\ : std_logic;
SIGNAL \register_file|Mux51~0_combout\ : std_logic;
SIGNAL \ALU|Add0~23\ : std_logic;
SIGNAL \ALU|Add0~24_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][13]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][13]~q\ : std_logic;
SIGNAL \register_file|Mux50~0_combout\ : std_logic;
SIGNAL \register_file|Mux18~0_combout\ : std_logic;
SIGNAL \ALU|Add0~25\ : std_logic;
SIGNAL \ALU|Add0~26_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][14]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][14]~q\ : std_logic;
SIGNAL \register_file|Mux17~0_combout\ : std_logic;
SIGNAL \register_file|Mux49~0_combout\ : std_logic;
SIGNAL \ALU|Add0~27\ : std_logic;
SIGNAL \ALU|Add0~28_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][15]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][15]~q\ : std_logic;
SIGNAL \register_file|Mux16~0_combout\ : std_logic;
SIGNAL \register_file|Mux48~0_combout\ : std_logic;
SIGNAL \ALU|Add0~29\ : std_logic;
SIGNAL \ALU|Add0~30_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][16]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][16]~q\ : std_logic;
SIGNAL \register_file|Mux15~0_combout\ : std_logic;
SIGNAL \register_file|Mux47~0_combout\ : std_logic;
SIGNAL \ALU|Add0~31\ : std_logic;
SIGNAL \ALU|Add0~32_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][17]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][17]~q\ : std_logic;
SIGNAL \register_file|Mux46~0_combout\ : std_logic;
SIGNAL \register_file|Mux14~0_combout\ : std_logic;
SIGNAL \ALU|Add0~33\ : std_logic;
SIGNAL \ALU|Add0~34_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][18]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][18]~q\ : std_logic;
SIGNAL \register_file|Mux13~0_combout\ : std_logic;
SIGNAL \register_file|Mux45~0_combout\ : std_logic;
SIGNAL \ALU|Add0~35\ : std_logic;
SIGNAL \ALU|Add0~36_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][19]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][19]~q\ : std_logic;
SIGNAL \register_file|Mux44~0_combout\ : std_logic;
SIGNAL \register_file|Mux12~0_combout\ : std_logic;
SIGNAL \ALU|Add0~37\ : std_logic;
SIGNAL \ALU|Add0~38_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][20]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][20]~q\ : std_logic;
SIGNAL \register_file|Mux43~0_combout\ : std_logic;
SIGNAL \register_file|Mux11~0_combout\ : std_logic;
SIGNAL \ALU|Add0~39\ : std_logic;
SIGNAL \ALU|Add0~40_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][21]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][21]~q\ : std_logic;
SIGNAL \register_file|Mux10~0_combout\ : std_logic;
SIGNAL \register_file|Mux42~0_combout\ : std_logic;
SIGNAL \ALU|Add0~41\ : std_logic;
SIGNAL \ALU|Add0~42_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][22]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][22]~q\ : std_logic;
SIGNAL \register_file|Mux41~0_combout\ : std_logic;
SIGNAL \register_file|Mux9~0_combout\ : std_logic;
SIGNAL \ALU|Add0~43\ : std_logic;
SIGNAL \ALU|Add0~44_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][23]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][23]~q\ : std_logic;
SIGNAL \register_file|Mux8~8_combout\ : std_logic;
SIGNAL \register_file|Mux40~0_combout\ : std_logic;
SIGNAL \ALU|Add0~45\ : std_logic;
SIGNAL \ALU|Add0~46_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][24]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][24]~q\ : std_logic;
SIGNAL \register_file|Mux7~0_combout\ : std_logic;
SIGNAL \register_file|Mux39~0_combout\ : std_logic;
SIGNAL \ALU|Add0~47\ : std_logic;
SIGNAL \ALU|Add0~48_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][25]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][25]~q\ : std_logic;
SIGNAL \register_file|Mux38~0_combout\ : std_logic;
SIGNAL \register_file|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|Add0~49\ : std_logic;
SIGNAL \ALU|Add0~50_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][26]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][26]~q\ : std_logic;
SIGNAL \register_file|Mux37~0_combout\ : std_logic;
SIGNAL \register_file|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|Add0~51\ : std_logic;
SIGNAL \ALU|Add0~52_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][27]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][27]~q\ : std_logic;
SIGNAL \register_file|Mux4~0_combout\ : std_logic;
SIGNAL \register_file|Mux36~0_combout\ : std_logic;
SIGNAL \ALU|Add0~53\ : std_logic;
SIGNAL \ALU|Add0~54_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][28]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][28]~q\ : std_logic;
SIGNAL \register_file|Mux3~0_combout\ : std_logic;
SIGNAL \register_file|Mux35~0_combout\ : std_logic;
SIGNAL \ALU|Add0~55\ : std_logic;
SIGNAL \ALU|Add0~56_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][29]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][29]~q\ : std_logic;
SIGNAL \register_file|Mux34~0_combout\ : std_logic;
SIGNAL \register_file|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Add0~57\ : std_logic;
SIGNAL \ALU|Add0~58_combout\ : std_logic;
SIGNAL \register_file|reg_file[16][30]~q\ : std_logic;
SIGNAL \register_file|reg_file[0][30]~q\ : std_logic;
SIGNAL \register_file|Mux33~0_combout\ : std_logic;
SIGNAL \register_file|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|Add0~59\ : std_logic;
SIGNAL \ALU|Add0~60_combout\ : std_logic;
SIGNAL \register_file|reg_file[0][31]~q\ : std_logic;
SIGNAL \register_file|reg_file[16][31]~q\ : std_logic;
SIGNAL \register_file|Mux32~0_combout\ : std_logic;
SIGNAL \register_file|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~61\ : std_logic;
SIGNAL \ALU|Add0~62_combout\ : std_logic;
SIGNAL \instruction_memory_module|ALT_INV_Mux20~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_Inst_addr <= Inst_addr;
ww_rst <= rst;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\instruction_memory_module|ALT_INV_Mux20~0_combout\ <= NOT \instruction_memory_module|Mux20~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~4_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~6_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~8_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~10_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~12_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~14_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~16_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~18_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~20_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~22_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~24_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~26_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~28_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~30_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~32_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~34_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~36_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~38_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~40_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~42_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~44_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~46_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~48_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~50_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~52_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~54_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~56_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~58_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~60_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Add0~62_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOIBUF_X69_Y73_N1
\Inst_addr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(5),
	o => \Inst_addr[5]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\Inst_addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(3),
	o => \Inst_addr[3]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\Inst_addr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(7),
	o => \Inst_addr[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\Inst_addr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(6),
	o => \Inst_addr[6]~input_o\);

-- Location: LCCOMB_X60_Y69_N12
\instruction_memory_module|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux7~1_combout\ = (!\Inst_addr[5]~input_o\ & (\Inst_addr[3]~input_o\ & (!\Inst_addr[7]~input_o\ & !\Inst_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[7]~input_o\,
	datad => \Inst_addr[6]~input_o\,
	combout => \instruction_memory_module|Mux7~1_combout\);

-- Location: IOIBUF_X72_Y73_N8
\Inst_addr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(4),
	o => \Inst_addr[4]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\Inst_addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(2),
	o => \Inst_addr[2]~input_o\);

-- Location: LCCOMB_X60_Y69_N2
\instruction_memory_module|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux10~0_combout\ = (\Inst_addr[3]~input_o\ & (\Inst_addr[5]~input_o\ & (!\Inst_addr[6]~input_o\))) # (!\Inst_addr[3]~input_o\ & (!\Inst_addr[2]~input_o\ & (\Inst_addr[5]~input_o\ $ (\Inst_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[6]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \instruction_memory_module|Mux10~0_combout\);

-- Location: LCCOMB_X60_Y69_N22
\instruction_memory_module|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux11~0_combout\ = (\Inst_addr[5]~input_o\ & (((!\Inst_addr[2]~input_o\) # (!\Inst_addr[4]~input_o\)) # (!\Inst_addr[3]~input_o\))) # (!\Inst_addr[5]~input_o\ & (!\Inst_addr[3]~input_o\ & (\Inst_addr[4]~input_o\ & 
-- !\Inst_addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[4]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \instruction_memory_module|Mux11~0_combout\);

-- Location: LCCOMB_X60_Y69_N14
\instruction_memory_module|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux7~0_combout\ = (!\Inst_addr[6]~input_o\ & !\Inst_addr[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[6]~input_o\,
	datac => \Inst_addr[7]~input_o\,
	combout => \instruction_memory_module|Mux7~0_combout\);

-- Location: LCCOMB_X60_Y69_N8
\instruction_memory_module|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux8~0_combout\ = (\Inst_addr[5]~input_o\ & (\Inst_addr[3]~input_o\ & (\Inst_addr[4]~input_o\ & \instruction_memory_module|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[4]~input_o\,
	datad => \instruction_memory_module|Mux7~0_combout\,
	combout => \instruction_memory_module|Mux8~0_combout\);

-- Location: LCCOMB_X60_Y69_N18
\register_file|Mux63~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux63~12_combout\ = (!\instruction_memory_module|Mux8~0_combout\ & (((\Inst_addr[7]~input_o\) # (\Inst_addr[6]~input_o\)) # (!\instruction_memory_module|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux11~0_combout\,
	datab => \Inst_addr[7]~input_o\,
	datac => \Inst_addr[6]~input_o\,
	datad => \instruction_memory_module|Mux8~0_combout\,
	combout => \register_file|Mux63~12_combout\);

-- Location: LCCOMB_X60_Y69_N24
\register_file|Mux63~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux63~13_combout\ = (\register_file|Mux63~12_combout\ & ((\Inst_addr[4]~input_o\) # ((\Inst_addr[7]~input_o\) # (!\instruction_memory_module|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[4]~input_o\,
	datab => \instruction_memory_module|Mux10~0_combout\,
	datac => \Inst_addr[7]~input_o\,
	datad => \register_file|Mux63~12_combout\,
	combout => \register_file|Mux63~13_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X61_Y69_N24
\register_file|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux8~7_combout\ = (!\Inst_addr[5]~input_o\ & !\Inst_addr[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_addr[5]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \register_file|Mux8~7_combout\);

-- Location: LCCOMB_X60_Y69_N4
\instruction_memory_module|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux20~0_combout\ = (\Inst_addr[4]~input_o\ & (\instruction_memory_module|Mux7~0_combout\ & (\Inst_addr[3]~input_o\ & \register_file|Mux8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[4]~input_o\,
	datab => \instruction_memory_module|Mux7~0_combout\,
	datac => \Inst_addr[3]~input_o\,
	datad => \register_file|Mux8~7_combout\,
	combout => \instruction_memory_module|Mux20~0_combout\);

-- Location: FF_X55_Y69_N11
\register_file|reg_file[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~0_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][0]~q\);

-- Location: FF_X55_Y69_N25
\register_file|reg_file[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~0_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][0]~q\);

-- Location: LCCOMB_X55_Y69_N10
\register_file|Mux63~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux63~11_combout\ = (\register_file|Mux63~13_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][0]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~13_combout\,
	datac => \register_file|reg_file[0][0]~q\,
	datad => \register_file|reg_file[16][0]~q\,
	combout => \register_file|Mux63~11_combout\);

-- Location: LCCOMB_X60_Y69_N6
\instruction_memory_module|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux12~1_combout\ = (\Inst_addr[4]~input_o\ & ((\Inst_addr[3]~input_o\ & (\Inst_addr[6]~input_o\ & \Inst_addr[2]~input_o\)) # (!\Inst_addr[3]~input_o\ & ((!\Inst_addr[2]~input_o\))))) # (!\Inst_addr[4]~input_o\ & 
-- (!\Inst_addr[3]~input_o\ & (\Inst_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[4]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[6]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \instruction_memory_module|Mux12~1_combout\);

-- Location: LCCOMB_X60_Y69_N16
\instruction_memory_module|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux12~0_combout\ = (\Inst_addr[6]~input_o\ & ((\Inst_addr[2]~input_o\ & (!\Inst_addr[4]~input_o\)) # (!\Inst_addr[2]~input_o\ & ((!\Inst_addr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[4]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[6]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \instruction_memory_module|Mux12~0_combout\);

-- Location: LCCOMB_X60_Y69_N28
\instruction_memory_module|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instruction_memory_module|Mux12~2_combout\ = (!\Inst_addr[7]~input_o\ & ((\Inst_addr[5]~input_o\ & ((\instruction_memory_module|Mux12~0_combout\))) # (!\Inst_addr[5]~input_o\ & (!\instruction_memory_module|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~1_combout\,
	datab => \Inst_addr[7]~input_o\,
	datac => \Inst_addr[5]~input_o\,
	datad => \instruction_memory_module|Mux12~0_combout\,
	combout => \instruction_memory_module|Mux12~2_combout\);

-- Location: LCCOMB_X60_Y69_N26
\register_file|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux8~3_combout\ = (\Inst_addr[5]~input_o\ & ((\Inst_addr[2]~input_o\ $ (\Inst_addr[4]~input_o\)) # (!\Inst_addr[6]~input_o\))) # (!\Inst_addr[5]~input_o\ & (!\Inst_addr[4]~input_o\ & (\Inst_addr[2]~input_o\ $ (\Inst_addr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[2]~input_o\,
	datac => \Inst_addr[4]~input_o\,
	datad => \Inst_addr[6]~input_o\,
	combout => \register_file|Mux8~3_combout\);

-- Location: LCCOMB_X60_Y69_N20
\register_file|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux8~4_combout\ = (\Inst_addr[5]~input_o\ & (!\Inst_addr[6]~input_o\ & ((!\Inst_addr[4]~input_o\) # (!\Inst_addr[2]~input_o\)))) # (!\Inst_addr[5]~input_o\ & ((\Inst_addr[2]~input_o\ $ (\Inst_addr[4]~input_o\)) # (!\Inst_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[5]~input_o\,
	datab => \Inst_addr[2]~input_o\,
	datac => \Inst_addr[4]~input_o\,
	datad => \Inst_addr[6]~input_o\,
	combout => \register_file|Mux8~4_combout\);

-- Location: LCCOMB_X60_Y69_N10
\register_file|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux8~9_combout\ = (!\Inst_addr[7]~input_o\ & ((\Inst_addr[3]~input_o\ & ((\register_file|Mux8~4_combout\))) # (!\Inst_addr[3]~input_o\ & (\register_file|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~3_combout\,
	datab => \Inst_addr[7]~input_o\,
	datac => \Inst_addr[3]~input_o\,
	datad => \register_file|Mux8~4_combout\,
	combout => \register_file|Mux8~9_combout\);

-- Location: LCCOMB_X55_Y69_N24
\register_file|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux31~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][0]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][0]~q\,
	datad => \register_file|reg_file[0][0]~q\,
	combout => \register_file|Mux31~0_combout\);

-- Location: LCCOMB_X56_Y69_N0
\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = (\register_file|Mux63~11_combout\ & (\register_file|Mux31~0_combout\ $ (VCC))) # (!\register_file|Mux63~11_combout\ & (\register_file|Mux31~0_combout\ & VCC))
-- \ALU|Add0~1\ = CARRY((\register_file|Mux63~11_combout\ & \register_file|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~11_combout\,
	datab => \register_file|Mux31~0_combout\,
	datad => VCC,
	combout => \ALU|Add0~0_combout\,
	cout => \ALU|Add0~1\);

-- Location: FF_X55_Y69_N13
\register_file|reg_file[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~2_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][1]~q\);

-- Location: FF_X55_Y69_N19
\register_file|reg_file[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~2_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][1]~q\);

-- Location: LCCOMB_X55_Y69_N12
\register_file|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux62~2_combout\ = (\register_file|Mux63~13_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][1]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~13_combout\,
	datac => \register_file|reg_file[16][1]~q\,
	datad => \register_file|reg_file[0][1]~q\,
	combout => \register_file|Mux62~2_combout\);

-- Location: LCCOMB_X55_Y69_N18
\register_file|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux30~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][1]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[0][1]~q\,
	datad => \register_file|reg_file[16][1]~q\,
	combout => \register_file|Mux30~0_combout\);

-- Location: LCCOMB_X56_Y69_N2
\ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\register_file|Mux62~2_combout\ & ((\register_file|Mux30~0_combout\ & (\ALU|Add0~1\ & VCC)) # (!\register_file|Mux30~0_combout\ & (!\ALU|Add0~1\)))) # (!\register_file|Mux62~2_combout\ & ((\register_file|Mux30~0_combout\ & 
-- (!\ALU|Add0~1\)) # (!\register_file|Mux30~0_combout\ & ((\ALU|Add0~1\) # (GND)))))
-- \ALU|Add0~3\ = CARRY((\register_file|Mux62~2_combout\ & (!\register_file|Mux30~0_combout\ & !\ALU|Add0~1\)) # (!\register_file|Mux62~2_combout\ & ((!\ALU|Add0~1\) # (!\register_file|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux62~2_combout\,
	datab => \register_file|Mux30~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~1\,
	combout => \ALU|Add0~2_combout\,
	cout => \ALU|Add0~3\);

-- Location: FF_X55_Y69_N5
\register_file|reg_file[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~4_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][2]~q\);

-- Location: FF_X55_Y69_N3
\register_file|reg_file[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~4_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][2]~q\);

-- Location: LCCOMB_X60_Y69_N0
\register_file|Mux63~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux63~7_combout\ = (\Inst_addr[3]~input_o\) # ((\Inst_addr[2]~input_o\) # (\Inst_addr[4]~input_o\ $ (!\Inst_addr[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[4]~input_o\,
	datab => \Inst_addr[3]~input_o\,
	datac => \Inst_addr[6]~input_o\,
	datad => \Inst_addr[2]~input_o\,
	combout => \register_file|Mux63~7_combout\);

-- Location: LCCOMB_X60_Y69_N30
\register_file|Mux63~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux63~14_combout\ = (\Inst_addr[7]~input_o\) # ((\Inst_addr[5]~input_o\ & (\Inst_addr[6]~input_o\)) # (!\Inst_addr[5]~input_o\ & ((\register_file|Mux63~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_addr[6]~input_o\,
	datab => \Inst_addr[7]~input_o\,
	datac => \Inst_addr[5]~input_o\,
	datad => \register_file|Mux63~7_combout\,
	combout => \register_file|Mux63~14_combout\);

-- Location: LCCOMB_X55_Y69_N2
\register_file|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux61~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][2]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|reg_file[16][2]~q\,
	datac => \register_file|reg_file[0][2]~q\,
	datad => \register_file|Mux63~14_combout\,
	combout => \register_file|Mux61~0_combout\);

-- Location: LCCOMB_X55_Y69_N4
\register_file|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux29~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][2]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][2]~q\,
	datad => \register_file|reg_file[0][2]~q\,
	combout => \register_file|Mux29~0_combout\);

-- Location: LCCOMB_X56_Y69_N4
\ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = ((\register_file|Mux61~0_combout\ $ (\register_file|Mux29~0_combout\ $ (!\ALU|Add0~3\)))) # (GND)
-- \ALU|Add0~5\ = CARRY((\register_file|Mux61~0_combout\ & ((\register_file|Mux29~0_combout\) # (!\ALU|Add0~3\))) # (!\register_file|Mux61~0_combout\ & (\register_file|Mux29~0_combout\ & !\ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux61~0_combout\,
	datab => \register_file|Mux29~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~3\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: FF_X55_Y69_N9
\register_file|reg_file[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~6_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][3]~q\);

-- Location: FF_X55_Y69_N23
\register_file|reg_file[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~6_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][3]~q\);

-- Location: LCCOMB_X55_Y69_N8
\register_file|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux28~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][3]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][3]~q\,
	datad => \register_file|reg_file[0][3]~q\,
	combout => \register_file|Mux28~0_combout\);

-- Location: LCCOMB_X55_Y69_N22
\register_file|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux60~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][3]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][3]~q\,
	datad => \register_file|reg_file[16][3]~q\,
	combout => \register_file|Mux60~0_combout\);

-- Location: LCCOMB_X56_Y69_N6
\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = (\register_file|Mux28~0_combout\ & ((\register_file|Mux60~0_combout\ & (\ALU|Add0~5\ & VCC)) # (!\register_file|Mux60~0_combout\ & (!\ALU|Add0~5\)))) # (!\register_file|Mux28~0_combout\ & ((\register_file|Mux60~0_combout\ & 
-- (!\ALU|Add0~5\)) # (!\register_file|Mux60~0_combout\ & ((\ALU|Add0~5\) # (GND)))))
-- \ALU|Add0~7\ = CARRY((\register_file|Mux28~0_combout\ & (!\register_file|Mux60~0_combout\ & !\ALU|Add0~5\)) # (!\register_file|Mux28~0_combout\ & ((!\ALU|Add0~5\) # (!\register_file|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux28~0_combout\,
	datab => \register_file|Mux60~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: FF_X55_Y69_N27
\register_file|reg_file[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~8_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][4]~q\);

-- Location: FF_X55_Y69_N29
\register_file|reg_file[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~8_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][4]~q\);

-- Location: LCCOMB_X55_Y69_N26
\register_file|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux59~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][4]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][4]~q\,
	datad => \register_file|reg_file[16][4]~q\,
	combout => \register_file|Mux59~0_combout\);

-- Location: LCCOMB_X55_Y69_N28
\register_file|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux27~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][4]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][4]~q\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][4]~q\,
	datad => \instruction_memory_module|Mux12~2_combout\,
	combout => \register_file|Mux27~0_combout\);

-- Location: LCCOMB_X56_Y69_N8
\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = ((\register_file|Mux59~0_combout\ $ (\register_file|Mux27~0_combout\ $ (!\ALU|Add0~7\)))) # (GND)
-- \ALU|Add0~9\ = CARRY((\register_file|Mux59~0_combout\ & ((\register_file|Mux27~0_combout\) # (!\ALU|Add0~7\))) # (!\register_file|Mux59~0_combout\ & (\register_file|Mux27~0_combout\ & !\ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux59~0_combout\,
	datab => \register_file|Mux27~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~8_combout\,
	cout => \ALU|Add0~9\);

-- Location: FF_X55_Y69_N15
\register_file|reg_file[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~10_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][5]~q\);

-- Location: FF_X55_Y69_N21
\register_file|reg_file[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~10_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][5]~q\);

-- Location: LCCOMB_X55_Y69_N14
\register_file|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux58~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][5]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][5]~q\,
	datad => \register_file|reg_file[16][5]~q\,
	combout => \register_file|Mux58~0_combout\);

-- Location: LCCOMB_X55_Y69_N20
\register_file|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux26~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][5]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|reg_file[0][5]~q\,
	datac => \register_file|reg_file[16][5]~q\,
	datad => \register_file|Mux8~9_combout\,
	combout => \register_file|Mux26~0_combout\);

-- Location: LCCOMB_X56_Y69_N10
\ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\register_file|Mux58~0_combout\ & ((\register_file|Mux26~0_combout\ & (\ALU|Add0~9\ & VCC)) # (!\register_file|Mux26~0_combout\ & (!\ALU|Add0~9\)))) # (!\register_file|Mux58~0_combout\ & ((\register_file|Mux26~0_combout\ & 
-- (!\ALU|Add0~9\)) # (!\register_file|Mux26~0_combout\ & ((\ALU|Add0~9\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\register_file|Mux58~0_combout\ & (!\register_file|Mux26~0_combout\ & !\ALU|Add0~9\)) # (!\register_file|Mux58~0_combout\ & ((!\ALU|Add0~9\) # (!\register_file|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux58~0_combout\,
	datab => \register_file|Mux26~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~9\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: FF_X55_Y69_N31
\register_file|reg_file[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~12_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][6]~q\);

-- Location: FF_X55_Y69_N1
\register_file|reg_file[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~12_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][6]~q\);

-- Location: LCCOMB_X55_Y69_N0
\register_file|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux25~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][6]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][6]~q\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][6]~q\,
	datad => \instruction_memory_module|Mux12~2_combout\,
	combout => \register_file|Mux25~0_combout\);

-- Location: LCCOMB_X55_Y69_N30
\register_file|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux57~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][6]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][6]~q\,
	datad => \register_file|reg_file[16][6]~q\,
	combout => \register_file|Mux57~0_combout\);

-- Location: LCCOMB_X56_Y69_N12
\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\register_file|Mux25~0_combout\ $ (\register_file|Mux57~0_combout\ $ (!\ALU|Add0~11\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\register_file|Mux25~0_combout\ & ((\register_file|Mux57~0_combout\) # (!\ALU|Add0~11\))) # (!\register_file|Mux25~0_combout\ & (\register_file|Mux57~0_combout\ & !\ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux25~0_combout\,
	datab => \register_file|Mux57~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: FF_X55_Y69_N17
\register_file|reg_file[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~14_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][7]~q\);

-- Location: FF_X56_Y69_N15
\register_file|reg_file[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~14_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][7]~q\);

-- Location: LCCOMB_X55_Y69_N16
\register_file|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux24~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][7]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux12~2_combout\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][7]~q\,
	datad => \register_file|reg_file[0][7]~q\,
	combout => \register_file|Mux24~0_combout\);

-- Location: LCCOMB_X55_Y69_N6
\register_file|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux56~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][7]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|reg_file[16][7]~q\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[0][7]~q\,
	combout => \register_file|Mux56~0_combout\);

-- Location: LCCOMB_X56_Y69_N14
\ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (\register_file|Mux24~0_combout\ & ((\register_file|Mux56~0_combout\ & (\ALU|Add0~13\ & VCC)) # (!\register_file|Mux56~0_combout\ & (!\ALU|Add0~13\)))) # (!\register_file|Mux24~0_combout\ & ((\register_file|Mux56~0_combout\ & 
-- (!\ALU|Add0~13\)) # (!\register_file|Mux56~0_combout\ & ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~15\ = CARRY((\register_file|Mux24~0_combout\ & (!\register_file|Mux56~0_combout\ & !\ALU|Add0~13\)) # (!\register_file|Mux24~0_combout\ & ((!\ALU|Add0~13\) # (!\register_file|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux24~0_combout\,
	datab => \register_file|Mux56~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~14_combout\,
	cout => \ALU|Add0~15\);

-- Location: FF_X56_Y69_N17
\register_file|reg_file[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~16_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][8]~q\);

-- Location: FF_X57_Y69_N21
\register_file|reg_file[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~16_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][8]~q\);

-- Location: LCCOMB_X57_Y69_N20
\register_file|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux23~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][8]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][8]~q\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][8]~q\,
	datad => \instruction_memory_module|Mux12~2_combout\,
	combout => \register_file|Mux23~0_combout\);

-- Location: LCCOMB_X57_Y69_N26
\register_file|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux55~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][8]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][8]~q\,
	datad => \register_file|reg_file[16][8]~q\,
	combout => \register_file|Mux55~0_combout\);

-- Location: LCCOMB_X56_Y69_N16
\ALU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~16_combout\ = ((\register_file|Mux23~0_combout\ $ (\register_file|Mux55~0_combout\ $ (!\ALU|Add0~15\)))) # (GND)
-- \ALU|Add0~17\ = CARRY((\register_file|Mux23~0_combout\ & ((\register_file|Mux55~0_combout\) # (!\ALU|Add0~15\))) # (!\register_file|Mux23~0_combout\ & (\register_file|Mux55~0_combout\ & !\ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux23~0_combout\,
	datab => \register_file|Mux55~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~15\,
	combout => \ALU|Add0~16_combout\,
	cout => \ALU|Add0~17\);

-- Location: FF_X57_Y69_N9
\register_file|reg_file[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~18_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][9]~q\);

-- Location: FF_X56_Y69_N19
\register_file|reg_file[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~18_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][9]~q\);

-- Location: LCCOMB_X57_Y69_N2
\register_file|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux54~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][9]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[16][9]~q\,
	datad => \register_file|reg_file[0][9]~q\,
	combout => \register_file|Mux54~0_combout\);

-- Location: LCCOMB_X57_Y69_N8
\register_file|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux22~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][9]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][9]~q\,
	datad => \register_file|reg_file[0][9]~q\,
	combout => \register_file|Mux22~0_combout\);

-- Location: LCCOMB_X56_Y69_N18
\ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = (\register_file|Mux54~0_combout\ & ((\register_file|Mux22~0_combout\ & (\ALU|Add0~17\ & VCC)) # (!\register_file|Mux22~0_combout\ & (!\ALU|Add0~17\)))) # (!\register_file|Mux54~0_combout\ & ((\register_file|Mux22~0_combout\ & 
-- (!\ALU|Add0~17\)) # (!\register_file|Mux22~0_combout\ & ((\ALU|Add0~17\) # (GND)))))
-- \ALU|Add0~19\ = CARRY((\register_file|Mux54~0_combout\ & (!\register_file|Mux22~0_combout\ & !\ALU|Add0~17\)) # (!\register_file|Mux54~0_combout\ & ((!\ALU|Add0~17\) # (!\register_file|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux54~0_combout\,
	datab => \register_file|Mux22~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~17\,
	combout => \ALU|Add0~18_combout\,
	cout => \ALU|Add0~19\);

-- Location: FF_X56_Y69_N21
\register_file|reg_file[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~20_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][10]~q\);

-- Location: FF_X57_Y69_N29
\register_file|reg_file[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~20_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][10]~q\);

-- Location: LCCOMB_X57_Y69_N30
\register_file|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux53~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][10]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][10]~q\,
	datad => \register_file|reg_file[16][10]~q\,
	combout => \register_file|Mux53~0_combout\);

-- Location: LCCOMB_X57_Y69_N28
\register_file|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux21~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][10]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][10]~q\,
	datad => \register_file|reg_file[0][10]~q\,
	combout => \register_file|Mux21~0_combout\);

-- Location: LCCOMB_X56_Y69_N20
\ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~20_combout\ = ((\register_file|Mux53~0_combout\ $ (\register_file|Mux21~0_combout\ $ (!\ALU|Add0~19\)))) # (GND)
-- \ALU|Add0~21\ = CARRY((\register_file|Mux53~0_combout\ & ((\register_file|Mux21~0_combout\) # (!\ALU|Add0~19\))) # (!\register_file|Mux53~0_combout\ & (\register_file|Mux21~0_combout\ & !\ALU|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux53~0_combout\,
	datab => \register_file|Mux21~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~19\,
	combout => \ALU|Add0~20_combout\,
	cout => \ALU|Add0~21\);

-- Location: FF_X57_Y69_N25
\register_file|reg_file[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~22_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][11]~q\);

-- Location: FF_X56_Y69_N23
\register_file|reg_file[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~22_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][11]~q\);

-- Location: LCCOMB_X57_Y69_N24
\register_file|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux20~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][11]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][11]~q\,
	datad => \register_file|reg_file[0][11]~q\,
	combout => \register_file|Mux20~0_combout\);

-- Location: LCCOMB_X57_Y69_N14
\register_file|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux52~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][11]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|reg_file[16][11]~q\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[0][11]~q\,
	combout => \register_file|Mux52~0_combout\);

-- Location: LCCOMB_X56_Y69_N22
\ALU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~22_combout\ = (\register_file|Mux20~0_combout\ & ((\register_file|Mux52~0_combout\ & (\ALU|Add0~21\ & VCC)) # (!\register_file|Mux52~0_combout\ & (!\ALU|Add0~21\)))) # (!\register_file|Mux20~0_combout\ & ((\register_file|Mux52~0_combout\ & 
-- (!\ALU|Add0~21\)) # (!\register_file|Mux52~0_combout\ & ((\ALU|Add0~21\) # (GND)))))
-- \ALU|Add0~23\ = CARRY((\register_file|Mux20~0_combout\ & (!\register_file|Mux52~0_combout\ & !\ALU|Add0~21\)) # (!\register_file|Mux20~0_combout\ & ((!\ALU|Add0~21\) # (!\register_file|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux20~0_combout\,
	datab => \register_file|Mux52~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~21\,
	combout => \ALU|Add0~22_combout\,
	cout => \ALU|Add0~23\);

-- Location: FF_X57_Y69_N5
\register_file|reg_file[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~24_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][12]~q\);

-- Location: FF_X56_Y69_N25
\register_file|reg_file[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~24_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][12]~q\);

-- Location: LCCOMB_X57_Y69_N4
\register_file|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux19~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][12]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][12]~q\,
	datad => \register_file|reg_file[0][12]~q\,
	combout => \register_file|Mux19~0_combout\);

-- Location: LCCOMB_X57_Y69_N18
\register_file|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux51~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][12]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[0][12]~q\,
	datad => \register_file|reg_file[16][12]~q\,
	combout => \register_file|Mux51~0_combout\);

-- Location: LCCOMB_X56_Y69_N24
\ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~24_combout\ = ((\register_file|Mux19~0_combout\ $ (\register_file|Mux51~0_combout\ $ (!\ALU|Add0~23\)))) # (GND)
-- \ALU|Add0~25\ = CARRY((\register_file|Mux19~0_combout\ & ((\register_file|Mux51~0_combout\) # (!\ALU|Add0~23\))) # (!\register_file|Mux19~0_combout\ & (\register_file|Mux51~0_combout\ & !\ALU|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux19~0_combout\,
	datab => \register_file|Mux51~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~23\,
	combout => \ALU|Add0~24_combout\,
	cout => \ALU|Add0~25\);

-- Location: FF_X57_Y69_N1
\register_file|reg_file[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~26_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][13]~q\);

-- Location: FF_X56_Y69_N27
\register_file|reg_file[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~26_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][13]~q\);

-- Location: LCCOMB_X57_Y69_N6
\register_file|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux50~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][13]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|reg_file[16][13]~q\,
	datac => \register_file|reg_file[0][13]~q\,
	datad => \register_file|Mux63~14_combout\,
	combout => \register_file|Mux50~0_combout\);

-- Location: LCCOMB_X57_Y69_N0
\register_file|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux18~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][13]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][13]~q\,
	datab => \register_file|Mux8~9_combout\,
	datac => \register_file|reg_file[16][13]~q\,
	datad => \instruction_memory_module|Mux12~2_combout\,
	combout => \register_file|Mux18~0_combout\);

-- Location: LCCOMB_X56_Y69_N26
\ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~26_combout\ = (\register_file|Mux50~0_combout\ & ((\register_file|Mux18~0_combout\ & (\ALU|Add0~25\ & VCC)) # (!\register_file|Mux18~0_combout\ & (!\ALU|Add0~25\)))) # (!\register_file|Mux50~0_combout\ & ((\register_file|Mux18~0_combout\ & 
-- (!\ALU|Add0~25\)) # (!\register_file|Mux18~0_combout\ & ((\ALU|Add0~25\) # (GND)))))
-- \ALU|Add0~27\ = CARRY((\register_file|Mux50~0_combout\ & (!\register_file|Mux18~0_combout\ & !\ALU|Add0~25\)) # (!\register_file|Mux50~0_combout\ & ((!\ALU|Add0~25\) # (!\register_file|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux50~0_combout\,
	datab => \register_file|Mux18~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~25\,
	combout => \ALU|Add0~26_combout\,
	cout => \ALU|Add0~27\);

-- Location: FF_X56_Y69_N1
\register_file|reg_file[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~28_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][14]~q\);

-- Location: FF_X56_Y69_N29
\register_file|reg_file[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~28_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][14]~q\);

-- Location: LCCOMB_X57_Y69_N12
\register_file|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux17~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][14]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[16][14]~q\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|Mux8~9_combout\,
	datad => \register_file|reg_file[0][14]~q\,
	combout => \register_file|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y69_N10
\register_file|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux49~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][14]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[16][14]~q\,
	datad => \register_file|reg_file[0][14]~q\,
	combout => \register_file|Mux49~0_combout\);

-- Location: LCCOMB_X56_Y69_N28
\ALU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~28_combout\ = ((\register_file|Mux17~0_combout\ $ (\register_file|Mux49~0_combout\ $ (!\ALU|Add0~27\)))) # (GND)
-- \ALU|Add0~29\ = CARRY((\register_file|Mux17~0_combout\ & ((\register_file|Mux49~0_combout\) # (!\ALU|Add0~27\))) # (!\register_file|Mux17~0_combout\ & (\register_file|Mux49~0_combout\ & !\ALU|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux17~0_combout\,
	datab => \register_file|Mux49~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~27\,
	combout => \ALU|Add0~28_combout\,
	cout => \ALU|Add0~29\);

-- Location: FF_X56_Y69_N7
\register_file|reg_file[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~30_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][15]~q\);

-- Location: FF_X56_Y69_N31
\register_file|reg_file[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~30_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][15]~q\);

-- Location: LCCOMB_X57_Y69_N16
\register_file|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux16~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][15]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][15]~q\,
	datad => \register_file|reg_file[0][15]~q\,
	combout => \register_file|Mux16~0_combout\);

-- Location: LCCOMB_X57_Y69_N22
\register_file|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux48~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][15]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[16][15]~q\,
	datad => \register_file|reg_file[0][15]~q\,
	combout => \register_file|Mux48~0_combout\);

-- Location: LCCOMB_X56_Y69_N30
\ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~30_combout\ = (\register_file|Mux16~0_combout\ & ((\register_file|Mux48~0_combout\ & (\ALU|Add0~29\ & VCC)) # (!\register_file|Mux48~0_combout\ & (!\ALU|Add0~29\)))) # (!\register_file|Mux16~0_combout\ & ((\register_file|Mux48~0_combout\ & 
-- (!\ALU|Add0~29\)) # (!\register_file|Mux48~0_combout\ & ((\ALU|Add0~29\) # (GND)))))
-- \ALU|Add0~31\ = CARRY((\register_file|Mux16~0_combout\ & (!\register_file|Mux48~0_combout\ & !\ALU|Add0~29\)) # (!\register_file|Mux16~0_combout\ & ((!\ALU|Add0~29\) # (!\register_file|Mux48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux16~0_combout\,
	datab => \register_file|Mux48~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~29\,
	combout => \ALU|Add0~30_combout\,
	cout => \ALU|Add0~31\);

-- Location: FF_X57_Y68_N5
\register_file|reg_file[16][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~32_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][16]~q\);

-- Location: FF_X56_Y68_N1
\register_file|reg_file[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~32_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][16]~q\);

-- Location: LCCOMB_X57_Y68_N4
\register_file|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux15~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][16]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][16]~q\,
	datad => \register_file|reg_file[0][16]~q\,
	combout => \register_file|Mux15~0_combout\);

-- Location: LCCOMB_X57_Y68_N18
\register_file|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux47~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][16]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[16][16]~q\,
	datad => \register_file|reg_file[0][16]~q\,
	combout => \register_file|Mux47~0_combout\);

-- Location: LCCOMB_X56_Y68_N0
\ALU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~32_combout\ = ((\register_file|Mux15~0_combout\ $ (\register_file|Mux47~0_combout\ $ (!\ALU|Add0~31\)))) # (GND)
-- \ALU|Add0~33\ = CARRY((\register_file|Mux15~0_combout\ & ((\register_file|Mux47~0_combout\) # (!\ALU|Add0~31\))) # (!\register_file|Mux15~0_combout\ & (\register_file|Mux47~0_combout\ & !\ALU|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux15~0_combout\,
	datab => \register_file|Mux47~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~31\,
	combout => \ALU|Add0~32_combout\,
	cout => \ALU|Add0~33\);

-- Location: FF_X56_Y68_N3
\register_file|reg_file[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~34_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][17]~q\);

-- Location: FF_X57_Y68_N29
\register_file|reg_file[16][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~34_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][17]~q\);

-- Location: LCCOMB_X57_Y68_N22
\register_file|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux46~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][17]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][17]~q\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[16][17]~q\,
	combout => \register_file|Mux46~0_combout\);

-- Location: LCCOMB_X57_Y68_N28
\register_file|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux14~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][17]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][17]~q\,
	datad => \register_file|reg_file[0][17]~q\,
	combout => \register_file|Mux14~0_combout\);

-- Location: LCCOMB_X56_Y68_N2
\ALU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~34_combout\ = (\register_file|Mux46~0_combout\ & ((\register_file|Mux14~0_combout\ & (\ALU|Add0~33\ & VCC)) # (!\register_file|Mux14~0_combout\ & (!\ALU|Add0~33\)))) # (!\register_file|Mux46~0_combout\ & ((\register_file|Mux14~0_combout\ & 
-- (!\ALU|Add0~33\)) # (!\register_file|Mux14~0_combout\ & ((\ALU|Add0~33\) # (GND)))))
-- \ALU|Add0~35\ = CARRY((\register_file|Mux46~0_combout\ & (!\register_file|Mux14~0_combout\ & !\ALU|Add0~33\)) # (!\register_file|Mux46~0_combout\ & ((!\ALU|Add0~33\) # (!\register_file|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux46~0_combout\,
	datab => \register_file|Mux14~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~33\,
	combout => \ALU|Add0~34_combout\,
	cout => \ALU|Add0~35\);

-- Location: FF_X57_Y68_N3
\register_file|reg_file[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~36_combout\,
	sload => VCC,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][18]~q\);

-- Location: FF_X57_Y68_N25
\register_file|reg_file[16][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~36_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][18]~q\);

-- Location: LCCOMB_X57_Y68_N2
\register_file|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux13~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][18]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[0][18]~q\,
	datad => \register_file|reg_file[16][18]~q\,
	combout => \register_file|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y68_N24
\register_file|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux45~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][18]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|Mux63~14_combout\,
	datac => \register_file|reg_file[16][18]~q\,
	datad => \register_file|reg_file[0][18]~q\,
	combout => \register_file|Mux45~0_combout\);

-- Location: LCCOMB_X56_Y68_N4
\ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~36_combout\ = ((\register_file|Mux13~0_combout\ $ (\register_file|Mux45~0_combout\ $ (!\ALU|Add0~35\)))) # (GND)
-- \ALU|Add0~37\ = CARRY((\register_file|Mux13~0_combout\ & ((\register_file|Mux45~0_combout\) # (!\ALU|Add0~35\))) # (!\register_file|Mux13~0_combout\ & (\register_file|Mux45~0_combout\ & !\ALU|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux13~0_combout\,
	datab => \register_file|Mux45~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~35\,
	combout => \ALU|Add0~36_combout\,
	cout => \ALU|Add0~37\);

-- Location: FF_X56_Y68_N7
\register_file|reg_file[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~38_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][19]~q\);

-- Location: FF_X56_Y68_N5
\register_file|reg_file[16][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~38_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][19]~q\);

-- Location: LCCOMB_X55_Y68_N10
\register_file|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux44~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][19]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|reg_file[0][19]~q\,
	datad => \register_file|reg_file[16][19]~q\,
	combout => \register_file|Mux44~0_combout\);

-- Location: LCCOMB_X55_Y68_N4
\register_file|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux12~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][19]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][19]~q\,
	datab => \register_file|Mux8~9_combout\,
	datac => \instruction_memory_module|Mux12~2_combout\,
	datad => \register_file|reg_file[16][19]~q\,
	combout => \register_file|Mux12~0_combout\);

-- Location: LCCOMB_X56_Y68_N6
\ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~38_combout\ = (\register_file|Mux44~0_combout\ & ((\register_file|Mux12~0_combout\ & (\ALU|Add0~37\ & VCC)) # (!\register_file|Mux12~0_combout\ & (!\ALU|Add0~37\)))) # (!\register_file|Mux44~0_combout\ & ((\register_file|Mux12~0_combout\ & 
-- (!\ALU|Add0~37\)) # (!\register_file|Mux12~0_combout\ & ((\ALU|Add0~37\) # (GND)))))
-- \ALU|Add0~39\ = CARRY((\register_file|Mux44~0_combout\ & (!\register_file|Mux12~0_combout\ & !\ALU|Add0~37\)) # (!\register_file|Mux44~0_combout\ & ((!\ALU|Add0~37\) # (!\register_file|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux44~0_combout\,
	datab => \register_file|Mux12~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~37\,
	combout => \ALU|Add0~38_combout\,
	cout => \ALU|Add0~39\);

-- Location: FF_X57_Y68_N13
\register_file|reg_file[16][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~40_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][20]~q\);

-- Location: FF_X56_Y68_N9
\register_file|reg_file[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~40_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][20]~q\);

-- Location: LCCOMB_X57_Y68_N30
\register_file|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux43~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][20]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[16][20]~q\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[0][20]~q\,
	combout => \register_file|Mux43~0_combout\);

-- Location: LCCOMB_X57_Y68_N12
\register_file|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux11~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][20]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][20]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][20]~q\,
	datad => \register_file|reg_file[0][20]~q\,
	combout => \register_file|Mux11~0_combout\);

-- Location: LCCOMB_X56_Y68_N8
\ALU|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~40_combout\ = ((\register_file|Mux43~0_combout\ $ (\register_file|Mux11~0_combout\ $ (!\ALU|Add0~39\)))) # (GND)
-- \ALU|Add0~41\ = CARRY((\register_file|Mux43~0_combout\ & ((\register_file|Mux11~0_combout\) # (!\ALU|Add0~39\))) # (!\register_file|Mux43~0_combout\ & (\register_file|Mux11~0_combout\ & !\ALU|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux43~0_combout\,
	datab => \register_file|Mux11~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~39\,
	combout => \ALU|Add0~40_combout\,
	cout => \ALU|Add0~41\);

-- Location: FF_X57_Y68_N21
\register_file|reg_file[16][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~42_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][21]~q\);

-- Location: FF_X56_Y68_N11
\register_file|reg_file[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~42_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][21]~q\);

-- Location: LCCOMB_X57_Y68_N20
\register_file|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux10~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][21]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][21]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][21]~q\,
	datad => \register_file|reg_file[0][21]~q\,
	combout => \register_file|Mux10~0_combout\);

-- Location: LCCOMB_X57_Y68_N10
\register_file|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux42~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][21]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][21]~q\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[16][21]~q\,
	combout => \register_file|Mux42~0_combout\);

-- Location: LCCOMB_X56_Y68_N10
\ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~42_combout\ = (\register_file|Mux10~0_combout\ & ((\register_file|Mux42~0_combout\ & (\ALU|Add0~41\ & VCC)) # (!\register_file|Mux42~0_combout\ & (!\ALU|Add0~41\)))) # (!\register_file|Mux10~0_combout\ & ((\register_file|Mux42~0_combout\ & 
-- (!\ALU|Add0~41\)) # (!\register_file|Mux42~0_combout\ & ((\ALU|Add0~41\) # (GND)))))
-- \ALU|Add0~43\ = CARRY((\register_file|Mux10~0_combout\ & (!\register_file|Mux42~0_combout\ & !\ALU|Add0~41\)) # (!\register_file|Mux10~0_combout\ & ((!\ALU|Add0~41\) # (!\register_file|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux10~0_combout\,
	datab => \register_file|Mux42~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~41\,
	combout => \ALU|Add0~42_combout\,
	cout => \ALU|Add0~43\);

-- Location: FF_X56_Y68_N13
\register_file|reg_file[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~44_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][22]~q\);

-- Location: FF_X57_Y68_N17
\register_file|reg_file[16][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~44_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][22]~q\);

-- Location: LCCOMB_X57_Y68_N6
\register_file|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux41~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][22]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][22]~q\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[16][22]~q\,
	combout => \register_file|Mux41~0_combout\);

-- Location: LCCOMB_X57_Y68_N16
\register_file|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux9~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][22]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][22]~q\,
	datad => \register_file|reg_file[0][22]~q\,
	combout => \register_file|Mux9~0_combout\);

-- Location: LCCOMB_X56_Y68_N12
\ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~44_combout\ = ((\register_file|Mux41~0_combout\ $ (\register_file|Mux9~0_combout\ $ (!\ALU|Add0~43\)))) # (GND)
-- \ALU|Add0~45\ = CARRY((\register_file|Mux41~0_combout\ & ((\register_file|Mux9~0_combout\) # (!\ALU|Add0~43\))) # (!\register_file|Mux41~0_combout\ & (\register_file|Mux9~0_combout\ & !\ALU|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux41~0_combout\,
	datab => \register_file|Mux9~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~43\,
	combout => \ALU|Add0~44_combout\,
	cout => \ALU|Add0~45\);

-- Location: FF_X55_Y68_N17
\register_file|reg_file[16][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~46_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][23]~q\);

-- Location: FF_X56_Y68_N15
\register_file|reg_file[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~46_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][23]~q\);

-- Location: LCCOMB_X55_Y68_N16
\register_file|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux8~8_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][23]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][23]~q\,
	datad => \register_file|reg_file[0][23]~q\,
	combout => \register_file|Mux8~8_combout\);

-- Location: LCCOMB_X55_Y68_N18
\register_file|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux40~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][23]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|reg_file[0][23]~q\,
	datad => \register_file|reg_file[16][23]~q\,
	combout => \register_file|Mux40~0_combout\);

-- Location: LCCOMB_X56_Y68_N14
\ALU|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~46_combout\ = (\register_file|Mux8~8_combout\ & ((\register_file|Mux40~0_combout\ & (\ALU|Add0~45\ & VCC)) # (!\register_file|Mux40~0_combout\ & (!\ALU|Add0~45\)))) # (!\register_file|Mux8~8_combout\ & ((\register_file|Mux40~0_combout\ & 
-- (!\ALU|Add0~45\)) # (!\register_file|Mux40~0_combout\ & ((\ALU|Add0~45\) # (GND)))))
-- \ALU|Add0~47\ = CARRY((\register_file|Mux8~8_combout\ & (!\register_file|Mux40~0_combout\ & !\ALU|Add0~45\)) # (!\register_file|Mux8~8_combout\ & ((!\ALU|Add0~45\) # (!\register_file|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~8_combout\,
	datab => \register_file|Mux40~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~45\,
	combout => \ALU|Add0~46_combout\,
	cout => \ALU|Add0~47\);

-- Location: FF_X56_Y68_N17
\register_file|reg_file[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~48_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][24]~q\);

-- Location: FF_X55_Y68_N1
\register_file|reg_file[16][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~48_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][24]~q\);

-- Location: LCCOMB_X55_Y68_N0
\register_file|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux7~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[16][24]~q\))) # (!\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[0][24]~q\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][24]~q\,
	datad => \register_file|Mux8~9_combout\,
	combout => \register_file|Mux7~0_combout\);

-- Location: LCCOMB_X55_Y68_N6
\register_file|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux39~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][24]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|reg_file[16][24]~q\,
	datad => \register_file|reg_file[0][24]~q\,
	combout => \register_file|Mux39~0_combout\);

-- Location: LCCOMB_X56_Y68_N16
\ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~48_combout\ = ((\register_file|Mux7~0_combout\ $ (\register_file|Mux39~0_combout\ $ (!\ALU|Add0~47\)))) # (GND)
-- \ALU|Add0~49\ = CARRY((\register_file|Mux7~0_combout\ & ((\register_file|Mux39~0_combout\) # (!\ALU|Add0~47\))) # (!\register_file|Mux7~0_combout\ & (\register_file|Mux39~0_combout\ & !\ALU|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux7~0_combout\,
	datab => \register_file|Mux39~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~47\,
	combout => \ALU|Add0~48_combout\,
	cout => \ALU|Add0~49\);

-- Location: FF_X55_Y68_N21
\register_file|reg_file[16][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~50_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][25]~q\);

-- Location: FF_X56_Y68_N19
\register_file|reg_file[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~50_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][25]~q\);

-- Location: LCCOMB_X55_Y68_N26
\register_file|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux38~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][25]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \register_file|reg_file[16][25]~q\,
	datac => \instruction_memory_module|Mux7~1_combout\,
	datad => \register_file|reg_file[0][25]~q\,
	combout => \register_file|Mux38~0_combout\);

-- Location: LCCOMB_X55_Y68_N20
\register_file|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux6~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][25]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][25]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][25]~q\,
	datad => \register_file|reg_file[0][25]~q\,
	combout => \register_file|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y68_N18
\ALU|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~50_combout\ = (\register_file|Mux38~0_combout\ & ((\register_file|Mux6~0_combout\ & (\ALU|Add0~49\ & VCC)) # (!\register_file|Mux6~0_combout\ & (!\ALU|Add0~49\)))) # (!\register_file|Mux38~0_combout\ & ((\register_file|Mux6~0_combout\ & 
-- (!\ALU|Add0~49\)) # (!\register_file|Mux6~0_combout\ & ((\ALU|Add0~49\) # (GND)))))
-- \ALU|Add0~51\ = CARRY((\register_file|Mux38~0_combout\ & (!\register_file|Mux6~0_combout\ & !\ALU|Add0~49\)) # (!\register_file|Mux38~0_combout\ & ((!\ALU|Add0~49\) # (!\register_file|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux38~0_combout\,
	datab => \register_file|Mux6~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~49\,
	combout => \ALU|Add0~50_combout\,
	cout => \ALU|Add0~51\);

-- Location: FF_X55_Y68_N29
\register_file|reg_file[16][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~52_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][26]~q\);

-- Location: FF_X56_Y68_N21
\register_file|reg_file[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~52_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][26]~q\);

-- Location: LCCOMB_X55_Y68_N14
\register_file|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux37~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][26]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \register_file|reg_file[16][26]~q\,
	datac => \instruction_memory_module|Mux7~1_combout\,
	datad => \register_file|reg_file[0][26]~q\,
	combout => \register_file|Mux37~0_combout\);

-- Location: LCCOMB_X55_Y68_N28
\register_file|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux5~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][26]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][26]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][26]~q\,
	datad => \register_file|reg_file[0][26]~q\,
	combout => \register_file|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y68_N20
\ALU|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~52_combout\ = ((\register_file|Mux37~0_combout\ $ (\register_file|Mux5~0_combout\ $ (!\ALU|Add0~51\)))) # (GND)
-- \ALU|Add0~53\ = CARRY((\register_file|Mux37~0_combout\ & ((\register_file|Mux5~0_combout\) # (!\ALU|Add0~51\))) # (!\register_file|Mux37~0_combout\ & (\register_file|Mux5~0_combout\ & !\ALU|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux37~0_combout\,
	datab => \register_file|Mux5~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~51\,
	combout => \ALU|Add0~52_combout\,
	cout => \ALU|Add0~53\);

-- Location: FF_X55_Y68_N9
\register_file|reg_file[16][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~54_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][27]~q\);

-- Location: FF_X56_Y68_N23
\register_file|reg_file[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~54_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][27]~q\);

-- Location: LCCOMB_X55_Y68_N8
\register_file|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux4~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][27]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][27]~q\,
	datad => \register_file|reg_file[0][27]~q\,
	combout => \register_file|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y68_N30
\register_file|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux36~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][27]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|reg_file[16][27]~q\,
	datad => \register_file|reg_file[0][27]~q\,
	combout => \register_file|Mux36~0_combout\);

-- Location: LCCOMB_X56_Y68_N22
\ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~54_combout\ = (\register_file|Mux4~0_combout\ & ((\register_file|Mux36~0_combout\ & (\ALU|Add0~53\ & VCC)) # (!\register_file|Mux36~0_combout\ & (!\ALU|Add0~53\)))) # (!\register_file|Mux4~0_combout\ & ((\register_file|Mux36~0_combout\ & 
-- (!\ALU|Add0~53\)) # (!\register_file|Mux36~0_combout\ & ((\ALU|Add0~53\) # (GND)))))
-- \ALU|Add0~55\ = CARRY((\register_file|Mux4~0_combout\ & (!\register_file|Mux36~0_combout\ & !\ALU|Add0~53\)) # (!\register_file|Mux4~0_combout\ & ((!\ALU|Add0~53\) # (!\register_file|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux4~0_combout\,
	datab => \register_file|Mux36~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~53\,
	combout => \ALU|Add0~54_combout\,
	cout => \ALU|Add0~55\);

-- Location: FF_X55_Y68_N13
\register_file|reg_file[16][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~56_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][28]~q\);

-- Location: FF_X56_Y68_N25
\register_file|reg_file[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~56_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][28]~q\);

-- Location: LCCOMB_X55_Y68_N12
\register_file|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux3~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][28]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][28]~q\,
	datad => \register_file|reg_file[0][28]~q\,
	combout => \register_file|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y68_N22
\register_file|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux35~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][28]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][28]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|reg_file[16][28]~q\,
	datab => \register_file|Mux63~14_combout\,
	datac => \instruction_memory_module|Mux7~1_combout\,
	datad => \register_file|reg_file[0][28]~q\,
	combout => \register_file|Mux35~0_combout\);

-- Location: LCCOMB_X56_Y68_N24
\ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~56_combout\ = ((\register_file|Mux3~0_combout\ $ (\register_file|Mux35~0_combout\ $ (!\ALU|Add0~55\)))) # (GND)
-- \ALU|Add0~57\ = CARRY((\register_file|Mux3~0_combout\ & ((\register_file|Mux35~0_combout\) # (!\ALU|Add0~55\))) # (!\register_file|Mux3~0_combout\ & (\register_file|Mux35~0_combout\ & !\ALU|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux3~0_combout\,
	datab => \register_file|Mux35~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~55\,
	combout => \ALU|Add0~56_combout\,
	cout => \ALU|Add0~57\);

-- Location: FF_X57_Y68_N1
\register_file|reg_file[16][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~58_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][29]~q\);

-- Location: FF_X56_Y68_N27
\register_file|reg_file[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~58_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][29]~q\);

-- Location: LCCOMB_X57_Y68_N26
\register_file|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux34~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][29]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_memory_module|Mux7~1_combout\,
	datab => \register_file|reg_file[16][29]~q\,
	datac => \register_file|Mux63~14_combout\,
	datad => \register_file|reg_file[0][29]~q\,
	combout => \register_file|Mux34~0_combout\);

-- Location: LCCOMB_X57_Y68_N0
\register_file|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux2~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][29]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][29]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][29]~q\,
	datad => \register_file|reg_file[0][29]~q\,
	combout => \register_file|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y68_N26
\ALU|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~58_combout\ = (\register_file|Mux34~0_combout\ & ((\register_file|Mux2~0_combout\ & (\ALU|Add0~57\ & VCC)) # (!\register_file|Mux2~0_combout\ & (!\ALU|Add0~57\)))) # (!\register_file|Mux34~0_combout\ & ((\register_file|Mux2~0_combout\ & 
-- (!\ALU|Add0~57\)) # (!\register_file|Mux2~0_combout\ & ((\ALU|Add0~57\) # (GND)))))
-- \ALU|Add0~59\ = CARRY((\register_file|Mux34~0_combout\ & (!\register_file|Mux2~0_combout\ & !\ALU|Add0~57\)) # (!\register_file|Mux34~0_combout\ & ((!\ALU|Add0~57\) # (!\register_file|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux34~0_combout\,
	datab => \register_file|Mux2~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~57\,
	combout => \ALU|Add0~58_combout\,
	cout => \ALU|Add0~59\);

-- Location: FF_X57_Y68_N9
\register_file|reg_file[16][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~60_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][30]~q\);

-- Location: FF_X56_Y68_N29
\register_file|reg_file[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~60_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][30]~q\);

-- Location: LCCOMB_X57_Y68_N14
\register_file|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux33~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[16][30]~q\)) # (!\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \instruction_memory_module|Mux7~1_combout\,
	datac => \register_file|reg_file[16][30]~q\,
	datad => \register_file|reg_file[0][30]~q\,
	combout => \register_file|Mux33~0_combout\);

-- Location: LCCOMB_X57_Y68_N8
\register_file|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux1~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][30]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][30]~q\,
	datad => \register_file|reg_file[0][30]~q\,
	combout => \register_file|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y68_N28
\ALU|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~60_combout\ = ((\register_file|Mux33~0_combout\ $ (\register_file|Mux1~0_combout\ $ (!\ALU|Add0~59\)))) # (GND)
-- \ALU|Add0~61\ = CARRY((\register_file|Mux33~0_combout\ & ((\register_file|Mux1~0_combout\) # (!\ALU|Add0~59\))) # (!\register_file|Mux33~0_combout\ & (\register_file|Mux1~0_combout\ & !\ALU|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux33~0_combout\,
	datab => \register_file|Mux1~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~59\,
	combout => \ALU|Add0~60_combout\,
	cout => \ALU|Add0~61\);

-- Location: FF_X56_Y68_N31
\register_file|reg_file[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ALU|Add0~62_combout\,
	ena => \instruction_memory_module|ALT_INV_Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[0][31]~q\);

-- Location: FF_X55_Y68_N25
\register_file|reg_file[16][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ALU|Add0~62_combout\,
	sload => VCC,
	ena => \instruction_memory_module|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_file|reg_file[16][31]~q\);

-- Location: LCCOMB_X55_Y68_N2
\register_file|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux32~0_combout\ = (\register_file|Mux63~14_combout\ & ((\instruction_memory_module|Mux7~1_combout\ & ((\register_file|reg_file[16][31]~q\))) # (!\instruction_memory_module|Mux7~1_combout\ & (\register_file|reg_file[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux63~14_combout\,
	datab => \register_file|reg_file[0][31]~q\,
	datac => \instruction_memory_module|Mux7~1_combout\,
	datad => \register_file|reg_file[16][31]~q\,
	combout => \register_file|Mux32~0_combout\);

-- Location: LCCOMB_X55_Y68_N24
\register_file|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \register_file|Mux0~0_combout\ = (!\register_file|Mux8~9_combout\ & ((\instruction_memory_module|Mux12~2_combout\ & (\register_file|reg_file[16][31]~q\)) # (!\instruction_memory_module|Mux12~2_combout\ & ((\register_file|reg_file[0][31]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux8~9_combout\,
	datab => \instruction_memory_module|Mux12~2_combout\,
	datac => \register_file|reg_file[16][31]~q\,
	datad => \register_file|reg_file[0][31]~q\,
	combout => \register_file|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y68_N30
\ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~62_combout\ = \register_file|Mux32~0_combout\ $ (\ALU|Add0~61\ $ (\register_file|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \register_file|Mux32~0_combout\,
	datad => \register_file|Mux0~0_combout\,
	cin => \ALU|Add0~61\,
	combout => \ALU|Add0~62_combout\);

-- Location: IOIBUF_X115_Y37_N8
\Inst_addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(0),
	o => \Inst_addr[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\Inst_addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(1),
	o => \Inst_addr[1]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\Inst_addr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(8),
	o => \Inst_addr[8]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\Inst_addr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(9),
	o => \Inst_addr[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Inst_addr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(10),
	o => \Inst_addr[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\Inst_addr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(11),
	o => \Inst_addr[11]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\Inst_addr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(12),
	o => \Inst_addr[12]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\Inst_addr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(13),
	o => \Inst_addr[13]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\Inst_addr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(14),
	o => \Inst_addr[14]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\Inst_addr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(15),
	o => \Inst_addr[15]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Inst_addr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(16),
	o => \Inst_addr[16]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Inst_addr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(17),
	o => \Inst_addr[17]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\Inst_addr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(18),
	o => \Inst_addr[18]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\Inst_addr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(19),
	o => \Inst_addr[19]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\Inst_addr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(20),
	o => \Inst_addr[20]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\Inst_addr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(21),
	o => \Inst_addr[21]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\Inst_addr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(22),
	o => \Inst_addr[22]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\Inst_addr[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(23),
	o => \Inst_addr[23]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\Inst_addr[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(24),
	o => \Inst_addr[24]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\Inst_addr[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(25),
	o => \Inst_addr[25]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\Inst_addr[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(26),
	o => \Inst_addr[26]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\Inst_addr[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(27),
	o => \Inst_addr[27]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\Inst_addr[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(28),
	o => \Inst_addr[28]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\Inst_addr[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(29),
	o => \Inst_addr[29]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\Inst_addr[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(30),
	o => \Inst_addr[30]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\Inst_addr[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inst_addr(31),
	o => \Inst_addr[31]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;
END structure;


