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

-- DATE "04/15/2018 04:37:02"

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
	r : OUT std_logic_vector(7 DOWNTO 0);
	c : OUT std_logic_vector(7 DOWNTO 0);
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
SIGNAL ww_c : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i1 : std_logic;
SIGNAL ww_i2 : std_logic;
SIGNAL ww_i3 : std_logic;
SIGNAL ww_i4 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \tt|random:0:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:0:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:1:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:1:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:2:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:2:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:3:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:3:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:4:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:4:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:5:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:5:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:6:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:6:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:7:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:7:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:8:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:8:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:9:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:9:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:10:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:10:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:11:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:11:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:12:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:12:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:13:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:13:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:14:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:14:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:15:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:15:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:16:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:16:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:17:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:17:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:18:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:18:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:19:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:19:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:20:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:20:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:21:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:21:twox|clkout~combout\ : std_logic;
SIGNAL \tt|random:22:twox|D_FF1|Q~regout\ : std_logic;
SIGNAL \tt|random:22:twox|clkout~combout\ : std_logic;
SIGNAL \i1~combout\ : std_logic;
SIGNAL \i2~combout\ : std_logic;
SIGNAL \gr1|r2~combout\ : std_logic;
SIGNAL \gr1|gr2|d2|Q~regout\ : std_logic;
SIGNAL \gr1|gr2|d1|Q~regout\ : std_logic;
SIGNAL \gr1|r1~combout\ : std_logic;
SIGNAL \gr1|gr1|d1|Q~regout\ : std_logic;
SIGNAL \gr1|gr1|d2|Q~regout\ : std_logic;
SIGNAL \e1|d0|Q~regout\ : std_logic;
SIGNAL \e1|d00|Q~regout\ : std_logic;
SIGNAL \e1|clki~combout\ : std_logic;
SIGNAL \e1|d2|Q~regout\ : std_logic;
SIGNAL \gr1|gr1|Q\ : std_logic;
SIGNAL \e1|d3|Q~regout\ : std_logic;
SIGNAL \e1|r~5_combout\ : std_logic;
SIGNAL \e1|d1|Q~regout\ : std_logic;
SIGNAL \e1|r[1]~0_combout\ : std_logic;
SIGNAL \e1|r[2]~1_combout\ : std_logic;
SIGNAL \e1|r[3]~2_combout\ : std_logic;
SIGNAL \e1|r[4]~3_combout\ : std_logic;
SIGNAL \e1|r[5]~4_combout\ : std_logic;
SIGNAL \i4~combout\ : std_logic;
SIGNAL \i3~combout\ : std_logic;
SIGNAL \gr1|r3~combout\ : std_logic;
SIGNAL \gr1|gr3|d1|Q~regout\ : std_logic;
SIGNAL \gr1|gr3|d2|Q~regout\ : std_logic;
SIGNAL \gr1|r4~combout\ : std_logic;
SIGNAL \gr1|gr4|d2|Q~regout\ : std_logic;
SIGNAL \gr1|gr4|d1|Q~regout\ : std_logic;
SIGNAL \e2|d0|Q~regout\ : std_logic;
SIGNAL \e2|d00|Q~regout\ : std_logic;
SIGNAL \e2|clki~combout\ : std_logic;
SIGNAL \gr1|gr4|Q\ : std_logic;
SIGNAL \e2|d3|Q~regout\ : std_logic;
SIGNAL \e2|nq2~0_combout\ : std_logic;
SIGNAL \e2|d1|Q~regout\ : std_logic;
SIGNAL \e2|d2|Q~regout\ : std_logic;
SIGNAL \e2|r[1]~0_combout\ : std_logic;
SIGNAL \e2|r[2]~1_combout\ : std_logic;
SIGNAL \e2|r[3]~2_combout\ : std_logic;
SIGNAL \e2|r[4]~3_combout\ : std_logic;
SIGNAL \e2|r[5]~4_combout\ : std_logic;
SIGNAL \e2|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \e1|r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \e2|ALT_INV_r\ : std_logic_vector(7 DOWNTO 6);
SIGNAL \e2|ALT_INV_r[5]~4_combout\ : std_logic;
SIGNAL \e2|ALT_INV_r[4]~3_combout\ : std_logic;
SIGNAL \e2|ALT_INV_r[3]~2_combout\ : std_logic;
SIGNAL \e2|ALT_INV_r[2]~1_combout\ : std_logic;
SIGNAL \e2|ALT_INV_r[1]~0_combout\ : std_logic;
SIGNAL \e1|ALT_INV_r\ : std_logic_vector(0 DOWNTO 0);

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
\e2|ALT_INV_r\(7) <= NOT \e2|r\(7);
\e2|ALT_INV_r\(6) <= NOT \e2|r\(6);
\e2|ALT_INV_r[5]~4_combout\ <= NOT \e2|r[5]~4_combout\;
\e2|ALT_INV_r[4]~3_combout\ <= NOT \e2|r[4]~3_combout\;
\e2|ALT_INV_r[3]~2_combout\ <= NOT \e2|r[3]~2_combout\;
\e2|ALT_INV_r[2]~1_combout\ <= NOT \e2|r[2]~1_combout\;
\e2|ALT_INV_r[1]~0_combout\ <= NOT \e2|r[1]~0_combout\;
\e1|ALT_INV_r\(0) <= NOT \e1|r\(0);

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

