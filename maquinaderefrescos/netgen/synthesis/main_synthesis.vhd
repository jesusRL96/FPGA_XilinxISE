--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: main_synthesis.vhd
-- /___/   /\     Timestamp: Fri Sep 01 07:25:46 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm main -w -dir netgen/synthesis -ofmt vhdl -sim main.ngc main_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: main.ngc
-- Output file	: F:\dlps\maquinaderefrescos\netgen\synthesis\main_synthesis.vhd
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
    reset : in STD_LOGIC := 'X'; 
    mc : in STD_LOGIC := 'X'; 
    md : out STD_LOGIC; 
    clksal : out STD_LOGIC; 
    mclk : in STD_LOGIC := 'X'; 
    acu : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ma : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end main;

architecture Structure of main is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal auxclr : STD_LOGIC; 
  signal auxld : STD_LOGIC; 
  signal ma_0_IBUF_52 : STD_LOGIC; 
  signal ma_1_IBUF_53 : STD_LOGIC; 
  signal ma_2_IBUF_54 : STD_LOGIC; 
  signal ma_3_IBUF_55 : STD_LOGIC; 
  signal ma_4_IBUF_56 : STD_LOGIC; 
  signal ma_5_IBUF_57 : STD_LOGIC; 
  signal ma_6_IBUF_58 : STD_LOGIC; 
  signal ma_7_IBUF_59 : STD_LOGIC; 
  signal mc_IBUF_61 : STD_LOGIC; 
  signal mclk_BUFGP_63 : STD_LOGIC; 
  signal md_OBUF_65 : STD_LOGIC; 
  signal reset_IBUF_67 : STD_LOGIC; 
  signal u4_presente_FSM_FFd1_91 : STD_LOGIC; 
  signal u4_presente_FSM_FFd1_In : STD_LOGIC; 
  signal u4_presente_FSM_FFd1_In3_93 : STD_LOGIC; 
  signal u4_presente_FSM_FFd1_In8_94 : STD_LOGIC; 
  signal u4_presente_FSM_FFd2_95 : STD_LOGIC; 
  signal u4_presente_FSM_FFd2_In : STD_LOGIC; 
  signal u5_Mcount_q_cy_10_rt_99 : STD_LOGIC; 
  signal u5_Mcount_q_cy_11_rt_101 : STD_LOGIC; 
  signal u5_Mcount_q_cy_12_rt_103 : STD_LOGIC; 
  signal u5_Mcount_q_cy_13_rt_105 : STD_LOGIC; 
  signal u5_Mcount_q_cy_14_rt_107 : STD_LOGIC; 
  signal u5_Mcount_q_cy_15_rt_109 : STD_LOGIC; 
  signal u5_Mcount_q_cy_16_rt_111 : STD_LOGIC; 
  signal u5_Mcount_q_cy_17_rt_113 : STD_LOGIC; 
  signal u5_Mcount_q_cy_18_rt_115 : STD_LOGIC; 
  signal u5_Mcount_q_cy_19_rt_117 : STD_LOGIC; 
  signal u5_Mcount_q_cy_1_rt_119 : STD_LOGIC; 
  signal u5_Mcount_q_cy_20_rt_121 : STD_LOGIC; 
  signal u5_Mcount_q_cy_21_rt_123 : STD_LOGIC; 
  signal u5_Mcount_q_cy_22_rt_125 : STD_LOGIC; 
  signal u5_Mcount_q_cy_23_rt_127 : STD_LOGIC; 
  signal u5_Mcount_q_cy_24_rt_129 : STD_LOGIC; 
  signal u5_Mcount_q_cy_2_rt_131 : STD_LOGIC; 
  signal u5_Mcount_q_cy_3_rt_133 : STD_LOGIC; 
  signal u5_Mcount_q_cy_4_rt_135 : STD_LOGIC; 
  signal u5_Mcount_q_cy_5_rt_137 : STD_LOGIC; 
  signal u5_Mcount_q_cy_6_rt_139 : STD_LOGIC; 
  signal u5_Mcount_q_cy_7_rt_141 : STD_LOGIC; 
  signal u5_Mcount_q_cy_8_rt_143 : STD_LOGIC; 
  signal u5_Mcount_q_cy_9_rt_145 : STD_LOGIC; 
  signal u5_Mcount_q_xor_25_rt_147 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal auxsuma : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal u1_sal : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal u3_Madd_suma_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal u3_Madd_suma_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal u5_Mcount_q_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal u5_Mcount_q_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal u5_q : STD_LOGIC_VECTOR ( 25 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  u5_q_0 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(0),
      Q => u5_q(0)
    );
  u5_q_1 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(1),
      Q => u5_q(1)
    );
  u5_q_2 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(2),
      Q => u5_q(2)
    );
  u5_q_3 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(3),
      Q => u5_q(3)
    );
  u5_q_4 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(4),
      Q => u5_q(4)
    );
  u5_q_5 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(5),
      Q => u5_q(5)
    );
  u5_q_6 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(6),
      Q => u5_q(6)
    );
  u5_q_7 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(7),
      Q => u5_q(7)
    );
  u5_q_8 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(8),
      Q => u5_q(8)
    );
  u5_q_9 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(9),
      Q => u5_q(9)
    );
  u5_q_10 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(10),
      Q => u5_q(10)
    );
  u5_q_11 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(11),
      Q => u5_q(11)
    );
  u5_q_12 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(12),
      Q => u5_q(12)
    );
  u5_q_13 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(13),
      Q => u5_q(13)
    );
  u5_q_14 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(14),
      Q => u5_q(14)
    );
  u5_q_15 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(15),
      Q => u5_q(15)
    );
  u5_q_16 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(16),
      Q => u5_q(16)
    );
  u5_q_17 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(17),
      Q => u5_q(17)
    );
  u5_q_18 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(18),
      Q => u5_q(18)
    );
  u5_q_19 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(19),
      Q => u5_q(19)
    );
  u5_q_20 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(20),
      Q => u5_q(20)
    );
  u5_q_21 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(21),
      Q => u5_q(21)
    );
  u5_q_22 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(22),
      Q => u5_q(22)
    );
  u5_q_23 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(23),
      Q => u5_q(23)
    );
  u5_q_24 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(24),
      Q => u5_q(24)
    );
  u5_q_25 : FDC
    port map (
      C => mclk_BUFGP_63,
      CLR => reset_IBUF_67,
      D => Result(25),
      Q => u5_q(25)
    );
  u3_Madd_suma_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ma_0_IBUF_52,
      I1 => u1_sal(0),
      O => u3_Madd_suma_lut(0)
    );
  u3_Madd_suma_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => u1_sal(0),
      S => u3_Madd_suma_lut(0),
      O => u3_Madd_suma_cy(0)
    );
  u3_Madd_suma_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => u3_Madd_suma_lut(0),
      O => auxsuma(0)
    );
  u3_Madd_suma_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(1),
      I1 => ma_1_IBUF_53,
      O => u3_Madd_suma_lut(1)
    );
  u3_Madd_suma_cy_1_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(0),
      DI => u1_sal(1),
      S => u3_Madd_suma_lut(1),
      O => u3_Madd_suma_cy(1)
    );
  u3_Madd_suma_xor_1_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(0),
      LI => u3_Madd_suma_lut(1),
      O => auxsuma(1)
    );
  u3_Madd_suma_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(2),
      I1 => ma_2_IBUF_54,
      O => u3_Madd_suma_lut(2)
    );
  u3_Madd_suma_cy_2_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(1),
      DI => u1_sal(2),
      S => u3_Madd_suma_lut(2),
      O => u3_Madd_suma_cy(2)
    );
  u3_Madd_suma_xor_2_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(1),
      LI => u3_Madd_suma_lut(2),
      O => auxsuma(2)
    );
  u3_Madd_suma_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(3),
      I1 => ma_3_IBUF_55,
      O => u3_Madd_suma_lut(3)
    );
  u3_Madd_suma_cy_3_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(2),
      DI => u1_sal(3),
      S => u3_Madd_suma_lut(3),
      O => u3_Madd_suma_cy(3)
    );
  u3_Madd_suma_xor_3_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(2),
      LI => u3_Madd_suma_lut(3),
      O => auxsuma(3)
    );
  u3_Madd_suma_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(4),
      I1 => ma_4_IBUF_56,
      O => u3_Madd_suma_lut(4)
    );
  u3_Madd_suma_cy_4_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(3),
      DI => u1_sal(4),
      S => u3_Madd_suma_lut(4),
      O => u3_Madd_suma_cy(4)
    );
  u3_Madd_suma_xor_4_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(3),
      LI => u3_Madd_suma_lut(4),
      O => auxsuma(4)
    );
  u3_Madd_suma_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(5),
      I1 => ma_5_IBUF_57,
      O => u3_Madd_suma_lut(5)
    );
  u3_Madd_suma_cy_5_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(4),
      DI => u1_sal(5),
      S => u3_Madd_suma_lut(5),
      O => u3_Madd_suma_cy(5)
    );
  u3_Madd_suma_xor_5_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(4),
      LI => u3_Madd_suma_lut(5),
      O => auxsuma(5)
    );
  u3_Madd_suma_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(6),
      I1 => ma_6_IBUF_58,
      O => u3_Madd_suma_lut(6)
    );
  u3_Madd_suma_cy_6_Q : MUXCY
    port map (
      CI => u3_Madd_suma_cy(5),
      DI => u1_sal(6),
      S => u3_Madd_suma_lut(6),
      O => u3_Madd_suma_cy(6)
    );
  u3_Madd_suma_xor_6_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(5),
      LI => u3_Madd_suma_lut(6),
      O => auxsuma(6)
    );
  u3_Madd_suma_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => u1_sal(7),
      I1 => ma_7_IBUF_59,
      O => u3_Madd_suma_lut(7)
    );
  u3_Madd_suma_xor_7_Q : XORCY
    port map (
      CI => u3_Madd_suma_cy(6),
      LI => u3_Madd_suma_lut(7),
      O => auxsuma(7)
    );
  u5_Mcount_q_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => u5_Mcount_q_lut(0),
      O => u5_Mcount_q_cy(0)
    );
  u5_Mcount_q_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => u5_Mcount_q_lut(0),
      O => Result(0)
    );
  u5_Mcount_q_cy_1_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(0),
      DI => N0,
      S => u5_Mcount_q_cy_1_rt_119,
      O => u5_Mcount_q_cy(1)
    );
  u5_Mcount_q_xor_1_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(0),
      LI => u5_Mcount_q_cy_1_rt_119,
      O => Result(1)
    );
  u5_Mcount_q_cy_2_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(1),
      DI => N0,
      S => u5_Mcount_q_cy_2_rt_131,
      O => u5_Mcount_q_cy(2)
    );
  u5_Mcount_q_xor_2_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(1),
      LI => u5_Mcount_q_cy_2_rt_131,
      O => Result(2)
    );
  u5_Mcount_q_cy_3_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(2),
      DI => N0,
      S => u5_Mcount_q_cy_3_rt_133,
      O => u5_Mcount_q_cy(3)
    );
  u5_Mcount_q_xor_3_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(2),
      LI => u5_Mcount_q_cy_3_rt_133,
      O => Result(3)
    );
  u5_Mcount_q_cy_4_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(3),
      DI => N0,
      S => u5_Mcount_q_cy_4_rt_135,
      O => u5_Mcount_q_cy(4)
    );
  u5_Mcount_q_xor_4_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(3),
      LI => u5_Mcount_q_cy_4_rt_135,
      O => Result(4)
    );
  u5_Mcount_q_cy_5_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(4),
      DI => N0,
      S => u5_Mcount_q_cy_5_rt_137,
      O => u5_Mcount_q_cy(5)
    );
  u5_Mcount_q_xor_5_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(4),
      LI => u5_Mcount_q_cy_5_rt_137,
      O => Result(5)
    );
  u5_Mcount_q_cy_6_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(5),
      DI => N0,
      S => u5_Mcount_q_cy_6_rt_139,
      O => u5_Mcount_q_cy(6)
    );
  u5_Mcount_q_xor_6_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(5),
      LI => u5_Mcount_q_cy_6_rt_139,
      O => Result(6)
    );
  u5_Mcount_q_cy_7_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(6),
      DI => N0,
      S => u5_Mcount_q_cy_7_rt_141,
      O => u5_Mcount_q_cy(7)
    );
  u5_Mcount_q_xor_7_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(6),
      LI => u5_Mcount_q_cy_7_rt_141,
      O => Result(7)
    );
  u5_Mcount_q_cy_8_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(7),
      DI => N0,
      S => u5_Mcount_q_cy_8_rt_143,
      O => u5_Mcount_q_cy(8)
    );
  u5_Mcount_q_xor_8_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(7),
      LI => u5_Mcount_q_cy_8_rt_143,
      O => Result(8)
    );
  u5_Mcount_q_cy_9_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(8),
      DI => N0,
      S => u5_Mcount_q_cy_9_rt_145,
      O => u5_Mcount_q_cy(9)
    );
  u5_Mcount_q_xor_9_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(8),
      LI => u5_Mcount_q_cy_9_rt_145,
      O => Result(9)
    );
  u5_Mcount_q_cy_10_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(9),
      DI => N0,
      S => u5_Mcount_q_cy_10_rt_99,
      O => u5_Mcount_q_cy(10)
    );
  u5_Mcount_q_xor_10_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(9),
      LI => u5_Mcount_q_cy_10_rt_99,
      O => Result(10)
    );
  u5_Mcount_q_cy_11_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(10),
      DI => N0,
      S => u5_Mcount_q_cy_11_rt_101,
      O => u5_Mcount_q_cy(11)
    );
  u5_Mcount_q_xor_11_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(10),
      LI => u5_Mcount_q_cy_11_rt_101,
      O => Result(11)
    );
  u5_Mcount_q_cy_12_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(11),
      DI => N0,
      S => u5_Mcount_q_cy_12_rt_103,
      O => u5_Mcount_q_cy(12)
    );
  u5_Mcount_q_xor_12_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(11),
      LI => u5_Mcount_q_cy_12_rt_103,
      O => Result(12)
    );
  u5_Mcount_q_cy_13_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(12),
      DI => N0,
      S => u5_Mcount_q_cy_13_rt_105,
      O => u5_Mcount_q_cy(13)
    );
  u5_Mcount_q_xor_13_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(12),
      LI => u5_Mcount_q_cy_13_rt_105,
      O => Result(13)
    );
  u5_Mcount_q_cy_14_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(13),
      DI => N0,
      S => u5_Mcount_q_cy_14_rt_107,
      O => u5_Mcount_q_cy(14)
    );
  u5_Mcount_q_xor_14_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(13),
      LI => u5_Mcount_q_cy_14_rt_107,
      O => Result(14)
    );
  u5_Mcount_q_cy_15_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(14),
      DI => N0,
      S => u5_Mcount_q_cy_15_rt_109,
      O => u5_Mcount_q_cy(15)
    );
  u5_Mcount_q_xor_15_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(14),
      LI => u5_Mcount_q_cy_15_rt_109,
      O => Result(15)
    );
  u5_Mcount_q_cy_16_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(15),
      DI => N0,
      S => u5_Mcount_q_cy_16_rt_111,
      O => u5_Mcount_q_cy(16)
    );
  u5_Mcount_q_xor_16_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(15),
      LI => u5_Mcount_q_cy_16_rt_111,
      O => Result(16)
    );
  u5_Mcount_q_cy_17_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(16),
      DI => N0,
      S => u5_Mcount_q_cy_17_rt_113,
      O => u5_Mcount_q_cy(17)
    );
  u5_Mcount_q_xor_17_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(16),
      LI => u5_Mcount_q_cy_17_rt_113,
      O => Result(17)
    );
  u5_Mcount_q_cy_18_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(17),
      DI => N0,
      S => u5_Mcount_q_cy_18_rt_115,
      O => u5_Mcount_q_cy(18)
    );
  u5_Mcount_q_xor_18_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(17),
      LI => u5_Mcount_q_cy_18_rt_115,
      O => Result(18)
    );
  u5_Mcount_q_cy_19_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(18),
      DI => N0,
      S => u5_Mcount_q_cy_19_rt_117,
      O => u5_Mcount_q_cy(19)
    );
  u5_Mcount_q_xor_19_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(18),
      LI => u5_Mcount_q_cy_19_rt_117,
      O => Result(19)
    );
  u5_Mcount_q_cy_20_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(19),
      DI => N0,
      S => u5_Mcount_q_cy_20_rt_121,
      O => u5_Mcount_q_cy(20)
    );
  u5_Mcount_q_xor_20_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(19),
      LI => u5_Mcount_q_cy_20_rt_121,
      O => Result(20)
    );
  u5_Mcount_q_cy_21_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(20),
      DI => N0,
      S => u5_Mcount_q_cy_21_rt_123,
      O => u5_Mcount_q_cy(21)
    );
  u5_Mcount_q_xor_21_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(20),
      LI => u5_Mcount_q_cy_21_rt_123,
      O => Result(21)
    );
  u5_Mcount_q_cy_22_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(21),
      DI => N0,
      S => u5_Mcount_q_cy_22_rt_125,
      O => u5_Mcount_q_cy(22)
    );
  u5_Mcount_q_xor_22_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(21),
      LI => u5_Mcount_q_cy_22_rt_125,
      O => Result(22)
    );
  u5_Mcount_q_cy_23_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(22),
      DI => N0,
      S => u5_Mcount_q_cy_23_rt_127,
      O => u5_Mcount_q_cy(23)
    );
  u5_Mcount_q_xor_23_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(22),
      LI => u5_Mcount_q_cy_23_rt_127,
      O => Result(23)
    );
  u5_Mcount_q_cy_24_Q : MUXCY
    port map (
      CI => u5_Mcount_q_cy(23),
      DI => N0,
      S => u5_Mcount_q_cy_24_rt_129,
      O => u5_Mcount_q_cy(24)
    );
  u5_Mcount_q_xor_24_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(23),
      LI => u5_Mcount_q_cy_24_rt_129,
      O => Result(24)
    );
  u5_Mcount_q_xor_25_Q : XORCY
    port map (
      CI => u5_Mcount_q_cy(24),
      LI => u5_Mcount_q_xor_25_rt_147,
      O => Result(25)
    );
  u4_presente_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => u5_q(25),
      D => u4_presente_FSM_FFd1_In,
      Q => u4_presente_FSM_FFd1_91
    );
  u4_presente_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => u5_q(25),
      D => u4_presente_FSM_FFd2_In,
      Q => u4_presente_FSM_FFd2_95
    );
  u1_sal_7 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(7),
      Q => u1_sal(7)
    );
  u1_sal_6 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(6),
      Q => u1_sal(6)
    );
  u1_sal_5 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(5),
      Q => u1_sal(5)
    );
  u1_sal_4 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(4),
      Q => u1_sal(4)
    );
  u1_sal_3 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(3),
      Q => u1_sal(3)
    );
  u1_sal_2 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(2),
      Q => u1_sal(2)
    );
  u1_sal_1 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(1),
      Q => u1_sal(1)
    );
  u1_sal_0 : FDCE
    port map (
      C => u5_q(25),
      CE => auxld,
      CLR => auxclr,
      D => auxsuma(0),
      Q => u1_sal(0)
    );
  u4_presente_FSM_Out01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => u4_presente_FSM_FFd2_95,
      I1 => u4_presente_FSM_FFd1_91,
      O => auxclr
    );
  u4_presente_FSM_Out21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => u4_presente_FSM_FFd2_95,
      I1 => u4_presente_FSM_FFd1_91,
      O => md_OBUF_65
    );
  u4_presente_FSM_FFd2_In1 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => u4_presente_FSM_FFd2_95,
      I1 => u4_presente_FSM_FFd1_91,
      I2 => mc_IBUF_61,
      O => u4_presente_FSM_FFd2_In
    );
  u4_presente_FSM_Out11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => u4_presente_FSM_FFd2_95,
      I1 => u4_presente_FSM_FFd1_91,
      O => auxld
    );
  u4_presente_FSM_FFd1_In3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => u1_sal(5),
      I1 => u1_sal(7),
      O => u4_presente_FSM_FFd1_In3_93
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_67
    );
  mc_IBUF : IBUF
    port map (
      I => mc,
      O => mc_IBUF_61
    );
  ma_7_IBUF : IBUF
    port map (
      I => ma(7),
      O => ma_7_IBUF_59
    );
  ma_6_IBUF : IBUF
    port map (
      I => ma(6),
      O => ma_6_IBUF_58
    );
  ma_5_IBUF : IBUF
    port map (
      I => ma(5),
      O => ma_5_IBUF_57
    );
  ma_4_IBUF : IBUF
    port map (
      I => ma(4),
      O => ma_4_IBUF_56
    );
  ma_3_IBUF : IBUF
    port map (
      I => ma(3),
      O => ma_3_IBUF_55
    );
  ma_2_IBUF : IBUF
    port map (
      I => ma(2),
      O => ma_2_IBUF_54
    );
  ma_1_IBUF : IBUF
    port map (
      I => ma(1),
      O => ma_1_IBUF_53
    );
  ma_0_IBUF : IBUF
    port map (
      I => ma(0),
      O => ma_0_IBUF_52
    );
  md_OBUF : OBUF
    port map (
      I => md_OBUF_65,
      O => md
    );
  clksal_OBUF : OBUF
    port map (
      I => u5_q(25),
      O => clksal
    );
  acu_3_OBUF : OBUF
    port map (
      I => u1_sal(3),
      O => acu(3)
    );
  acu_2_OBUF : OBUF
    port map (
      I => u1_sal(2),
      O => acu(2)
    );
  acu_1_OBUF : OBUF
    port map (
      I => u1_sal(1),
      O => acu(1)
    );
  acu_0_OBUF : OBUF
    port map (
      I => u1_sal(0),
      O => acu(0)
    );
  u5_Mcount_q_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(1),
      O => u5_Mcount_q_cy_1_rt_119
    );
  u5_Mcount_q_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(2),
      O => u5_Mcount_q_cy_2_rt_131
    );
  u5_Mcount_q_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(3),
      O => u5_Mcount_q_cy_3_rt_133
    );
  u5_Mcount_q_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(4),
      O => u5_Mcount_q_cy_4_rt_135
    );
  u5_Mcount_q_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(5),
      O => u5_Mcount_q_cy_5_rt_137
    );
  u5_Mcount_q_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(6),
      O => u5_Mcount_q_cy_6_rt_139
    );
  u5_Mcount_q_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(7),
      O => u5_Mcount_q_cy_7_rt_141
    );
  u5_Mcount_q_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(8),
      O => u5_Mcount_q_cy_8_rt_143
    );
  u5_Mcount_q_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(9),
      O => u5_Mcount_q_cy_9_rt_145
    );
  u5_Mcount_q_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(10),
      O => u5_Mcount_q_cy_10_rt_99
    );
  u5_Mcount_q_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(11),
      O => u5_Mcount_q_cy_11_rt_101
    );
  u5_Mcount_q_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(12),
      O => u5_Mcount_q_cy_12_rt_103
    );
  u5_Mcount_q_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(13),
      O => u5_Mcount_q_cy_13_rt_105
    );
  u5_Mcount_q_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(14),
      O => u5_Mcount_q_cy_14_rt_107
    );
  u5_Mcount_q_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(15),
      O => u5_Mcount_q_cy_15_rt_109
    );
  u5_Mcount_q_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(16),
      O => u5_Mcount_q_cy_16_rt_111
    );
  u5_Mcount_q_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(17),
      O => u5_Mcount_q_cy_17_rt_113
    );
  u5_Mcount_q_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(18),
      O => u5_Mcount_q_cy_18_rt_115
    );
  u5_Mcount_q_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(19),
      O => u5_Mcount_q_cy_19_rt_117
    );
  u5_Mcount_q_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(20),
      O => u5_Mcount_q_cy_20_rt_121
    );
  u5_Mcount_q_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(21),
      O => u5_Mcount_q_cy_21_rt_123
    );
  u5_Mcount_q_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(22),
      O => u5_Mcount_q_cy_22_rt_125
    );
  u5_Mcount_q_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(23),
      O => u5_Mcount_q_cy_23_rt_127
    );
  u5_Mcount_q_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(24),
      O => u5_Mcount_q_cy_24_rt_129
    );
  u5_Mcount_q_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => u5_q(25),
      O => u5_Mcount_q_xor_25_rt_147
    );
  u4_presente_FSM_FFd1_In27_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => u1_sal(4),
      I1 => u1_sal(6),
      I2 => u4_presente_FSM_FFd1_In3_93,
      I3 => u4_presente_FSM_FFd1_In8_94,
      O => N11
    );
  u4_presente_FSM_FFd1_In27 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => u4_presente_FSM_FFd1_91,
      I1 => u4_presente_FSM_FFd2_95,
      I2 => mc_IBUF_61,
      I3 => N11,
      O => u4_presente_FSM_FFd1_In
    );
  mclk_BUFGP : BUFGP
    port map (
      I => mclk,
      O => mclk_BUFGP_63
    );
  u5_Mcount_q_lut_0_INV_0 : INV
    port map (
      I => u5_q(0),
      O => u5_Mcount_q_lut(0)
    );
  u4_presente_FSM_FFd1_In8 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => u1_sal(2),
      I1 => u1_sal(3),
      I2 => u1_sal(0),
      I3 => u1_sal(1),
      LO => u4_presente_FSM_FFd1_In8_94
    );

end Structure;

