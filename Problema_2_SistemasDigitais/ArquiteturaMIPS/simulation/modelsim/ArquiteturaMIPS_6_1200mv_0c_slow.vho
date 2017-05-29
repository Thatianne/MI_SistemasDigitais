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

-- DATE "05/29/2017 00:47:34"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ulaOp IS
    PORT (
	code : IN std_logic_vector(5 DOWNTO 0);
	opCode : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END ulaOp;

-- Design Ports Information
-- code[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opCode[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ulaOp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_code : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_opCode : std_logic_vector(2 DOWNTO 0);
SIGNAL \code[0]~input_o\ : std_logic;
SIGNAL \code[1]~input_o\ : std_logic;
SIGNAL \code[2]~input_o\ : std_logic;
SIGNAL \code[3]~input_o\ : std_logic;
SIGNAL \code[4]~input_o\ : std_logic;
SIGNAL \code[5]~input_o\ : std_logic;
SIGNAL \opCode[0]~output_o\ : std_logic;
SIGNAL \opCode[1]~output_o\ : std_logic;
SIGNAL \opCode[2]~output_o\ : std_logic;

BEGIN

ww_code <= code;
opCode <= ww_opCode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X26_Y31_N2
\opCode[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \opCode[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\opCode[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \opCode[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\opCode[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \opCode[2]~output_o\);

-- Location: IOIBUF_X33_Y22_N8
\code[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(0),
	o => \code[0]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\code[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(1),
	o => \code[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\code[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(2),
	o => \code[2]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\code[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(3),
	o => \code[3]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\code[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(4),
	o => \code[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\code[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_code(5),
	o => \code[5]~input_o\);

ww_opCode(0) <= \opCode[0]~output_o\;

ww_opCode(1) <= \opCode[1]~output_o\;

ww_opCode(2) <= \opCode[2]~output_o\;
END structure;