-- Location: LC_X9_Y5_N2
\tt|random:0:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:0:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:0:twox|D_FF1|Q~regout\))), \clk~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \tt|random:0:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:0:twox|D_FF1|Q~regout\);

-- Location: LC_X9_Y5_N1
\tt|random:0:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:0:twox|clkout~combout\ = LCELL(((\tt|random:0:twox|D_FF1|Q~regout\ & ((!\reset~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tt|random:0:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:0:twox|clkout~combout\);

-- Location: LC_X9_Y5_N3
\tt|random:1:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:1:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:1:twox|D_FF1|Q~regout\))), \tt|random:0:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:0:twox|clkout~combout\,
	datad => \tt|random:1:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:1:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N5
\tt|random:1:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:1:twox|clkout~combout\ = LCELL((\tt|random:1:twox|D_FF1|Q~regout\ & (((!\reset~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tt|random:1:twox|D_FF1|Q~regout\,
	datac => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:1:twox|clkout~combout\);

-- Location: LC_X8_Y5_N2
\tt|random:2:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:2:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:2:twox|D_FF1|Q~regout\))), \tt|random:1:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:1:twox|clkout~combout\,
	datad => \tt|random:2:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:2:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N6
\tt|random:2:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:2:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:2:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:2:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:2:twox|clkout~combout\);

-- Location: LC_X8_Y5_N8
\tt|random:3:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:3:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:3:twox|D_FF1|Q~regout\))), \tt|random:2:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:2:twox|clkout~combout\,
	datad => \tt|random:3:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:3:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N4
\tt|random:3:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:3:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:3:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:3:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:3:twox|clkout~combout\);

-- Location: LC_X7_Y5_N8
\tt|random:4:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:4:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:4:twox|D_FF1|Q~regout\))), \tt|random:3:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:3:twox|clkout~combout\,
	datad => \tt|random:4:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:4:twox|D_FF1|Q~regout\);

-- Location: LC_X7_Y5_N6
\tt|random:4:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:4:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:4:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:4:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:4:twox|clkout~combout\);

-- Location: LC_X7_Y5_N9
\tt|random:5:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:5:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:5:twox|D_FF1|Q~regout\))), \tt|random:4:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:4:twox|clkout~combout\,
	datad => \tt|random:5:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:5:twox|D_FF1|Q~regout\);

-- Location: LC_X6_Y5_N6
\tt|random:5:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:5:twox|clkout~combout\ = LCELL((((\tt|random:5:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:5:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:5:twox|clkout~combout\);

-- Location: LC_X6_Y5_N0
\tt|random:6:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:6:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:6:twox|D_FF1|Q~regout\))), \tt|random:5:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:5:twox|clkout~combout\,
	datac => \tt|random:6:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:6:twox|D_FF1|Q~regout\);

-- Location: LC_X6_Y5_N3
\tt|random:6:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:6:twox|clkout~combout\ = LCELL((((\tt|random:6:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:6:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:6:twox|clkout~combout\);

-- Location: LC_X6_Y5_N8
\tt|random:7:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:7:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:7:twox|D_FF1|Q~regout\))), \tt|random:6:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:6:twox|clkout~combout\,
	datad => \tt|random:7:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:7:twox|D_FF1|Q~regout\);

