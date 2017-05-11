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

-- DATE "05/07/2017 17:02:37"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bancoRegistradores IS
    PORT (
	clock : IN std_logic;
	modeWE : IN std_logic;
	enable : IN std_logic;
	addr1 : IN std_logic_vector(4 DOWNTO 0);
	addr2 : IN std_logic_vector(4 DOWNTO 0);
	addrDataIn : IN std_logic_vector(31 DOWNTO 0);
	dataIn : IN std_logic_vector(31 DOWNTO 0);
	data1 : OUT std_logic_vector(31 DOWNTO 0);
	data2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END bancoRegistradores;

-- Design Ports Information
-- addrDataIn[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[7]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[12]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[14]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[16]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[17]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[18]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[19]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[20]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[21]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[22]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[23]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[24]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[25]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[26]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[27]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[28]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[29]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[31]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[8]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[17]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[18]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[19]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[20]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[22]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[23]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[24]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[26]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[27]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[28]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[29]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[30]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[31]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[9]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[10]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[13]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[14]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[15]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[16]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[17]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[20]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[21]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[22]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[24]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[25]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[26]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[27]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[28]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[29]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[30]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[31]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- modeWE	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrDataIn[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr1[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr1[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr1[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr1[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr1[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[14]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[15]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[16]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[18]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[19]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[21]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[22]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[23]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[24]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[25]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[26]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[27]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[28]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[30]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[31]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr2[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr2[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr2[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr2[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr2[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bancoRegistradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_modeWE : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_addr1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_addr2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_addrDataIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dataIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mem_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mem_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \always0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addrDataIn[5]~input_o\ : std_logic;
SIGNAL \addrDataIn[6]~input_o\ : std_logic;
SIGNAL \addrDataIn[7]~input_o\ : std_logic;
SIGNAL \addrDataIn[8]~input_o\ : std_logic;
SIGNAL \addrDataIn[9]~input_o\ : std_logic;
SIGNAL \addrDataIn[10]~input_o\ : std_logic;
SIGNAL \addrDataIn[11]~input_o\ : std_logic;
SIGNAL \addrDataIn[12]~input_o\ : std_logic;
SIGNAL \addrDataIn[13]~input_o\ : std_logic;
SIGNAL \addrDataIn[14]~input_o\ : std_logic;
SIGNAL \addrDataIn[15]~input_o\ : std_logic;
SIGNAL \addrDataIn[16]~input_o\ : std_logic;
SIGNAL \addrDataIn[17]~input_o\ : std_logic;
SIGNAL \addrDataIn[18]~input_o\ : std_logic;
SIGNAL \addrDataIn[19]~input_o\ : std_logic;
SIGNAL \addrDataIn[20]~input_o\ : std_logic;
SIGNAL \addrDataIn[21]~input_o\ : std_logic;
SIGNAL \addrDataIn[22]~input_o\ : std_logic;
SIGNAL \addrDataIn[23]~input_o\ : std_logic;
SIGNAL \addrDataIn[24]~input_o\ : std_logic;
SIGNAL \addrDataIn[25]~input_o\ : std_logic;
SIGNAL \addrDataIn[26]~input_o\ : std_logic;
SIGNAL \addrDataIn[27]~input_o\ : std_logic;
SIGNAL \addrDataIn[28]~input_o\ : std_logic;
SIGNAL \addrDataIn[29]~input_o\ : std_logic;
SIGNAL \addrDataIn[30]~input_o\ : std_logic;
SIGNAL \addrDataIn[31]~input_o\ : std_logic;
SIGNAL \data1[0]~output_o\ : std_logic;
SIGNAL \data1[1]~output_o\ : std_logic;
SIGNAL \data1[2]~output_o\ : std_logic;
SIGNAL \data1[3]~output_o\ : std_logic;
SIGNAL \data1[4]~output_o\ : std_logic;
SIGNAL \data1[5]~output_o\ : std_logic;
SIGNAL \data1[6]~output_o\ : std_logic;
SIGNAL \data1[7]~output_o\ : std_logic;
SIGNAL \data1[8]~output_o\ : std_logic;
SIGNAL \data1[9]~output_o\ : std_logic;
SIGNAL \data1[10]~output_o\ : std_logic;
SIGNAL \data1[11]~output_o\ : std_logic;
SIGNAL \data1[12]~output_o\ : std_logic;
SIGNAL \data1[13]~output_o\ : std_logic;
SIGNAL \data1[14]~output_o\ : std_logic;
SIGNAL \data1[15]~output_o\ : std_logic;
SIGNAL \data1[16]~output_o\ : std_logic;
SIGNAL \data1[17]~output_o\ : std_logic;
SIGNAL \data1[18]~output_o\ : std_logic;
SIGNAL \data1[19]~output_o\ : std_logic;
SIGNAL \data1[20]~output_o\ : std_logic;
SIGNAL \data1[21]~output_o\ : std_logic;
SIGNAL \data1[22]~output_o\ : std_logic;
SIGNAL \data1[23]~output_o\ : std_logic;
SIGNAL \data1[24]~output_o\ : std_logic;
SIGNAL \data1[25]~output_o\ : std_logic;
SIGNAL \data1[26]~output_o\ : std_logic;
SIGNAL \data1[27]~output_o\ : std_logic;
SIGNAL \data1[28]~output_o\ : std_logic;
SIGNAL \data1[29]~output_o\ : std_logic;
SIGNAL \data1[30]~output_o\ : std_logic;
SIGNAL \data1[31]~output_o\ : std_logic;
SIGNAL \data2[0]~output_o\ : std_logic;
SIGNAL \data2[1]~output_o\ : std_logic;
SIGNAL \data2[2]~output_o\ : std_logic;
SIGNAL \data2[3]~output_o\ : std_logic;
SIGNAL \data2[4]~output_o\ : std_logic;
SIGNAL \data2[5]~output_o\ : std_logic;
SIGNAL \data2[6]~output_o\ : std_logic;
SIGNAL \data2[7]~output_o\ : std_logic;
SIGNAL \data2[8]~output_o\ : std_logic;
SIGNAL \data2[9]~output_o\ : std_logic;
SIGNAL \data2[10]~output_o\ : std_logic;
SIGNAL \data2[11]~output_o\ : std_logic;
SIGNAL \data2[12]~output_o\ : std_logic;
SIGNAL \data2[13]~output_o\ : std_logic;
SIGNAL \data2[14]~output_o\ : std_logic;
SIGNAL \data2[15]~output_o\ : std_logic;
SIGNAL \data2[16]~output_o\ : std_logic;
SIGNAL \data2[17]~output_o\ : std_logic;
SIGNAL \data2[18]~output_o\ : std_logic;
SIGNAL \data2[19]~output_o\ : std_logic;
SIGNAL \data2[20]~output_o\ : std_logic;
SIGNAL \data2[21]~output_o\ : std_logic;
SIGNAL \data2[22]~output_o\ : std_logic;
SIGNAL \data2[23]~output_o\ : std_logic;
SIGNAL \data2[24]~output_o\ : std_logic;
SIGNAL \data2[25]~output_o\ : std_logic;
SIGNAL \data2[26]~output_o\ : std_logic;
SIGNAL \data2[27]~output_o\ : std_logic;
SIGNAL \data2[28]~output_o\ : std_logic;
SIGNAL \data2[29]~output_o\ : std_logic;
SIGNAL \data2[30]~output_o\ : std_logic;
SIGNAL \data2[31]~output_o\ : std_logic;
SIGNAL \modeWE~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~0clkctrl_outclk\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \addrDataIn[0]~input_o\ : std_logic;
SIGNAL \addrDataIn[1]~input_o\ : std_logic;
SIGNAL \addrDataIn[2]~input_o\ : std_logic;
SIGNAL \addrDataIn[3]~input_o\ : std_logic;
SIGNAL \addrDataIn[4]~input_o\ : std_logic;
SIGNAL \addr1[0]~input_o\ : std_logic;
SIGNAL \addr1[1]~input_o\ : std_logic;
SIGNAL \addr1[2]~input_o\ : std_logic;
SIGNAL \addr1[3]~input_o\ : std_logic;
SIGNAL \addr1[4]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[8]~input_o\ : std_logic;
SIGNAL \dataIn[9]~input_o\ : std_logic;
SIGNAL \dataIn[10]~input_o\ : std_logic;
SIGNAL \dataIn[11]~input_o\ : std_logic;
SIGNAL \dataIn[12]~input_o\ : std_logic;
SIGNAL \dataIn[13]~input_o\ : std_logic;
SIGNAL \dataIn[14]~input_o\ : std_logic;
SIGNAL \dataIn[15]~input_o\ : std_logic;
SIGNAL \dataIn[16]~input_o\ : std_logic;
SIGNAL \dataIn[17]~input_o\ : std_logic;
SIGNAL \dataIn[18]~input_o\ : std_logic;
SIGNAL \dataIn[19]~input_o\ : std_logic;
SIGNAL \dataIn[20]~input_o\ : std_logic;
SIGNAL \dataIn[21]~input_o\ : std_logic;
SIGNAL \dataIn[22]~input_o\ : std_logic;
SIGNAL \dataIn[23]~input_o\ : std_logic;
SIGNAL \dataIn[24]~input_o\ : std_logic;
SIGNAL \dataIn[25]~input_o\ : std_logic;
SIGNAL \dataIn[26]~input_o\ : std_logic;
SIGNAL \dataIn[27]~input_o\ : std_logic;
SIGNAL \dataIn[28]~input_o\ : std_logic;
SIGNAL \dataIn[29]~input_o\ : std_logic;
SIGNAL \dataIn[30]~input_o\ : std_logic;
SIGNAL \dataIn[31]~input_o\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mem_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \addr2[0]~input_o\ : std_logic;
SIGNAL \addr2[1]~input_o\ : std_logic;
SIGNAL \addr2[2]~input_o\ : std_logic;
SIGNAL \addr2[3]~input_o\ : std_logic;
SIGNAL \addr2[4]~input_o\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mem_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \ALT_INV_modeWE~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_modeWE <= modeWE;
ww_enable <= enable;
ww_addr1 <= addr1;
ww_addr2 <= addr2;
ww_addrDataIn <= addrDataIn;
ww_dataIn <= dataIn;
data1 <= ww_data1;
data2 <= ww_data2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \dataIn[31]~input_o\ & \dataIn[30]~input_o\ & \dataIn[29]~input_o\ & \dataIn[28]~input_o\ & \dataIn[27]~input_o\ & \dataIn[26]~input_o\ & \dataIn[25]~input_o\ & 
\dataIn[24]~input_o\ & \dataIn[23]~input_o\ & \dataIn[22]~input_o\ & \dataIn[21]~input_o\ & \dataIn[20]~input_o\ & \dataIn[19]~input_o\ & \dataIn[18]~input_o\ & \dataIn[17]~input_o\ & \dataIn[16]~input_o\ & \dataIn[15]~input_o\ & \dataIn[14]~input_o\ & 
\dataIn[13]~input_o\ & \dataIn[12]~input_o\ & \dataIn[11]~input_o\ & \dataIn[10]~input_o\ & \dataIn[9]~input_o\ & \dataIn[8]~input_o\ & \dataIn[7]~input_o\ & \dataIn[6]~input_o\ & \dataIn[5]~input_o\ & \dataIn[4]~input_o\ & \dataIn[3]~input_o\ & 
\dataIn[2]~input_o\ & \dataIn[1]~input_o\ & \dataIn[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addrDataIn[4]~input_o\ & \addrDataIn[3]~input_o\ & \addrDataIn[2]~input_o\ & \addrDataIn[1]~input_o\ & \addrDataIn[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr1[4]~input_o\ & \addr1[3]~input_o\ & \addr1[2]~input_o\ & \addr1[1]~input_o\ & \addr1[0]~input_o\);

\mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mem_rtl_0|auto_generated|ram_block1a1\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mem_rtl_0|auto_generated|ram_block1a2\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mem_rtl_0|auto_generated|ram_block1a3\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mem_rtl_0|auto_generated|ram_block1a4\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mem_rtl_0|auto_generated|ram_block1a5\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mem_rtl_0|auto_generated|ram_block1a6\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mem_rtl_0|auto_generated|ram_block1a7\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mem_rtl_0|auto_generated|ram_block1a8\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mem_rtl_0|auto_generated|ram_block1a9\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mem_rtl_0|auto_generated|ram_block1a10\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mem_rtl_0|auto_generated|ram_block1a11\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mem_rtl_0|auto_generated|ram_block1a12\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mem_rtl_0|auto_generated|ram_block1a13\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mem_rtl_0|auto_generated|ram_block1a14\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mem_rtl_0|auto_generated|ram_block1a15\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\mem_rtl_0|auto_generated|ram_block1a16\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\mem_rtl_0|auto_generated|ram_block1a17\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\mem_rtl_0|auto_generated|ram_block1a18\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\mem_rtl_0|auto_generated|ram_block1a19\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\mem_rtl_0|auto_generated|ram_block1a20\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\mem_rtl_0|auto_generated|ram_block1a21\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\mem_rtl_0|auto_generated|ram_block1a22\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\mem_rtl_0|auto_generated|ram_block1a23\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\mem_rtl_0|auto_generated|ram_block1a24\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\mem_rtl_0|auto_generated|ram_block1a25\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\mem_rtl_0|auto_generated|ram_block1a26\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\mem_rtl_0|auto_generated|ram_block1a27\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\mem_rtl_0|auto_generated|ram_block1a28\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\mem_rtl_0|auto_generated|ram_block1a29\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\mem_rtl_0|auto_generated|ram_block1a30\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\mem_rtl_0|auto_generated|ram_block1a31\ <= \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\mem_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \dataIn[31]~input_o\ & \dataIn[30]~input_o\ & \dataIn[29]~input_o\ & \dataIn[28]~input_o\ & \dataIn[27]~input_o\ & \dataIn[26]~input_o\ & \dataIn[25]~input_o\ & 
\dataIn[24]~input_o\ & \dataIn[23]~input_o\ & \dataIn[22]~input_o\ & \dataIn[21]~input_o\ & \dataIn[20]~input_o\ & \dataIn[19]~input_o\ & \dataIn[18]~input_o\ & \dataIn[17]~input_o\ & \dataIn[16]~input_o\ & \dataIn[15]~input_o\ & \dataIn[14]~input_o\ & 
\dataIn[13]~input_o\ & \dataIn[12]~input_o\ & \dataIn[11]~input_o\ & \dataIn[10]~input_o\ & \dataIn[9]~input_o\ & \dataIn[8]~input_o\ & \dataIn[7]~input_o\ & \dataIn[6]~input_o\ & \dataIn[5]~input_o\ & \dataIn[4]~input_o\ & \dataIn[3]~input_o\ & 
\dataIn[2]~input_o\ & \dataIn[1]~input_o\ & \dataIn[0]~input_o\);

\mem_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addrDataIn[4]~input_o\ & \addrDataIn[3]~input_o\ & \addrDataIn[2]~input_o\ & \addrDataIn[1]~input_o\ & \addrDataIn[0]~input_o\);

\mem_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr2[4]~input_o\ & \addr2[3]~input_o\ & \addr2[2]~input_o\ & \addr2[1]~input_o\ & \addr2[0]~input_o\);

\mem_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mem_rtl_1|auto_generated|ram_block1a1\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mem_rtl_1|auto_generated|ram_block1a2\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mem_rtl_1|auto_generated|ram_block1a3\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mem_rtl_1|auto_generated|ram_block1a4\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mem_rtl_1|auto_generated|ram_block1a5\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mem_rtl_1|auto_generated|ram_block1a6\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mem_rtl_1|auto_generated|ram_block1a7\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\mem_rtl_1|auto_generated|ram_block1a8\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\mem_rtl_1|auto_generated|ram_block1a9\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\mem_rtl_1|auto_generated|ram_block1a10\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\mem_rtl_1|auto_generated|ram_block1a11\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\mem_rtl_1|auto_generated|ram_block1a12\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\mem_rtl_1|auto_generated|ram_block1a13\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\mem_rtl_1|auto_generated|ram_block1a14\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\mem_rtl_1|auto_generated|ram_block1a15\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\mem_rtl_1|auto_generated|ram_block1a16\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\mem_rtl_1|auto_generated|ram_block1a17\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\mem_rtl_1|auto_generated|ram_block1a18\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\mem_rtl_1|auto_generated|ram_block1a19\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\mem_rtl_1|auto_generated|ram_block1a20\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\mem_rtl_1|auto_generated|ram_block1a21\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\mem_rtl_1|auto_generated|ram_block1a22\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\mem_rtl_1|auto_generated|ram_block1a23\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\mem_rtl_1|auto_generated|ram_block1a24\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\mem_rtl_1|auto_generated|ram_block1a25\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\mem_rtl_1|auto_generated|ram_block1a26\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\mem_rtl_1|auto_generated|ram_block1a27\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\mem_rtl_1|auto_generated|ram_block1a28\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\mem_rtl_1|auto_generated|ram_block1a29\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\mem_rtl_1|auto_generated|ram_block1a30\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\mem_rtl_1|auto_generated|ram_block1a31\ <= \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\always0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \always0~0_combout\);
\ALT_INV_modeWE~input_o\ <= NOT \modeWE~input_o\;

-- Location: IOOBUF_X17_Y67_N9
\data1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \data1[0]~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\data1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \data1[1]~output_o\);

-- Location: IOOBUF_X22_Y67_N2
\data1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \data1[2]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\data1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \data1[3]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\data1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \data1[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \data1[5]~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\data1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \data1[6]~output_o\);

-- Location: IOOBUF_X31_Y67_N23
\data1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \data1[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\data1[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \data1[8]~output_o\);

-- Location: IOOBUF_X13_Y67_N9
\data1[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \data1[9]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\data1[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \data1[10]~output_o\);

-- Location: IOOBUF_X33_Y0_N16
\data1[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \data1[11]~output_o\);

-- Location: IOOBUF_X29_Y67_N9
\data1[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \data1[12]~output_o\);

-- Location: IOOBUF_X58_Y67_N16
\data1[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \data1[13]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\data1[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \data1[14]~output_o\);

-- Location: IOOBUF_X15_Y67_N16
\data1[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \data1[15]~output_o\);

-- Location: IOOBUF_X56_Y67_N16
\data1[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \data1[16]~output_o\);

-- Location: IOOBUF_X15_Y67_N2
\data1[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \data1[17]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\data1[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \data1[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\data1[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \data1[19]~output_o\);

-- Location: IOOBUF_X81_Y64_N23
\data1[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \data1[20]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\data1[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \data1[21]~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\data1[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \data1[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\data1[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \data1[23]~output_o\);

-- Location: IOOBUF_X26_Y67_N9
\data1[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \data1[24]~output_o\);

-- Location: IOOBUF_X33_Y67_N9
\data1[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \data1[25]~output_o\);

-- Location: IOOBUF_X24_Y67_N9
\data1[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \data1[26]~output_o\);

-- Location: IOOBUF_X29_Y67_N2
\data1[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \data1[27]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\data1[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \data1[28]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\data1[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \data1[29]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\data1[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \data1[30]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\data1[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \data1[31]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\data2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \data2[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\data2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \data2[1]~output_o\);

-- Location: IOOBUF_X58_Y67_N23
\data2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \data2[2]~output_o\);

-- Location: IOOBUF_X81_Y63_N2
\data2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \data2[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\data2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \data2[4]~output_o\);

-- Location: IOOBUF_X19_Y67_N9
\data2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \data2[5]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\data2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \data2[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data2[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \data2[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N23
\data2[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \data2[8]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\data2[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \data2[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\data2[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \data2[10]~output_o\);

-- Location: IOOBUF_X54_Y67_N9
\data2[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \data2[11]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\data2[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \data2[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data2[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \data2[13]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\data2[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \data2[14]~output_o\);

-- Location: IOOBUF_X65_Y67_N9
\data2[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \data2[15]~output_o\);

-- Location: IOOBUF_X15_Y67_N9
\data2[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \data2[16]~output_o\);

-- Location: IOOBUF_X17_Y67_N23
\data2[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \data2[17]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\data2[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \data2[18]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\data2[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \data2[19]~output_o\);

-- Location: IOOBUF_X17_Y67_N2
\data2[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \data2[20]~output_o\);

-- Location: IOOBUF_X65_Y67_N2
\data2[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \data2[21]~output_o\);

-- Location: IOOBUF_X54_Y67_N16
\data2[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \data2[22]~output_o\);

-- Location: IOOBUF_X33_Y67_N2
\data2[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \data2[23]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\data2[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \data2[24]~output_o\);

-- Location: IOOBUF_X24_Y67_N23
\data2[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \data2[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\data2[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \data2[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\data2[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \data2[27]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\data2[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \data2[28]~output_o\);

-- Location: IOOBUF_X19_Y67_N23
\data2[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \data2[29]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\data2[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \data2[30]~output_o\);

-- Location: IOOBUF_X81_Y42_N2
\data2[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rtl_1|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \data2[31]~output_o\);

-- Location: IOIBUF_X33_Y67_N22
\modeWE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_modeWE,
	o => \modeWE~input_o\);

-- Location: IOIBUF_X70_Y67_N8
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X39_Y66_N10
\always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = LCELL((\enable~input_o\ & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \clock~input_o\,
	combout => \always0~0_combout\);

-- Location: CLKCTRL_G23
\always0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \always0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \always0~0clkctrl_outclk\);

-- Location: IOIBUF_X44_Y67_N8
\dataIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: IOIBUF_X52_Y67_N22
\addrDataIn[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(0),
	o => \addrDataIn[0]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\addrDataIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(1),
	o => \addrDataIn[1]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\addrDataIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(2),
	o => \addrDataIn[2]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\addrDataIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(3),
	o => \addrDataIn[3]~input_o\);

-- Location: IOIBUF_X49_Y67_N1
\addrDataIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(4),
	o => \addrDataIn[4]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\addr1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr1(0),
	o => \addr1[0]~input_o\);

-- Location: IOIBUF_X81_Y64_N15
\addr1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr1(1),
	o => \addr1[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\addr1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr1(2),
	o => \addr1[2]~input_o\);

-- Location: IOIBUF_X56_Y67_N8
\addr1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr1(3),
	o => \addr1[3]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\addr1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr1(4),
	o => \addr1[4]~input_o\);

-- Location: IOIBUF_X44_Y67_N15
\dataIn[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: IOIBUF_X42_Y67_N8
\dataIn[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: IOIBUF_X38_Y67_N1
\dataIn[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: IOIBUF_X38_Y67_N8
\dataIn[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: IOIBUF_X52_Y67_N15
\dataIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X29_Y67_N22
\dataIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: IOIBUF_X61_Y67_N8
\dataIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: IOIBUF_X42_Y67_N1
\dataIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(8),
	o => \dataIn[8]~input_o\);

-- Location: IOIBUF_X17_Y67_N15
\dataIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(9),
	o => \dataIn[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\dataIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(10),
	o => \dataIn[10]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\dataIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(11),
	o => \dataIn[11]~input_o\);

-- Location: IOIBUF_X42_Y67_N15
\dataIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(12),
	o => \dataIn[12]~input_o\);

-- Location: IOIBUF_X44_Y67_N22
\dataIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(13),
	o => \dataIn[13]~input_o\);

-- Location: IOIBUF_X49_Y67_N22
\dataIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(14),
	o => \dataIn[14]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\dataIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(15),
	o => \dataIn[15]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\dataIn[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(16),
	o => \dataIn[16]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\dataIn[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(17),
	o => \dataIn[17]~input_o\);

-- Location: IOIBUF_X42_Y67_N22
\dataIn[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(18),
	o => \dataIn[18]~input_o\);

-- Location: IOIBUF_X49_Y67_N8
\dataIn[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(19),
	o => \dataIn[19]~input_o\);

-- Location: IOIBUF_X33_Y67_N15
\dataIn[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(20),
	o => \dataIn[20]~input_o\);

-- Location: IOIBUF_X52_Y67_N8
\dataIn[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(21),
	o => \dataIn[21]~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\dataIn[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(22),
	o => \dataIn[22]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\dataIn[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(23),
	o => \dataIn[23]~input_o\);

-- Location: IOIBUF_X24_Y67_N1
\dataIn[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(24),
	o => \dataIn[24]~input_o\);

-- Location: IOIBUF_X19_Y67_N15
\dataIn[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(25),
	o => \dataIn[25]~input_o\);

-- Location: IOIBUF_X24_Y67_N15
\dataIn[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(26),
	o => \dataIn[26]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\dataIn[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(27),
	o => \dataIn[27]~input_o\);

-- Location: IOIBUF_X61_Y67_N1
\dataIn[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(28),
	o => \dataIn[28]~input_o\);

-- Location: IOIBUF_X29_Y67_N15
\dataIn[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(29),
	o => \dataIn[29]~input_o\);

-- Location: IOIBUF_X58_Y67_N8
\dataIn[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(30),
	o => \dataIn[30]~input_o\);

-- Location: IOIBUF_X52_Y67_N1
\dataIn[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(31),
	o => \dataIn[31]~input_o\);

-- Location: M9K_X35_Y64_N0
\mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_rtl_0|altsyncram_usd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \modeWE~input_o\,
	portbre => VCC,
	clk0 => \always0~0clkctrl_outclk\,
	clk1 => \always0~0clkctrl_outclk\,
	ena0 => \modeWE~input_o\,
	ena1 => \ALT_INV_modeWE~input_o\,
	portadatain => \mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X47_Y0_N1
\addr2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr2(0),
	o => \addr2[0]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\addr2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr2(1),
	o => \addr2[1]~input_o\);

-- Location: IOIBUF_X63_Y67_N1
\addr2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr2(2),
	o => \addr2[2]~input_o\);

-- Location: IOIBUF_X63_Y67_N8
\addr2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr2(3),
	o => \addr2[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\addr2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr2(4),
	o => \addr2[4]~input_o\);

-- Location: M9K_X35_Y63_N0
\mem_rtl_1|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_rtl_1|altsyncram_usd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \modeWE~input_o\,
	portbre => VCC,
	clk0 => \always0~0clkctrl_outclk\,
	clk1 => \always0~0clkctrl_outclk\,
	ena0 => \modeWE~input_o\,
	ena1 => \ALT_INV_modeWE~input_o\,
	portadatain => \mem_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X81_Y65_N8
\addrDataIn[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(5),
	o => \addrDataIn[5]~input_o\);

-- Location: IOIBUF_X81_Y4_N8
\addrDataIn[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(6),
	o => \addrDataIn[6]~input_o\);

-- Location: IOIBUF_X81_Y50_N1
\addrDataIn[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(7),
	o => \addrDataIn[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\addrDataIn[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(8),
	o => \addrDataIn[8]~input_o\);

-- Location: IOIBUF_X81_Y2_N22
\addrDataIn[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(9),
	o => \addrDataIn[9]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\addrDataIn[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(10),
	o => \addrDataIn[10]~input_o\);

-- Location: IOIBUF_X81_Y25_N8
\addrDataIn[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(11),
	o => \addrDataIn[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\addrDataIn[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(12),
	o => \addrDataIn[12]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\addrDataIn[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(13),
	o => \addrDataIn[13]~input_o\);

-- Location: IOIBUF_X81_Y8_N1
\addrDataIn[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(14),
	o => \addrDataIn[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\addrDataIn[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(15),
	o => \addrDataIn[15]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\addrDataIn[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(16),
	o => \addrDataIn[16]~input_o\);

-- Location: IOIBUF_X81_Y9_N1
\addrDataIn[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(17),
	o => \addrDataIn[17]~input_o\);

-- Location: IOIBUF_X81_Y55_N8
\addrDataIn[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(18),
	o => \addrDataIn[18]~input_o\);

-- Location: IOIBUF_X81_Y4_N22
\addrDataIn[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(19),
	o => \addrDataIn[19]~input_o\);

-- Location: IOIBUF_X81_Y7_N1
\addrDataIn[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(20),
	o => \addrDataIn[20]~input_o\);

-- Location: IOIBUF_X81_Y39_N1
\addrDataIn[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(21),
	o => \addrDataIn[21]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\addrDataIn[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(22),
	o => \addrDataIn[22]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\addrDataIn[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(23),
	o => \addrDataIn[23]~input_o\);

-- Location: IOIBUF_X81_Y6_N15
\addrDataIn[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(24),
	o => \addrDataIn[24]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\addrDataIn[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(25),
	o => \addrDataIn[25]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\addrDataIn[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(26),
	o => \addrDataIn[26]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\addrDataIn[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(27),
	o => \addrDataIn[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\addrDataIn[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(28),
	o => \addrDataIn[28]~input_o\);

-- Location: IOIBUF_X81_Y21_N1
\addrDataIn[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(29),
	o => \addrDataIn[29]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\addrDataIn[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(30),
	o => \addrDataIn[30]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\addrDataIn[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrDataIn(31),
	o => \addrDataIn[31]~input_o\);

ww_data1(0) <= \data1[0]~output_o\;

ww_data1(1) <= \data1[1]~output_o\;

ww_data1(2) <= \data1[2]~output_o\;

ww_data1(3) <= \data1[3]~output_o\;

ww_data1(4) <= \data1[4]~output_o\;

ww_data1(5) <= \data1[5]~output_o\;

ww_data1(6) <= \data1[6]~output_o\;

ww_data1(7) <= \data1[7]~output_o\;

ww_data1(8) <= \data1[8]~output_o\;

ww_data1(9) <= \data1[9]~output_o\;

ww_data1(10) <= \data1[10]~output_o\;

ww_data1(11) <= \data1[11]~output_o\;

ww_data1(12) <= \data1[12]~output_o\;

ww_data1(13) <= \data1[13]~output_o\;

ww_data1(14) <= \data1[14]~output_o\;

ww_data1(15) <= \data1[15]~output_o\;

ww_data1(16) <= \data1[16]~output_o\;

ww_data1(17) <= \data1[17]~output_o\;

ww_data1(18) <= \data1[18]~output_o\;

ww_data1(19) <= \data1[19]~output_o\;

ww_data1(20) <= \data1[20]~output_o\;

ww_data1(21) <= \data1[21]~output_o\;

ww_data1(22) <= \data1[22]~output_o\;

ww_data1(23) <= \data1[23]~output_o\;

ww_data1(24) <= \data1[24]~output_o\;

ww_data1(25) <= \data1[25]~output_o\;

ww_data1(26) <= \data1[26]~output_o\;

ww_data1(27) <= \data1[27]~output_o\;

ww_data1(28) <= \data1[28]~output_o\;

ww_data1(29) <= \data1[29]~output_o\;

ww_data1(30) <= \data1[30]~output_o\;

ww_data1(31) <= \data1[31]~output_o\;

ww_data2(0) <= \data2[0]~output_o\;

ww_data2(1) <= \data2[1]~output_o\;

ww_data2(2) <= \data2[2]~output_o\;

ww_data2(3) <= \data2[3]~output_o\;

ww_data2(4) <= \data2[4]~output_o\;

ww_data2(5) <= \data2[5]~output_o\;

ww_data2(6) <= \data2[6]~output_o\;

ww_data2(7) <= \data2[7]~output_o\;

ww_data2(8) <= \data2[8]~output_o\;

ww_data2(9) <= \data2[9]~output_o\;

ww_data2(10) <= \data2[10]~output_o\;

ww_data2(11) <= \data2[11]~output_o\;

ww_data2(12) <= \data2[12]~output_o\;

ww_data2(13) <= \data2[13]~output_o\;

ww_data2(14) <= \data2[14]~output_o\;

ww_data2(15) <= \data2[15]~output_o\;

ww_data2(16) <= \data2[16]~output_o\;

ww_data2(17) <= \data2[17]~output_o\;

ww_data2(18) <= \data2[18]~output_o\;

ww_data2(19) <= \data2[19]~output_o\;

ww_data2(20) <= \data2[20]~output_o\;

ww_data2(21) <= \data2[21]~output_o\;

ww_data2(22) <= \data2[22]~output_o\;

ww_data2(23) <= \data2[23]~output_o\;

ww_data2(24) <= \data2[24]~output_o\;

ww_data2(25) <= \data2[25]~output_o\;

ww_data2(26) <= \data2[26]~output_o\;

ww_data2(27) <= \data2[27]~output_o\;

ww_data2(28) <= \data2[28]~output_o\;

ww_data2(29) <= \data2[29]~output_o\;

ww_data2(30) <= \data2[30]~output_o\;

ww_data2(31) <= \data2[31]~output_o\;
END structure;


