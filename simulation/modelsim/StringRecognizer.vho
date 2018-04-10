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

-- DATE "04/10/2018 20:54:58"

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
SIGNAL \clk~combout\ : std_logic;
SIGNAL \i1~combout\ : std_logic;
SIGNAL \i2~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \m1|gr1|gr2|d2|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr2|d1|Q~regout\ : std_logic;
SIGNAL \m1|e1|d00|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr1|d2|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr1|d1|Q~regout\ : std_logic;
SIGNAL \m1|e1|d0|Q~regout\ : std_logic;
SIGNAL \m1|e1|clki~combout\ : std_logic;
SIGNAL \m1|e1|d2|Q~regout\ : std_logic;
SIGNAL \m1|e1|r~5_combout\ : std_logic;
SIGNAL \m1|e1|d1|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr1|Q\ : std_logic;
SIGNAL \m1|e1|d3|Q~regout\ : std_logic;
SIGNAL \m1|e1|r[1]~0_combout\ : std_logic;
SIGNAL \m1|e1|r[2]~1_combout\ : std_logic;
SIGNAL \m1|e1|r[3]~2_combout\ : std_logic;
SIGNAL \m1|e1|r[4]~3_combout\ : std_logic;
SIGNAL \m1|e1|r[5]~4_combout\ : std_logic;
SIGNAL \i4~combout\ : std_logic;
SIGNAL \i3~combout\ : std_logic;
SIGNAL \m1|gr1|gr3|d2|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr3|d1|Q~regout\ : std_logic;
SIGNAL \m1|e2|d00|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr4|d2|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr4|d1|Q~regout\ : std_logic;
SIGNAL \m1|e2|d0|Q~regout\ : std_logic;
SIGNAL \m1|e2|clki~combout\ : std_logic;
SIGNAL \m1|e2|d2|Q~regout\ : std_logic;
SIGNAL \m1|e2|nq2~0_combout\ : std_logic;
SIGNAL \m1|e2|d1|Q~regout\ : std_logic;
SIGNAL \m1|gr1|gr4|Q\ : std_logic;
SIGNAL \m1|e2|d3|Q~regout\ : std_logic;
SIGNAL \m1|e2|r[1]~0_combout\ : std_logic;
SIGNAL \m1|e2|r[2]~1_combout\ : std_logic;
SIGNAL \m1|e2|r[3]~2_combout\ : std_logic;
SIGNAL \m1|e2|r[4]~3_combout\ : std_logic;
SIGNAL \m1|e2|r[5]~4_combout\ : std_logic;
SIGNAL \m1|e2|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \m1|e1|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \m1|e1|ALT_INV_r\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m1|e2|ALT_INV_r\ : std_logic_vector(7 DOWNTO 6);
SIGNAL \m1|e2|ALT_INV_r[5]~4_combout\ : std_logic;
SIGNAL \m1|e2|ALT_INV_r[4]~3_combout\ : std_logic;
SIGNAL \m1|e2|ALT_INV_r[3]~2_combout\ : std_logic;
SIGNAL \m1|e2|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \m1|e2|ALT_INV_r[1]~0_combout\ : std_logic;

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
\m1|e1|ALT_INV_r\(0) <= NOT \m1|e1|r\(0);
\m1|e2|ALT_INV_r\(7) <= NOT \m1|e2|r\(7);
\m1|e2|ALT_INV_r\(6) <= NOT \m1|e2|r\(6);
\m1|e2|ALT_INV_r[5]~4_combout\ <= NOT \m1|e2|r[5]~4_combout\;
\m1|e2|ALT_INV_r[4]~3_combout\ <= NOT \m1|e2|r[4]~3_combout\;
\m1|e2|ALT_INV_r[3]~2_combout\ <= NOT \m1|e2|r[3]~2_combout\;
\m1|e2|ALT_INV_r[2]~1_combout\ <= NOT \m1|e2|r[2]~1_combout\;
\m1|e2|ALT_INV_r[1]~0_combout\ <= NOT \m1|e2|r[1]~0_combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i1,
	combout => \i1~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i2,
	combout => \i2~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X10_Y7_N2
