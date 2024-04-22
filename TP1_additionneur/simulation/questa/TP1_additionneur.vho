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

-- DATE "04/22/2024 11:40:41"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \UUT|b2v_inst|S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst1|S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst2|S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \transs|Mux6~0_combout\ : std_logic;
SIGNAL \transs|Mux5~0_combout\ : std_logic;
SIGNAL \transs|Mux4~0_combout\ : std_logic;
SIGNAL \transs|Mux3~0_combout\ : std_logic;
SIGNAL \transs|Mux2~0_combout\ : std_logic;
SIGNAL \transs|Mux1~0_combout\ : std_logic;
SIGNAL \transs|Mux0~0_combout\ : std_logic;
SIGNAL \transb|Mux6~0_combout\ : std_logic;
SIGNAL \transb|Mux5~0_combout\ : std_logic;
SIGNAL \transb|Mux4~0_combout\ : std_logic;
SIGNAL \transb|Mux3~0_combout\ : std_logic;
SIGNAL \transb|Mux2~0_combout\ : std_logic;
SIGNAL \transb|Mux1~0_combout\ : std_logic;
SIGNAL \transb|Mux0~0_combout\ : std_logic;
SIGNAL \transa|Mux6~0_combout\ : std_logic;
SIGNAL \transa|Mux5~0_combout\ : std_logic;
SIGNAL \transa|Mux4~0_combout\ : std_logic;
SIGNAL \transa|Mux3~0_combout\ : std_logic;
SIGNAL \transa|Mux2~0_combout\ : std_logic;
SIGNAL \transa|Mux1~0_combout\ : std_logic;
SIGNAL \transa|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \transa|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \transb|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \transs|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst3|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst2|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst1|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst1|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \UUT|b2v_inst|ALT_INV_S~0_combout\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\transa|ALT_INV_Mux0~0_combout\ <= NOT \transa|Mux0~0_combout\;
\transb|ALT_INV_Mux0~0_combout\ <= NOT \transb|Mux0~0_combout\;
\transs|ALT_INV_Mux0~0_combout\ <= NOT \transs|Mux0~0_combout\;
\UUT|b2v_inst3|ALT_INV_S~0_combout\ <= NOT \UUT|b2v_inst3|S~0_combout\;
\UUT|b2v_inst2|ALT_INV_S~0_combout\ <= NOT \UUT|b2v_inst2|S~0_combout\;
\UUT|b2v_inst1|ALT_INV_Cout~0_combout\ <= NOT \UUT|b2v_inst1|Cout~0_combout\;
\UUT|b2v_inst1|ALT_INV_S~0_combout\ <= NOT \UUT|b2v_inst1|S~0_combout\;
\UUT|b2v_inst|ALT_INV_S~0_combout\ <= NOT \UUT|b2v_inst|S~0_combout\;

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|b2v_inst|S~0_combout\,
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
	i => \UUT|b2v_inst1|S~0_combout\,
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
	i => \UUT|b2v_inst2|S~0_combout\,
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
	i => \UUT|b2v_inst3|S~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \UUT|b2v_inst3|Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transs|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X7_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X7_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y13_N22
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y12_N5
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X68_Y10_N62
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X68_Y11_N22
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X68_Y11_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transb|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X68_Y13_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X68_Y13_N39
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X68_Y11_N56
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X68_Y11_N39
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X68_Y12_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X68_Y10_N96
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X68_Y10_N79
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \transa|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

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

