-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/10/2018 15:46:35"

-- 
-- Device: Altera 5M1270ZT144C4 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	StringRecognizer IS
    PORT (
	r : OUT std_logic_vector(7 DOWNTO 0);
	c : OUT std_logic_vector(7 DOWNTO 0);
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END StringRecognizer;

-- Design Ports Information


ARCHITECTURE structure OF StringRecognizer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;

BEGIN

r <= ww_r;
c <= ww_c;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(4));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(6));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_r(7));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(2));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(3));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(5));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(6));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_c(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i1);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i2);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i3);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i4);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);
END structure;


