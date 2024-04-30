-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/29/2024 10:28:04"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	p : IN std_logic_vector(7 DOWNTO 0);
	sol : OUT std_logic;
	sor : OUT std_logic
	);
END toplevel;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sol	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sor	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- p[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- p[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sol : std_logic;
SIGNAL ww_sor : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \UUT|q[0]~30_combout\ : std_logic;
SIGNAL \UUT|q[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \UUT|q~28_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \UUT|Equal0~0_combout\ : std_logic;
SIGNAL \p[2]~input_o\ : std_logic;
SIGNAL \UUT|q~33_combout\ : std_logic;
SIGNAL \p[4]~input_o\ : std_logic;
SIGNAL \UUT|q~35_combout\ : std_logic;
SIGNAL \p[5]~input_o\ : std_logic;
SIGNAL \UUT|q~36_combout\ : std_logic;
SIGNAL \UUT|Equal0~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \p[7]~input_o\ : std_logic;
SIGNAL \UUT|q~38_combout\ : std_logic;
SIGNAL \UUT|q[7]~17_combout\ : std_logic;
SIGNAL \UUT|q[0]~0_combout\ : std_logic;
SIGNAL \UUT|q[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[7]~16_combout\ : std_logic;
SIGNAL \p[6]~input_o\ : std_logic;
SIGNAL \UUT|q~37_combout\ : std_logic;
SIGNAL \UUT|q[6]~15_combout\ : std_logic;
SIGNAL \UUT|q[1]~32_combout\ : std_logic;
SIGNAL \UUT|q[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[6]~14_combout\ : std_logic;
SIGNAL \UUT|q[5]~13_combout\ : std_logic;
SIGNAL \UUT|q[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[5]~12_combout\ : std_logic;
SIGNAL \UUT|q[4]~11_combout\ : std_logic;
SIGNAL \UUT|q[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[4]~10_combout\ : std_logic;
SIGNAL \p[3]~input_o\ : std_logic;
SIGNAL \UUT|q~34_combout\ : std_logic;
SIGNAL \UUT|q[3]~9_combout\ : std_logic;
SIGNAL \UUT|q[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[3]~8_combout\ : std_logic;
SIGNAL \UUT|q[2]~7_combout\ : std_logic;
SIGNAL \UUT|q[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[2]~6_combout\ : std_logic;
SIGNAL \p[1]~input_o\ : std_logic;
SIGNAL \UUT|q~31_combout\ : std_logic;
SIGNAL \UUT|q[1]~5_combout\ : std_logic;
SIGNAL \UUT|q[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[1]~4_combout\ : std_logic;
SIGNAL \UUT|q~29_combout\ : std_logic;
SIGNAL \p[0]~input_o\ : std_logic;
SIGNAL \UUT|q~27_combout\ : std_logic;
SIGNAL \UUT|q[0]~3_combout\ : std_logic;
SIGNAL \UUT|q[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|q[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_p[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \UUT|ALT_INV_q[0]~1_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~37_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~36_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~35_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~34_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~33_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~31_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[0]~30_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[0]~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~29_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~28_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q~27_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[7]~16_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[6]~14_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[5]~12_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[4]~10_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[3]~8_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[2]~6_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[1]~4_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q[0]~2_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_q[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_q~38_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_p <= p;
sol <= ww_sol;
sor <= ww_sor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_p[7]~input_o\ <= NOT \p[7]~input_o\;
\ALT_INV_p[6]~input_o\ <= NOT \p[6]~input_o\;
\ALT_INV_p[5]~input_o\ <= NOT \p[5]~input_o\;
\ALT_INV_p[4]~input_o\ <= NOT \p[4]~input_o\;
\ALT_INV_p[3]~input_o\ <= NOT \p[3]~input_o\;
\ALT_INV_p[2]~input_o\ <= NOT \p[2]~input_o\;
\ALT_INV_p[1]~input_o\ <= NOT \p[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_p[0]~input_o\ <= NOT \p[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\UUT|ALT_INV_q[0]~1_combout\ <= NOT \UUT|q[0]~1_combout\;
\UUT|ALT_INV_Equal0~1_combout\ <= NOT \UUT|Equal0~1_combout\;
\UUT|ALT_INV_q~37_combout\ <= NOT \UUT|q~37_combout\;
\UUT|ALT_INV_q~36_combout\ <= NOT \UUT|q~36_combout\;
\UUT|ALT_INV_q~35_combout\ <= NOT \UUT|q~35_combout\;
\UUT|ALT_INV_q~34_combout\ <= NOT \UUT|q~34_combout\;
\UUT|ALT_INV_q~33_combout\ <= NOT \UUT|q~33_combout\;
\UUT|ALT_INV_Equal0~0_combout\ <= NOT \UUT|Equal0~0_combout\;
\UUT|ALT_INV_q~31_combout\ <= NOT \UUT|q~31_combout\;
\UUT|ALT_INV_q[0]~30_combout\ <= NOT \UUT|q[0]~30_combout\;
\UUT|ALT_INV_q[0]~0_combout\ <= NOT \UUT|q[0]~0_combout\;
\UUT|ALT_INV_q~29_combout\ <= NOT \UUT|q~29_combout\;
\UUT|ALT_INV_q~28_combout\ <= NOT \UUT|q~28_combout\;
\UUT|ALT_INV_q~27_combout\ <= NOT \UUT|q~27_combout\;
\UUT|ALT_INV_q[7]~16_combout\ <= NOT \UUT|q[7]~16_combout\;
\UUT|ALT_INV_q[7]~_emulated_q\ <= NOT \UUT|q[7]~_emulated_q\;
\UUT|ALT_INV_q[6]~14_combout\ <= NOT \UUT|q[6]~14_combout\;
\UUT|ALT_INV_q[6]~_emulated_q\ <= NOT \UUT|q[6]~_emulated_q\;
\UUT|ALT_INV_q[5]~12_combout\ <= NOT \UUT|q[5]~12_combout\;
\UUT|ALT_INV_q[5]~_emulated_q\ <= NOT \UUT|q[5]~_emulated_q\;
\UUT|ALT_INV_q[4]~10_combout\ <= NOT \UUT|q[4]~10_combout\;
\UUT|ALT_INV_q[4]~_emulated_q\ <= NOT \UUT|q[4]~_emulated_q\;
\UUT|ALT_INV_q[3]~8_combout\ <= NOT \UUT|q[3]~8_combout\;
\UUT|ALT_INV_q[3]~_emulated_q\ <= NOT \UUT|q[3]~_emulated_q\;
\UUT|ALT_INV_q[2]~6_combout\ <= NOT \UUT|q[2]~6_combout\;
\UUT|ALT_INV_q[2]~_emulated_q\ <= NOT \UUT|q[2]~_emulated_q\;
\UUT|ALT_INV_q[1]~4_combout\ <= NOT \UUT|q[1]~4_combout\;
\UUT|ALT_INV_q[1]~_emulated_q\ <= NOT \UUT|q[1]~_emulated_q\;
\UUT|ALT_INV_q[0]~2_combout\ <= NOT \UUT|q[0]~2_combout\;
\UUT|ALT_INV_q[0]~_emulated_q\ <= NOT \UUT|q[0]~_emulated_q\;
\UUT|ALT_INV_q~38_combout\ <= NOT \UUT|q~38_combout\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X19_Y61_N36
\sol~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_sol);

-- Location: IOOBUF_X12_Y61_N36
\sor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|q[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_sor);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: MLABCELL_X19_Y59_N33
\UUT|q[0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[0]~30_combout\ = ( \KEY[3]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|q[0]~30_combout\);

-- Location: LABCELL_X18_Y59_N48
\UUT|q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[0]~1_combout\ = ( \UUT|q[0]~1_combout\ & ( !\UUT|q[0]~30_combout\ ) ) # ( !\UUT|q[0]~1_combout\ & ( (!\KEY[3]~input_o\ & !\UUT|q[0]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_q[0]~30_combout\,
	dataf => \UUT|ALT_INV_q[0]~1_combout\,
	combout => \UUT|q[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X19_Y59_N12
\UUT|q~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~28_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \UUT|q~28_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X18_Y59_N3
\UUT|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Equal0~0_combout\ = (\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	combout => \UUT|Equal0~0_combout\);

-- Location: IOIBUF_X17_Y61_N58
\p[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(2),
	o => \p[2]~input_o\);

-- Location: LABCELL_X17_Y59_N36
\UUT|q~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~33_combout\ = ( \UUT|q[1]~4_combout\ & ( ((!\SW[0]~input_o\ & \SW[1]~input_o\)) # (\p[2]~input_o\) ) ) # ( !\UUT|q[1]~4_combout\ & ( (\p[2]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_p[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_q[1]~4_combout\,
	combout => \UUT|q~33_combout\);

-- Location: IOIBUF_X18_Y61_N1
\p[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(4),
	o => \p[4]~input_o\);

-- Location: LABCELL_X18_Y59_N54
\UUT|q~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~35_combout\ = ( \UUT|q[3]~8_combout\ & ( ((!\SW[0]~input_o\ & \SW[1]~input_o\)) # (\p[4]~input_o\) ) ) # ( !\UUT|q[3]~8_combout\ & ( (\p[4]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_p[4]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_q[3]~8_combout\,
	combout => \UUT|q~35_combout\);

-- Location: IOIBUF_X18_Y61_N18
\p[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(5),
	o => \p[5]~input_o\);

-- Location: LABCELL_X18_Y59_N0
\UUT|q~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~36_combout\ = ( \UUT|q[4]~10_combout\ & ( ((!\SW[0]~input_o\ & \SW[1]~input_o\)) # (\p[5]~input_o\) ) ) # ( !\UUT|q[4]~10_combout\ & ( (\p[5]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_p[5]~input_o\,
	dataf => \UUT|ALT_INV_q[4]~10_combout\,
	combout => \UUT|q~36_combout\);

-- Location: LABCELL_X18_Y59_N51
\UUT|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Equal0~1_combout\ = (!\SW[2]~input_o\ & \UUT|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \UUT|ALT_INV_Equal0~0_combout\,
	combout => \UUT|Equal0~1_combout\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X17_Y61_N41
\p[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(7),
	o => \p[7]~input_o\);

-- Location: LABCELL_X17_Y59_N6
\UUT|q~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~38_combout\ = ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & ((((\UUT|q[7]~16_combout\))))) # (\SW[2]~input_o\ & ((!\SW[0]~input_o\ & (((\UUT|q[7]~16_combout\)))) # (\SW[0]~input_o\ & (\UUT|q[0]~2_combout\)))) ) ) # ( \SW[1]~input_o\ & ( 
-- ((!\SW[0]~input_o\ & (((\UUT|q[6]~14_combout\)))) # (\SW[0]~input_o\ & (\p[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000001000000111100111111101111111011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_p[7]~input_o\,
	datad => \UUT|ALT_INV_q[6]~14_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_q[7]~16_combout\,
	datag => \UUT|ALT_INV_q[0]~2_combout\,
	combout => \UUT|q~38_combout\);

-- Location: LABCELL_X17_Y59_N48
\UUT|q[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[7]~17_combout\ = ( \UUT|q~38_combout\ & ( !\UUT|q[0]~1_combout\ $ (((\UUT|Equal0~1_combout\ & !\SW[9]~input_o\))) ) ) # ( !\UUT|q~38_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|Equal0~1_combout\) # (!\SW[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110001101100011011010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Equal0~1_combout\,
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \UUT|ALT_INV_q~38_combout\,
	combout => \UUT|q[7]~17_combout\);

-- Location: LABCELL_X18_Y59_N57
\UUT|q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[0]~0_combout\ = (!\KEY[3]~input_o\) # (\UUT|q[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UUT|ALT_INV_q[0]~30_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|q[0]~0_combout\);

-- Location: FF_X17_Y59_N50
\UUT|q[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[7]~17_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[7]~_emulated_q\);

-- Location: LABCELL_X17_Y59_N27
\UUT|q[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[7]~16_combout\ = ( \UUT|q[7]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\UUT|q[0]~1_combout\) # (!\KEY[3]~input_o\))) ) ) # ( !\UUT|q[7]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\KEY[3]~input_o\) # (\UUT|q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~30_combout\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[7]~_emulated_q\,
	combout => \UUT|q[7]~16_combout\);

-- Location: IOIBUF_X18_Y61_N35
\p[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(6),
	o => \p[6]~input_o\);

-- Location: LABCELL_X18_Y59_N24
\UUT|q~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~37_combout\ = ( \SW[1]~input_o\ & ( \UUT|q[5]~12_combout\ & ( (!\SW[0]~input_o\) # (\p[6]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \UUT|q[5]~12_combout\ & ( \p[6]~input_o\ ) ) ) # ( \SW[1]~input_o\ & ( !\UUT|q[5]~12_combout\ & ( (\p[6]~input_o\ & 
-- \SW[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\UUT|q[5]~12_combout\ & ( \p[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000110000001100110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_p[6]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_q[5]~12_combout\,
	combout => \UUT|q~37_combout\);

-- Location: LABCELL_X17_Y59_N15
\UUT|q[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[6]~15_combout\ = ( \UUT|q~37_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q[7]~16_combout\ & \UUT|Equal0~0_combout\))) ) ) # ( !\UUT|q~37_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q[7]~16_combout\) # (!\UUT|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q[7]~16_combout\,
	datad => \UUT|ALT_INV_Equal0~0_combout\,
	dataf => \UUT|ALT_INV_q~37_combout\,
	combout => \UUT|q[6]~15_combout\);

-- Location: LABCELL_X17_Y59_N3
\UUT|q[1]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[1]~32_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \UUT|q[1]~32_combout\);

-- Location: FF_X17_Y59_N17
\UUT|q[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[6]~15_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[6]~_emulated_q\);

-- Location: LABCELL_X17_Y59_N39
\UUT|q[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[6]~14_combout\ = ( \UUT|q[6]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\UUT|q[0]~1_combout\) # (!\KEY[3]~input_o\))) ) ) # ( !\UUT|q[6]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\KEY[3]~input_o\) # (\UUT|q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~30_combout\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[6]~_emulated_q\,
	combout => \UUT|q[6]~14_combout\);

-- Location: LABCELL_X18_Y59_N9
\UUT|q[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[5]~13_combout\ = ( \UUT|q~36_combout\ & ( \UUT|q[6]~14_combout\ & ( !\UUT|q[0]~1_combout\ ) ) ) # ( !\UUT|q~36_combout\ & ( \UUT|q[6]~14_combout\ & ( !\UUT|q[0]~1_combout\ $ (!\UUT|Equal0~0_combout\) ) ) ) # ( \UUT|q~36_combout\ & ( 
-- !\UUT|q[6]~14_combout\ & ( !\UUT|q[0]~1_combout\ $ (\UUT|Equal0~0_combout\) ) ) ) # ( !\UUT|q~36_combout\ & ( !\UUT|q[6]~14_combout\ & ( \UUT|q[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010100101010101010101101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \UUT|ALT_INV_Equal0~0_combout\,
	datae => \UUT|ALT_INV_q~36_combout\,
	dataf => \UUT|ALT_INV_q[6]~14_combout\,
	combout => \UUT|q[5]~13_combout\);

-- Location: FF_X18_Y59_N11
\UUT|q[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[5]~13_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[5]~_emulated_q\);

-- Location: LABCELL_X18_Y59_N33
\UUT|q[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[5]~12_combout\ = ( \KEY[3]~input_o\ & ( \UUT|q[5]~_emulated_q\ & ( (!\UUT|q[0]~1_combout\ & !\UUT|q[0]~30_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( \UUT|q[5]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) ) # ( \KEY[3]~input_o\ & ( 
-- !\UUT|q[5]~_emulated_q\ & ( (\UUT|q[0]~1_combout\ & !\UUT|q[0]~30_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( !\UUT|q[5]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010100000101000011110000111100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q[0]~30_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[5]~_emulated_q\,
	combout => \UUT|q[5]~12_combout\);

-- Location: LABCELL_X18_Y59_N42
\UUT|q[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[4]~11_combout\ = ( \UUT|q~35_combout\ & ( \UUT|q[5]~12_combout\ & ( !\UUT|q[0]~1_combout\ ) ) ) # ( !\UUT|q~35_combout\ & ( \UUT|q[5]~12_combout\ & ( !\UUT|Equal0~0_combout\ $ (!\UUT|q[0]~1_combout\) ) ) ) # ( \UUT|q~35_combout\ & ( 
-- !\UUT|q[5]~12_combout\ & ( !\UUT|Equal0~0_combout\ $ (\UUT|q[0]~1_combout\) ) ) ) # ( !\UUT|q~35_combout\ & ( !\UUT|q[5]~12_combout\ & ( \UUT|q[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101001011010010101011010010110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Equal0~0_combout\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datae => \UUT|ALT_INV_q~35_combout\,
	dataf => \UUT|ALT_INV_q[5]~12_combout\,
	combout => \UUT|q[4]~11_combout\);

-- Location: FF_X18_Y59_N44
\UUT|q[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[4]~11_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[4]~_emulated_q\);

-- Location: LABCELL_X18_Y59_N18
\UUT|q[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[4]~10_combout\ = ( !\UUT|q[0]~30_combout\ & ( \UUT|q[4]~_emulated_q\ & ( (!\KEY[3]~input_o\) # (!\UUT|q[0]~1_combout\) ) ) ) # ( !\UUT|q[0]~30_combout\ & ( !\UUT|q[4]~_emulated_q\ & ( (!\KEY[3]~input_o\) # (\UUT|q[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000000000000000011111010111110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datae => \UUT|ALT_INV_q[0]~30_combout\,
	dataf => \UUT|ALT_INV_q[4]~_emulated_q\,
	combout => \UUT|q[4]~10_combout\);

-- Location: IOIBUF_X18_Y61_N52
\p[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(3),
	o => \p[3]~input_o\);

-- Location: LABCELL_X17_Y59_N45
\UUT|q~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~34_combout\ = ( \UUT|q[2]~6_combout\ & ( ((\SW[1]~input_o\ & !\SW[0]~input_o\)) # (\p[3]~input_o\) ) ) # ( !\UUT|q[2]~6_combout\ & ( (\p[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_p[3]~input_o\,
	dataf => \UUT|ALT_INV_q[2]~6_combout\,
	combout => \UUT|q~34_combout\);

-- Location: LABCELL_X18_Y59_N15
\UUT|q[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[3]~9_combout\ = ( \UUT|Equal0~0_combout\ & ( \UUT|q~34_combout\ & ( !\UUT|q[0]~1_combout\ $ (!\UUT|q[4]~10_combout\) ) ) ) # ( !\UUT|Equal0~0_combout\ & ( \UUT|q~34_combout\ & ( !\UUT|q[0]~1_combout\ ) ) ) # ( \UUT|Equal0~0_combout\ & ( 
-- !\UUT|q~34_combout\ & ( !\UUT|q[0]~1_combout\ $ (!\UUT|q[4]~10_combout\) ) ) ) # ( !\UUT|Equal0~0_combout\ & ( !\UUT|q~34_combout\ & ( \UUT|q[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011010101010101010101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \UUT|ALT_INV_q[4]~10_combout\,
	datae => \UUT|ALT_INV_Equal0~0_combout\,
	dataf => \UUT|ALT_INV_q~34_combout\,
	combout => \UUT|q[3]~9_combout\);

-- Location: FF_X18_Y59_N17
\UUT|q[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[3]~9_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[3]~_emulated_q\);

-- Location: LABCELL_X18_Y59_N39
\UUT|q[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[3]~8_combout\ = ( \KEY[3]~input_o\ & ( \UUT|q[3]~_emulated_q\ & ( (!\UUT|q[0]~1_combout\ & !\UUT|q[0]~30_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( \UUT|q[3]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) ) # ( \KEY[3]~input_o\ & ( 
-- !\UUT|q[3]~_emulated_q\ & ( (\UUT|q[0]~1_combout\ & !\UUT|q[0]~30_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( !\UUT|q[3]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010100000101000011110000111100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q[0]~30_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[3]~_emulated_q\,
	combout => \UUT|q[3]~8_combout\);

-- Location: LABCELL_X17_Y59_N57
\UUT|q[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[2]~7_combout\ = ( \UUT|q[3]~8_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|Equal0~0_combout\ & !\UUT|q~33_combout\))) ) ) # ( !\UUT|q[3]~8_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q~33_combout\) # (\UUT|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100101100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Equal0~0_combout\,
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \UUT|ALT_INV_q~33_combout\,
	dataf => \UUT|ALT_INV_q[3]~8_combout\,
	combout => \UUT|q[2]~7_combout\);

-- Location: FF_X17_Y59_N58
\UUT|q[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[2]~7_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[2]~_emulated_q\);

-- Location: LABCELL_X17_Y59_N12
\UUT|q[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[2]~6_combout\ = ( \UUT|q[2]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\UUT|q[0]~1_combout\) # (!\KEY[3]~input_o\))) ) ) # ( !\UUT|q[2]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\KEY[3]~input_o\) # (\UUT|q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q[0]~30_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[2]~_emulated_q\,
	combout => \UUT|q[2]~6_combout\);

-- Location: IOIBUF_X17_Y61_N92
\p[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(1),
	o => \p[1]~input_o\);

-- Location: LABCELL_X17_Y59_N24
\UUT|q~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~31_combout\ = ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & ((\UUT|q[0]~2_combout\))) # (\SW[0]~input_o\ & (\p[1]~input_o\)) ) ) # ( !\SW[1]~input_o\ & ( \p[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_p[1]~input_o\,
	datad => \UUT|ALT_INV_q[0]~2_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \UUT|q~31_combout\);

-- Location: LABCELL_X17_Y59_N42
\UUT|q[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[1]~5_combout\ = ( \UUT|q~31_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q[2]~6_combout\ & \UUT|Equal0~0_combout\))) ) ) # ( !\UUT|q~31_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q[2]~6_combout\) # (!\UUT|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_q[2]~6_combout\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datad => \UUT|ALT_INV_Equal0~0_combout\,
	dataf => \UUT|ALT_INV_q~31_combout\,
	combout => \UUT|q[1]~5_combout\);

-- Location: FF_X17_Y59_N44
\UUT|q[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[1]~5_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	ena => \UUT|q[1]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[1]~_emulated_q\);

-- Location: LABCELL_X17_Y59_N21
\UUT|q[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[1]~4_combout\ = ( \KEY[3]~input_o\ & ( \UUT|q[1]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & !\UUT|q[0]~1_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( \UUT|q[1]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) ) # ( \KEY[3]~input_o\ & ( 
-- !\UUT|q[1]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & \UUT|q[0]~1_combout\) ) ) ) # ( !\KEY[3]~input_o\ & ( !\UUT|q[1]~_emulated_q\ & ( !\UUT|q[0]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010100000101010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_q[0]~30_combout\,
	datac => \UUT|ALT_INV_q[0]~1_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[1]~_emulated_q\,
	combout => \UUT|q[1]~4_combout\);

-- Location: LABCELL_X17_Y59_N0
\UUT|q~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~29_combout\ = ( \UUT|q[1]~4_combout\ & ( (\SW[8]~input_o\) # (\SW[0]~input_o\) ) ) # ( !\UUT|q[1]~4_combout\ & ( (!\SW[0]~input_o\ & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => \UUT|ALT_INV_q[1]~4_combout\,
	combout => \UUT|q~29_combout\);

-- Location: IOIBUF_X17_Y61_N75
\p[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p(0),
	o => \p[0]~input_o\);

-- Location: LABCELL_X17_Y59_N33
\UUT|q~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q~27_combout\ = ( \UUT|q[0]~2_combout\ & ( \UUT|q[7]~16_combout\ & ( ((!\SW[0]~input_o\) # (!\SW[1]~input_o\)) # (\p[0]~input_o\) ) ) ) # ( !\UUT|q[0]~2_combout\ & ( \UUT|q[7]~16_combout\ & ( (\SW[1]~input_o\ & ((!\SW[0]~input_o\ & (\SW[2]~input_o\)) 
-- # (\SW[0]~input_o\ & ((\p[0]~input_o\))))) ) ) ) # ( \UUT|q[0]~2_combout\ & ( !\UUT|q[7]~16_combout\ & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\ & (!\SW[2]~input_o\)) # (\SW[0]~input_o\ & ((\p[0]~input_o\)))) ) ) ) # ( !\UUT|q[0]~2_combout\ & ( 
-- !\UUT|q[7]~16_combout\ & ( (\p[0]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111010001100000000010100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_p[0]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \UUT|ALT_INV_q[0]~2_combout\,
	dataf => \UUT|ALT_INV_q[7]~16_combout\,
	combout => \UUT|q~27_combout\);

-- Location: LABCELL_X17_Y59_N51
\UUT|q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[0]~3_combout\ = ( \UUT|q~27_combout\ & ( !\UUT|q[0]~1_combout\ $ (((\UUT|q~28_combout\ & !\UUT|q~29_combout\))) ) ) # ( !\UUT|q~27_combout\ & ( !\UUT|q[0]~1_combout\ $ (((!\UUT|q~28_combout\) # (!\UUT|q~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q~28_combout\,
	datad => \UUT|ALT_INV_q~29_combout\,
	dataf => \UUT|ALT_INV_q~27_combout\,
	combout => \UUT|q[0]~3_combout\);

-- Location: FF_X17_Y59_N53
\UUT|q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|q[0]~3_combout\,
	clrn => \UUT|ALT_INV_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|q[0]~_emulated_q\);

-- Location: LABCELL_X17_Y59_N54
\UUT|q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|q[0]~2_combout\ = ( \UUT|q[0]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\UUT|q[0]~1_combout\) # (!\KEY[3]~input_o\))) ) ) # ( !\UUT|q[0]~_emulated_q\ & ( (!\UUT|q[0]~30_combout\ & ((!\KEY[3]~input_o\) # (\UUT|q[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_q[0]~1_combout\,
	datac => \UUT|ALT_INV_q[0]~30_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_q[0]~_emulated_q\,
	combout => \UUT|q[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X41_Y17_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