-- Location: MLABCELL_X60_Y1_N12
\UUT|b2v_inst|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst|S~0_combout\ = ( \SW[0]~input_o\ & ( \SW[9]~input_o\ & ( \SW[4]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( \SW[9]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( \SW[0]~input_o\ & ( !\SW[9]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( !\SW[0]~input_o\ & ( 
-- !\SW[9]~input_o\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \UUT|b2v_inst|S~0_combout\);

-- Location: MLABCELL_X60_Y1_N45
\UUT|b2v_inst1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst1|S~0_combout\ = ( \SW[0]~input_o\ & ( \SW[9]~input_o\ & ( !\SW[5]~input_o\ $ (\SW[1]~input_o\) ) ) ) # ( !\SW[0]~input_o\ & ( \SW[9]~input_o\ & ( !\SW[5]~input_o\ $ (!\SW[1]~input_o\ $ (\SW[4]~input_o\)) ) ) ) # ( \SW[0]~input_o\ & ( 
-- !\SW[9]~input_o\ & ( !\SW[5]~input_o\ $ (!\SW[1]~input_o\ $ (\SW[4]~input_o\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[9]~input_o\ & ( !\SW[5]~input_o\ $ (!\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \UUT|b2v_inst1|S~0_combout\);

-- Location: MLABCELL_X60_Y1_N24
\UUT|b2v_inst1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst1|Cout~0_combout\ = ( \SW[0]~input_o\ & ( \SW[9]~input_o\ & ( (\SW[1]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[0]~input_o\ & ( \SW[9]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\ & 
-- ((\SW[4]~input_o\) # (\SW[1]~input_o\))) ) ) ) # ( \SW[0]~input_o\ & ( !\SW[9]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\ & ((\SW[4]~input_o\) # (\SW[1]~input_o\))) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- !\SW[9]~input_o\ & ( (\SW[5]~input_o\ & \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010111000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \UUT|b2v_inst1|Cout~0_combout\);

-- Location: MLABCELL_X60_Y1_N9
\UUT|b2v_inst2|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst2|S~0_combout\ = ( \SW[2]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( !\SW[6]~input_o\ ) ) ) # ( \SW[2]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( 
-- !\SW[6]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \UUT|b2v_inst1|ALT_INV_Cout~0_combout\,
	combout => \UUT|b2v_inst2|S~0_combout\);

-- Location: MLABCELL_X60_Y1_N36
\UUT|b2v_inst3|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst3|S~0_combout\ = ( \SW[3]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( !\SW[7]~input_o\ $ (((\SW[6]~input_o\) # (\SW[2]~input_o\))) ) ) ) # ( !\SW[3]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( !\SW[7]~input_o\ $ (((!\SW[2]~input_o\ & 
-- !\SW[6]~input_o\))) ) ) ) # ( \SW[3]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( !\SW[7]~input_o\ $ (((\SW[2]~input_o\ & \SW[6]~input_o\))) ) ) ) # ( !\SW[3]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( !\SW[7]~input_o\ $ (((!\SW[2]~input_o\) # 
-- (!\SW[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110110010011100100101101100011011001001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \UUT|b2v_inst1|ALT_INV_Cout~0_combout\,
	combout => \UUT|b2v_inst3|S~0_combout\);

-- Location: MLABCELL_X60_Y1_N33
\UUT|b2v_inst3|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|b2v_inst3|Cout~0_combout\ = ( \SW[2]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( (\SW[7]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \UUT|b2v_inst1|Cout~0_combout\ & ( (!\SW[6]~input_o\ & (\SW[3]~input_o\ & \SW[7]~input_o\)) # 
-- (\SW[6]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\))) ) ) ) # ( \SW[2]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( (!\SW[6]~input_o\ & (\SW[3]~input_o\ & \SW[7]~input_o\)) # (\SW[6]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\))) ) ) ) # ( 
-- !\SW[2]~input_o\ & ( !\UUT|b2v_inst1|Cout~0_combout\ & ( (\SW[3]~input_o\ & \SW[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \UUT|b2v_inst1|ALT_INV_Cout~0_combout\,
	combout => \UUT|b2v_inst3|Cout~0_combout\);

-- Location: MLABCELL_X60_Y1_N48
\transs|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux6~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( (\UUT|b2v_inst3|S~0_combout\ & (!\UUT|b2v_inst2|S~0_combout\ $ (!\UUT|b2v_inst1|S~0_combout\))) ) ) # ( !\UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\ & (\UUT|b2v_inst2|S~0_combout\ 
-- & !\UUT|b2v_inst1|S~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datab => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux6~0_combout\);

-- Location: MLABCELL_X60_Y1_N51
\transs|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux5~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\ & (\UUT|b2v_inst2|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\)) # (\UUT|b2v_inst3|S~0_combout\ & ((\UUT|b2v_inst1|S~0_combout\))) ) ) # ( !\UUT|b2v_inst|S~0_combout\ 
-- & ( \UUT|b2v_inst2|S~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datac => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux5~0_combout\);

-- Location: MLABCELL_X60_Y1_N54
\transs|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux4~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( (\UUT|b2v_inst3|S~0_combout\ & (\UUT|b2v_inst2|S~0_combout\ & \UUT|b2v_inst1|S~0_combout\)) ) ) # ( !\UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\ & (!\UUT|b2v_inst2|S~0_combout\ & 
-- \UUT|b2v_inst1|S~0_combout\)) # (\UUT|b2v_inst3|S~0_combout\ & (\UUT|b2v_inst2|S~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datab => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux4~0_combout\);

-- Location: MLABCELL_X60_Y1_N57
\transs|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux3~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst2|S~0_combout\ & (!\UUT|b2v_inst3|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\)) # (\UUT|b2v_inst2|S~0_combout\ & ((\UUT|b2v_inst1|S~0_combout\))) ) ) # ( !\UUT|b2v_inst|S~0_combout\ 
-- & ( (!\UUT|b2v_inst3|S~0_combout\ & (\UUT|b2v_inst2|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\)) # (\UUT|b2v_inst3|S~0_combout\ & (!\UUT|b2v_inst2|S~0_combout\ & \UUT|b2v_inst1|S~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datac => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux3~0_combout\);

-- Location: MLABCELL_X60_Y1_N0
\transs|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux2~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\) # ((!\UUT|b2v_inst2|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\)) ) ) # ( !\UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\ & 
-- (\UUT|b2v_inst2|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datab => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux2~0_combout\);

-- Location: MLABCELL_X60_Y1_N3
\transs|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux1~0_combout\ = ( \UUT|b2v_inst|S~0_combout\ & ( !\UUT|b2v_inst3|S~0_combout\ $ (((\UUT|b2v_inst2|S~0_combout\ & !\UUT|b2v_inst1|S~0_combout\))) ) ) # ( !\UUT|b2v_inst|S~0_combout\ & ( (!\UUT|b2v_inst3|S~0_combout\ & 
-- (!\UUT|b2v_inst2|S~0_combout\ & \UUT|b2v_inst1|S~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datac => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datad => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux1~0_combout\);

-- Location: MLABCELL_X60_Y1_N18
\transs|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transs|Mux0~0_combout\ = ( \UUT|b2v_inst1|S~0_combout\ & ( \UUT|b2v_inst|S~0_combout\ ) ) # ( !\UUT|b2v_inst1|S~0_combout\ & ( \UUT|b2v_inst|S~0_combout\ & ( (\UUT|b2v_inst3|S~0_combout\) # (\UUT|b2v_inst2|S~0_combout\) ) ) ) # ( 
-- \UUT|b2v_inst1|S~0_combout\ & ( !\UUT|b2v_inst|S~0_combout\ ) ) # ( !\UUT|b2v_inst1|S~0_combout\ & ( !\UUT|b2v_inst|S~0_combout\ & ( !\UUT|b2v_inst2|S~0_combout\ $ (!\UUT|b2v_inst3|S~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|b2v_inst2|ALT_INV_S~0_combout\,
	datac => \UUT|b2v_inst3|ALT_INV_S~0_combout\,
	datae => \UUT|b2v_inst1|ALT_INV_S~0_combout\,
	dataf => \UUT|b2v_inst|ALT_INV_S~0_combout\,
	combout => \transs|Mux0~0_combout\);

-- Location: LABCELL_X13_Y2_N12
\transb|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux6~0_combout\ = ( \SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (\SW[4]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[6]~input_o\ & ( 
-- (\SW[4]~input_o\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux6~0_combout\);

-- Location: LABCELL_X13_Y2_N57
\transb|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux5~0_combout\ = ( \SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[5]~input_o\) # (!\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[6]~input_o\ & ( 
-- (\SW[5]~input_o\ & \SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010111111010111110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux5~0_combout\);

-- Location: LABCELL_X61_Y11_N36
\transb|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux4~0_combout\ = ( \SW[4]~input_o\ & ( \SW[6]~input_o\ & ( (\SW[7]~input_o\ & \SW[5]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[6]~input_o\ & ( \SW[7]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[7]~input_o\ & 
-- \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000110011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux4~0_combout\);

-- Location: LABCELL_X61_Y11_N45
\transb|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux3~0_combout\ = ( \SW[4]~input_o\ & ( \SW[6]~input_o\ & ( \SW[5]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[5]~input_o\ & !\SW[7]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[5]~input_o\ & 
-- !\SW[7]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (\SW[5]~input_o\ & \SW[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux3~0_combout\);

-- Location: LABCELL_X61_Y11_N0
\transb|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux2~0_combout\ = ( \SW[4]~input_o\ & ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[7]~input_o\ & !\SW[5]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[7]~input_o\) # 
-- (!\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110011000000110000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux2~0_combout\);

-- Location: LABCELL_X61_Y11_N30
\transb|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux1~0_combout\ = ( \SW[4]~input_o\ & ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ $ (!\SW[5]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (!\SW[7]~input_o\ & 
-- \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011001100110000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux1~0_combout\);

-- Location: LABCELL_X61_Y11_N27
\transb|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transb|Mux0~0_combout\ = ( \SW[4]~input_o\ & ( \SW[6]~input_o\ ) ) # ( !\SW[4]~input_o\ & ( \SW[6]~input_o\ & ( (!\SW[7]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (\SW[7]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( 
-- !\SW[4]~input_o\ & ( !\SW[6]~input_o\ & ( (\SW[7]~input_o\) # (\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \transb|Mux0~0_combout\);

-- Location: LABCELL_X67_Y11_N24
\transa|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux6~0_combout\ = ( \SW[1]~input_o\ & ( (\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & (!\SW[3]~input_o\ $ (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux6~0_combout\);

-- Location: LABCELL_X67_Y11_N21
\transa|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux5~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[2]~input_o\)) # (\SW[0]~input_o\ & ((\SW[3]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux5~0_combout\);

-- Location: LABCELL_X67_Y11_N51
\transa|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux4~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[3]~input_o\)) # (\SW[2]~input_o\ & ((\SW[3]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & (!\SW[0]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux4~0_combout\);

-- Location: LABCELL_X67_Y11_N54
\transa|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux3~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)) # (\SW[2]~input_o\ & ((\SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux3~0_combout\);

-- Location: LABCELL_X67_Y11_N36
\transa|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & \SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (\SW[2]~input_o\ & (!\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux2~0_combout\);

-- Location: LABCELL_X67_Y11_N33
\transa|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux1~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[2]~input_o\) # (\SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[2]~input_o\ $ (\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux1~0_combout\);

-- Location: LABCELL_X67_Y11_N12
\transa|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \transa|Mux0~0_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\ & (\SW[2]~input_o\)) # (\SW[3]~input_o\ & ((!\SW[2]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \transa|Mux0~0_combout\);

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

-- Location: LABCELL_X56_Y39_N3
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


