////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: main_synthesis.v
// /___/   /\     Timestamp: Fri Nov 03 07:31:09 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim main.ngc main_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: main.ngc
// Output file	: E:\dlps\suma\netgen\synthesis\main_synthesis.v
// # of Modules	: 1
// Design Name	: main
// Xilinx        : C:\Xilinx\12.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module main (
  clk, dato, rst, clk2, an, display
);
  input clk;
  input dato;
  input rst;
  input clk2;
  output [3 : 0] an;
  output [6 : 0] display;
  wire N0;
  wire N01;
  wire N1;
  wire N11;
  wire N111;
  wire N15;
  wire N16;
  wire N17;
  wire N19;
  wire N5;
  wire N7;
  wire N9;
  wire an_0_OBUF_42;
  wire clk2_BUFGP_59;
  wire clk_BUFGP_60;
  wire dato_IBUF_62;
  wire display_0_OBUF_70;
  wire display_1_OBUF_71;
  wire display_2_OBUF_72;
  wire display_3_OBUF_73;
  wire display_4_OBUF_74;
  wire display_5_OBUF_75;
  wire display_6_OBUF_76;
  wire rst_IBUF_78;
  wire rst_IBUF_shift1_79;
  wire rst_IBUF_shift2_80;
  wire rst_IBUF_shift3_81;
  wire \u1/Mcount_q_cy<10>_rt_84 ;
  wire \u1/Mcount_q_cy<11>_rt_86 ;
  wire \u1/Mcount_q_cy<12>_rt_88 ;
  wire \u1/Mcount_q_cy<13>_rt_90 ;
  wire \u1/Mcount_q_cy<14>_rt_92 ;
  wire \u1/Mcount_q_cy<15>_rt_94 ;
  wire \u1/Mcount_q_cy<16>_rt_96 ;
  wire \u1/Mcount_q_cy<17>_rt_98 ;
  wire \u1/Mcount_q_cy<18>_rt_100 ;
  wire \u1/Mcount_q_cy<19>_rt_102 ;
  wire \u1/Mcount_q_cy<1>_rt_104 ;
  wire \u1/Mcount_q_cy<20>_rt_106 ;
  wire \u1/Mcount_q_cy<21>_rt_108 ;
  wire \u1/Mcount_q_cy<22>_rt_110 ;
  wire \u1/Mcount_q_cy<23>_rt_112 ;
  wire \u1/Mcount_q_cy<24>_rt_114 ;
  wire \u1/Mcount_q_cy<2>_rt_116 ;
  wire \u1/Mcount_q_cy<3>_rt_118 ;
  wire \u1/Mcount_q_cy<4>_rt_120 ;
  wire \u1/Mcount_q_cy<5>_rt_122 ;
  wire \u1/Mcount_q_cy<6>_rt_124 ;
  wire \u1/Mcount_q_cy<7>_rt_126 ;
  wire \u1/Mcount_q_cy<8>_rt_128 ;
  wire \u1/Mcount_q_cy<9>_rt_130 ;
  wire \u1/Mcount_q_xor<25>_rt_132 ;
  wire \u2/Mshreg_reg_8_159 ;
  wire \u2/N01 ;
  wire \u2/reg[1] ;
  wire \u2/reg[12] ;
  wire \u2/reg[13] ;
  wire \u2/reg[14] ;
  wire \u2/reg[15] ;
  wire \u2/reg[16] ;
  wire \u2/reg[17] ;
  wire \u2/reg[18] ;
  wire \u2/reg[19] ;
  wire \u2/reg[2] ;
  wire \u2/reg[20] ;
  wire \u2/reg[21] ;
  wire \u2/reg[3] ;
  wire \u2/reg[4] ;
  wire \u2/reg[5] ;
  wire \u2/reg[6] ;
  wire \u2/reg[7] ;
  wire \u2/reg[8] ;
  wire \u2/reg_81_179 ;
  wire \u2/reg_811_180 ;
  wire \u2/salidaHex<0>117_181 ;
  wire \u3/salbin<0>31 ;
  wire \u3/salbin<1>17_183 ;
  wire \u3/salbin<3>56 ;
  wire \u3/salbin<3>561_185 ;
  wire \u3/salbin<3>562_186 ;
  wire \u3/salbin<3>64_SW0 ;
  wire \u3/salbin<3>64_SW01_188 ;
  wire \u4/presente_FSM_FFd1_189 ;
  wire \u4/presente_FSM_FFd1-In ;
  wire \u4/presente_FSM_FFd2_191 ;
  wire \u4/presente_FSM_FFd2-In ;
  wire \u4/presente_cmp_eq0000 ;
  wire \u5/Madd_suma1_add0000_cy<4>_rt_199 ;
  wire \u5/Madd_suma1_add0000_cy<5>_rt_201 ;
  wire \u5/Madd_suma1_add0000_cy<6>_rt_203 ;
  wire \u5/Madd_suma1_add0000_xor<7>_rt_208 ;
  wire \u5/reg1_cmp_lt0000 ;
  wire \u6/selec_0_0_230 ;
  wire [25 : 0] Result;
  wire [3 : 0] auxdatobin;
  wire [3 : 0] auxsalida;
  wire [5 : 0] auxsalidahex;
  wire [24 : 0] \u1/Mcount_q_cy ;
  wire [0 : 0] \u1/Mcount_q_lut ;
  wire [25 : 0] \u1/q ;
  wire [6 : 0] \u5/Madd_suma1_add0000_cy ;
  wire [3 : 0] \u5/Madd_suma1_add0000_lut ;
  wire [3 : 0] \u5/reg1 ;
  wire [7 : 0] \u5/suma1 ;
  wire [7 : 0] \u5/suma1_add0000 ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \u4/presente_FSM_FFd2  (
    .C(\u1/q [25]),
    .D(\u4/presente_FSM_FFd2-In ),
    .Q(\u4/presente_FSM_FFd2_191 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \u4/presente_FSM_FFd1  (
    .C(\u1/q [25]),
    .D(\u4/presente_FSM_FFd1-In ),
    .Q(\u4/presente_FSM_FFd1_189 )
  );
  FDR   \u6/selec_0_0  (
    .C(\u1/q [9]),
    .D(N1),
    .R(\u6/selec_0_0_230 ),
    .Q(\u6/selec_0_0_230 )
  );
  FD   \u1/q_0  (
    .C(clk_BUFGP_60),
    .D(Result[0]),
    .Q(\u1/q [0])
  );
  FD   \u1/q_1  (
    .C(clk_BUFGP_60),
    .D(Result[1]),
    .Q(\u1/q [1])
  );
  FD   \u1/q_2  (
    .C(clk_BUFGP_60),
    .D(Result[2]),
    .Q(\u1/q [2])
  );
  FD   \u1/q_3  (
    .C(clk_BUFGP_60),
    .D(Result[3]),
    .Q(\u1/q [3])
  );
  FD   \u1/q_4  (
    .C(clk_BUFGP_60),
    .D(Result[4]),
    .Q(\u1/q [4])
  );
  FD   \u1/q_5  (
    .C(clk_BUFGP_60),
    .D(Result[5]),
    .Q(\u1/q [5])
  );
  FD   \u1/q_6  (
    .C(clk_BUFGP_60),
    .D(Result[6]),
    .Q(\u1/q [6])
  );
  FD   \u1/q_7  (
    .C(clk_BUFGP_60),
    .D(Result[7]),
    .Q(\u1/q [7])
  );
  FD   \u1/q_8  (
    .C(clk_BUFGP_60),
    .D(Result[8]),
    .Q(\u1/q [8])
  );
  FD   \u1/q_9  (
    .C(clk_BUFGP_60),
    .D(Result[9]),
    .Q(\u1/q [9])
  );
  FD   \u1/q_10  (
    .C(clk_BUFGP_60),
    .D(Result[10]),
    .Q(\u1/q [10])
  );
  FD   \u1/q_11  (
    .C(clk_BUFGP_60),
    .D(Result[11]),
    .Q(\u1/q [11])
  );
  FD   \u1/q_12  (
    .C(clk_BUFGP_60),
    .D(Result[12]),
    .Q(\u1/q [12])
  );
  FD   \u1/q_13  (
    .C(clk_BUFGP_60),
    .D(Result[13]),
    .Q(\u1/q [13])
  );
  FD   \u1/q_14  (
    .C(clk_BUFGP_60),
    .D(Result[14]),
    .Q(\u1/q [14])
  );
  FD   \u1/q_15  (
    .C(clk_BUFGP_60),
    .D(Result[15]),
    .Q(\u1/q [15])
  );
  FD   \u1/q_16  (
    .C(clk_BUFGP_60),
    .D(Result[16]),
    .Q(\u1/q [16])
  );
  FD   \u1/q_17  (
    .C(clk_BUFGP_60),
    .D(Result[17]),
    .Q(\u1/q [17])
  );
  FD   \u1/q_18  (
    .C(clk_BUFGP_60),
    .D(Result[18]),
    .Q(\u1/q [18])
  );
  FD   \u1/q_19  (
    .C(clk_BUFGP_60),
    .D(Result[19]),
    .Q(\u1/q [19])
  );
  FD   \u1/q_20  (
    .C(clk_BUFGP_60),
    .D(Result[20]),
    .Q(\u1/q [20])
  );
  FD   \u1/q_21  (
    .C(clk_BUFGP_60),
    .D(Result[21]),
    .Q(\u1/q [21])
  );
  FD   \u1/q_22  (
    .C(clk_BUFGP_60),
    .D(Result[22]),
    .Q(\u1/q [22])
  );
  FD   \u1/q_23  (
    .C(clk_BUFGP_60),
    .D(Result[23]),
    .Q(\u1/q [23])
  );
  FD   \u1/q_24  (
    .C(clk_BUFGP_60),
    .D(Result[24]),
    .Q(\u1/q [24])
  );
  FD   \u1/q_25  (
    .C(clk_BUFGP_60),
    .D(Result[25]),
    .Q(\u1/q [25])
  );
  MUXCY   \u1/Mcount_q_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\u1/Mcount_q_lut [0]),
    .O(\u1/Mcount_q_cy [0])
  );
  XORCY   \u1/Mcount_q_xor<0>  (
    .CI(N0),
    .LI(\u1/Mcount_q_lut [0]),
    .O(Result[0])
  );
  MUXCY   \u1/Mcount_q_cy<1>  (
    .CI(\u1/Mcount_q_cy [0]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<1>_rt_104 ),
    .O(\u1/Mcount_q_cy [1])
  );
  XORCY   \u1/Mcount_q_xor<1>  (
    .CI(\u1/Mcount_q_cy [0]),
    .LI(\u1/Mcount_q_cy<1>_rt_104 ),
    .O(Result[1])
  );
  MUXCY   \u1/Mcount_q_cy<2>  (
    .CI(\u1/Mcount_q_cy [1]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<2>_rt_116 ),
    .O(\u1/Mcount_q_cy [2])
  );
  XORCY   \u1/Mcount_q_xor<2>  (
    .CI(\u1/Mcount_q_cy [1]),
    .LI(\u1/Mcount_q_cy<2>_rt_116 ),
    .O(Result[2])
  );
  MUXCY   \u1/Mcount_q_cy<3>  (
    .CI(\u1/Mcount_q_cy [2]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<3>_rt_118 ),
    .O(\u1/Mcount_q_cy [3])
  );
  XORCY   \u1/Mcount_q_xor<3>  (
    .CI(\u1/Mcount_q_cy [2]),
    .LI(\u1/Mcount_q_cy<3>_rt_118 ),
    .O(Result[3])
  );
  MUXCY   \u1/Mcount_q_cy<4>  (
    .CI(\u1/Mcount_q_cy [3]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<4>_rt_120 ),
    .O(\u1/Mcount_q_cy [4])
  );
  XORCY   \u1/Mcount_q_xor<4>  (
    .CI(\u1/Mcount_q_cy [3]),
    .LI(\u1/Mcount_q_cy<4>_rt_120 ),
    .O(Result[4])
  );
  MUXCY   \u1/Mcount_q_cy<5>  (
    .CI(\u1/Mcount_q_cy [4]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<5>_rt_122 ),
    .O(\u1/Mcount_q_cy [5])
  );
  XORCY   \u1/Mcount_q_xor<5>  (
    .CI(\u1/Mcount_q_cy [4]),
    .LI(\u1/Mcount_q_cy<5>_rt_122 ),
    .O(Result[5])
  );
  MUXCY   \u1/Mcount_q_cy<6>  (
    .CI(\u1/Mcount_q_cy [5]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<6>_rt_124 ),
    .O(\u1/Mcount_q_cy [6])
  );
  XORCY   \u1/Mcount_q_xor<6>  (
    .CI(\u1/Mcount_q_cy [5]),
    .LI(\u1/Mcount_q_cy<6>_rt_124 ),
    .O(Result[6])
  );
  MUXCY   \u1/Mcount_q_cy<7>  (
    .CI(\u1/Mcount_q_cy [6]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<7>_rt_126 ),
    .O(\u1/Mcount_q_cy [7])
  );
  XORCY   \u1/Mcount_q_xor<7>  (
    .CI(\u1/Mcount_q_cy [6]),
    .LI(\u1/Mcount_q_cy<7>_rt_126 ),
    .O(Result[7])
  );
  MUXCY   \u1/Mcount_q_cy<8>  (
    .CI(\u1/Mcount_q_cy [7]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<8>_rt_128 ),
    .O(\u1/Mcount_q_cy [8])
  );
  XORCY   \u1/Mcount_q_xor<8>  (
    .CI(\u1/Mcount_q_cy [7]),
    .LI(\u1/Mcount_q_cy<8>_rt_128 ),
    .O(Result[8])
  );
  MUXCY   \u1/Mcount_q_cy<9>  (
    .CI(\u1/Mcount_q_cy [8]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<9>_rt_130 ),
    .O(\u1/Mcount_q_cy [9])
  );
  XORCY   \u1/Mcount_q_xor<9>  (
    .CI(\u1/Mcount_q_cy [8]),
    .LI(\u1/Mcount_q_cy<9>_rt_130 ),
    .O(Result[9])
  );
  MUXCY   \u1/Mcount_q_cy<10>  (
    .CI(\u1/Mcount_q_cy [9]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<10>_rt_84 ),
    .O(\u1/Mcount_q_cy [10])
  );
  XORCY   \u1/Mcount_q_xor<10>  (
    .CI(\u1/Mcount_q_cy [9]),
    .LI(\u1/Mcount_q_cy<10>_rt_84 ),
    .O(Result[10])
  );
  MUXCY   \u1/Mcount_q_cy<11>  (
    .CI(\u1/Mcount_q_cy [10]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<11>_rt_86 ),
    .O(\u1/Mcount_q_cy [11])
  );
  XORCY   \u1/Mcount_q_xor<11>  (
    .CI(\u1/Mcount_q_cy [10]),
    .LI(\u1/Mcount_q_cy<11>_rt_86 ),
    .O(Result[11])
  );
  MUXCY   \u1/Mcount_q_cy<12>  (
    .CI(\u1/Mcount_q_cy [11]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<12>_rt_88 ),
    .O(\u1/Mcount_q_cy [12])
  );
  XORCY   \u1/Mcount_q_xor<12>  (
    .CI(\u1/Mcount_q_cy [11]),
    .LI(\u1/Mcount_q_cy<12>_rt_88 ),
    .O(Result[12])
  );
  MUXCY   \u1/Mcount_q_cy<13>  (
    .CI(\u1/Mcount_q_cy [12]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<13>_rt_90 ),
    .O(\u1/Mcount_q_cy [13])
  );
  XORCY   \u1/Mcount_q_xor<13>  (
    .CI(\u1/Mcount_q_cy [12]),
    .LI(\u1/Mcount_q_cy<13>_rt_90 ),
    .O(Result[13])
  );
  MUXCY   \u1/Mcount_q_cy<14>  (
    .CI(\u1/Mcount_q_cy [13]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<14>_rt_92 ),
    .O(\u1/Mcount_q_cy [14])
  );
  XORCY   \u1/Mcount_q_xor<14>  (
    .CI(\u1/Mcount_q_cy [13]),
    .LI(\u1/Mcount_q_cy<14>_rt_92 ),
    .O(Result[14])
  );
  MUXCY   \u1/Mcount_q_cy<15>  (
    .CI(\u1/Mcount_q_cy [14]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<15>_rt_94 ),
    .O(\u1/Mcount_q_cy [15])
  );
  XORCY   \u1/Mcount_q_xor<15>  (
    .CI(\u1/Mcount_q_cy [14]),
    .LI(\u1/Mcount_q_cy<15>_rt_94 ),
    .O(Result[15])
  );
  MUXCY   \u1/Mcount_q_cy<16>  (
    .CI(\u1/Mcount_q_cy [15]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<16>_rt_96 ),
    .O(\u1/Mcount_q_cy [16])
  );
  XORCY   \u1/Mcount_q_xor<16>  (
    .CI(\u1/Mcount_q_cy [15]),
    .LI(\u1/Mcount_q_cy<16>_rt_96 ),
    .O(Result[16])
  );
  MUXCY   \u1/Mcount_q_cy<17>  (
    .CI(\u1/Mcount_q_cy [16]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<17>_rt_98 ),
    .O(\u1/Mcount_q_cy [17])
  );
  XORCY   \u1/Mcount_q_xor<17>  (
    .CI(\u1/Mcount_q_cy [16]),
    .LI(\u1/Mcount_q_cy<17>_rt_98 ),
    .O(Result[17])
  );
  MUXCY   \u1/Mcount_q_cy<18>  (
    .CI(\u1/Mcount_q_cy [17]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<18>_rt_100 ),
    .O(\u1/Mcount_q_cy [18])
  );
  XORCY   \u1/Mcount_q_xor<18>  (
    .CI(\u1/Mcount_q_cy [17]),
    .LI(\u1/Mcount_q_cy<18>_rt_100 ),
    .O(Result[18])
  );
  MUXCY   \u1/Mcount_q_cy<19>  (
    .CI(\u1/Mcount_q_cy [18]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<19>_rt_102 ),
    .O(\u1/Mcount_q_cy [19])
  );
  XORCY   \u1/Mcount_q_xor<19>  (
    .CI(\u1/Mcount_q_cy [18]),
    .LI(\u1/Mcount_q_cy<19>_rt_102 ),
    .O(Result[19])
  );
  MUXCY   \u1/Mcount_q_cy<20>  (
    .CI(\u1/Mcount_q_cy [19]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<20>_rt_106 ),
    .O(\u1/Mcount_q_cy [20])
  );
  XORCY   \u1/Mcount_q_xor<20>  (
    .CI(\u1/Mcount_q_cy [19]),
    .LI(\u1/Mcount_q_cy<20>_rt_106 ),
    .O(Result[20])
  );
  MUXCY   \u1/Mcount_q_cy<21>  (
    .CI(\u1/Mcount_q_cy [20]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<21>_rt_108 ),
    .O(\u1/Mcount_q_cy [21])
  );
  XORCY   \u1/Mcount_q_xor<21>  (
    .CI(\u1/Mcount_q_cy [20]),
    .LI(\u1/Mcount_q_cy<21>_rt_108 ),
    .O(Result[21])
  );
  MUXCY   \u1/Mcount_q_cy<22>  (
    .CI(\u1/Mcount_q_cy [21]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<22>_rt_110 ),
    .O(\u1/Mcount_q_cy [22])
  );
  XORCY   \u1/Mcount_q_xor<22>  (
    .CI(\u1/Mcount_q_cy [21]),
    .LI(\u1/Mcount_q_cy<22>_rt_110 ),
    .O(Result[22])
  );
  MUXCY   \u1/Mcount_q_cy<23>  (
    .CI(\u1/Mcount_q_cy [22]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<23>_rt_112 ),
    .O(\u1/Mcount_q_cy [23])
  );
  XORCY   \u1/Mcount_q_xor<23>  (
    .CI(\u1/Mcount_q_cy [22]),
    .LI(\u1/Mcount_q_cy<23>_rt_112 ),
    .O(Result[23])
  );
  MUXCY   \u1/Mcount_q_cy<24>  (
    .CI(\u1/Mcount_q_cy [23]),
    .DI(N0),
    .S(\u1/Mcount_q_cy<24>_rt_114 ),
    .O(\u1/Mcount_q_cy [24])
  );
  XORCY   \u1/Mcount_q_xor<24>  (
    .CI(\u1/Mcount_q_cy [23]),
    .LI(\u1/Mcount_q_cy<24>_rt_114 ),
    .O(Result[24])
  );
  XORCY   \u1/Mcount_q_xor<25>  (
    .CI(\u1/Mcount_q_cy [24]),
    .LI(\u1/Mcount_q_xor<25>_rt_132 ),
    .O(Result[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u5/Madd_suma1_add0000_lut<0>  (
    .I0(\u5/reg1 [0]),
    .I1(\u5/suma1 [0]),
    .O(\u5/Madd_suma1_add0000_lut [0])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<0>  (
    .CI(N0),
    .DI(\u5/suma1 [0]),
    .S(\u5/Madd_suma1_add0000_lut [0]),
    .O(\u5/Madd_suma1_add0000_cy [0])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<0>  (
    .CI(N0),
    .LI(\u5/Madd_suma1_add0000_lut [0]),
    .O(\u5/suma1_add0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u5/Madd_suma1_add0000_lut<1>  (
    .I0(\u5/suma1 [1]),
    .I1(\u5/reg1 [1]),
    .O(\u5/Madd_suma1_add0000_lut [1])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<1>  (
    .CI(\u5/Madd_suma1_add0000_cy [0]),
    .DI(\u5/suma1 [1]),
    .S(\u5/Madd_suma1_add0000_lut [1]),
    .O(\u5/Madd_suma1_add0000_cy [1])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<1>  (
    .CI(\u5/Madd_suma1_add0000_cy [0]),
    .LI(\u5/Madd_suma1_add0000_lut [1]),
    .O(\u5/suma1_add0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u5/Madd_suma1_add0000_lut<2>  (
    .I0(\u5/suma1 [2]),
    .I1(\u5/reg1 [2]),
    .O(\u5/Madd_suma1_add0000_lut [2])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<2>  (
    .CI(\u5/Madd_suma1_add0000_cy [1]),
    .DI(\u5/suma1 [2]),
    .S(\u5/Madd_suma1_add0000_lut [2]),
    .O(\u5/Madd_suma1_add0000_cy [2])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<2>  (
    .CI(\u5/Madd_suma1_add0000_cy [1]),
    .LI(\u5/Madd_suma1_add0000_lut [2]),
    .O(\u5/suma1_add0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u5/Madd_suma1_add0000_lut<3>  (
    .I0(\u5/suma1 [3]),
    .I1(\u5/reg1 [3]),
    .O(\u5/Madd_suma1_add0000_lut [3])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<3>  (
    .CI(\u5/Madd_suma1_add0000_cy [2]),
    .DI(\u5/suma1 [3]),
    .S(\u5/Madd_suma1_add0000_lut [3]),
    .O(\u5/Madd_suma1_add0000_cy [3])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<3>  (
    .CI(\u5/Madd_suma1_add0000_cy [2]),
    .LI(\u5/Madd_suma1_add0000_lut [3]),
    .O(\u5/suma1_add0000 [3])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<4>  (
    .CI(\u5/Madd_suma1_add0000_cy [3]),
    .DI(N0),
    .S(\u5/Madd_suma1_add0000_cy<4>_rt_199 ),
    .O(\u5/Madd_suma1_add0000_cy [4])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<4>  (
    .CI(\u5/Madd_suma1_add0000_cy [3]),
    .LI(\u5/Madd_suma1_add0000_cy<4>_rt_199 ),
    .O(\u5/suma1_add0000 [4])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<5>  (
    .CI(\u5/Madd_suma1_add0000_cy [4]),
    .DI(N0),
    .S(\u5/Madd_suma1_add0000_cy<5>_rt_201 ),
    .O(\u5/Madd_suma1_add0000_cy [5])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<5>  (
    .CI(\u5/Madd_suma1_add0000_cy [4]),
    .LI(\u5/Madd_suma1_add0000_cy<5>_rt_201 ),
    .O(\u5/suma1_add0000 [5])
  );
  MUXCY   \u5/Madd_suma1_add0000_cy<6>  (
    .CI(\u5/Madd_suma1_add0000_cy [5]),
    .DI(N0),
    .S(\u5/Madd_suma1_add0000_cy<6>_rt_203 ),
    .O(\u5/Madd_suma1_add0000_cy [6])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<6>  (
    .CI(\u5/Madd_suma1_add0000_cy [5]),
    .LI(\u5/Madd_suma1_add0000_cy<6>_rt_203 ),
    .O(\u5/suma1_add0000 [6])
  );
  XORCY   \u5/Madd_suma1_add0000_xor<7>  (
    .CI(\u5/Madd_suma1_add0000_cy [6]),
    .LI(\u5/Madd_suma1_add0000_xor<7>_rt_208 ),
    .O(\u5/suma1_add0000 [7])
  );
  LDE   \u5/reg1_0  (
    .D(auxdatobin[0]),
    .G(\u4/presente_FSM_FFd2_191 ),
    .GE(\u5/reg1_cmp_lt0000 ),
    .Q(\u5/reg1 [0])
  );
  LDE   \u5/reg1_1  (
    .D(auxdatobin[1]),
    .G(\u4/presente_FSM_FFd2_191 ),
    .GE(\u5/reg1_cmp_lt0000 ),
    .Q(\u5/reg1 [1])
  );
  LDE   \u5/reg1_2  (
    .D(auxdatobin[2]),
    .G(\u4/presente_FSM_FFd2_191 ),
    .GE(\u5/reg1_cmp_lt0000 ),
    .Q(\u5/reg1 [2])
  );
  LDE   \u5/reg1_3  (
    .D(auxdatobin[3]),
    .G(\u4/presente_FSM_FFd2_191 ),
    .GE(\u5/reg1_cmp_lt0000 ),
    .Q(\u5/reg1 [3])
  );
  LD   \u5/suma1_0  (
    .D(\u5/suma1_add0000 [0]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [0])
  );
  LD   \u5/suma1_1  (
    .D(\u5/suma1_add0000 [1]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [1])
  );
  LD   \u5/suma1_2  (
    .D(\u5/suma1_add0000 [2]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [2])
  );
  LD   \u5/suma1_3  (
    .D(\u5/suma1_add0000 [3]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [3])
  );
  LD   \u5/suma1_4  (
    .D(\u5/suma1_add0000 [4]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [4])
  );
  LD   \u5/suma1_5  (
    .D(\u5/suma1_add0000 [5]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [5])
  );
  LD   \u5/suma1_6  (
    .D(\u5/suma1_add0000 [6]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [6])
  );
  LD   \u5/suma1_7  (
    .D(\u5/suma1_add0000 [7]),
    .G(\u4/presente_FSM_FFd1_189 ),
    .Q(\u5/suma1 [7])
  );
  FDC_1   \u2/reg_21  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(dato_IBUF_62),
    .Q(\u2/reg[21] )
  );
  FDC_1   \u2/reg_20  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[21] ),
    .Q(\u2/reg[20] )
  );
  FDC_1   \u2/reg_19  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[20] ),
    .Q(\u2/reg[19] )
  );
  FDC_1   \u2/reg_18  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[19] ),
    .Q(\u2/reg[18] )
  );
  FDC_1   \u2/reg_17  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[18] ),
    .Q(\u2/reg[17] )
  );
  FDC_1   \u2/reg_16  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[17] ),
    .Q(\u2/reg[16] )
  );
  FDC_1   \u2/reg_15  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[16] ),
    .Q(\u2/reg[15] )
  );
  FDC_1   \u2/reg_14  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[15] ),
    .Q(\u2/reg[14] )
  );
  FDC_1   \u2/reg_13  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[14] ),
    .Q(\u2/reg[13] )
  );
  FDC_1   \u2/reg_12  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[13] ),
    .Q(\u2/reg[12] )
  );
  FDC_1   \u2/reg_7  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[8] ),
    .Q(\u2/reg[7] )
  );
  FDC_1   \u2/reg_6  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[7] ),
    .Q(\u2/reg[6] )
  );
  FDC_1   \u2/reg_5  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[6] ),
    .Q(\u2/reg[5] )
  );
  FDC_1   \u2/reg_4  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[5] ),
    .Q(\u2/reg[4] )
  );
  FDC_1   \u2/reg_3  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[4] ),
    .Q(\u2/reg[3] )
  );
  FDC_1   \u2/reg_2  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[3] ),
    .Q(\u2/reg[2] )
  );
  FDC_1   \u2/reg_1  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg[2] ),
    .Q(\u2/reg[1] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u7/salida<3>1  (
    .I0(\u6/selec_0_0_230 ),
    .I1(\u5/suma1 [7]),
    .I2(\u5/suma1 [3]),
    .O(auxsalida[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u7/salida<2>1  (
    .I0(\u6/selec_0_0_230 ),
    .I1(\u5/suma1 [6]),
    .I2(\u5/suma1 [2]),
    .O(auxsalida[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u7/salida<1>1  (
    .I0(\u6/selec_0_0_230 ),
    .I1(\u5/suma1 [5]),
    .I2(\u5/suma1 [1]),
    .O(auxsalida[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u7/salida<0>1  (
    .I0(\u6/selec_0_0_230 ),
    .I1(\u5/suma1 [4]),
    .I2(\u5/suma1 [0]),
    .O(auxsalida[0])
  );
  LUT4 #(
    .INIT ( 16'h445C ))
  \u8/Mrom_disp21  (
    .I0(auxsalida[3]),
    .I1(auxsalida[0]),
    .I2(auxsalida[2]),
    .I3(auxsalida[1]),
    .O(display_2_OBUF_72)
  );
  LUT4 #(
    .INIT ( 16'h80C2 ))
  \u8/Mrom_disp41  (
    .I0(auxsalida[1]),
    .I1(auxsalida[2]),
    .I2(auxsalida[3]),
    .I3(auxsalida[0]),
    .O(display_4_OBUF_74)
  );
  LUT4 #(
    .INIT ( 16'h4901 ))
  \u8/Mrom_disp12  (
    .I0(auxsalida[3]),
    .I1(auxsalida[2]),
    .I2(auxsalida[1]),
    .I3(auxsalida[0]),
    .O(display_0_OBUF_70)
  );
  LUT4 #(
    .INIT ( 16'hAC48 ))
  \u8/Mrom_disp51  (
    .I0(auxsalida[3]),
    .I1(auxsalida[2]),
    .I2(auxsalida[0]),
    .I3(auxsalida[1]),
    .O(display_5_OBUF_75)
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \u8/Mrom_disp111  (
    .I0(auxsalida[3]),
    .I1(auxsalida[1]),
    .I2(auxsalida[0]),
    .I3(auxsalida[2]),
    .O(display_1_OBUF_71)
  );
  LUT4 #(
    .INIT ( 16'hA118 ))
  \u8/Mrom_disp31  (
    .I0(auxsalida[1]),
    .I1(auxsalida[3]),
    .I2(auxsalida[0]),
    .I3(auxsalida[2]),
    .O(display_3_OBUF_73)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \u8/Mrom_disp61  (
    .I0(auxsalida[0]),
    .I1(auxsalida[1]),
    .I2(auxsalida[2]),
    .I3(auxsalida[3]),
    .O(display_6_OBUF_76)
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \u5/reg1_cmp_lt00001  (
    .I0(auxdatobin[3]),
    .I1(auxdatobin[1]),
    .I2(auxdatobin[2]),
    .O(\u5/reg1_cmp_lt0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<5>1  (
    .I0(\u2/reg[17] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<4>1  (
    .I0(\u2/reg[16] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<2>1  (
    .I0(\u2/reg[14] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[2])
  );
  LUT4 #(
    .INIT ( 16'h75FF ))
  \u3/salbin<0>_SW0  (
    .I0(auxsalidahex[5]),
    .I1(auxsalidahex[2]),
    .I2(auxsalidahex[0]),
    .I3(auxsalidahex[4]),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hFD7F ))
  \u3/salbin<0>_SW1  (
    .I0(auxsalidahex[1]),
    .I1(auxsalidahex[0]),
    .I2(auxsalidahex[5]),
    .I3(auxsalidahex[4]),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \u3/salbin<0>  (
    .I0(auxsalidahex[3]),
    .I1(N11),
    .I2(N01),
    .I3(N16),
    .O(auxdatobin[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u4/presente_FSM_FFd1-In1  (
    .I0(\u4/presente_cmp_eq0000 ),
    .I1(\u4/presente_FSM_FFd2_191 ),
    .O(\u4/presente_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<3>1  (
    .I0(\u2/reg[15] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<1>1  (
    .I0(\u2/reg[13] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/salidaHex<0>2  (
    .I0(\u2/reg[12] ),
    .I1(\u2/N01 ),
    .O(auxsalidahex[0])
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \u4/presente_FSM_FFd2-In1  (
    .I0(\u4/presente_FSM_FFd2_191 ),
    .I1(rst_IBUF_78),
    .I2(\u4/presente_cmp_eq0000 ),
    .O(\u4/presente_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \u4/presente_cmp_eq00001  (
    .I0(auxdatobin[0]),
    .I1(auxdatobin[1]),
    .I2(auxdatobin[2]),
    .I3(auxdatobin[3]),
    .O(\u4/presente_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  \u3/salbin<1>17  (
    .I0(auxsalidahex[3]),
    .I1(auxsalidahex[0]),
    .I2(auxsalidahex[1]),
    .I3(auxsalidahex[4]),
    .O(\u3/salbin<1>17_183 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \u2/salidaHex<0>117  (
    .I0(\u2/reg[1] ),
    .I1(\u2/reg[2] ),
    .I2(\u2/reg[3] ),
    .I3(\u2/reg[4] ),
    .O(\u2/salidaHex<0>117_181 )
  );
  IBUF   dato_IBUF (
    .I(dato),
    .O(dato_IBUF_62)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_78)
  );
  OBUF   an_3_OBUF (
    .I(N1),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(N1),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(\u6/selec_0_0_230 ),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_42),
    .O(an[0])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_76),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_75),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_74),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_73),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_72),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_71),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_70),
    .O(display[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<1>_rt  (
    .I0(\u1/q [1]),
    .O(\u1/Mcount_q_cy<1>_rt_104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<2>_rt  (
    .I0(\u1/q [2]),
    .O(\u1/Mcount_q_cy<2>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<3>_rt  (
    .I0(\u1/q [3]),
    .O(\u1/Mcount_q_cy<3>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<4>_rt  (
    .I0(\u1/q [4]),
    .O(\u1/Mcount_q_cy<4>_rt_120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<5>_rt  (
    .I0(\u1/q [5]),
    .O(\u1/Mcount_q_cy<5>_rt_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<6>_rt  (
    .I0(\u1/q [6]),
    .O(\u1/Mcount_q_cy<6>_rt_124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<7>_rt  (
    .I0(\u1/q [7]),
    .O(\u1/Mcount_q_cy<7>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<8>_rt  (
    .I0(\u1/q [8]),
    .O(\u1/Mcount_q_cy<8>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<9>_rt  (
    .I0(\u1/q [9]),
    .O(\u1/Mcount_q_cy<9>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<10>_rt  (
    .I0(\u1/q [10]),
    .O(\u1/Mcount_q_cy<10>_rt_84 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<11>_rt  (
    .I0(\u1/q [11]),
    .O(\u1/Mcount_q_cy<11>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<12>_rt  (
    .I0(\u1/q [12]),
    .O(\u1/Mcount_q_cy<12>_rt_88 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<13>_rt  (
    .I0(\u1/q [13]),
    .O(\u1/Mcount_q_cy<13>_rt_90 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<14>_rt  (
    .I0(\u1/q [14]),
    .O(\u1/Mcount_q_cy<14>_rt_92 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<15>_rt  (
    .I0(\u1/q [15]),
    .O(\u1/Mcount_q_cy<15>_rt_94 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<16>_rt  (
    .I0(\u1/q [16]),
    .O(\u1/Mcount_q_cy<16>_rt_96 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<17>_rt  (
    .I0(\u1/q [17]),
    .O(\u1/Mcount_q_cy<17>_rt_98 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<18>_rt  (
    .I0(\u1/q [18]),
    .O(\u1/Mcount_q_cy<18>_rt_100 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<19>_rt  (
    .I0(\u1/q [19]),
    .O(\u1/Mcount_q_cy<19>_rt_102 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<20>_rt  (
    .I0(\u1/q [20]),
    .O(\u1/Mcount_q_cy<20>_rt_106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<21>_rt  (
    .I0(\u1/q [21]),
    .O(\u1/Mcount_q_cy<21>_rt_108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<22>_rt  (
    .I0(\u1/q [22]),
    .O(\u1/Mcount_q_cy<22>_rt_110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<23>_rt  (
    .I0(\u1/q [23]),
    .O(\u1/Mcount_q_cy<23>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_cy<24>_rt  (
    .I0(\u1/q [24]),
    .O(\u1/Mcount_q_cy<24>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u5/Madd_suma1_add0000_cy<4>_rt  (
    .I0(\u5/suma1 [4]),
    .O(\u5/Madd_suma1_add0000_cy<4>_rt_199 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u5/Madd_suma1_add0000_cy<5>_rt  (
    .I0(\u5/suma1 [5]),
    .O(\u5/Madd_suma1_add0000_cy<5>_rt_201 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u5/Madd_suma1_add0000_cy<6>_rt  (
    .I0(\u5/suma1 [6]),
    .O(\u5/Madd_suma1_add0000_cy<6>_rt_203 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u1/Mcount_q_xor<25>_rt  (
    .I0(\u1/q [25]),
    .O(\u1/Mcount_q_xor<25>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u5/Madd_suma1_add0000_xor<7>_rt  (
    .I0(\u5/suma1 [7]),
    .O(\u5/Madd_suma1_add0000_xor<7>_rt_208 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \u2/salidaHex<0>131_SW0  (
    .I0(\u2/reg[7] ),
    .I1(\u2/reg[8] ),
    .I2(\u2/salidaHex<0>117_181 ),
    .O(N7)
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \u2/salidaHex<0>131  (
    .I0(N7),
    .I1(\u2/reg[5] ),
    .I2(\u2/reg[6] ),
    .I3(rst_IBUF_78),
    .O(\u2/N01 )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \u3/salbin<2>47_SW0_SW0  (
    .I0(\u2/reg[17] ),
    .I1(\u2/reg[19] ),
    .I2(\u2/reg[18] ),
    .O(N9)
  );
  LUT4 #(
    .INIT ( 16'hBB10 ))
  \u3/salbin<1>70_SW0_SW0  (
    .I0(\u2/reg[14] ),
    .I1(\u3/salbin<1>17_183 ),
    .I2(\u2/reg[15] ),
    .I3(\u2/reg[16] ),
    .O(N111)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \u3/salbin<1>70_SW0  (
    .I0(\u2/N01 ),
    .I1(\u2/reg[17] ),
    .I2(N111),
    .O(N5)
  );
  LUT4 #(
    .INIT ( 16'h3323 ))
  \u3/salbin<1>70_SW1  (
    .I0(\u2/reg[14] ),
    .I1(\u2/reg[12] ),
    .I2(\u2/reg[16] ),
    .I3(\u2/reg[13] ),
    .O(N15)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \u3/salbin<1>70  (
    .I0(\u2/N01 ),
    .I1(N16),
    .I2(N5),
    .I3(N15),
    .O(auxdatobin[1])
  );
  LUT4 #(
    .INIT ( 16'hFFE7 ))
  \u3/salbin<2>47_SW1  (
    .I0(\u2/reg[12] ),
    .I1(\u2/reg[13] ),
    .I2(\u2/reg[14] ),
    .I3(N9),
    .O(N17)
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \u3/salbin<2>47  (
    .I0(\u2/reg[15] ),
    .I1(\u2/reg[16] ),
    .I2(\u2/N01 ),
    .I3(N17),
    .O(auxdatobin[2])
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \u3/salbin<3>64  (
    .I0(\u2/N01 ),
    .I1(\u2/reg[17] ),
    .I2(N16),
    .I3(N19),
    .O(auxdatobin[3])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_60)
  );
  BUFGP   clk2_BUFGP (
    .I(clk2),
    .O(clk2_BUFGP_59)
  );
  INV   \u1/Mcount_q_lut<0>_INV_0  (
    .I(\u1/q [0]),
    .O(\u1/Mcount_q_lut [0])
  );
  INV   \u7/an<0>1_INV_0  (
    .I(\u6/selec_0_0_230 ),
    .O(an_0_OBUF_42)
  );
  LUT4 #(
    .INIT ( 16'h8FFF ))
  \u3/salbin<0>311  (
    .I0(auxsalidahex[2]),
    .I1(auxsalidahex[1]),
    .I2(\u2/reg[18] ),
    .I3(\u2/N01 ),
    .O(\u3/salbin<0>31 )
  );
  MUXF5   \u3/salbin<0>31_f5  (
    .I0(\u3/salbin<0>31 ),
    .I1(N1),
    .S(\u2/reg[19] ),
    .O(N16)
  );
  LUT3 #(
    .INIT ( 8'h5D ))
  \u3/salbin<3>561  (
    .I0(\u2/N01 ),
    .I1(\u2/reg[15] ),
    .I2(\u2/reg[13] ),
    .O(\u3/salbin<3>561_185 )
  );
  LUT4 #(
    .INIT ( 16'h1FFF ))
  \u3/salbin<3>562  (
    .I0(\u2/reg[14] ),
    .I1(\u2/reg[12] ),
    .I2(\u2/reg[15] ),
    .I3(\u2/N01 ),
    .O(\u3/salbin<3>562_186 )
  );
  MUXF5   \u3/salbin<3>56_f5  (
    .I0(\u3/salbin<3>562_186 ),
    .I1(\u3/salbin<3>561_185 ),
    .S(\u2/reg[16] ),
    .O(\u3/salbin<3>56 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \u3/salbin<3>64_SW01  (
    .I0(\u2/reg[12] ),
    .I1(auxsalidahex[4]),
    .I2(auxsalidahex[2]),
    .I3(\u3/salbin<3>56 ),
    .O(\u3/salbin<3>64_SW0 )
  );
  LUT4 #(
    .INIT ( 16'hFFA2 ))
  \u3/salbin<3>64_SW02  (
    .I0(\u2/reg[12] ),
    .I1(auxsalidahex[1]),
    .I2(auxsalidahex[2]),
    .I3(\u3/salbin<3>56 ),
    .O(\u3/salbin<3>64_SW01_188 )
  );
  MUXF5   \u3/salbin<3>64_SW0_f5  (
    .I0(\u3/salbin<3>64_SW01_188 ),
    .I1(\u3/salbin<3>64_SW0 ),
    .S(auxsalidahex[3]),
    .O(N19)
  );
  SRL16_1 #(
    .INIT ( 16'h0000 ))
  \u2/Mshreg_reg_8  (
    .A0(N1),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(clk2_BUFGP_59),
    .D(\u2/reg[12] ),
    .Q(\u2/Mshreg_reg_8_159 )
  );
  FD_1   \u2/reg_81  (
    .C(clk2_BUFGP_59),
    .D(\u2/Mshreg_reg_8_159 ),
    .Q(\u2/reg_81_179 )
  );
  FDC_1   rst_IBUF_shift1 (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(N1),
    .Q(rst_IBUF_shift1_79)
  );
  FDC_1   rst_IBUF_shift2 (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(rst_IBUF_shift1_79),
    .Q(rst_IBUF_shift2_80)
  );
  FDC_1   rst_IBUF_shift3 (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(rst_IBUF_shift2_80),
    .Q(rst_IBUF_shift3_81)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u2/reg_811  (
    .I0(\u2/reg_81_179 ),
    .I1(rst_IBUF_shift3_81),
    .O(\u2/reg_811_180 )
  );
  FDC_1   \u2/reg_8  (
    .C(clk2_BUFGP_59),
    .CLR(rst_IBUF_78),
    .D(\u2/reg_811_180 ),
    .Q(\u2/reg[8] )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

