--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: main_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 06 08:42:36 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm main -w -dir netgen/synthesis -ofmt vhdl -sim main.ngc main_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: main.ngc
-- Output file	: G:\jesus\dlps\VGA\netgen\synthesis\main_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: main
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity main is
  port (
    vsync : out STD_LOGIC; 
    hsync : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    mclr : in STD_LOGIC := 'X'; 
    blue : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    green : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    red : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end main;

architecture Structure of main is
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal green_0_OBUF_16 : STD_LOGIC; 
  signal green_2_OBUF_17 : STD_LOGIC; 
  signal hsync_OBUF_19 : STD_LOGIC; 
  signal mclk_BUFGP_21 : STD_LOGIC; 
  signal mclr_IBUF_23 : STD_LOGIC; 
  signal u1_q_0_0_27 : STD_LOGIC; 
  signal u1_q_0_01 : STD_LOGIC; 
  signal u1_q_0_0_not0000 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_1_rt_32 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_2_rt_34 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_3_rt_36 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_4_rt_38 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_5_rt_40 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_6_rt_42 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_7_rt_44 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy_8_rt_46 : STD_LOGIC; 
  signal u2_Mcount_hcs_xor_9_rt_48 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_1_rt_51 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_2_rt_53 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_3_rt_55 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_4_rt_57 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_5_rt_59 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_6_rt_61 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_7_rt_63 : STD_LOGIC; 
  signal u2_Mcount_vcs_cy_8_rt_65 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_0 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_1 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_2 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_3 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_4 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_5 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_6 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_7 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_8 : STD_LOGIC; 
  signal u2_Mcount_vcs_eqn_9 : STD_LOGIC; 
  signal u2_Mcount_vcs_xor_9_rt_77 : STD_LOGIC; 
  signal u2_N2 : STD_LOGIC; 
  signal u2_N3 : STD_LOGIC; 
  signal u2_Result_0_1 : STD_LOGIC; 
  signal u2_Result_1_1 : STD_LOGIC; 
  signal u2_Result_2_1 : STD_LOGIC; 
  signal u2_Result_3_1 : STD_LOGIC; 
  signal u2_Result_4_1 : STD_LOGIC; 
  signal u2_Result_5_1 : STD_LOGIC; 
  signal u2_Result_6_1 : STD_LOGIC; 
  signal u2_Result_7_1 : STD_LOGIC; 
  signal u2_Result_8_1 : STD_LOGIC; 
  signal u2_Result_9_1 : STD_LOGIC; 
  signal u2_clr_inv : STD_LOGIC; 
  signal u2_hcs_not0001 : STD_LOGIC; 
  signal u2_vcs_cmp_eq0000_122 : STD_LOGIC; 
  signal u2_vidon_and00001_123 : STD_LOGIC; 
  signal u2_vidon_and0000110_124 : STD_LOGIC; 
  signal u2_vidon_and000014 : STD_LOGIC; 
  signal u2_vidon_and0000141_126 : STD_LOGIC; 
  signal u2_vidon_and000057_127 : STD_LOGIC; 
  signal u2_vidon_and000072_128 : STD_LOGIC; 
  signal u2_vidon_and000094_129 : STD_LOGIC; 
  signal u2_vsenable_130 : STD_LOGIC; 
  signal u2_vsenable_cmp_eq0000 : STD_LOGIC; 
  signal u2_vsenable_cmp_eq000010_132 : STD_LOGIC; 
  signal u2_vsenable_cmp_eq00002_133 : STD_LOGIC; 
  signal vsync_OBUF_135 : STD_LOGIC; 
  signal u2_Mcount_hcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal u2_Mcount_hcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal u2_Mcount_vcs_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal u2_Mcount_vcs_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal u2_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal u2_hcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal u2_vcs : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  u1_q_0_0 : FDC
    port map (
      C => mclk_BUFGP_21,
      CLR => mclr_IBUF_23,
      D => u1_q_0_0_not0000,
      Q => u1_q_0_01
    );
  u2_Mcount_hcs_xor_9_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(8),
      LI => u2_Mcount_hcs_xor_9_rt_48,
      O => u2_Result_9_1
    );
  u2_Mcount_hcs_xor_8_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(7),
      LI => u2_Mcount_hcs_cy_8_rt_46,
      O => u2_Result_8_1
    );
  u2_Mcount_hcs_cy_8_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(7),
      DI => N0,
      S => u2_Mcount_hcs_cy_8_rt_46,
      O => u2_Mcount_hcs_cy(8)
    );
  u2_Mcount_hcs_xor_7_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(6),
      LI => u2_Mcount_hcs_cy_7_rt_44,
      O => u2_Result_7_1
    );
  u2_Mcount_hcs_cy_7_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(6),
      DI => N0,
      S => u2_Mcount_hcs_cy_7_rt_44,
      O => u2_Mcount_hcs_cy(7)
    );
  u2_Mcount_hcs_xor_6_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(5),
      LI => u2_Mcount_hcs_cy_6_rt_42,
      O => u2_Result_6_1
    );
  u2_Mcount_hcs_cy_6_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(5),
      DI => N0,
      S => u2_Mcount_hcs_cy_6_rt_42,
      O => u2_Mcount_hcs_cy(6)
    );
  u2_Mcount_hcs_xor_5_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(4),
      LI => u2_Mcount_hcs_cy_5_rt_40,
      O => u2_Result_5_1
    );
  u2_Mcount_hcs_cy_5_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(4),
      DI => N0,
      S => u2_Mcount_hcs_cy_5_rt_40,
      O => u2_Mcount_hcs_cy(5)
    );
  u2_Mcount_hcs_xor_4_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(3),
      LI => u2_Mcount_hcs_cy_4_rt_38,
      O => u2_Result_4_1
    );
  u2_Mcount_hcs_cy_4_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(3),
      DI => N0,
      S => u2_Mcount_hcs_cy_4_rt_38,
      O => u2_Mcount_hcs_cy(4)
    );
  u2_Mcount_hcs_xor_3_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(2),
      LI => u2_Mcount_hcs_cy_3_rt_36,
      O => u2_Result_3_1
    );
  u2_Mcount_hcs_cy_3_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(2),
      DI => N0,
      S => u2_Mcount_hcs_cy_3_rt_36,
      O => u2_Mcount_hcs_cy(3)
    );
  u2_Mcount_hcs_xor_2_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(1),
      LI => u2_Mcount_hcs_cy_2_rt_34,
      O => u2_Result_2_1
    );
  u2_Mcount_hcs_cy_2_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(1),
      DI => N0,
      S => u2_Mcount_hcs_cy_2_rt_34,
      O => u2_Mcount_hcs_cy(2)
    );
  u2_Mcount_hcs_xor_1_Q : XORCY
    port map (
      CI => u2_Mcount_hcs_cy(0),
      LI => u2_Mcount_hcs_cy_1_rt_32,
      O => u2_Result_1_1
    );
  u2_Mcount_hcs_cy_1_Q : MUXCY
    port map (
      CI => u2_Mcount_hcs_cy(0),
      DI => N0,
      S => u2_Mcount_hcs_cy_1_rt_32,
      O => u2_Mcount_hcs_cy(1)
    );
  u2_Mcount_hcs_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => u2_Mcount_hcs_lut(0),
      O => u2_Result_0_1
    );
  u2_Mcount_hcs_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => u2_Mcount_hcs_lut(0),
      O => u2_Mcount_hcs_cy(0)
    );
  u2_Mcount_vcs_xor_9_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(8),
      LI => u2_Mcount_vcs_xor_9_rt_77,
      O => u2_Result(9)
    );
  u2_Mcount_vcs_xor_8_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(7),
      LI => u2_Mcount_vcs_cy_8_rt_65,
      O => u2_Result(8)
    );
  u2_Mcount_vcs_cy_8_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(7),
      DI => N0,
      S => u2_Mcount_vcs_cy_8_rt_65,
      O => u2_Mcount_vcs_cy(8)
    );
  u2_Mcount_vcs_xor_7_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(6),
      LI => u2_Mcount_vcs_cy_7_rt_63,
      O => u2_Result(7)
    );
  u2_Mcount_vcs_cy_7_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(6),
      DI => N0,
      S => u2_Mcount_vcs_cy_7_rt_63,
      O => u2_Mcount_vcs_cy(7)
    );
  u2_Mcount_vcs_xor_6_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(5),
      LI => u2_Mcount_vcs_cy_6_rt_61,
      O => u2_Result(6)
    );
  u2_Mcount_vcs_cy_6_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(5),
      DI => N0,
      S => u2_Mcount_vcs_cy_6_rt_61,
      O => u2_Mcount_vcs_cy(6)
    );
  u2_Mcount_vcs_xor_5_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(4),
      LI => u2_Mcount_vcs_cy_5_rt_59,
      O => u2_Result(5)
    );
  u2_Mcount_vcs_cy_5_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(4),
      DI => N0,
      S => u2_Mcount_vcs_cy_5_rt_59,
      O => u2_Mcount_vcs_cy(5)
    );
  u2_Mcount_vcs_xor_4_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(3),
      LI => u2_Mcount_vcs_cy_4_rt_57,
      O => u2_Result(4)
    );
  u2_Mcount_vcs_cy_4_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(3),
      DI => N0,
      S => u2_Mcount_vcs_cy_4_rt_57,
      O => u2_Mcount_vcs_cy(4)
    );
  u2_Mcount_vcs_xor_3_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(2),
      LI => u2_Mcount_vcs_cy_3_rt_55,
      O => u2_Result(3)
    );
  u2_Mcount_vcs_cy_3_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(2),
      DI => N0,
      S => u2_Mcount_vcs_cy_3_rt_55,
      O => u2_Mcount_vcs_cy(3)
    );
  u2_Mcount_vcs_xor_2_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(1),
      LI => u2_Mcount_vcs_cy_2_rt_53,
      O => u2_Result(2)
    );
  u2_Mcount_vcs_cy_2_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(1),
      DI => N0,
      S => u2_Mcount_vcs_cy_2_rt_53,
      O => u2_Mcount_vcs_cy(2)
    );
  u2_Mcount_vcs_xor_1_Q : XORCY
    port map (
      CI => u2_Mcount_vcs_cy(0),
      LI => u2_Mcount_vcs_cy_1_rt_51,
      O => u2_Result(1)
    );
  u2_Mcount_vcs_cy_1_Q : MUXCY
    port map (
      CI => u2_Mcount_vcs_cy(0),
      DI => N0,
      S => u2_Mcount_vcs_cy_1_rt_51,
      O => u2_Mcount_vcs_cy(1)
    );
  u2_Mcount_vcs_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => u2_Mcount_vcs_lut(0),
      O => u2_Result(0)
    );
  u2_Mcount_vcs_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => u2_Mcount_vcs_lut(0),
      O => u2_Mcount_vcs_cy(0)
    );
  u2_hcs_9 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_9_1,
      Q => u2_hcs(9)
    );
  u2_hcs_8 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_8_1,
      Q => u2_hcs(8)
    );
  u2_hcs_7 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_7_1,
      Q => u2_hcs(7)
    );
  u2_hcs_6 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_6_1,
      Q => u2_hcs(6)
    );
  u2_hcs_5 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_5_1,
      Q => u2_hcs(5)
    );
  u2_hcs_4 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_4_1,
      Q => u2_hcs(4)
    );
  u2_hcs_3 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_3_1,
      Q => u2_hcs(3)
    );
  u2_hcs_2 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_2_1,
      Q => u2_hcs(2)
    );
  u2_hcs_1 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_1_1,
      Q => u2_hcs(1)
    );
  u2_hcs_0 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_hcs_not0001,
      CLR => mclr_IBUF_23,
      D => u2_Result_0_1,
      Q => u2_hcs(0)
    );
  u2_vcs_9 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_9,
      Q => u2_vcs(9)
    );
  u2_vcs_8 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_8,
      Q => u2_vcs(8)
    );
  u2_vcs_7 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_7,
      Q => u2_vcs(7)
    );
  u2_vcs_6 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_6,
      Q => u2_vcs(6)
    );
  u2_vcs_5 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_5,
      Q => u2_vcs(5)
    );
  u2_vcs_4 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_4,
      Q => u2_vcs(4)
    );
  u2_vcs_3 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_3,
      Q => u2_vcs(3)
    );
  u2_vcs_2 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_2,
      Q => u2_vcs(2)
    );
  u2_vcs_1 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_1,
      Q => u2_vcs(1)
    );
  u2_vcs_0 : FDCE
    port map (
      C => u1_q_0_0_27,
      CE => u2_vsenable_130,
      CLR => mclr_IBUF_23,
      D => u2_Mcount_vcs_eqn_0,
      Q => u2_vcs(0)
    );
  u2_vsenable : FDE
    port map (
      C => u1_q_0_0_27,
      CE => u2_clr_inv,
      D => u2_vsenable_cmp_eq0000,
      Q => u2_vsenable_130
    );
  u2_hsync1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => u2_hcs(7),
      I1 => u2_hcs(8),
      I2 => u2_hcs(9),
      O => hsync_OBUF_19
    );
  u2_vsync_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => u2_vcs(3),
      I1 => u2_vcs(2),
      I2 => u2_vcs(1),
      O => N01
    );
  u2_vsync : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => N01,
      I1 => u2_vcs(4),
      I2 => u2_vcs(9),
      I3 => u2_N2,
      O => vsync_OBUF_135
    );
  u2_Mcount_vcs_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(0),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_0
    );
  u2_vcs_cmp_eq000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => u2_vcs(5),
      I1 => u2_vcs(6),
      I2 => u2_vcs(8),
      I3 => u2_vcs(7),
      O => u2_N2
    );
  u2_vsenable_cmp_eq000010 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => u2_hcs(2),
      I1 => u2_hcs(3),
      I2 => u2_hcs(4),
      I3 => u2_hcs(8),
      O => u2_vsenable_cmp_eq000010_132
    );
  u2_vsenable_cmp_eq000012 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => u2_N3,
      I1 => N12,
      I2 => u2_vsenable_cmp_eq000010_132,
      O => u2_vsenable_cmp_eq0000
    );
  u2_Mcount_vcs_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(1),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_1
    );
  u2_Mcount_vcs_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(2),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_2
    );
  u2_Mcount_vcs_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(3),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_3
    );
  u2_Mcount_vcs_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(4),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_4
    );
  u2_Mcount_vcs_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(5),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_5
    );
  u2_Mcount_vcs_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_Result(6),
      I1 => u2_vcs_cmp_eq0000_122,
      O => u2_Mcount_vcs_eqn_6
    );
  u2_Mcount_vcs_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => N14,
      I1 => u2_Result(7),
      O => u2_Mcount_vcs_eqn_7
    );
  u2_Mcount_vcs_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => u2_vcs_cmp_eq0000_122,
      I1 => u2_Result(8),
      O => u2_Mcount_vcs_eqn_8
    );
  u2_Mcount_vcs_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => u2_vcs_cmp_eq0000_122,
      I1 => u2_Result(9),
      O => u2_Mcount_vcs_eqn_9
    );
  u2_vidon_and00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => u2_vcs(6),
      I1 => u2_vcs(7),
      O => u2_vidon_and00001_123
    );
  u2_vidon_and000057 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => u2_vcs(2),
      I1 => u2_vcs(3),
      I2 => u2_vcs(0),
      I3 => u2_vcs(8),
      O => u2_vidon_and000057_127
    );
  u2_vidon_and000094 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => u2_hcs(9),
      I1 => u2_N3,
      I2 => u2_hcs(4),
      I3 => u2_hcs(8),
      O => u2_vidon_and000094_129
    );
  mclr_IBUF : IBUF
    port map (
      I => mclr,
      O => mclr_IBUF_23
    );
  vsync_OBUF : OBUF
    port map (
      I => vsync_OBUF_135,
      O => vsync
    );
  hsync_OBUF : OBUF
    port map (
      I => hsync_OBUF_19,
      O => hsync
    );
  blue_1_OBUF : OBUF
    port map (
      I => N0,
      O => blue(1)
    );
  blue_0_OBUF : OBUF
    port map (
      I => N0,
      O => blue(0)
    );
  green_2_OBUF : OBUF
    port map (
      I => green_2_OBUF_17,
      O => green(2)
    );
  green_1_OBUF : OBUF
    port map (
      I => green_0_OBUF_16,
      O => green(1)
    );
  green_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_16,
      O => green(0)
    );
  red_2_OBUF : OBUF
    port map (
      I => green_0_OBUF_16,
      O => red(2)
    );
  red_1_OBUF : OBUF
    port map (
      I => green_0_OBUF_16,
      O => red(1)
    );
  red_0_OBUF : OBUF
    port map (
      I => green_0_OBUF_16,
      O => red(0)
    );
  u2_Mcount_hcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(8),
      O => u2_Mcount_hcs_cy_8_rt_46
    );
  u2_Mcount_hcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(7),
      O => u2_Mcount_hcs_cy_7_rt_44
    );
  u2_Mcount_hcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(6),
      O => u2_Mcount_hcs_cy_6_rt_42
    );
  u2_Mcount_hcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(5),
      O => u2_Mcount_hcs_cy_5_rt_40
    );
  u2_Mcount_hcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(4),
      O => u2_Mcount_hcs_cy_4_rt_38
    );
  u2_Mcount_hcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(3),
      O => u2_Mcount_hcs_cy_3_rt_36
    );
  u2_Mcount_hcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(2),
      O => u2_Mcount_hcs_cy_2_rt_34
    );
  u2_Mcount_hcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(1),
      O => u2_Mcount_hcs_cy_1_rt_32
    );
  u2_Mcount_vcs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(8),
      O => u2_Mcount_vcs_cy_8_rt_65
    );
  u2_Mcount_vcs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(7),
      O => u2_Mcount_vcs_cy_7_rt_63
    );
  u2_Mcount_vcs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(6),
      O => u2_Mcount_vcs_cy_6_rt_61
    );
  u2_Mcount_vcs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(5),
      O => u2_Mcount_vcs_cy_5_rt_59
    );
  u2_Mcount_vcs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(4),
      O => u2_Mcount_vcs_cy_4_rt_57
    );
  u2_Mcount_vcs_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(3),
      O => u2_Mcount_vcs_cy_3_rt_55
    );
  u2_Mcount_vcs_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(2),
      O => u2_Mcount_vcs_cy_2_rt_53
    );
  u2_Mcount_vcs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(1),
      O => u2_Mcount_vcs_cy_1_rt_51
    );
  u2_Mcount_hcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_hcs(9),
      O => u2_Mcount_hcs_xor_9_rt_48
    );
  u2_Mcount_vcs_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u2_vcs(9),
      O => u2_Mcount_vcs_xor_9_rt_77
    );
  u2_vcs_cmp_eq0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => u2_vcs(3),
      I1 => u2_vcs(2),
      I2 => u2_vcs(4),
      I3 => u2_vcs(9),
      O => N4
    );
  u2_hcs_not00011 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => u2_vsenable_cmp_eq000010_132,
      I1 => u2_vsenable_cmp_eq00002_133,
      I2 => N13,
      O => u2_hcs_not0001
    );
  u2_vidon_and000059_SW0 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => u2_vcs(6),
      I1 => u2_vidon_and000057_127,
      I2 => u2_vcs(7),
      O => N6
    );
  u2_vidon_and0000110_SW0 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => u2_hcs(7),
      I1 => u2_hcs(4),
      I2 => u2_hcs(5),
      I3 => u2_hcs(6),
      O => N8
    );
  u2_vidon_and0000110 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => u2_vcs(9),
      I1 => u2_hcs(8),
      I2 => u2_hcs(9),
      I3 => N8,
      O => u2_vidon_and0000110_124
    );
  u3_green_2_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => u2_vcs(4),
      I1 => u2_vidon_and000072_128,
      I2 => u2_vidon_and000094_129,
      I3 => u2_vidon_and0000110_124,
      O => green_2_OBUF_17
    );
  u3_green_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => u2_vidon_and000072_128,
      I1 => u2_vidon_and000094_129,
      I2 => u2_vidon_and0000110_124,
      I3 => u2_vcs(4),
      O => green_0_OBUF_16
    );
  u2_vidon_and000072 : MUXF5
    port map (
      I0 => N10,
      I1 => N11,
      S => u2_vcs(5),
      O => u2_vidon_and000072_128
    );
  u2_vidon_and000072_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => u2_vcs(8),
      I1 => u2_vcs(9),
      I2 => u2_vidon_and00001_123,
      I3 => u2_vidon_and000014,
      O => N10
    );
  u2_vidon_and000072_G : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => u2_vcs(1),
      I1 => N6,
      I2 => u2_vcs(4),
      O => N11
    );
  u1_q_0_0_BUFG : BUFG
    port map (
      I => u1_q_0_01,
      O => u1_q_0_0_27
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_21
    );
  u2_Mcount_hcs_lut_0_INV_0 : INV
    port map (
      I => u2_hcs(0),
      O => u2_Mcount_hcs_lut(0)
    );
  u2_Mcount_vcs_lut_0_INV_0 : INV
    port map (
      I => u2_vcs(0),
      O => u2_Mcount_vcs_lut(0)
    );
  u2_clr_inv1_INV_0 : INV
    port map (
      I => mclr_IBUF_23,
      O => u2_clr_inv
    );
  u1_q_0_0_not00001_INV_0 : INV
    port map (
      I => u1_q_0_01,
      O => u1_q_0_0_not0000
    );
  u2_vidon_and0000141 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => u2_vcs(3),
      I1 => u2_vcs(0),
      I2 => u2_vcs(2),
      I3 => u2_vcs(1),
      O => u2_vidon_and0000141_126
    );
  u2_vidon_and000014_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => u2_vidon_and0000141_126,
      S => u2_vcs(4),
      O => u2_vidon_and000014
    );
  u2_vsenable_cmp_eq00002 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => u2_hcs(0),
      I1 => u2_hcs(1),
      I2 => u2_hcs(9),
      LO => N12,
      O => u2_vsenable_cmp_eq00002_133
    );
  u2_vsenable_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => u2_hcs(5),
      I1 => u2_hcs(6),
      I2 => u2_hcs(7),
      LO => N13,
      O => u2_N3
    );
  u2_vcs_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => u2_vcs(0),
      I1 => u2_vcs(1),
      I2 => u2_N2,
      I3 => N4,
      LO => N14,
      O => u2_vcs_cmp_eq0000_122
    );

end Structure;