-- Location: LC_X6_Y4_N3
\tt|random:7:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:7:twox|clkout~combout\ = LCELL((((\tt|random:7:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:7:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:7:twox|clkout~combout\);

-- Location: LC_X6_Y4_N0
\tt|random:8:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:8:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:8:twox|D_FF1|Q~regout\))), \tt|random:7:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:7:twox|clkout~combout\,
	datac => \tt|random:8:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:8:twox|D_FF1|Q~regout\);

-- Location: LC_X6_Y4_N7
\tt|random:8:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:8:twox|clkout~combout\ = LCELL((((\tt|random:8:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:8:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:8:twox|clkout~combout\);

-- Location: LC_X6_Y4_N4
\tt|random:9:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:9:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:9:twox|D_FF1|Q~regout\))), \tt|random:8:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:8:twox|clkout~combout\,
	datac => \tt|random:9:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:9:twox|D_FF1|Q~regout\);

-- Location: LC_X6_Y4_N9
\tt|random:9:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:9:twox|clkout~combout\ = LCELL((((\tt|random:9:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:9:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:9:twox|clkout~combout\);

-- Location: LC_X7_Y4_N3
\tt|random:10:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:10:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:10:twox|D_FF1|Q~regout\))), \tt|random:9:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:9:twox|clkout~combout\,
	datad => \tt|random:10:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:10:twox|D_FF1|Q~regout\);

-- Location: LC_X7_Y4_N7
\tt|random:10:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:10:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:10:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:10:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:10:twox|clkout~combout\);

-- Location: LC_X7_Y4_N4
\tt|random:11:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:11:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:11:twox|D_FF1|Q~regout\))), \tt|random:10:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:10:twox|clkout~combout\,
	datac => \tt|random:11:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:11:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y4_N5
\tt|random:11:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:11:twox|clkout~combout\ = LCELL(((\tt|random:11:twox|D_FF1|Q~regout\ & ((!\reset~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tt|random:11:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:11:twox|clkout~combout\);

-- Location: LC_X8_Y4_N7
\tt|random:12:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:12:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:12:twox|D_FF1|Q~regout\))), \tt|random:11:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:11:twox|clkout~combout\,
	datac => \tt|random:12:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:12:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y4_N8
\tt|random:12:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:12:twox|clkout~combout\ = LCELL((((\tt|random:12:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:12:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:12:twox|clkout~combout\);

-- Location: LC_X8_Y4_N4
\tt|random:13:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:13:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:13:twox|D_FF1|Q~regout\))), \tt|random:12:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:12:twox|clkout~combout\,
	datac => \tt|random:13:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:13:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y4_N9
\tt|random:13:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:13:twox|clkout~combout\ = LCELL((((\tt|random:13:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:13:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:13:twox|clkout~combout\);

-- Location: LC_X9_Y4_N8
\tt|random:14:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:14:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:14:twox|D_FF1|Q~regout\))), \tt|random:13:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:13:twox|clkout~combout\,
	datad => \tt|random:14:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:14:twox|D_FF1|Q~regout\);

-- Location: LC_X9_Y4_N7
\tt|random:14:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:14:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:14:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:14:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:14:twox|clkout~combout\);

-- Location: LC_X9_Y4_N9
\tt|random:15:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:15:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:15:twox|D_FF1|Q~regout\))), \tt|random:14:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:14:twox|clkout~combout\,
	datad => \tt|random:15:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:15:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y4_N0
\tt|random:15:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:15:twox|clkout~combout\ = LCELL((((\tt|random:15:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:15:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:15:twox|clkout~combout\);

-- Location: LC_X9_Y6_N7
\tt|random:16:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:16:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:16:twox|D_FF1|Q~regout\))), \tt|random:15:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:15:twox|clkout~combout\,
	datac => \tt|random:16:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:16:twox|D_FF1|Q~regout\);

-- Location: LC_X9_Y6_N6
\tt|random:16:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:16:twox|clkout~combout\ = LCELL((((\tt|random:16:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:16:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:16:twox|clkout~combout\);

-- Location: LC_X9_Y6_N9
\tt|random:17:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:17:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:17:twox|D_FF1|Q~regout\))), \tt|random:16:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:16:twox|clkout~combout\,
	datad => \tt|random:17:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:17:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y6_N6