\m1|gr1|gr2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr2|d2|Q~regout\ = DFFEAS((\i1~combout\ & (\m1|gr1|gr2|d1|Q~regout\ & ((\m1|gr1|gr2|d2|Q~regout\) # (!\i2~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \m1|gr1|gr2|d1|Q~regout\,
	datad => \m1|gr1|gr2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr2|d2|Q~regout\);

-- Location: LC_X10_Y7_N6
\m1|gr1|gr2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr2|d1|Q~regout\ = DFFEAS((\i1~combout\ & (((\m1|gr1|gr2|d1|Q~regout\)))) # (!\i1~combout\ & (!\m1|gr1|gr2|d2|Q~regout\ & ((\i2~combout\) # (\m1|gr1|gr2|d1|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \m1|gr1|gr2|d1|Q~regout\,
	datad => \m1|gr1|gr2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr2|d1|Q~regout\);

-- Location: LC_X10_Y7_N7
\m1|e1|d00|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e1|d00|Q~regout\ = DFFEAS((((\m1|gr1|gr2|d1|Q~regout\ & \m1|gr1|gr2|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m1|gr1|gr2|d1|Q~regout\,
	datad => \m1|gr1|gr2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e1|d00|Q~regout\);

-- Location: LC_X9_Y7_N9
\m1|gr1|gr1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr1|d2|Q~regout\ = DFFEAS((\i2~combout\ & (\m1|gr1|gr1|d1|Q~regout\ & ((\m1|gr1|gr1|d2|Q~regout\) # (!\i1~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i2~combout\,
	datab => \i1~combout\,
	datac => \m1|gr1|gr1|d1|Q~regout\,
	datad => \m1|gr1|gr1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr1|d2|Q~regout\);

-- Location: LC_X9_Y7_N0
\m1|gr1|gr1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr1|d1|Q~regout\ = DFFEAS((\i2~combout\ & (((\m1|gr1|gr1|d1|Q~regout\)))) # (!\i2~combout\ & (!\m1|gr1|gr1|d2|Q~regout\ & ((\i1~combout\) # (\m1|gr1|gr1|d1|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i2~combout\,
	datab => \i1~combout\,
	datac => \m1|gr1|gr1|d1|Q~regout\,
	datad => \m1|gr1|gr1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr1|d1|Q~regout\);

-- Location: LC_X9_Y7_N7
\m1|e1|d0|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr1|Q\ = (((\m1|gr1|gr1|d1|Q~regout\ & \m1|gr1|gr1|d2|Q~regout\)))
-- \m1|e1|d0|Q~regout\ = DFFEAS(\m1|gr1|gr1|Q\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m1|gr1|gr1|d1|Q~regout\,
	datad => \m1|gr1|gr1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|gr1|gr1|Q\,
	regout => \m1|e1|d0|Q~regout\);

-- Location: LC_X10_Y7_N9
\m1|e1|clki\ : maxv_lcell
-- Equation(s):
-- \m1|e1|clki~combout\ = LCELL(((\m1|e1|d00|Q~regout\ $ (\m1|e1|d0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|e1|d00|Q~regout\,
	datad => \m1|e1|d0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|clki~combout\);

-- Location: LC_X9_Y7_N5
\m1|e1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e1|d2|Q~regout\ = DFFEAS(\m1|e1|d2|Q~regout\ $ (\m1|e1|d1|Q~regout\ $ (((!\m1|gr1|gr1|d2|Q~regout\) # (!\m1|gr1|gr1|d1|Q~regout\)))), GLOBAL(\m1|e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a95",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \m1|e1|clki~combout\,
	dataa => \m1|e1|d2|Q~regout\,
	datab => \m1|gr1|gr1|d1|Q~regout\,
	datac => \m1|gr1|gr1|d2|Q~regout\,
	datad => \m1|e1|d1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e1|d2|Q~regout\);

-- Location: LC_X9_Y7_N3
\m1|e1|r~5\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r~5_combout\ = (((\m1|e1|d2|Q~regout\ & \m1|e1|d3|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|e1|d2|Q~regout\,
	datad => \m1|e1|d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r~5_combout\);

-- Location: LC_X9_Y7_N4
\m1|e1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e1|d1|Q~regout\ = DFFEAS((((\m1|e1|r~5_combout\) # (!\m1|e1|d2|Q~regout\))) # (!\m1|e1|d3|Q~regout\), GLOBAL(\m1|e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , \m1|e1|d1|Q~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \m1|e1|clki~combout\,
	dataa => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d2|Q~regout\,
	datad => \m1|e1|r~5_combout\,
	aclr => \reset~combout\,
	sclr => \m1|e1|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e1|d1|Q~regout\);

-- Location: LC_X9_Y7_N8
\m1|e1|d3|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e1|d3|Q~regout\ = DFFEAS(\m1|e1|d3|Q~regout\ $ (((\m1|e1|d1|Q~regout\ & (\m1|e1|d2|Q~regout\ & \m1|gr1|gr1|Q\)) # (!\m1|e1|d1|Q~regout\ & (!\m1|e1|d2|Q~regout\ & !\m1|gr1|gr1|Q\)))), GLOBAL(\m1|e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aa9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \m1|e1|clki~combout\,
	dataa => \m1|e1|d3|Q~regout\,
	datab => \m1|e1|d1|Q~regout\,
	datac => \m1|e1|d2|Q~regout\,
	datad => \m1|gr1|gr1|Q\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e1|d3|Q~regout\);

-- Location: LC_X9_Y4_N2
\m1|e1|r[0]\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r\(0) = ((\m1|e1|d3|Q~regout\) # ((\m1|e1|d1|Q~regout\) # (\m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r\(0));

-- Location: LC_X9_Y4_N6
\m1|e1|r[1]~0\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r[1]~0_combout\ = ((!\m1|e1|d3|Q~regout\ & (\m1|e1|d1|Q~regout\ & !\m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r[1]~0_combout\);

-- Location: LC_X9_Y4_N5
\m1|e1|r[2]~1\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r[2]~1_combout\ = ((!\m1|e1|d3|Q~regout\ & (!\m1|e1|d1|Q~regout\ & \m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r[2]~1_combout\);

-- Location: LC_X9_Y4_N8
\m1|e1|r[3]~2\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r[3]~2_combout\ = ((!\m1|e1|d3|Q~regout\ & (\m1|e1|d1|Q~regout\ & \m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r[3]~2_combout\);

-- Location: LC_X9_Y4_N3
\m1|e1|r[4]~3\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r[4]~3_combout\ = ((\m1|e1|d3|Q~regout\ & (!\m1|e1|d1|Q~regout\ & !\m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r[4]~3_combout\);

-- Location: LC_X9_Y4_N7
\m1|e1|r[5]~4\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r[5]~4_combout\ = ((\m1|e1|d3|Q~regout\ & (\m1|e1|d1|Q~regout\ & !\m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r[5]~4_combout\);

-- Location: LC_X9_Y4_N0
\m1|e1|r[6]\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r\(6) = ((\m1|e1|d3|Q~regout\ & (!\m1|e1|d1|Q~regout\ & \m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r\(6));

-- Location: LC_X9_Y4_N9
\m1|e1|r[7]\ : maxv_lcell
-- Equation(s):
-- \m1|e1|r\(7) = ((\m1|e1|d3|Q~regout\ & (\m1|e1|d1|Q~regout\ & \m1|e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e1|d3|Q~regout\,
	datac => \m1|e1|d1|Q~regout\,
	datad => \m1|e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e1|r\(7));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i4,
	combout => \i4~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i3,
	combout => \i3~combout\);

-- Location: LC_X16_Y6_N9
\m1|gr1|gr3|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr3|d2|Q~regout\ = DFFEAS((\i4~combout\ & (\m1|gr1|gr3|d1|Q~regout\ & ((\m1|gr1|gr3|d2|Q~regout\) # (!\i3~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i4~combout\,
	datab => \i3~combout\,
	datac => \m1|gr1|gr3|d1|Q~regout\,
	datad => \m1|gr1|gr3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr3|d2|Q~regout\);

-- Location: LC_X16_Y6_N5
\m1|gr1|gr3|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr3|d1|Q~regout\ = DFFEAS((\i4~combout\ & (((\m1|gr1|gr3|d1|Q~regout\)))) # (!\i4~combout\ & (!\m1|gr1|gr3|d2|Q~regout\ & ((\i3~combout\) # (\m1|gr1|gr3|d1|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i4~combout\,
	datab => \i3~combout\,
	datac => \m1|gr1|gr3|d1|Q~regout\,
	datad => \m1|gr1|gr3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr3|d1|Q~regout\);

-- Location: LC_X16_Y6_N4
\m1|e2|d00|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e2|d00|Q~regout\ = DFFEAS((((\m1|gr1|gr3|d1|Q~regout\ & \m1|gr1|gr3|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m1|gr1|gr3|d1|Q~regout\,
	datad => \m1|gr1|gr3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e2|d00|Q~regout\);

-- Location: LC_X15_Y6_N1
\m1|gr1|gr4|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr4|d2|Q~regout\ = DFFEAS((\i3~combout\ & (\m1|gr1|gr4|d1|Q~regout\ & ((\m1|gr1|gr4|d2|Q~regout\) # (!\i4~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i3~combout\,
	datab => \i4~combout\,
	datac => \m1|gr1|gr4|d1|Q~regout\,
	datad => \m1|gr1|gr4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr4|d2|Q~regout\);

-- Location: LC_X15_Y6_N0
\m1|gr1|gr4|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr4|d1|Q~regout\ = DFFEAS((\i3~combout\ & (((\m1|gr1|gr4|d1|Q~regout\)))) # (!\i3~combout\ & (!\m1|gr1|gr4|d2|Q~regout\ & ((\i4~combout\) # (\m1|gr1|gr4|d1|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i3~combout\,
	datab => \i4~combout\,
	datac => \m1|gr1|gr4|d1|Q~regout\,
	datad => \m1|gr1|gr4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|gr1|gr4|d1|Q~regout\);

-- Location: LC_X15_Y6_N4
\m1|e2|d0|Q\ : maxv_lcell
-- Equation(s):
-- \m1|gr1|gr4|Q\ = (((\m1|gr1|gr4|d1|Q~regout\ & \m1|gr1|gr4|d2|Q~regout\)))
-- \m1|e2|d0|Q~regout\ = DFFEAS(\m1|gr1|gr4|Q\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \m1|gr1|gr4|d1|Q~regout\,
	datad => \m1|gr1|gr4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|gr1|gr4|Q\,
	regout => \m1|e2|d0|Q~regout\);

-- Location: LC_X15_Y6_N3
\m1|e2|clki\ : maxv_lcell
-- Equation(s):
-- \m1|e2|clki~combout\ = LCELL((\m1|e2|d00|Q~regout\ $ ((\m1|e2|d0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \m1|e2|d00|Q~regout\,
	datac => \m1|e2|d0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|clki~combout\);

-- Location: LC_X15_Y6_N9
\m1|e2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e2|d2|Q~regout\ = DFFEAS(\m1|e2|d1|Q~regout\ $ (\m1|e2|d2|Q~regout\ $ (((!\m1|gr1|gr4|d1|Q~regout\) # (!\m1|gr1|gr4|d2|Q~regout\)))), GLOBAL(\m1|e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a95",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \m1|e2|clki~combout\,
	dataa => \m1|e2|d1|Q~regout\,
	datab => \m1|gr1|gr4|d2|Q~regout\,
	datac => \m1|gr1|gr4|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e2|d2|Q~regout\);

-- Location: LC_X15_Y6_N6
\m1|e2|nq2~0\ : maxv_lcell
-- Equation(s):
-- \m1|e2|nq2~0_combout\ = (((\m1|e2|d3|Q~regout\ & \m1|e2|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \m1|e2|d3|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|nq2~0_combout\);

-- Location: LC_X15_Y6_N7
\m1|e2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e2|d1|Q~regout\ = DFFEAS((((\m1|e2|nq2~0_combout\) # (!\m1|e2|d3|Q~regout\)) # (!\m1|e2|d2|Q~regout\)), GLOBAL(\m1|e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , \m1|e2|d1|Q~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \m1|e2|clki~combout\,
	datab => \m1|e2|d2|Q~regout\,
	datac => \m1|e2|d3|Q~regout\,
	datad => \m1|e2|nq2~0_combout\,
	aclr => \reset~combout\,
	sclr => \m1|e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e2|d1|Q~regout\);

-- Location: LC_X15_Y6_N5
\m1|e2|d3|Q\ : maxv_lcell
-- Equation(s):
-- \m1|e2|d3|Q~regout\ = DFFEAS(\m1|e2|d3|Q~regout\ $ (((\m1|e2|d1|Q~regout\ & (\m1|e2|d2|Q~regout\ & \m1|gr1|gr4|Q\)) # (!\m1|e2|d1|Q~regout\ & (!\m1|e2|d2|Q~regout\ & !\m1|gr1|gr4|Q\)))), GLOBAL(\m1|e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78e1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \m1|e2|clki~combout\,
	dataa => \m1|e2|d1|Q~regout\,
	datab => \m1|e2|d2|Q~regout\,
	datac => \m1|e2|d3|Q~regout\,
	datad => \m1|gr1|gr4|Q\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1|e2|d3|Q~regout\);

-- Location: LC_X16_Y7_N2
\m1|e2|r[0]\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r\(0) = (\m1|e2|d3|Q~regout\) # ((\m1|e2|d1|Q~regout\) # ((\m1|e2|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r\(0));

-- Location: LC_X16_Y7_N4
\m1|e2|r[1]~0\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r[1]~0_combout\ = (!\m1|e2|d3|Q~regout\ & (\m1|e2|d1|Q~regout\ & ((!\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r[1]~0_combout\);

-- Location: LC_X15_Y6_N2
\m1|e2|r[2]~1\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r[2]~1_combout\ = (!\m1|e2|d3|Q~regout\ & (((!\m1|e2|d1|Q~regout\ & \m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datac => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r[2]~1_combout\);

-- Location: LC_X16_Y7_N8
\m1|e2|r[3]~2\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r[3]~2_combout\ = (!\m1|e2|d3|Q~regout\ & (\m1|e2|d1|Q~regout\ & ((\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r[3]~2_combout\);

-- Location: LC_X16_Y7_N6
\m1|e2|r[4]~3\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r[4]~3_combout\ = (\m1|e2|d3|Q~regout\ & (!\m1|e2|d1|Q~regout\ & ((!\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r[4]~3_combout\);

-- Location: LC_X15_Y6_N8
\m1|e2|r[5]~4\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r[5]~4_combout\ = (\m1|e2|d3|Q~regout\ & (((\m1|e2|d1|Q~regout\ & !\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datac => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r[5]~4_combout\);

-- Location: LC_X16_Y7_N9
\m1|e2|r[6]\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r\(6) = (\m1|e2|d3|Q~regout\ & (!\m1|e2|d1|Q~regout\ & ((\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r\(6));

-- Location: LC_X16_Y7_N5
\m1|e2|r[7]\ : maxv_lcell
-- Equation(s):
-- \m1|e2|r\(7) = (\m1|e2|d3|Q~regout\ & (\m1|e2|d1|Q~regout\ & ((\m1|e2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m1|e2|d3|Q~regout\,
	datab => \m1|e2|d1|Q~regout\,
	datad => \m1|e2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \m1|e2|r\(7));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|ALT_INV_r\(0),
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r[1]~0_combout\,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r[2]~1_combout\,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r[3]~2_combout\,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r[4]~3_combout\,
	oe => VCC,
	padio => ww_r(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r[5]~4_combout\,
	oe => VCC,
	padio => ww_r(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r\(6),
	oe => VCC,
	padio => ww_r(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e1|r\(7),
	oe => VCC,
	padio => ww_r(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|r\(0),
	oe => VCC,
	padio => ww_c(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r[1]~0_combout\,
	oe => VCC,
	padio => ww_c(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r[2]~1_combout\,
	oe => VCC,
	padio => ww_c(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r[3]~2_combout\,
	oe => VCC,
	padio => ww_c(3));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r[4]~3_combout\,
	oe => VCC,
	padio => ww_c(4));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r[5]~4_combout\,
	oe => VCC,
	padio => ww_c(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r\(6),
	oe => VCC,
	padio => ww_c(6));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \m1|e2|ALT_INV_r\(7),
	oe => VCC,
	padio => ww_c(7));
END structure;


