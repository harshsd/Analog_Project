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

-- DATE "04/10/2018 22:51:45"

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

ENTITY 	mario IS
    PORT (
	r : BUFFER std_logic_vector(7 DOWNTO 0);
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END mario;

-- Design Ports Information


ARCHITECTURE structure OF mario IS
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
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \i2~combout\ : std_logic;
SIGNAL \i1~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \gr1|r1~combout\ : std_logic;
SIGNAL \gr1|gr1|d2|Q~regout\ : std_logic;
SIGNAL \gr1|gr1|d1|Q~regout\ : std_logic;
SIGNAL \gr1|r2~combout\ : std_logic;
SIGNAL \gr1|gr2|d2|Q~regout\ : std_logic;
SIGNAL \gr1|gr2|d1|Q~regout\ : std_logic;
SIGNAL \e1|d00|Q~regout\ : std_logic;
SIGNAL \e1|d0|Q~regout\ : std_logic;
SIGNAL \e1|clki~combout\ : std_logic;
SIGNAL \e1|d2|Q~regout\ : std_logic;
SIGNAL \e1|r~5_combout\ : std_logic;
SIGNAL \e1|d1|Q~regout\ : std_logic;
SIGNAL \gr1|gr1|Q\ : std_logic;
SIGNAL \e1|d3|Q~regout\ : std_logic;
SIGNAL \e1|r[1]~0_combout\ : std_logic;
SIGNAL \e1|r[2]~1_combout\ : std_logic;
SIGNAL \e1|r[3]~2_combout\ : std_logic;
SIGNAL \e1|r[4]~3_combout\ : std_logic;
SIGNAL \e1|r[5]~4_combout\ : std_logic;
SIGNAL \e1|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \e1|ALT_INV_r\ : std_logic_vector(0 DOWNTO 0);

BEGIN

r <= ww_r;
ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\e1|ALT_INV_r\(0) <= NOT \e1|r\(0);

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

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i2,
	combout => \i2~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i1,
	combout => \i1~combout\);

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