\tt|random:17:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:17:twox|clkout~combout\ = LCELL(((\tt|random:17:twox|D_FF1|Q~regout\ & (!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tt|random:17:twox|D_FF1|Q~regout\,
	datac => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:17:twox|clkout~combout\);

-- Location: LC_X8_Y6_N3
\tt|random:18:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:18:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:18:twox|D_FF1|Q~regout\))), \tt|random:17:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:17:twox|clkout~combout\,
	datad => \tt|random:18:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:18:twox|D_FF1|Q~regout\);

-- Location: LC_X8_Y6_N5
\tt|random:18:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:18:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:18:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:18:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:18:twox|clkout~combout\);

-- Location: LC_X8_Y6_N8
\tt|random:19:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:19:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:19:twox|D_FF1|Q~regout\))), \tt|random:18:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:18:twox|clkout~combout\,
	datad => \tt|random:19:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:19:twox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N3
\tt|random:19:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:19:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:19:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:19:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:19:twox|clkout~combout\);

-- Location: LC_X7_Y6_N9
\tt|random:20:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:20:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:20:twox|D_FF1|Q~regout\))), \tt|random:19:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:19:twox|clkout~combout\,
	datad => \tt|random:20:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:20:twox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N1
\tt|random:20:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:20:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:20:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:20:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:20:twox|clkout~combout\);

-- Location: LC_X7_Y6_N0
\tt|random:21:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:21:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:21:twox|D_FF1|Q~regout\))), \tt|random:20:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:20:twox|clkout~combout\,
	datac => \tt|random:21:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:21:twox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N5
