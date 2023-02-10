-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/10/2023 22:33:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu_control IS
    PORT (
	instr : IN std_logic_vector(31 DOWNTO 0);
	alu_op : IN std_logic_vector(1 DOWNTO 0);
	out_to_alu : BUFFER std_logic_vector(3 DOWNTO 0);
	equal_comp : BUFFER std_logic_vector(1 DOWNTO 0);
	mem : BUFFER std_logic_vector(2 DOWNTO 0);
	ALU_En : IN std_logic
	);
END alu_control;

-- Design Ports Information
-- instr[0]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[16]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[17]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[18]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[21]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[22]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[24]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[25]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[26]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[27]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[28]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[29]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[31]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_to_alu[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_to_alu[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_to_alu[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_to_alu[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal_comp[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- equal_comp[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[30]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_En	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alu_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_to_alu : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_equal_comp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mem : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALU_En : std_logic;
SIGNAL \out_to_alu[0]~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_En~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr[0]~input_o\ : std_logic;
SIGNAL \instr[1]~input_o\ : std_logic;
SIGNAL \instr[2]~input_o\ : std_logic;
SIGNAL \instr[3]~input_o\ : std_logic;
SIGNAL \instr[4]~input_o\ : std_logic;
SIGNAL \instr[5]~input_o\ : std_logic;
SIGNAL \instr[6]~input_o\ : std_logic;
SIGNAL \instr[7]~input_o\ : std_logic;
SIGNAL \instr[8]~input_o\ : std_logic;
SIGNAL \instr[9]~input_o\ : std_logic;
SIGNAL \instr[10]~input_o\ : std_logic;
SIGNAL \instr[11]~input_o\ : std_logic;
SIGNAL \instr[15]~input_o\ : std_logic;
SIGNAL \instr[16]~input_o\ : std_logic;
SIGNAL \instr[17]~input_o\ : std_logic;
SIGNAL \instr[18]~input_o\ : std_logic;
SIGNAL \instr[19]~input_o\ : std_logic;
SIGNAL \instr[20]~input_o\ : std_logic;
SIGNAL \instr[21]~input_o\ : std_logic;
SIGNAL \instr[22]~input_o\ : std_logic;
SIGNAL \instr[23]~input_o\ : std_logic;
SIGNAL \instr[24]~input_o\ : std_logic;
SIGNAL \instr[25]~input_o\ : std_logic;
SIGNAL \instr[26]~input_o\ : std_logic;
SIGNAL \instr[27]~input_o\ : std_logic;
SIGNAL \instr[28]~input_o\ : std_logic;
SIGNAL \instr[29]~input_o\ : std_logic;
SIGNAL \instr[31]~input_o\ : std_logic;
SIGNAL \out_to_alu[0]~output_o\ : std_logic;
SIGNAL \out_to_alu[1]~output_o\ : std_logic;
SIGNAL \out_to_alu[2]~output_o\ : std_logic;
SIGNAL \out_to_alu[3]~output_o\ : std_logic;
SIGNAL \equal_comp[0]~output_o\ : std_logic;
SIGNAL \equal_comp[1]~output_o\ : std_logic;
SIGNAL \mem[0]~output_o\ : std_logic;
SIGNAL \mem[1]~output_o\ : std_logic;
SIGNAL \mem[2]~output_o\ : std_logic;
SIGNAL \instr[30]~input_o\ : std_logic;
SIGNAL \instr[13]~input_o\ : std_logic;
SIGNAL \instr[12]~input_o\ : std_logic;
SIGNAL \alu_op[0]~input_o\ : std_logic;
SIGNAL \instr[14]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \alu_op[1]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \out_to_alu[0]~2_combout\ : std_logic;
SIGNAL \out_to_alu[0]~3_combout\ : std_logic;
SIGNAL \out_to_alu[0]~4_combout\ : std_logic;
SIGNAL \ALU_En~input_o\ : std_logic;
SIGNAL \out_to_alu[0]~5_combout\ : std_logic;
SIGNAL \out_to_alu[0]~5clkctrl_outclk\ : std_logic;
SIGNAL \out_to_alu[0]$latch~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \out_to_alu[1]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \out_to_alu[2]$latch~combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \out_to_alu[3]$latch~combout\ : std_logic;
SIGNAL \equal_comp~0_combout\ : std_logic;
SIGNAL \equal_comp~1_combout\ : std_logic;
SIGNAL \ALU_En~inputclkctrl_outclk\ : std_logic;
SIGNAL \equal_comp[0]$latch~combout\ : std_logic;
SIGNAL \equal_comp[1]$latch~combout\ : std_logic;
SIGNAL \mem~0_combout\ : std_logic;
SIGNAL \mem~1_combout\ : std_logic;
SIGNAL \mem[0]$latch~combout\ : std_logic;
SIGNAL \mem~2_combout\ : std_logic;
SIGNAL \mem[1]$latch~combout\ : std_logic;
SIGNAL \mem~3_combout\ : std_logic;
SIGNAL \mem[2]$latch~combout\ : std_logic;

BEGIN

ww_instr <= instr;
ww_alu_op <= alu_op;
out_to_alu <= ww_out_to_alu;
equal_comp <= ww_equal_comp;
mem <= ww_mem;
ww_ALU_En <= ALU_En;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_to_alu[0]~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \out_to_alu[0]~5_combout\);

\ALU_En~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ALU_En~input_o\);

-- Location: IOOBUF_X0_Y34_N23
\out_to_alu[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_to_alu[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out_to_alu[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\out_to_alu[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_to_alu[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out_to_alu[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\out_to_alu[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_to_alu[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out_to_alu[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\out_to_alu[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_to_alu[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out_to_alu[3]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\equal_comp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equal_comp[0]$latch~combout\,
	devoe => ww_devoe,
	o => \equal_comp[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\equal_comp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \equal_comp[1]$latch~combout\,
	devoe => ww_devoe,
	o => \equal_comp[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\mem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem[0]$latch~combout\,
	devoe => ww_devoe,
	o => \mem[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\mem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem[1]$latch~combout\,
	devoe => ww_devoe,
	o => \mem[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\mem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem[2]$latch~combout\,
	devoe => ww_devoe,
	o => \mem[2]~output_o\);

-- Location: IOIBUF_X0_Y30_N1
\instr[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(30),
	o => \instr[30]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\instr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(13),
	o => \instr[13]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\instr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(12),
	o => \instr[12]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\alu_op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(0),
	o => \alu_op[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\instr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(14),
	o => \instr[14]~input_o\);

-- Location: LCCOMB_X1_Y34_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\alu_op[0]~input_o\ & \instr[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op[0]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y34_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\instr[30]~input_o\ & !\instr[13]~input_o\)) # (!\instr[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X1_Y34_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\instr[30]~input_o\ & (!\instr[13]~input_o\ & (\instr[12]~input_o\ & \instr[14]~input_o\))) # (!\instr[30]~input_o\ & ((\instr[14]~input_o\ & ((!\instr[12]~input_o\))) # (!\instr[14]~input_o\ & (\instr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X0_Y30_N8
\alu_op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_op(1),
	o => \alu_op[1]~input_o\);

-- Location: LCCOMB_X1_Y34_N22
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\) # ((\alu_op[0]~input_o\ & ((\alu_op[1]~input_o\))) # (!\alu_op[0]~input_o\ & (\Mux2~0_combout\ & !\alu_op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \alu_op[0]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \alu_op[1]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X1_Y36_N24
\out_to_alu[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[0]~2_combout\ = (\instr[12]~input_o\ & ((\instr[13]~input_o\) # (!\instr[14]~input_o\))) # (!\instr[12]~input_o\ & ((\instr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr[12]~input_o\,
	datac => \instr[13]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \out_to_alu[0]~2_combout\);

-- Location: LCCOMB_X1_Y36_N22
\out_to_alu[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[0]~3_combout\ = (\alu_op[1]~input_o\ & (\out_to_alu[0]~2_combout\ & (\instr[13]~input_o\))) # (!\alu_op[1]~input_o\ & (\instr[30]~input_o\ & ((\out_to_alu[0]~2_combout\) # (\instr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \out_to_alu[0]~2_combout\,
	datac => \instr[13]~input_o\,
	datad => \instr[30]~input_o\,
	combout => \out_to_alu[0]~3_combout\);

-- Location: LCCOMB_X1_Y36_N8
\out_to_alu[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[0]~4_combout\ = (\alu_op[0]~input_o\ & (\instr[13]~input_o\)) # (!\alu_op[0]~input_o\ & ((\out_to_alu[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[0]~input_o\,
	datac => \instr[13]~input_o\,
	datad => \out_to_alu[0]~3_combout\,
	combout => \out_to_alu[0]~4_combout\);

-- Location: IOIBUF_X0_Y36_N8
\ALU_En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_En,
	o => \ALU_En~input_o\);

-- Location: LCCOMB_X1_Y36_N4
\out_to_alu[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[0]~5_combout\ = (!\ALU_En~input_o\ & (((\instr[14]~input_o\ & \alu_op[0]~input_o\)) # (!\out_to_alu[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \out_to_alu[0]~4_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \ALU_En~input_o\,
	combout => \out_to_alu[0]~5_combout\);

-- Location: CLKCTRL_G4
\out_to_alu[0]~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \out_to_alu[0]~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \out_to_alu[0]~5clkctrl_outclk\);

-- Location: LCCOMB_X1_Y34_N28
\out_to_alu[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[0]$latch~combout\ = (GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & ((\Mux4~2_combout\))) # (!GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & (\out_to_alu[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_to_alu[0]$latch~combout\,
	datac => \Mux4~2_combout\,
	datad => \out_to_alu[0]~5clkctrl_outclk\,
	combout => \out_to_alu[0]$latch~combout\);

-- Location: LCCOMB_X1_Y34_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\alu_op[0]~input_o\ & (((!\alu_op[1]~input_o\)))) # (!\alu_op[0]~input_o\ & (!\instr[30]~input_o\ & ((\instr[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y34_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\alu_op[1]~input_o\ & ((\instr[13]~input_o\) # ((!\instr[14]~input_o\) # (!\alu_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X1_Y34_N20
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux13~0_combout\) # ((\Mux0~0_combout\ & (!\instr[13]~input_o\ & !\instr[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y34_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\instr[14]~input_o\ & ((\instr[30]~input_o\) # (\instr[13]~input_o\ $ (!\instr[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y34_N16
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\) # ((!\alu_op[0]~input_o\ & \Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~1_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X1_Y31_N16
\out_to_alu[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[1]$latch~combout\ = (GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & (\Mux0~3_combout\)) # (!GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & ((\out_to_alu[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datac => \out_to_alu[0]~5clkctrl_outclk\,
	datad => \out_to_alu[1]$latch~combout\,
	combout => \out_to_alu[1]$latch~combout\);

-- Location: LCCOMB_X1_Y34_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\instr[30]~input_o\ & (\instr[12]~input_o\ $ ((!\alu_op[0]~input_o\)))) # (!\instr[30]~input_o\ & ((\instr[12]~input_o\) # ((!\alu_op[0]~input_o\ & \instr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \instr[12]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \instr[13]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X1_Y34_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\instr[14]~input_o\ & (\alu_op[0]~input_o\ & (\alu_op[1]~input_o\))) # (!\instr[14]~input_o\ & (((!\alu_op[1]~input_o\ & \Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X1_Y34_N30
\out_to_alu[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[2]$latch~combout\ = (GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & (\Mux9~1_combout\)) # (!GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & ((\out_to_alu[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datac => \out_to_alu[2]$latch~combout\,
	datad => \out_to_alu[0]~5clkctrl_outclk\,
	combout => \out_to_alu[2]$latch~combout\);

-- Location: LCCOMB_X1_Y34_N14
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\instr[14]~input_o\ & ((\alu_op[1]~input_o\))) # (!\instr[14]~input_o\ & (\instr[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr[12]~input_o\,
	datac => \alu_op[1]~input_o\,
	datad => \instr[14]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X1_Y34_N8
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\ & ((\alu_op[0]~input_o\) # (\instr[14]~input_o\ $ (!\instr[13]~input_o\)))) # (!\Mux13~1_combout\ & (((\instr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \alu_op[0]~input_o\,
	datac => \Mux13~1_combout\,
	datad => \instr[13]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X1_Y34_N2
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ((\Mux13~0_combout\) # ((\instr[30]~input_o\ & !\alu_op[0]~input_o\))) # (!\Mux13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[30]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \alu_op[0]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X2_Y34_N16
\out_to_alu[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_to_alu[3]$latch~combout\ = (GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & (\Mux13~3_combout\)) # (!GLOBAL(\out_to_alu[0]~5clkctrl_outclk\) & ((\out_to_alu[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datac => \out_to_alu[0]~5clkctrl_outclk\,
	datad => \out_to_alu[3]$latch~combout\,
	combout => \out_to_alu[3]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N14
\equal_comp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal_comp~0_combout\ = (\alu_op[0]~input_o\ & (\alu_op[1]~input_o\ & ((\instr[14]~input_o\) # (!\instr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[13]~input_o\,
	datab => \instr[14]~input_o\,
	datac => \alu_op[0]~input_o\,
	datad => \alu_op[1]~input_o\,
	combout => \equal_comp~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\equal_comp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal_comp~1_combout\ = (!\instr[12]~input_o\ & \equal_comp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr[12]~input_o\,
	datac => \equal_comp~0_combout\,
	combout => \equal_comp~1_combout\);

-- Location: CLKCTRL_G2
\ALU_En~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALU_En~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALU_En~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N28
\equal_comp[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal_comp[0]$latch~combout\ = (GLOBAL(\ALU_En~inputclkctrl_outclk\) & ((\equal_comp[0]$latch~combout\))) # (!GLOBAL(\ALU_En~inputclkctrl_outclk\) & (\equal_comp~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \equal_comp~1_combout\,
	datac => \ALU_En~inputclkctrl_outclk\,
	datad => \equal_comp[0]$latch~combout\,
	combout => \equal_comp[0]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N12
\equal_comp[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \equal_comp[1]$latch~combout\ = (GLOBAL(\ALU_En~inputclkctrl_outclk\) & ((\equal_comp[1]$latch~combout\))) # (!GLOBAL(\ALU_En~inputclkctrl_outclk\) & (\equal_comp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \equal_comp~0_combout\,
	datac => \ALU_En~inputclkctrl_outclk\,
	datad => \equal_comp[1]$latch~combout\,
	combout => \equal_comp[1]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N26
\mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~0_combout\ = (\alu_op[1]~input_o\ & !\alu_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~input_o\,
	datac => \alu_op[0]~input_o\,
	combout => \mem~0_combout\);

-- Location: LCCOMB_X1_Y36_N18
\mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~1_combout\ = (\mem~0_combout\ & ((\instr[14]~input_o\ & (!\instr[13]~input_o\)) # (!\instr[14]~input_o\ & ((!\instr[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[13]~input_o\,
	datab => \instr[12]~input_o\,
	datac => \mem~0_combout\,
	datad => \instr[14]~input_o\,
	combout => \mem~1_combout\);

-- Location: LCCOMB_X1_Y36_N16
\mem[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[0]$latch~combout\ = (GLOBAL(\ALU_En~inputclkctrl_outclk\) & ((\mem[0]$latch~combout\))) # (!GLOBAL(\ALU_En~inputclkctrl_outclk\) & (\mem~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~1_combout\,
	datac => \ALU_En~inputclkctrl_outclk\,
	datad => \mem[0]$latch~combout\,
	combout => \mem[0]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N10
\mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~2_combout\ = (\mem~0_combout\ & ((\instr[13]~input_o\ & (!\instr[12]~input_o\ & !\instr[14]~input_o\)) # (!\instr[13]~input_o\ & (\instr[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[13]~input_o\,
	datab => \instr[12]~input_o\,
	datac => \mem~0_combout\,
	datad => \instr[14]~input_o\,
	combout => \mem~2_combout\);

-- Location: LCCOMB_X1_Y36_N30
\mem[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[1]$latch~combout\ = (GLOBAL(\ALU_En~inputclkctrl_outclk\) & ((\mem[1]$latch~combout\))) # (!GLOBAL(\ALU_En~inputclkctrl_outclk\) & (\mem~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~2_combout\,
	datac => \mem[1]$latch~combout\,
	datad => \ALU_En~inputclkctrl_outclk\,
	combout => \mem[1]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N2
\mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem~3_combout\ = (!\instr[13]~input_o\ & (!\instr[12]~input_o\ & (\mem~0_combout\ & \instr[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[13]~input_o\,
	datab => \instr[12]~input_o\,
	datac => \mem~0_combout\,
	datad => \instr[14]~input_o\,
	combout => \mem~3_combout\);

-- Location: LCCOMB_X1_Y36_N6
\mem[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem[2]$latch~combout\ = (GLOBAL(\ALU_En~inputclkctrl_outclk\) & ((\mem[2]$latch~combout\))) # (!GLOBAL(\ALU_En~inputclkctrl_outclk\) & (\mem~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem~3_combout\,
	datac => \ALU_En~inputclkctrl_outclk\,
	datad => \mem[2]$latch~combout\,
	combout => \mem[2]$latch~combout\);

-- Location: IOIBUF_X115_Y35_N15
\instr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(0),
	o => \instr[0]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\instr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(1),
	o => \instr[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\instr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(2),
	o => \instr[2]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\instr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(3),
	o => \instr[3]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\instr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(4),
	o => \instr[4]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\instr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(5),
	o => \instr[5]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\instr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(6),
	o => \instr[6]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\instr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(7),
	o => \instr[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\instr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(8),
	o => \instr[8]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\instr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(9),
	o => \instr[9]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\instr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(10),
	o => \instr[10]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\instr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(11),
	o => \instr[11]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\instr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(15),
	o => \instr[15]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\instr[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(16),
	o => \instr[16]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\instr[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(17),
	o => \instr[17]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\instr[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(18),
	o => \instr[18]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\instr[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(19),
	o => \instr[19]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\instr[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(20),
	o => \instr[20]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\instr[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(21),
	o => \instr[21]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\instr[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(22),
	o => \instr[22]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\instr[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(23),
	o => \instr[23]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\instr[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(24),
	o => \instr[24]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\instr[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(25),
	o => \instr[25]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\instr[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(26),
	o => \instr[26]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\instr[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(27),
	o => \instr[27]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\instr[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(28),
	o => \instr[28]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\instr[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(29),
	o => \instr[29]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\instr[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(31),
	o => \instr[31]~input_o\);

ww_out_to_alu(0) <= \out_to_alu[0]~output_o\;

ww_out_to_alu(1) <= \out_to_alu[1]~output_o\;

ww_out_to_alu(2) <= \out_to_alu[2]~output_o\;

ww_out_to_alu(3) <= \out_to_alu[3]~output_o\;

ww_equal_comp(0) <= \equal_comp[0]~output_o\;

ww_equal_comp(1) <= \equal_comp[1]~output_o\;

ww_mem(0) <= \mem[0]~output_o\;

ww_mem(1) <= \mem[1]~output_o\;

ww_mem(2) <= \mem[2]~output_o\;
END structure;