-- Location: LC_X12_Y3_N4
\gr1|r1\ : maxv_lcell
-- Equation(s):
-- \gr1|r1~combout\ = ((\reset~combout\) # ((\gr1|gr2|d1|Q~regout\ & \gr1|gr2|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r1~combout\);

-- Location: LC_X13_Y3_N1
\gr1|gr1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|d2|Q~regout\ = DFFEAS((\i2~combout\ & (\gr1|gr1|d1|Q~regout\ & ((\gr1|gr1|d2|Q~regout\) # (!\i1~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\gr1|r1~combout\), , , , , , )

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
	datac => \gr1|gr1|d1|Q~regout\,
	datad => \gr1|gr1|d2|Q~regout\,
	aclr => \gr1|r1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr1|d2|Q~regout\);

-- Location: LC_X13_Y3_N7
\gr1|gr1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|d1|Q~regout\ = DFFEAS((\i2~combout\ & (((\gr1|gr1|d1|Q~regout\)))) # (!\i2~combout\ & (!\gr1|gr1|d2|Q~regout\ & ((\i1~combout\) # (\gr1|gr1|d1|Q~regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\gr1|r1~combout\), , , , , , )

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
	datac => \gr1|gr1|d1|Q~regout\,
	datad => \gr1|gr1|d2|Q~regout\,
	aclr => \gr1|r1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr1|d1|Q~regout\);

-- Location: LC_X12_Y3_N9
\gr1|r2\ : maxv_lcell
-- Equation(s):
-- \gr1|r2~combout\ = ((\reset~combout\) # ((\gr1|gr1|d1|Q~regout\ & \gr1|gr1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gr1|gr1|d1|Q~regout\,
	datac => \gr1|gr1|d2|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r2~combout\);

-- Location: LC_X12_Y3_N8
\gr1|gr2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr2|d2|Q~regout\ = DFFEAS((\i1~combout\ & (\gr1|gr2|d1|Q~regout\ & ((\gr1|gr2|d2|Q~regout\) # (!\i2~combout\)))), GLOBAL(\clk~combout\), !\gr1|r2~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
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
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \gr1|r2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr2|d2|Q~regout\);

-- Location: LC_X12_Y3_N5
\gr1|gr2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr2|d1|Q~regout\ = DFFEAS((\i1~combout\ & (((\gr1|gr2|d1|Q~regout\)))) # (!\i1~combout\ & (!\gr1|gr2|d2|Q~regout\ & ((\i2~combout\) # (\gr1|gr2|d1|Q~regout\)))), GLOBAL(\clk~combout\), !\gr1|r2~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f2",
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
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \gr1|r2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr2|d1|Q~regout\);

-- Location: LC_X12_Y3_N7
\e1|d00|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d00|Q~regout\ = DFFEAS((((\gr1|gr2|d1|Q~regout\ & \gr1|gr2|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d00|Q~regout\);

-- Location: LC_X13_Y3_N4
\e1|d0|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|Q\ = (((\gr1|gr1|d1|Q~regout\ & \gr1|gr1|d2|Q~regout\)))
-- \e1|d0|Q~regout\ = DFFEAS(\gr1|gr1|Q\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	datac => \gr1|gr1|d1|Q~regout\,
	datad => \gr1|gr1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|gr1|Q\,
	regout => \e1|d0|Q~regout\);

-- Location: LC_X12_Y3_N6
\e1|clki\ : maxv_lcell
-- Equation(s):
-- \e1|clki~combout\ = LCELL(((\e1|d00|Q~regout\ $ (\e1|d0|Q~regout\))))

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
	datac => \e1|d00|Q~regout\,
	datad => \e1|d0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|clki~combout\);

-- Location: LC_X13_Y3_N2
\e1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d2|Q~regout\ = DFFEAS(\e1|d1|Q~regout\ $ (\e1|d2|Q~regout\ $ (((!\gr1|gr1|d2|Q~regout\) # (!\gr1|gr1|d1|Q~regout\)))), GLOBAL(\e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \e1|clki~combout\,
	dataa => \gr1|gr1|d1|Q~regout\,
	datab => \gr1|gr1|d2|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d2|Q~regout\);

-- Location: LC_X13_Y3_N8
\e1|r~5\ : maxv_lcell
-- Equation(s):
-- \e1|r~5_combout\ = (((\e1|d3|Q~regout\ & \e1|d2|Q~regout\)))

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
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r~5_combout\);

-- Location: LC_X13_Y3_N9
\e1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d1|Q~regout\ = DFFEAS((((\e1|r~5_combout\) # (!\e1|d3|Q~regout\)) # (!\e1|d2|Q~regout\)), GLOBAL(\e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , \e1|d1|Q~regout\, )

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
	clk => \e1|clki~combout\,
	datab => \e1|d2|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|r~5_combout\,
	aclr => \reset~combout\,
	sclr => \e1|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d1|Q~regout\);

-- Location: LC_X13_Y3_N5
\e1|d3|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d3|Q~regout\ = DFFEAS(\e1|d3|Q~regout\ $ (((\e1|d1|Q~regout\ & (\e1|d2|Q~regout\ & \gr1|gr1|Q\)) # (!\e1|d1|Q~regout\ & (!\e1|d2|Q~regout\ & !\gr1|gr1|Q\)))), GLOBAL(\e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \e1|clki~combout\,
	dataa => \e1|d3|Q~regout\,
	datab => \e1|d1|Q~regout\,
	datac => \e1|d2|Q~regout\,
	datad => \gr1|gr1|Q\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d3|Q~regout\);

-- Location: LC_X8_Y4_N0
\e1|r[0]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(0) = (\e1|d3|Q~regout\) # (((\e1|d1|Q~regout\) # (\e1|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(0));

-- Location: LC_X8_Y4_N5
\e1|r[1]~0\ : maxv_lcell
-- Equation(s):
-- \e1|r[1]~0_combout\ = (!\e1|d3|Q~regout\ & (((\e1|d1|Q~regout\ & !\e1|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[1]~0_combout\);

-- Location: LC_X8_Y4_N6
\e1|r[2]~1\ : maxv_lcell
-- Equation(s):
-- \e1|r[2]~1_combout\ = (!\e1|d3|Q~regout\ & (((!\e1|d1|Q~regout\ & \e1|d2|Q~regout\))))

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
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[2]~1_combout\);

-- Location: LC_X8_Y4_N7
\e1|r[3]~2\ : maxv_lcell
-- Equation(s):
-- \e1|r[3]~2_combout\ = (!\e1|d3|Q~regout\ & (((\e1|d1|Q~regout\ & \e1|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[3]~2_combout\);

-- Location: LC_X8_Y4_N8
\e1|r[4]~3\ : maxv_lcell
-- Equation(s):
-- \e1|r[4]~3_combout\ = (\e1|d3|Q~regout\ & (((!\e1|d1|Q~regout\ & !\e1|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[4]~3_combout\);

-- Location: LC_X8_Y4_N3
\e1|r[5]~4\ : maxv_lcell
-- Equation(s):
-- \e1|r[5]~4_combout\ = (\e1|d3|Q~regout\ & (((\e1|d1|Q~regout\ & !\e1|d2|Q~regout\))))

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
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[5]~4_combout\);

-- Location: LC_X8_Y4_N2
\e1|r[6]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(6) = (\e1|d3|Q~regout\ & (((!\e1|d1|Q~regout\ & \e1|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(6));

-- Location: LC_X8_Y4_N9
\e1|r[7]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(7) = (\e1|d3|Q~regout\ & (((\e1|d1|Q~regout\ & \e1|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d1|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(7));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|ALT_INV_r\(0),
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[1]~0_combout\,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[2]~1_combout\,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[3]~2_combout\,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[4]~3_combout\,
	oe => VCC,
	padio => ww_r(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[5]~4_combout\,
	oe => VCC,
	padio => ww_r(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r\(6),
	oe => VCC,
	padio => ww_r(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r\(7),
	oe => VCC,
	padio => ww_r(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i3);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i4);
END structure;


