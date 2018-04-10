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

-- DATE "04/10/2018 00:16:49"

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
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	i4 : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	rl : OUT std_logic;
	lr : OUT std_logic;
	tb : OUT std_logic;
	bt : OUT std_logic
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
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rl : std_logic;
SIGNAL ww_lr : std_logic;
SIGNAL ww_tb : std_logic;
SIGNAL ww_bt : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \i2~combout\ : std_logic;
SIGNAL \i1~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \g1|d2|Q~regout\ : std_logic;
SIGNAL \g1|d1|Q~regout\ : std_logic;
SIGNAL \g1|Q~combout\ : std_logic;
SIGNAL \g2|d2|Q~regout\ : std_logic;
SIGNAL \g2|d1|Q~regout\ : std_logic;
SIGNAL \g2|Q~combout\ : std_logic;
SIGNAL \i3~combout\ : std_logic;
SIGNAL \i4~combout\ : std_logic;
SIGNAL \g3|d2|Q~regout\ : std_logic;
SIGNAL \g3|d1|Q~regout\ : std_logic;
SIGNAL \g3|Q~combout\ : std_logic;
SIGNAL \g4|d2|Q~regout\ : std_logic;
SIGNAL \g4|d1|Q~regout\ : std_logic;
SIGNAL \g4|Q~combout\ : std_logic;

BEGIN

ww_i1 <= i1;
ww_i2 <= i2;
ww_i3 <= i3;
ww_i4 <= i4;
ww_reset <= reset;
ww_clk <= clk;
rl <= ww_rl;
lr <= ww_lr;
tb <= ww_tb;
bt <= ww_bt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X1_Y10_N8
\g1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \g1|d2|Q~regout\ = DFFEAS((\g1|d1|Q~regout\ & ((\g1|d2|Q~regout\) # ((\i2~combout\ & !\i1~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
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
	datac => \g1|d1|Q~regout\,
	datad => \g1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1|d2|Q~regout\);

-- Location: LC_X1_Y10_N5
\g1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \g1|d1|Q~regout\ = DFFEAS((\g1|d1|Q~regout\) # ((!\i2~combout\ & (\i1~combout\ & !\g1|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
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
	datac => \g1|d1|Q~regout\,
	datad => \g1|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1|d1|Q~regout\);

-- Location: LC_X1_Y10_N1
\g1|Q\ : maxv_lcell
-- Equation(s):
-- \g1|Q~combout\ = (((\g1|d1|Q~regout\ & \g1|d2|Q~regout\)))

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
	datac => \g1|d1|Q~regout\,
	datad => \g1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g1|Q~combout\);

-- Location: LC_X1_Y10_N9
\g2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \g2|d2|Q~regout\ = DFFEAS((\g2|d1|Q~regout\ & ((\g2|d2|Q~regout\) # ((!\i2~combout\ & \i1~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
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
	datac => \g2|d1|Q~regout\,
	datad => \g2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g2|d2|Q~regout\);

-- Location: LC_X1_Y10_N7
\g2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \g2|d1|Q~regout\ = DFFEAS((\g2|d1|Q~regout\) # ((\i2~combout\ & (!\i1~combout\ & !\g2|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f2",
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
	datac => \g2|d1|Q~regout\,
	datad => \g2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g2|d1|Q~regout\);

-- Location: LC_X1_Y10_N6
\g2|Q\ : maxv_lcell
-- Equation(s):
-- \g2|Q~combout\ = (\g2|d1|Q~regout\ & (((\g2|d2|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g2|d1|Q~regout\,
	datac => \g2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g2|Q~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i3,
	combout => \i3~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i4,
	combout => \i4~combout\);

-- Location: LC_X14_Y10_N1
\g3|d2|Q\ : maxv_lcell
-- Equation(s):
-- \g3|d2|Q~regout\ = DFFEAS((\g3|d1|Q~regout\ & ((\g3|d2|Q~regout\) # ((!\i3~combout\ & \i4~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
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
	datac => \g3|d1|Q~regout\,
	datad => \g3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g3|d2|Q~regout\);

-- Location: LC_X14_Y10_N4
\g3|d1|Q\ : maxv_lcell
-- Equation(s):
-- \g3|d1|Q~regout\ = DFFEAS((\g3|d1|Q~regout\) # ((\i3~combout\ & (!\i4~combout\ & !\g3|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f2",
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
	datac => \g3|d1|Q~regout\,
	datad => \g3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g3|d1|Q~regout\);

-- Location: LC_X14_Y10_N2
\g3|Q\ : maxv_lcell
-- Equation(s):
-- \g3|Q~combout\ = ((\g3|d1|Q~regout\ & (\g3|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \g3|d1|Q~regout\,
	datac => \g3|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g3|Q~combout\);

-- Location: LC_X14_Y10_N3
\g4|d2|Q\ : maxv_lcell
-- Equation(s):
-- \g4|d2|Q~regout\ = DFFEAS((\g4|d1|Q~regout\ & ((\g4|d2|Q~regout\) # ((\i3~combout\ & !\i4~combout\)))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
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
	datac => \g4|d1|Q~regout\,
	datad => \g4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g4|d2|Q~regout\);

-- Location: LC_X14_Y10_N0
\g4|d1|Q\ : maxv_lcell
-- Equation(s):
-- \g4|d1|Q~regout\ = DFFEAS((\g4|d1|Q~regout\) # ((!\i3~combout\ & (\i4~combout\ & !\g4|d2|Q~regout\))), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
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
	datac => \g4|d1|Q~regout\,
	datad => \g4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g4|d1|Q~regout\);

-- Location: LC_X14_Y10_N7
\g4|Q\ : maxv_lcell
-- Equation(s):
-- \g4|Q~combout\ = ((\g4|d1|Q~regout\ & (\g4|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \g4|d1|Q~regout\,
	datac => \g4|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g4|Q~combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rl~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g1|Q~combout\,
	oe => VCC,
	padio => ww_rl);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lr~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g2|Q~combout\,
	oe => VCC,
	padio => ww_lr);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tb~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g3|Q~combout\,
	oe => VCC,
	padio => ww_tb);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\bt~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g4|Q~combout\,
	oe => VCC,
	padio => ww_bt);
END structure;