\tt|random:21:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:21:twox|clkout~combout\ = LCELL((((\tt|random:21:twox|D_FF1|Q~regout\ & !\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \tt|random:21:twox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:21:twox|clkout~combout\);

-- Location: LC_X12_Y3_N2
\tt|random:22:twox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \tt|random:22:twox|D_FF1|Q~regout\ = DFFEAS((((!\tt|random:22:twox|D_FF1|Q~regout\))), \tt|random:21:twox|clkout~combout\, !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:21:twox|clkout~combout\,
	datad => \tt|random:22:twox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tt|random:22:twox|D_FF1|Q~regout\);

-- Location: LC_X12_Y3_N4
\tt|random:22:twox|clkout\ : maxv_lcell
-- Equation(s):
-- \tt|random:22:twox|clkout~combout\ = LCELL((((!\reset~combout\ & \tt|random:22:twox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \tt|random:22:twox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tt|random:22:twox|clkout~combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i1,
	combout => \i1~combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i2,
	combout => \i2~combout\);

-- Location: LC_X6_Y6_N9
\gr1|r2\ : maxv_lcell
-- Equation(s):
-- \gr1|r2~combout\ = ((\reset~combout\) # ((\gr1|gr1|d2|Q~regout\ & \gr1|gr1|d1|Q~regout\)))

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
	datac => \gr1|gr1|d2|Q~regout\,
	datad => \gr1|gr1|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r2~combout\);

-- Location: LC_X5_Y6_N8
\gr1|gr2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr2|d2|Q~regout\ = DFFEAS((\i1~combout\ & (\gr1|gr2|d1|Q~regout\ & ((\gr1|gr2|d2|Q~regout\) # (!\i2~combout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r2~combout\, , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \gr1|r2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr2|d2|Q~regout\);

-- Location: LC_X5_Y6_N0
\gr1|gr2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr2|d1|Q~regout\ = DFFEAS((\i1~combout\ & (((\gr1|gr2|d1|Q~regout\)))) # (!\i1~combout\ & (!\gr1|gr2|d2|Q~regout\ & ((\i2~combout\) # (\gr1|gr2|d1|Q~regout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r2~combout\, , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \gr1|r2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr2|d1|Q~regout\);

-- Location: LC_X5_Y6_N9
\gr1|r1\ : maxv_lcell
-- Equation(s):
-- \gr1|r1~combout\ = (\reset~combout\) # (((\gr1|gr2|d1|Q~regout\ & \gr1|gr2|d2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r1~combout\);

-- Location: LC_X6_Y6_N2
\gr1|gr1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|d1|Q~regout\ = DFFEAS((\i2~combout\ & (((\gr1|gr1|d1|Q~regout\)))) # (!\i2~combout\ & (!\gr1|gr1|d2|Q~regout\ & ((\i1~combout\) # (\gr1|gr1|d1|Q~regout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \gr1|gr1|d2|Q~regout\,
	datad => \gr1|gr1|d1|Q~regout\,
	aclr => \gr1|r1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr1|d1|Q~regout\);

-- Location: LC_X6_Y6_N6
\gr1|gr1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|d2|Q~regout\ = DFFEAS((\i2~combout\ & (\gr1|gr1|d1|Q~regout\ & ((\gr1|gr1|d2|Q~regout\) # (!\i1~combout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r1~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i1~combout\,
	datab => \i2~combout\,
	datac => \gr1|gr1|d2|Q~regout\,
	datad => \gr1|gr1|d1|Q~regout\,
	aclr => \gr1|r1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr1|d2|Q~regout\);

-- Location: LC_X6_Y6_N7
\e1|d0|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr1|Q\ = (((\gr1|gr1|d2|Q~regout\ & \gr1|gr1|d1|Q~regout\)))
-- \e1|d0|Q~regout\ = DFFEAS(\gr1|gr1|Q\, GLOBAL(\tt|random:22:twox|clkout~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	datac => \gr1|gr1|d2|Q~regout\,
	datad => \gr1|gr1|d1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|gr1|Q\,
	regout => \e1|d0|Q~regout\);

-- Location: LC_X5_Y6_N7
\e1|d00|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d00|Q~regout\ = DFFEAS((((\gr1|gr2|d1|Q~regout\ & \gr1|gr2|d2|Q~regout\))), GLOBAL(\tt|random:22:twox|clkout~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	datac => \gr1|gr2|d1|Q~regout\,
	datad => \gr1|gr2|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d00|Q~regout\);

-- Location: LC_X6_Y6_N1
\e1|clki\ : maxv_lcell
-- Equation(s):
-- \e1|clki~combout\ = LCELL(((\e1|d0|Q~regout\ $ (\e1|d00|Q~regout\))))

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
	datac => \e1|d0|Q~regout\,
	datad => \e1|d00|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|clki~combout\);

-- Location: LC_X6_Y6_N5
\e1|d2|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d2|Q~regout\ = DFFEAS(\e1|d2|Q~regout\ $ (\e1|d1|Q~regout\ $ (((!\gr1|gr1|d1|Q~regout\) # (!\gr1|gr1|d2|Q~regout\)))), GLOBAL(\e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \e1|clki~combout\,
	dataa => \e1|d2|Q~regout\,
	datab => \gr1|gr1|d2|Q~regout\,
	datac => \gr1|gr1|d1|Q~regout\,
	datad => \e1|d1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d2|Q~regout\);

-- Location: LC_X6_Y6_N8
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

-- Location: LC_X6_Y6_N3
\e1|r~5\ : maxv_lcell
-- Equation(s):
-- \e1|r~5_combout\ = (((\e1|d2|Q~regout\ & \e1|d3|Q~regout\)))

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
	datac => \e1|d2|Q~regout\,
	datad => \e1|d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r~5_combout\);

-- Location: LC_X6_Y6_N4
\e1|d1|Q\ : maxv_lcell
-- Equation(s):
-- \e1|d1|Q~regout\ = DFFEAS((((\e1|r~5_combout\) # (!\e1|d2|Q~regout\))) # (!\e1|d3|Q~regout\), GLOBAL(\e1|clki~combout\), !GLOBAL(\reset~combout\), , , , , \e1|d1|Q~regout\, )

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
	clk => \e1|clki~combout\,
	dataa => \e1|d3|Q~regout\,
	datac => \e1|d2|Q~regout\,
	datad => \e1|r~5_combout\,
	aclr => \reset~combout\,
	sclr => \e1|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e1|d1|Q~regout\);

-- Location: LC_X1_Y6_N1
\e1|r[0]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(0) = ((\e1|d1|Q~regout\) # ((\e1|d3|Q~regout\) # (\e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(0));

-- Location: LC_X1_Y6_N7
\e1|r[1]~0\ : maxv_lcell
-- Equation(s):
-- \e1|r[1]~0_combout\ = ((\e1|d1|Q~regout\ & (!\e1|d3|Q~regout\ & !\e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[1]~0_combout\);

-- Location: LC_X1_Y6_N5
\e1|r[2]~1\ : maxv_lcell
-- Equation(s):
-- \e1|r[2]~1_combout\ = ((!\e1|d1|Q~regout\ & (!\e1|d3|Q~regout\ & \e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[2]~1_combout\);

-- Location: LC_X1_Y6_N8
\e1|r[3]~2\ : maxv_lcell
-- Equation(s):
-- \e1|r[3]~2_combout\ = ((\e1|d1|Q~regout\ & (!\e1|d3|Q~regout\ & \e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[3]~2_combout\);

-- Location: LC_X1_Y6_N0
\e1|r[4]~3\ : maxv_lcell
-- Equation(s):
-- \e1|r[4]~3_combout\ = ((!\e1|d1|Q~regout\ & (\e1|d3|Q~regout\ & !\e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[4]~3_combout\);

-- Location: LC_X1_Y6_N3
\e1|r[5]~4\ : maxv_lcell
-- Equation(s):
-- \e1|r[5]~4_combout\ = ((\e1|d1|Q~regout\ & (\e1|d3|Q~regout\ & !\e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r[5]~4_combout\);

-- Location: LC_X1_Y6_N2
\e1|r[6]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(6) = ((!\e1|d1|Q~regout\ & (\e1|d3|Q~regout\ & \e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(6));

-- Location: LC_X1_Y6_N4
\e1|r[7]\ : maxv_lcell
-- Equation(s):
-- \e1|r\(7) = ((\e1|d1|Q~regout\ & (\e1|d3|Q~regout\ & \e1|d2|Q~regout\)))

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
	datab => \e1|d1|Q~regout\,
	datac => \e1|d3|Q~regout\,
	datad => \e1|d2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e1|r\(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i4,
	combout => \i4~combout\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_i3,
	combout => \i3~combout\);

-- Location: LC_X3_Y7_N8
\gr1|r3\ : maxv_lcell
-- Equation(s):
-- \gr1|r3~combout\ = ((\reset~combout\) # ((\gr1|gr4|d2|Q~regout\ & \gr1|gr4|d1|Q~regout\)))

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
	datac => \gr1|gr4|d2|Q~regout\,
	datad => \gr1|gr4|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r3~combout\);

-- Location: LC_X3_Y7_N3
\gr1|gr3|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr3|d1|Q~regout\ = DFFEAS((\i4~combout\ & (((\gr1|gr3|d1|Q~regout\)))) # (!\i4~combout\ & (!\gr1|gr3|d2|Q~regout\ & ((\i3~combout\) # (\gr1|gr3|d1|Q~regout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r3~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i4~combout\,
	datab => \i3~combout\,
	datac => \gr1|gr3|d2|Q~regout\,
	datad => \gr1|gr3|d1|Q~regout\,
	aclr => \gr1|r3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr3|d1|Q~regout\);

-- Location: LC_X3_Y7_N7
\gr1|gr3|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr3|d2|Q~regout\ = DFFEAS((\i4~combout\ & (\gr1|gr3|d1|Q~regout\ & ((\gr1|gr3|d2|Q~regout\) # (!\i3~combout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r3~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i4~combout\,
	datab => \gr1|gr3|d2|Q~regout\,
	datac => \i3~combout\,
	datad => \gr1|gr3|d1|Q~regout\,
	aclr => \gr1|r3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr3|d2|Q~regout\);

-- Location: LC_X3_Y7_N5
\gr1|r4\ : maxv_lcell
-- Equation(s):
-- \gr1|r4~combout\ = ((\reset~combout\) # ((\gr1|gr3|d2|Q~regout\ & \gr1|gr3|d1|Q~regout\)))

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
	datac => \gr1|gr3|d2|Q~regout\,
	datad => \gr1|gr3|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|r4~combout\);

-- Location: LC_X3_Y7_N4
\gr1|gr4|d2|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr4|d2|Q~regout\ = DFFEAS((\i3~combout\ & (\gr1|gr4|d1|Q~regout\ & ((\gr1|gr4|d2|Q~regout\) # (!\i4~combout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r4~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i4~combout\,
	datab => \i3~combout\,
	datac => \gr1|gr4|d2|Q~regout\,
	datad => \gr1|gr4|d1|Q~regout\,
	aclr => \gr1|r4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr4|d2|Q~regout\);

-- Location: LC_X3_Y7_N9
\gr1|gr4|d1|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr4|d1|Q~regout\ = DFFEAS((\i3~combout\ & (((\gr1|gr4|d1|Q~regout\)))) # (!\i3~combout\ & (!\gr1|gr4|d2|Q~regout\ & ((\i4~combout\) # (\gr1|gr4|d1|Q~regout\)))), GLOBAL(\tt|random:22:twox|clkout~combout\), !\gr1|r4~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \tt|random:22:twox|clkout~combout\,
	dataa => \i4~combout\,
	datab => \i3~combout\,
	datac => \gr1|gr4|d2|Q~regout\,
	datad => \gr1|gr4|d1|Q~regout\,
	aclr => \gr1|r4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gr1|gr4|d1|Q~regout\);

-- Location: LC_X2_Y7_N8
\e2|d0|Q\ : maxv_lcell
-- Equation(s):
-- \gr1|gr4|Q\ = (((\gr1|gr4|d1|Q~regout\ & \gr1|gr4|d2|Q~regout\)))
-- \e2|d0|Q~regout\ = DFFEAS(\gr1|gr4|Q\, GLOBAL(\tt|random:22:twox|clkout~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	datac => \gr1|gr4|d1|Q~regout\,
	datad => \gr1|gr4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \gr1|gr4|Q\,
	regout => \e2|d0|Q~regout\);

-- Location: LC_X2_Y7_N2
\e2|d00|Q\ : maxv_lcell
-- Equation(s):
-- \e2|d00|Q~regout\ = DFFEAS((((\gr1|gr3|d1|Q~regout\ & \gr1|gr3|d2|Q~regout\))), GLOBAL(\tt|random:22:twox|clkout~combout\), !GLOBAL(\reset~combout\), , , , , , )

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
	clk => \tt|random:22:twox|clkout~combout\,
	datac => \gr1|gr3|d1|Q~regout\,
	datad => \gr1|gr3|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e2|d00|Q~regout\);

-- Location: LC_X2_Y7_N7
\e2|clki\ : maxv_lcell
-- Equation(s):
-- \e2|clki~combout\ = LCELL(\e2|d0|Q~regout\ $ ((((\e2|d00|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \e2|d0|Q~regout\,
	datad => \e2|d00|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|clki~combout\);

-- Location: LC_X2_Y7_N9
\e2|d3|Q\ : maxv_lcell
-- Equation(s):
-- \e2|d3|Q~regout\ = DFFEAS(\e2|d3|Q~regout\ $ (((\e2|d1|Q~regout\ & (\e2|d2|Q~regout\ & \gr1|gr4|Q\)) # (!\e2|d1|Q~regout\ & (!\e2|d2|Q~regout\ & !\gr1|gr4|Q\)))), GLOBAL(\e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6cc9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \e2|clki~combout\,
	dataa => \e2|d1|Q~regout\,
	datab => \e2|d3|Q~regout\,
	datac => \e2|d2|Q~regout\,
	datad => \gr1|gr4|Q\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e2|d3|Q~regout\);

-- Location: LC_X2_Y7_N3
\e2|nq2~0\ : maxv_lcell
-- Equation(s):
-- \e2|nq2~0_combout\ = (((\e2|d2|Q~regout\ & \e2|d3|Q~regout\)))

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
	datac => \e2|d2|Q~regout\,
	datad => \e2|d3|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|nq2~0_combout\);

-- Location: LC_X2_Y7_N4
\e2|d1|Q\ : maxv_lcell
-- Equation(s):
-- \e2|d1|Q~regout\ = DFFEAS((((\e2|nq2~0_combout\) # (!\e2|d2|Q~regout\)) # (!\e2|d3|Q~regout\)), GLOBAL(\e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , \e2|d1|Q~regout\, )

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
	clk => \e2|clki~combout\,
	datab => \e2|d3|Q~regout\,
	datac => \e2|d2|Q~regout\,
	datad => \e2|nq2~0_combout\,
	aclr => \reset~combout\,
	sclr => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e2|d1|Q~regout\);

-- Location: LC_X2_Y7_N6
\e2|d2|Q\ : maxv_lcell
-- Equation(s):
-- \e2|d2|Q~regout\ = DFFEAS(\e2|d1|Q~regout\ $ (\e2|d2|Q~regout\ $ (((!\gr1|gr4|d2|Q~regout\) # (!\gr1|gr4|d1|Q~regout\)))), GLOBAL(\e2|clki~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6999",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \e2|clki~combout\,
	dataa => \e2|d1|Q~regout\,
	datab => \e2|d2|Q~regout\,
	datac => \gr1|gr4|d1|Q~regout\,
	datad => \gr1|gr4|d2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \e2|d2|Q~regout\);

-- Location: LC_X1_Y7_N1
\e2|r[0]\ : maxv_lcell
-- Equation(s):
-- \e2|r\(0) = (\e2|d2|Q~regout\) # (((\e2|d3|Q~regout\) # (\e2|d1|Q~regout\)))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r\(0));

-- Location: LC_X1_Y7_N5
\e2|r[1]~0\ : maxv_lcell
-- Equation(s):
-- \e2|r[1]~0_combout\ = (!\e2|d2|Q~regout\ & (((!\e2|d3|Q~regout\ & \e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r[1]~0_combout\);

-- Location: LC_X1_Y7_N7
\e2|r[2]~1\ : maxv_lcell
-- Equation(s):
-- \e2|r[2]~1_combout\ = (\e2|d2|Q~regout\ & (((!\e2|d3|Q~regout\ & !\e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r[2]~1_combout\);

-- Location: LC_X1_Y7_N2
\e2|r[3]~2\ : maxv_lcell
-- Equation(s):
-- \e2|r[3]~2_combout\ = (\e2|d2|Q~regout\ & (((!\e2|d3|Q~regout\ & \e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r[3]~2_combout\);

-- Location: LC_X1_Y7_N4
\e2|r[4]~3\ : maxv_lcell
-- Equation(s):
-- \e2|r[4]~3_combout\ = (!\e2|d2|Q~regout\ & (((\e2|d3|Q~regout\ & !\e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r[4]~3_combout\);

-- Location: LC_X1_Y7_N8
\e2|r[5]~4\ : maxv_lcell
-- Equation(s):
-- \e2|r[5]~4_combout\ = (!\e2|d2|Q~regout\ & (((\e2|d3|Q~regout\ & \e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r[5]~4_combout\);

-- Location: LC_X1_Y7_N3
\e2|r[6]\ : maxv_lcell
-- Equation(s):
-- \e2|r\(6) = (\e2|d2|Q~regout\ & (((\e2|d3|Q~regout\ & !\e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r\(6));

-- Location: LC_X1_Y7_N9
\e2|r[7]\ : maxv_lcell
-- Equation(s):
-- \e2|r\(7) = (\e2|d2|Q~regout\ & (((\e2|d3|Q~regout\ & \e2|d1|Q~regout\))))

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
	dataa => \e2|d2|Q~regout\,
	datac => \e2|d3|Q~regout\,
	datad => \e2|d1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \e2|r\(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|ALT_INV_r\(0),
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[1]~0_combout\,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[2]~1_combout\,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[3]~2_combout\,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[4]~3_combout\,
	oe => VCC,
	padio => ww_r(4));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r[5]~4_combout\,
	oe => VCC,
	padio => ww_r(5));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r\(6),
	oe => VCC,
	padio => ww_r(6));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e1|r\(7),
	oe => VCC,
	padio => ww_r(7));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|r\(0),
	oe => VCC,
	padio => ww_c(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r[1]~0_combout\,
	oe => VCC,
	padio => ww_c(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r[2]~1_combout\,
	oe => VCC,
	padio => ww_c(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r[3]~2_combout\,
	oe => VCC,
	padio => ww_c(3));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r[4]~3_combout\,
	oe => VCC,
	padio => ww_c(4));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r[5]~4_combout\,
	oe => VCC,
	padio => ww_c(5));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r\(6),
	oe => VCC,
	padio => ww_c(6));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \e2|ALT_INV_r\(7),
	oe => VCC,
	padio => ww_c(7));
END structure;


