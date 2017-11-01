-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "11/01/2017 12:17:28"

-- 
-- Device: Altera EP2C20F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dazmarlah_machine IS
    PORT (
	fifty_in : IN std_logic;
	hund_in : IN std_logic;
	twohund_in : IN std_logic;
	fifty_out : OUT std_logic;
	hund_out : OUT std_logic;
	twohund_out : OUT std_logic;
	botl_out : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	temp : IN std_logic_vector(2 DOWNTO 0)
	);
END dazmarlah_machine;

-- Design Ports Information
-- fifty_out	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hund_out	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- twohund_out	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- botl_out	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- temp[1]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temp[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- temp[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fifty_in	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- hund_in	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- twohund_in	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF dazmarlah_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fifty_in : std_logic;
SIGNAL ww_hund_in : std_logic;
SIGNAL ww_twohund_in : std_logic;
SIGNAL ww_fifty_out : std_logic;
SIGNAL ww_hund_out : std_logic;
SIGNAL ww_twohund_out : std_logic;
SIGNAL ww_botl_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_temp : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \present_st.state_5~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \twohund_in~combout\ : std_logic;
SIGNAL \fifty_in~combout\ : std_logic;
SIGNAL \hund_in~combout\ : std_logic;
SIGNAL \next_state.state_3~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \present_st.state_3~regout\ : std_logic;
SIGNAL \next_state.state_8~0_combout\ : std_logic;
SIGNAL \present_st.state_8~regout\ : std_logic;
SIGNAL \next_state.state_7~0_combout\ : std_logic;
SIGNAL \present_st.state_7~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_st.state_1~regout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \present_st.state_0~regout\ : std_logic;
SIGNAL \next_state.state_2~0_combout\ : std_logic;
SIGNAL \present_st.state_2~regout\ : std_logic;
SIGNAL \next_state.state_4~0_combout\ : std_logic;
SIGNAL \present_st.state_4~regout\ : std_logic;
SIGNAL \fifty_out~2_combout\ : std_logic;
SIGNAL \next_state.state_6~0_combout\ : std_logic;
SIGNAL \present_st.state_6~regout\ : std_logic;
SIGNAL \hund_out~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \next_state.state_9~0_combout\ : std_logic;
SIGNAL \present_st.state_9~regout\ : std_logic;
SIGNAL \temp~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_fifty_in <= fifty_in;
ww_hund_in <= hund_in;
ww_twohund_in <= twohund_in;
fifty_out <= ww_fifty_out;
hund_out <= ww_hund_out;
twohund_out <= ww_twohund_out;
botl_out <= ww_botl_out;
ww_clk <= clk;
ww_rst <= rst;
ww_temp <= temp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;

-- Location: LCFF_X1_Y19_N21
\present_st.state_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_5~regout\);

-- Location: LCCOMB_X1_Y19_N8
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\temp~combout\(2) & (\temp~combout\(1) & (!\temp~combout\(0) & \present_st.state_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~combout\(2),
	datab => \temp~combout\(1),
	datac => \temp~combout\(0),
	datad => \present_st.state_2~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y19_N20
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # (\present_st.state_6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector2~0_combout\,
	datad => \present_st.state_6~regout\,
	combout => \Selector2~1_combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\twohund_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_twohund_in,
	combout => \twohund_in~combout\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_temp(1),
	combout => \temp~combout\(1));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temp[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_temp(2),
	combout => \temp~combout\(2));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fifty_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fifty_in,
	combout => \fifty_in~combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hund_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_hund_in,
	combout => \hund_in~combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\temp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_temp(0),
	combout => \temp~combout\(0));

-- Location: LCCOMB_X1_Y19_N12
\next_state.state_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_3~0_combout\ = (\twohund_in~combout\ & (!\fifty_in~combout\ & (!\hund_in~combout\ & !\present_st.state_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \twohund_in~combout\,
	datab => \fifty_in~combout\,
	datac => \hund_in~combout\,
	datad => \present_st.state_0~regout\,
	combout => \next_state.state_3~0_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X1_Y19_N13
\present_st.state_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_3~regout\);

-- Location: LCCOMB_X1_Y19_N14
\next_state.state_8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_8~0_combout\ = (\temp~combout\(2) & (!\temp~combout\(1) & (\temp~combout\(0) & \present_st.state_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~combout\(2),
	datab => \temp~combout\(1),
	datac => \temp~combout\(0),
	datad => \present_st.state_3~regout\,
	combout => \next_state.state_8~0_combout\);

-- Location: LCFF_X1_Y19_N15
\present_st.state_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_8~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_8~regout\);

-- Location: LCCOMB_X1_Y19_N18
\next_state.state_7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_7~0_combout\ = (\temp~combout\(2) & (!\temp~combout\(1) & (!\temp~combout\(0) & \present_st.state_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~combout\(2),
	datab => \temp~combout\(1),
	datac => \temp~combout\(0),
	datad => \present_st.state_3~regout\,
	combout => \next_state.state_7~0_combout\);

-- Location: LCFF_X1_Y19_N19
\present_st.state_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_7~regout\);

-- Location: LCCOMB_X1_Y19_N26
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_st.state_4~regout\) # ((\present_st.state_7~regout\) # ((!\present_st.state_0~regout\ & \fifty_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_st.state_0~regout\,
	datab => \fifty_in~combout\,
	datac => \present_st.state_4~regout\,
	datad => \present_st.state_7~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X1_Y19_N27
\present_st.state_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_1~regout\);

-- Location: LCCOMB_X1_Y19_N0
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\present_st.state_5~regout\ & (!\present_st.state_8~regout\ & !\present_st.state_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_st.state_5~regout\,
	datac => \present_st.state_8~regout\,
	datad => \present_st.state_1~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\twohund_in~combout\ & (!\fifty_in~combout\ & (!\hund_in~combout\ & !\present_st.state_0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \twohund_in~combout\,
	datab => \fifty_in~combout\,
	datac => \hund_in~combout\,
	datad => \present_st.state_0~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y19_N28
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\temp~combout\(2) & ((\present_st.state_2~regout\) # ((\temp~combout\(1) & \temp~combout\(0))))) # (!\temp~combout\(2) & (\temp~combout\(1) & (\temp~combout\(0) & \present_st.state_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~combout\(2),
	datab => \temp~combout\(1),
	datac => \temp~combout\(0),
	datad => \present_st.state_2~regout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X1_Y19_N22
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\ & ((\present_st.state_3~regout\) # (\present_st.state_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_st.state_3~regout\,
	datac => \present_st.state_2~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X1_Y19_N6
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\present_st.state_9~regout\ & (\WideOr0~0_combout\ & (!\Selector0~0_combout\ & !\Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_st.state_9~regout\,
	datab => \WideOr0~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCFF_X1_Y19_N7
\present_st.state_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_0~regout\);

-- Location: LCCOMB_X1_Y19_N10
\next_state.state_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_2~0_combout\ = (!\fifty_in~combout\ & (\hund_in~combout\ & !\present_st.state_0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifty_in~combout\,
	datac => \hund_in~combout\,
	datad => \present_st.state_0~regout\,
	combout => \next_state.state_2~0_combout\);

-- Location: LCFF_X1_Y19_N11
\present_st.state_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_2~regout\);

-- Location: LCCOMB_X1_Y19_N24
\next_state.state_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_4~0_combout\ = (!\temp~combout\(1) & (!\temp~combout\(2) & \present_st.state_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp~combout\(1),
	datac => \temp~combout\(2),
	datad => \present_st.state_2~regout\,
	combout => \next_state.state_4~0_combout\);

-- Location: LCFF_X1_Y19_N25
\present_st.state_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_4~regout\);

-- Location: LCCOMB_X1_Y19_N4
\fifty_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifty_out~2_combout\ = (\present_st.state_4~regout\) # (\present_st.state_7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_st.state_4~regout\,
	datad => \present_st.state_7~regout\,
	combout => \fifty_out~2_combout\);

-- Location: LCCOMB_X1_Y19_N30
\next_state.state_6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_6~0_combout\ = (!\temp~combout\(2) & \present_st.state_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp~combout\(2),
	datad => \present_st.state_3~regout\,
	combout => \next_state.state_6~0_combout\);

-- Location: LCFF_X1_Y19_N31
\present_st.state_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_6~regout\);

-- Location: LCCOMB_X1_Y20_N24
\hund_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hund_out~1_combout\ = (\present_st.state_7~regout\) # (\present_st.state_6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present_st.state_7~regout\,
	datad => \present_st.state_6~regout\,
	combout => \hund_out~1_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y19_N16
\next_state.state_9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.state_9~0_combout\ = (\temp~combout\(2) & (\temp~combout\(1) & (!\temp~combout\(0) & \present_st.state_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~combout\(2),
	datab => \temp~combout\(1),
	datac => \temp~combout\(0),
	datad => \present_st.state_3~regout\,
	combout => \next_state.state_9~0_combout\);

-- Location: LCFF_X1_Y19_N17
\present_st.state_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \next_state.state_9~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_st.state_9~regout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\fifty_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fifty_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_fifty_out);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hund_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hund_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hund_out);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\twohund_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \present_st.state_9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_twohund_out);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\botl_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_botl_out);
END structure;


