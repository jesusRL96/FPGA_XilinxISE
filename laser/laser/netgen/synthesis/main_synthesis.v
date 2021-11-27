////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: main_synthesis.v
// /___/   /\     Timestamp: Wed Oct 25 09:48:01 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim main.ngc main_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: main.ngc
// Output file	: E:\jesus\dlps\laser\laser1\netgen\synthesis\main_synthesis.v
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
  Bp, Lp, Sp, clk_p, an, display
);
  input Bp;
  output Lp;
  input Sp;
  input clk_p;
  output [3 : 0] an;
  output [6 : 0] display;
  wire Bp_IBUF_1;
  wire N0;
  wire N1;
  wire \Result<1>1 ;
  wire Sp_IBUF_26;
  wire an_0_OBUF_31;
  wire an_1_OBUF_32;
  wire an_2_OBUF_33;
  wire an_3_OBUF_34;
  wire clk_p_BUFGP_40;
  wire display_0_OBUF_48;
  wire display_1_OBUF_49;
  wire display_2_OBUF_50;
  wire display_3_OBUF_51;
  wire display_4_OBUF_52;
  wire display_5_OBUF_53;
  wire display_6_OBUF_54;
  wire \u1/presente_FSM_FFd1_55 ;
  wire \u1/presente_FSM_FFd1-In ;
  wire \u1/presente_FSM_FFd2_57 ;
  wire \u1/presente_FSM_FFd3_58 ;
  wire \u1/presente_FSM_FFd3-In ;
  wire \u1/presente_FSM_FFd4_60 ;
  wire \u1/presente_FSM_FFd4-In1 ;
  wire \u1/presente_FSM_FFd5_62 ;
  wire \u2/Mcount_q_cy<10>_rt_65 ;
  wire \u2/Mcount_q_cy<11>_rt_67 ;
  wire \u2/Mcount_q_cy<12>_rt_69 ;
  wire \u2/Mcount_q_cy<13>_rt_71 ;
  wire \u2/Mcount_q_cy<14>_rt_73 ;
  wire \u2/Mcount_q_cy<15>_rt_75 ;
  wire \u2/Mcount_q_cy<16>_rt_77 ;
  wire \u2/Mcount_q_cy<17>_rt_79 ;
  wire \u2/Mcount_q_cy<1>_rt_81 ;
  wire \u2/Mcount_q_cy<2>_rt_83 ;
  wire \u2/Mcount_q_cy<3>_rt_85 ;
  wire \u2/Mcount_q_cy<4>_rt_87 ;
  wire \u2/Mcount_q_cy<5>_rt_89 ;
  wire \u2/Mcount_q_cy<6>_rt_91 ;
  wire \u2/Mcount_q_cy<7>_rt_93 ;
  wire \u2/Mcount_q_cy<8>_rt_95 ;
  wire \u2/Mcount_q_cy<9>_rt_97 ;
  wire \u2/Mcount_q_xor<18>_rt_99 ;
  wire \u3/D_0__and0000 ;
  wire \u3/D_0__and0001 ;
  wire \u3/D_10__and0000 ;
  wire \u3/D_10__and0001 ;
  wire \u3/D_11__and0000 ;
  wire \u3/D_11__and0001 ;
  wire \u3/D_12__and0000 ;
  wire \u3/D_12__and0001 ;
  wire \u3/D_13__and0000 ;
  wire \u3/D_13__and0001 ;
  wire \u3/D_14__and0000 ;
  wire \u3/D_14__and0001 ;
  wire \u3/D_1__and0000 ;
  wire \u3/D_1__and0001 ;
  wire \u3/D_2__and0000 ;
  wire \u3/D_2__and0001 ;
  wire \u3/D_3__and0000 ;
  wire \u3/D_3__and0001 ;
  wire \u3/D_4__and0000 ;
  wire \u3/D_4__and0001 ;
  wire \u3/D_5__and0000 ;
  wire \u3/D_5__and0001 ;
  wire \u3/D_6__and0000 ;
  wire \u3/D_6__and0001 ;
  wire \u3/D_7__and0000 ;
  wire \u3/D_7__and0001 ;
  wire \u3/D_8__and0000 ;
  wire \u3/D_8__and0001 ;
  wire \u3/D_9__and0000 ;
  wire \u3/D_9__and0001 ;
  wire \u3/Madd_Dctr_add0000_cy<10>_rt_198 ;
  wire \u3/Madd_Dctr_add0000_cy<11>_rt_200 ;
  wire \u3/Madd_Dctr_add0000_cy<12>_rt_202 ;
  wire \u3/Madd_Dctr_add0000_cy<13>_rt_204 ;
  wire \u3/Madd_Dctr_add0000_cy<14>_rt_206 ;
  wire \u3/Madd_Dctr_add0000_cy<1>_rt_208 ;
  wire \u3/Madd_Dctr_add0000_cy<2>_rt_210 ;
  wire \u3/Madd_Dctr_add0000_cy<3>_rt_212 ;
  wire \u3/Madd_Dctr_add0000_cy<4>_rt_214 ;
  wire \u3/Madd_Dctr_add0000_cy<5>_rt_216 ;
  wire \u3/Madd_Dctr_add0000_cy<6>_rt_218 ;
  wire \u3/Madd_Dctr_add0000_cy<7>_rt_220 ;
  wire \u3/Madd_Dctr_add0000_cy<8>_rt_222 ;
  wire \u3/Madd_Dctr_add0000_cy<9>_rt_224 ;
  wire \u3/Madd_Dctr_add0000_xor<15>_rt_226 ;
  wire \u5/Mmux_salida_3_229 ;
  wire \u5/Mmux_salida_31_230 ;
  wire \u5/Mmux_salida_32_231 ;
  wire \u5/Mmux_salida_33_232 ;
  wire \u5/Mmux_salida_4_233 ;
  wire \u5/Mmux_salida_41_234 ;
  wire \u5/Mmux_salida_42_235 ;
  wire \u5/Mmux_salida_43_236 ;
  wire [18 : 0] Result;
  wire [3 : 0] auxsalida;
  wire [17 : 0] \u2/Mcount_q_cy ;
  wire [0 : 0] \u2/Mcount_q_lut ;
  wire [18 : 0] \u2/q ;
  wire [14 : 0] \u3/D ;
  wire [15 : 0] \u3/Dctr ;
  wire [15 : 0] \u3/Dctr_add0000 ;
  wire [14 : 0] \u3/Madd_Dctr_add0000_cy ;
  wire [0 : 0] \u3/Madd_Dctr_add0000_lut ;
  wire [1 : 0] \u4/selec ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   \u2/q_0  (
    .C(clk_p_BUFGP_40),
    .D(Result[0]),
    .Q(\u2/q [0])
  );
  FD   \u2/q_1  (
    .C(clk_p_BUFGP_40),
    .D(Result[1]),
    .Q(\u2/q [1])
  );
  FD   \u2/q_2  (
    .C(clk_p_BUFGP_40),
    .D(Result[2]),
    .Q(\u2/q [2])
  );
  FD   \u2/q_3  (
    .C(clk_p_BUFGP_40),
    .D(Result[3]),
    .Q(\u2/q [3])
  );
  FD   \u2/q_4  (
    .C(clk_p_BUFGP_40),
    .D(Result[4]),
    .Q(\u2/q [4])
  );
  FD   \u2/q_5  (
    .C(clk_p_BUFGP_40),
    .D(Result[5]),
    .Q(\u2/q [5])
  );
  FD   \u2/q_6  (
    .C(clk_p_BUFGP_40),
    .D(Result[6]),
    .Q(\u2/q [6])
  );
  FD   \u2/q_7  (
    .C(clk_p_BUFGP_40),
    .D(Result[7]),
    .Q(\u2/q [7])
  );
  FD   \u2/q_8  (
    .C(clk_p_BUFGP_40),
    .D(Result[8]),
    .Q(\u2/q [8])
  );
  FD   \u2/q_9  (
    .C(clk_p_BUFGP_40),
    .D(Result[9]),
    .Q(\u2/q [9])
  );
  FD   \u2/q_10  (
    .C(clk_p_BUFGP_40),
    .D(Result[10]),
    .Q(\u2/q [10])
  );
  FD   \u2/q_11  (
    .C(clk_p_BUFGP_40),
    .D(Result[11]),
    .Q(\u2/q [11])
  );
  FD   \u2/q_12  (
    .C(clk_p_BUFGP_40),
    .D(Result[12]),
    .Q(\u2/q [12])
  );
  FD   \u2/q_13  (
    .C(clk_p_BUFGP_40),
    .D(Result[13]),
    .Q(\u2/q [13])
  );
  FD   \u2/q_14  (
    .C(clk_p_BUFGP_40),
    .D(Result[14]),
    .Q(\u2/q [14])
  );
  FD   \u2/q_15  (
    .C(clk_p_BUFGP_40),
    .D(Result[15]),
    .Q(\u2/q [15])
  );
  FD   \u2/q_16  (
    .C(clk_p_BUFGP_40),
    .D(Result[16]),
    .Q(\u2/q [16])
  );
  FD   \u2/q_17  (
    .C(clk_p_BUFGP_40),
    .D(Result[17]),
    .Q(\u2/q [17])
  );
  FD   \u2/q_18  (
    .C(clk_p_BUFGP_40),
    .D(Result[18]),
    .Q(\u2/q [18])
  );
  FD   \u4/selec_1  (
    .C(\u2/q [18]),
    .D(\Result<1>1 ),
    .Q(\u4/selec [1])
  );
  MUXCY   \u2/Mcount_q_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\u2/Mcount_q_lut [0]),
    .O(\u2/Mcount_q_cy [0])
  );
  XORCY   \u2/Mcount_q_xor<0>  (
    .CI(N0),
    .LI(\u2/Mcount_q_lut [0]),
    .O(Result[0])
  );
  MUXCY   \u2/Mcount_q_cy<1>  (
    .CI(\u2/Mcount_q_cy [0]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<1>_rt_81 ),
    .O(\u2/Mcount_q_cy [1])
  );
  XORCY   \u2/Mcount_q_xor<1>  (
    .CI(\u2/Mcount_q_cy [0]),
    .LI(\u2/Mcount_q_cy<1>_rt_81 ),
    .O(Result[1])
  );
  MUXCY   \u2/Mcount_q_cy<2>  (
    .CI(\u2/Mcount_q_cy [1]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<2>_rt_83 ),
    .O(\u2/Mcount_q_cy [2])
  );
  XORCY   \u2/Mcount_q_xor<2>  (
    .CI(\u2/Mcount_q_cy [1]),
    .LI(\u2/Mcount_q_cy<2>_rt_83 ),
    .O(Result[2])
  );
  MUXCY   \u2/Mcount_q_cy<3>  (
    .CI(\u2/Mcount_q_cy [2]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<3>_rt_85 ),
    .O(\u2/Mcount_q_cy [3])
  );
  XORCY   \u2/Mcount_q_xor<3>  (
    .CI(\u2/Mcount_q_cy [2]),
    .LI(\u2/Mcount_q_cy<3>_rt_85 ),
    .O(Result[3])
  );
  MUXCY   \u2/Mcount_q_cy<4>  (
    .CI(\u2/Mcount_q_cy [3]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<4>_rt_87 ),
    .O(\u2/Mcount_q_cy [4])
  );
  XORCY   \u2/Mcount_q_xor<4>  (
    .CI(\u2/Mcount_q_cy [3]),
    .LI(\u2/Mcount_q_cy<4>_rt_87 ),
    .O(Result[4])
  );
  MUXCY   \u2/Mcount_q_cy<5>  (
    .CI(\u2/Mcount_q_cy [4]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<5>_rt_89 ),
    .O(\u2/Mcount_q_cy [5])
  );
  XORCY   \u2/Mcount_q_xor<5>  (
    .CI(\u2/Mcount_q_cy [4]),
    .LI(\u2/Mcount_q_cy<5>_rt_89 ),
    .O(Result[5])
  );
  MUXCY   \u2/Mcount_q_cy<6>  (
    .CI(\u2/Mcount_q_cy [5]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<6>_rt_91 ),
    .O(\u2/Mcount_q_cy [6])
  );
  XORCY   \u2/Mcount_q_xor<6>  (
    .CI(\u2/Mcount_q_cy [5]),
    .LI(\u2/Mcount_q_cy<6>_rt_91 ),
    .O(Result[6])
  );
  MUXCY   \u2/Mcount_q_cy<7>  (
    .CI(\u2/Mcount_q_cy [6]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<7>_rt_93 ),
    .O(\u2/Mcount_q_cy [7])
  );
  XORCY   \u2/Mcount_q_xor<7>  (
    .CI(\u2/Mcount_q_cy [6]),
    .LI(\u2/Mcount_q_cy<7>_rt_93 ),
    .O(Result[7])
  );
  MUXCY   \u2/Mcount_q_cy<8>  (
    .CI(\u2/Mcount_q_cy [7]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<8>_rt_95 ),
    .O(\u2/Mcount_q_cy [8])
  );
  XORCY   \u2/Mcount_q_xor<8>  (
    .CI(\u2/Mcount_q_cy [7]),
    .LI(\u2/Mcount_q_cy<8>_rt_95 ),
    .O(Result[8])
  );
  MUXCY   \u2/Mcount_q_cy<9>  (
    .CI(\u2/Mcount_q_cy [8]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<9>_rt_97 ),
    .O(\u2/Mcount_q_cy [9])
  );
  XORCY   \u2/Mcount_q_xor<9>  (
    .CI(\u2/Mcount_q_cy [8]),
    .LI(\u2/Mcount_q_cy<9>_rt_97 ),
    .O(Result[9])
  );
  MUXCY   \u2/Mcount_q_cy<10>  (
    .CI(\u2/Mcount_q_cy [9]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<10>_rt_65 ),
    .O(\u2/Mcount_q_cy [10])
  );
  XORCY   \u2/Mcount_q_xor<10>  (
    .CI(\u2/Mcount_q_cy [9]),
    .LI(\u2/Mcount_q_cy<10>_rt_65 ),
    .O(Result[10])
  );
  MUXCY   \u2/Mcount_q_cy<11>  (
    .CI(\u2/Mcount_q_cy [10]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<11>_rt_67 ),
    .O(\u2/Mcount_q_cy [11])
  );
  XORCY   \u2/Mcount_q_xor<11>  (
    .CI(\u2/Mcount_q_cy [10]),
    .LI(\u2/Mcount_q_cy<11>_rt_67 ),
    .O(Result[11])
  );
  MUXCY   \u2/Mcount_q_cy<12>  (
    .CI(\u2/Mcount_q_cy [11]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<12>_rt_69 ),
    .O(\u2/Mcount_q_cy [12])
  );
  XORCY   \u2/Mcount_q_xor<12>  (
    .CI(\u2/Mcount_q_cy [11]),
    .LI(\u2/Mcount_q_cy<12>_rt_69 ),
    .O(Result[12])
  );
  MUXCY   \u2/Mcount_q_cy<13>  (
    .CI(\u2/Mcount_q_cy [12]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<13>_rt_71 ),
    .O(\u2/Mcount_q_cy [13])
  );
  XORCY   \u2/Mcount_q_xor<13>  (
    .CI(\u2/Mcount_q_cy [12]),
    .LI(\u2/Mcount_q_cy<13>_rt_71 ),
    .O(Result[13])
  );
  MUXCY   \u2/Mcount_q_cy<14>  (
    .CI(\u2/Mcount_q_cy [13]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<14>_rt_73 ),
    .O(\u2/Mcount_q_cy [14])
  );
  XORCY   \u2/Mcount_q_xor<14>  (
    .CI(\u2/Mcount_q_cy [13]),
    .LI(\u2/Mcount_q_cy<14>_rt_73 ),
    .O(Result[14])
  );
  MUXCY   \u2/Mcount_q_cy<15>  (
    .CI(\u2/Mcount_q_cy [14]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<15>_rt_75 ),
    .O(\u2/Mcount_q_cy [15])
  );
  XORCY   \u2/Mcount_q_xor<15>  (
    .CI(\u2/Mcount_q_cy [14]),
    .LI(\u2/Mcount_q_cy<15>_rt_75 ),
    .O(Result[15])
  );
  MUXCY   \u2/Mcount_q_cy<16>  (
    .CI(\u2/Mcount_q_cy [15]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<16>_rt_77 ),
    .O(\u2/Mcount_q_cy [16])
  );
  XORCY   \u2/Mcount_q_xor<16>  (
    .CI(\u2/Mcount_q_cy [15]),
    .LI(\u2/Mcount_q_cy<16>_rt_77 ),
    .O(Result[16])
  );
  MUXCY   \u2/Mcount_q_cy<17>  (
    .CI(\u2/Mcount_q_cy [16]),
    .DI(N0),
    .S(\u2/Mcount_q_cy<17>_rt_79 ),
    .O(\u2/Mcount_q_cy [17])
  );
  XORCY   \u2/Mcount_q_xor<17>  (
    .CI(\u2/Mcount_q_cy [16]),
    .LI(\u2/Mcount_q_cy<17>_rt_79 ),
    .O(Result[17])
  );
  XORCY   \u2/Mcount_q_xor<18>  (
    .CI(\u2/Mcount_q_cy [17]),
    .LI(\u2/Mcount_q_xor<18>_rt_99 ),
    .O(Result[18])
  );
  MUXF5   \u5/Mmux_salida_2_f5_2  (
    .I0(\u5/Mmux_salida_43_236 ),
    .I1(\u5/Mmux_salida_33_232 ),
    .S(\u4/selec [1]),
    .O(auxsalida[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_43  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [3]),
    .I2(\u3/D [7]),
    .O(\u5/Mmux_salida_43_236 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_33  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [11]),
    .I2(N0),
    .O(\u5/Mmux_salida_33_232 )
  );
  MUXF5   \u5/Mmux_salida_2_f5_1  (
    .I0(\u5/Mmux_salida_42_235 ),
    .I1(\u5/Mmux_salida_32_231 ),
    .S(\u4/selec [1]),
    .O(auxsalida[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_42  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [2]),
    .I2(\u3/D [6]),
    .O(\u5/Mmux_salida_42_235 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_32  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [10]),
    .I2(\u3/D [14]),
    .O(\u5/Mmux_salida_32_231 )
  );
  MUXF5   \u5/Mmux_salida_2_f5_0  (
    .I0(\u5/Mmux_salida_41_234 ),
    .I1(\u5/Mmux_salida_31_230 ),
    .S(\u4/selec [1]),
    .O(auxsalida[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_41  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [1]),
    .I2(\u3/D [5]),
    .O(\u5/Mmux_salida_41_234 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_31  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [9]),
    .I2(\u3/D [13]),
    .O(\u5/Mmux_salida_31_230 )
  );
  MUXF5   \u5/Mmux_salida_2_f5  (
    .I0(\u5/Mmux_salida_4_233 ),
    .I1(\u5/Mmux_salida_3_229 ),
    .S(\u4/selec [1]),
    .O(auxsalida[0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_4  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [0]),
    .I2(\u3/D [4]),
    .O(\u5/Mmux_salida_4_233 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \u5/Mmux_salida_3  (
    .I0(\u4/selec [0]),
    .I1(\u3/D [8]),
    .I2(\u3/D [12]),
    .O(\u5/Mmux_salida_3_229 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \u1/presente_FSM_FFd3  (
    .C(\u2/q [0]),
    .D(\u1/presente_FSM_FFd3-In ),
    .Q(\u1/presente_FSM_FFd3_58 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \u1/presente_FSM_FFd1  (
    .C(\u2/q [0]),
    .D(\u1/presente_FSM_FFd1-In ),
    .Q(\u1/presente_FSM_FFd1_55 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \u1/presente_FSM_FFd5  (
    .C(\u2/q [0]),
    .D(N0),
    .Q(\u1/presente_FSM_FFd5_62 )
  );
  LDCP   \u3/D_14  (
    .CLR(\u3/D_14__and0000 ),
    .D(\u3/D_14__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_14__and0001 ),
    .Q(\u3/D [14])
  );
  LDCP   \u3/D_13  (
    .CLR(\u3/D_13__and0000 ),
    .D(\u3/D_13__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_13__and0001 ),
    .Q(\u3/D [13])
  );
  LDCP   \u3/D_12  (
    .CLR(\u3/D_12__and0000 ),
    .D(\u3/D_12__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_12__and0001 ),
    .Q(\u3/D [12])
  );
  LDCP   \u3/D_11  (
    .CLR(\u3/D_11__and0000 ),
    .D(\u3/D_11__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_11__and0001 ),
    .Q(\u3/D [11])
  );
  LDCP   \u3/D_10  (
    .CLR(\u3/D_10__and0000 ),
    .D(\u3/D_10__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_10__and0001 ),
    .Q(\u3/D [10])
  );
  LDCP   \u3/D_9  (
    .CLR(\u3/D_9__and0000 ),
    .D(\u3/D_9__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_9__and0001 ),
    .Q(\u3/D [9])
  );
  LDCP   \u3/D_8  (
    .CLR(\u3/D_8__and0000 ),
    .D(\u3/D_8__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_8__and0001 ),
    .Q(\u3/D [8])
  );
  LDCP   \u3/D_7  (
    .CLR(\u3/D_7__and0000 ),
    .D(\u3/D_7__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_7__and0001 ),
    .Q(\u3/D [7])
  );
  LDCP   \u3/D_6  (
    .CLR(\u3/D_6__and0000 ),
    .D(\u3/D_6__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_6__and0001 ),
    .Q(\u3/D [6])
  );
  LDCP   \u3/D_5  (
    .CLR(\u3/D_5__and0000 ),
    .D(\u3/D_5__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_5__and0001 ),
    .Q(\u3/D [5])
  );
  LDCP   \u3/D_4  (
    .CLR(\u3/D_4__and0000 ),
    .D(\u3/D_4__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_4__and0001 ),
    .Q(\u3/D [4])
  );
  LDCP   \u3/D_3  (
    .CLR(\u3/D_3__and0000 ),
    .D(\u3/D_3__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_3__and0001 ),
    .Q(\u3/D [3])
  );
  LDCP   \u3/D_2  (
    .CLR(\u3/D_2__and0000 ),
    .D(\u3/D_2__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_2__and0001 ),
    .Q(\u3/D [2])
  );
  LDCP   \u3/D_1  (
    .CLR(\u3/D_1__and0000 ),
    .D(\u3/D_1__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_1__and0001 ),
    .Q(\u3/D [1])
  );
  LDCP   \u3/D_0  (
    .CLR(\u3/D_0__and0000 ),
    .D(\u3/D_0__and0001 ),
    .G(\u1/presente_FSM_FFd5_62 ),
    .PRE(\u3/D_0__and0001 ),
    .Q(\u3/D [0])
  );
  LD   \u3/Dctr_15  (
    .D(\u3/Dctr_add0000 [15]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [15])
  );
  LD   \u3/Dctr_14  (
    .D(\u3/Dctr_add0000 [14]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [14])
  );
  LD   \u3/Dctr_13  (
    .D(\u3/Dctr_add0000 [13]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [13])
  );
  LD   \u3/Dctr_12  (
    .D(\u3/Dctr_add0000 [12]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [12])
  );
  LD   \u3/Dctr_11  (
    .D(\u3/Dctr_add0000 [11]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [11])
  );
  LD   \u3/Dctr_10  (
    .D(\u3/Dctr_add0000 [10]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [10])
  );
  LD   \u3/Dctr_9  (
    .D(\u3/Dctr_add0000 [9]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [9])
  );
  LD   \u3/Dctr_8  (
    .D(\u3/Dctr_add0000 [8]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [8])
  );
  LD   \u3/Dctr_7  (
    .D(\u3/Dctr_add0000 [7]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [7])
  );
  LD   \u3/Dctr_6  (
    .D(\u3/Dctr_add0000 [6]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [6])
  );
  LD   \u3/Dctr_5  (
    .D(\u3/Dctr_add0000 [5]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [5])
  );
  LD   \u3/Dctr_4  (
    .D(\u3/Dctr_add0000 [4]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [4])
  );
  LD   \u3/Dctr_3  (
    .D(\u3/Dctr_add0000 [3]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [3])
  );
  LD   \u3/Dctr_2  (
    .D(\u3/Dctr_add0000 [2]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [2])
  );
  LD   \u3/Dctr_1  (
    .D(\u3/Dctr_add0000 [1]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [1])
  );
  LD   \u3/Dctr_0  (
    .D(\u3/Dctr_add0000 [0]),
    .G(\u1/presente_FSM_FFd2_57 ),
    .Q(\u3/Dctr [0])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<15>  (
    .CI(\u3/Madd_Dctr_add0000_cy [14]),
    .LI(\u3/Madd_Dctr_add0000_xor<15>_rt_226 ),
    .O(\u3/Dctr_add0000 [15])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<14>  (
    .CI(\u3/Madd_Dctr_add0000_cy [13]),
    .LI(\u3/Madd_Dctr_add0000_cy<14>_rt_206 ),
    .O(\u3/Dctr_add0000 [14])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<14>  (
    .CI(\u3/Madd_Dctr_add0000_cy [13]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<14>_rt_206 ),
    .O(\u3/Madd_Dctr_add0000_cy [14])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<13>  (
    .CI(\u3/Madd_Dctr_add0000_cy [12]),
    .LI(\u3/Madd_Dctr_add0000_cy<13>_rt_204 ),
    .O(\u3/Dctr_add0000 [13])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<13>  (
    .CI(\u3/Madd_Dctr_add0000_cy [12]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<13>_rt_204 ),
    .O(\u3/Madd_Dctr_add0000_cy [13])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<12>  (
    .CI(\u3/Madd_Dctr_add0000_cy [11]),
    .LI(\u3/Madd_Dctr_add0000_cy<12>_rt_202 ),
    .O(\u3/Dctr_add0000 [12])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<12>  (
    .CI(\u3/Madd_Dctr_add0000_cy [11]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<12>_rt_202 ),
    .O(\u3/Madd_Dctr_add0000_cy [12])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<11>  (
    .CI(\u3/Madd_Dctr_add0000_cy [10]),
    .LI(\u3/Madd_Dctr_add0000_cy<11>_rt_200 ),
    .O(\u3/Dctr_add0000 [11])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<11>  (
    .CI(\u3/Madd_Dctr_add0000_cy [10]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<11>_rt_200 ),
    .O(\u3/Madd_Dctr_add0000_cy [11])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<10>  (
    .CI(\u3/Madd_Dctr_add0000_cy [9]),
    .LI(\u3/Madd_Dctr_add0000_cy<10>_rt_198 ),
    .O(\u3/Dctr_add0000 [10])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<10>  (
    .CI(\u3/Madd_Dctr_add0000_cy [9]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<10>_rt_198 ),
    .O(\u3/Madd_Dctr_add0000_cy [10])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<9>  (
    .CI(\u3/Madd_Dctr_add0000_cy [8]),
    .LI(\u3/Madd_Dctr_add0000_cy<9>_rt_224 ),
    .O(\u3/Dctr_add0000 [9])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<9>  (
    .CI(\u3/Madd_Dctr_add0000_cy [8]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<9>_rt_224 ),
    .O(\u3/Madd_Dctr_add0000_cy [9])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<8>  (
    .CI(\u3/Madd_Dctr_add0000_cy [7]),
    .LI(\u3/Madd_Dctr_add0000_cy<8>_rt_222 ),
    .O(\u3/Dctr_add0000 [8])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<8>  (
    .CI(\u3/Madd_Dctr_add0000_cy [7]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<8>_rt_222 ),
    .O(\u3/Madd_Dctr_add0000_cy [8])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<7>  (
    .CI(\u3/Madd_Dctr_add0000_cy [6]),
    .LI(\u3/Madd_Dctr_add0000_cy<7>_rt_220 ),
    .O(\u3/Dctr_add0000 [7])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<7>  (
    .CI(\u3/Madd_Dctr_add0000_cy [6]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<7>_rt_220 ),
    .O(\u3/Madd_Dctr_add0000_cy [7])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<6>  (
    .CI(\u3/Madd_Dctr_add0000_cy [5]),
    .LI(\u3/Madd_Dctr_add0000_cy<6>_rt_218 ),
    .O(\u3/Dctr_add0000 [6])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<6>  (
    .CI(\u3/Madd_Dctr_add0000_cy [5]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<6>_rt_218 ),
    .O(\u3/Madd_Dctr_add0000_cy [6])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<5>  (
    .CI(\u3/Madd_Dctr_add0000_cy [4]),
    .LI(\u3/Madd_Dctr_add0000_cy<5>_rt_216 ),
    .O(\u3/Dctr_add0000 [5])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<5>  (
    .CI(\u3/Madd_Dctr_add0000_cy [4]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<5>_rt_216 ),
    .O(\u3/Madd_Dctr_add0000_cy [5])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<4>  (
    .CI(\u3/Madd_Dctr_add0000_cy [3]),
    .LI(\u3/Madd_Dctr_add0000_cy<4>_rt_214 ),
    .O(\u3/Dctr_add0000 [4])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<4>  (
    .CI(\u3/Madd_Dctr_add0000_cy [3]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<4>_rt_214 ),
    .O(\u3/Madd_Dctr_add0000_cy [4])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<3>  (
    .CI(\u3/Madd_Dctr_add0000_cy [2]),
    .LI(\u3/Madd_Dctr_add0000_cy<3>_rt_212 ),
    .O(\u3/Dctr_add0000 [3])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<3>  (
    .CI(\u3/Madd_Dctr_add0000_cy [2]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<3>_rt_212 ),
    .O(\u3/Madd_Dctr_add0000_cy [3])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<2>  (
    .CI(\u3/Madd_Dctr_add0000_cy [1]),
    .LI(\u3/Madd_Dctr_add0000_cy<2>_rt_210 ),
    .O(\u3/Dctr_add0000 [2])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<2>  (
    .CI(\u3/Madd_Dctr_add0000_cy [1]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<2>_rt_210 ),
    .O(\u3/Madd_Dctr_add0000_cy [2])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<1>  (
    .CI(\u3/Madd_Dctr_add0000_cy [0]),
    .LI(\u3/Madd_Dctr_add0000_cy<1>_rt_208 ),
    .O(\u3/Dctr_add0000 [1])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<1>  (
    .CI(\u3/Madd_Dctr_add0000_cy [0]),
    .DI(N0),
    .S(\u3/Madd_Dctr_add0000_cy<1>_rt_208 ),
    .O(\u3/Madd_Dctr_add0000_cy [1])
  );
  XORCY   \u3/Madd_Dctr_add0000_xor<0>  (
    .CI(N0),
    .LI(\u3/Madd_Dctr_add0000_lut [0]),
    .O(\u3/Dctr_add0000 [0])
  );
  MUXCY   \u3/Madd_Dctr_add0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\u3/Madd_Dctr_add0000_lut [0]),
    .O(\u3/Madd_Dctr_add0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_9__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [10]),
    .O(\u3/D_9__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_9__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [10]),
    .O(\u3/D_9__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_8__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [9]),
    .O(\u3/D_8__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_8__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [9]),
    .O(\u3/D_8__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_7__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [8]),
    .O(\u3/D_7__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_7__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [8]),
    .O(\u3/D_7__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_6__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [7]),
    .O(\u3/D_6__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_6__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [7]),
    .O(\u3/D_6__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_5__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [6]),
    .O(\u3/D_5__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_5__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [6]),
    .O(\u3/D_5__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_4__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [5]),
    .O(\u3/D_4__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_4__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [5]),
    .O(\u3/D_4__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_3__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [4]),
    .O(\u3/D_3__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_3__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [4]),
    .O(\u3/D_3__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_2__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [3]),
    .O(\u3/D_2__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_2__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [3]),
    .O(\u3/D_2__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_1__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [2]),
    .O(\u3/D_1__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_1__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [2]),
    .O(\u3/D_1__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_14__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [15]),
    .O(\u3/D_14__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_14__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [15]),
    .O(\u3/D_14__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_13__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [14]),
    .O(\u3/D_13__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_13__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [14]),
    .O(\u3/D_13__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_12__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [13]),
    .O(\u3/D_12__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_12__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [13]),
    .O(\u3/D_12__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_11__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [12]),
    .O(\u3/D_11__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_11__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [12]),
    .O(\u3/D_11__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_10__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [11]),
    .O(\u3/D_10__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_10__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [11]),
    .O(\u3/D_10__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u3/D_0__and00011  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [1]),
    .O(\u3/D_0__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \u3/D_0__and00001  (
    .I0(\u1/presente_FSM_FFd1_55 ),
    .I1(\u3/Dctr [1]),
    .O(\u3/D_0__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \u5/Mdecod_an31  (
    .I0(\u4/selec [0]),
    .I1(\u4/selec [1]),
    .O(an_3_OBUF_34)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u5/Mdecod_an21  (
    .I0(\u4/selec [1]),
    .I1(\u4/selec [0]),
    .O(an_2_OBUF_33)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \u5/Mdecod_an11  (
    .I0(\u4/selec [0]),
    .I1(\u4/selec [1]),
    .O(an_1_OBUF_32)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \u5/Mdecod_an01  (
    .I0(\u4/selec [0]),
    .I1(\u4/selec [1]),
    .O(an_0_OBUF_31)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/presente_FSM_FFd3-In1  (
    .I0(Bp_IBUF_1),
    .I1(\u1/presente_FSM_FFd4_60 ),
    .O(\u1/presente_FSM_FFd3-In )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \u1/presente_FSM_FFd1-In1  (
    .I0(Sp_IBUF_26),
    .I1(\u1/presente_FSM_FFd2_57 ),
    .O(\u1/presente_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \u4/Mcount_selec_xor<1>11  (
    .I0(\u4/selec [1]),
    .I1(\u4/selec [0]),
    .O(\Result<1>1 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \u6/Mrom_disp41  (
    .I0(auxsalida[0]),
    .I1(auxsalida[1]),
    .I2(auxsalida[2]),
    .I3(auxsalida[3]),
    .O(display_4_OBUF_52)
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \u6/Mrom_disp21  (
    .I0(auxsalida[1]),
    .I1(auxsalida[2]),
    .I2(auxsalida[3]),
    .I3(auxsalida[0]),
    .O(display_2_OBUF_50)
  );
  LUT4 #(
    .INIT ( 16'h0110 ))
  \u6/Mrom_disp61  (
    .I0(auxsalida[1]),
    .I1(auxsalida[3]),
    .I2(auxsalida[0]),
    .I3(auxsalida[2]),
    .O(display_6_OBUF_54)
  );
  LUT4 #(
    .INIT ( 16'h0220 ))
  \u6/Mrom_disp51  (
    .I0(auxsalida[2]),
    .I1(auxsalida[3]),
    .I2(auxsalida[0]),
    .I3(auxsalida[1]),
    .O(display_5_OBUF_53)
  );
  LUT4 #(
    .INIT ( 16'h4504 ))
  \u6/Mrom_disp111  (
    .I0(auxsalida[3]),
    .I1(auxsalida[1]),
    .I2(auxsalida[2]),
    .I3(auxsalida[0]),
    .O(display_1_OBUF_49)
  );
  LUT4 #(
    .INIT ( 16'h4101 ))
  \u6/Mrom_disp11  (
    .I0(auxsalida[3]),
    .I1(auxsalida[1]),
    .I2(auxsalida[2]),
    .I3(auxsalida[0]),
    .O(display_0_OBUF_48)
  );
  LUT4 #(
    .INIT ( 16'h4104 ))
  \u6/Mrom_disp31  (
    .I0(auxsalida[3]),
    .I1(auxsalida[0]),
    .I2(auxsalida[1]),
    .I3(auxsalida[2]),
    .O(display_3_OBUF_51)
  );
  IBUF   Bp_IBUF (
    .I(Bp),
    .O(Bp_IBUF_1)
  );
  IBUF   Sp_IBUF (
    .I(Sp),
    .O(Sp_IBUF_26)
  );
  OBUF   Lp_OBUF (
    .I(\u1/presente_FSM_FFd3_58 ),
    .O(Lp)
  );
  OBUF   an_3_OBUF (
    .I(an_3_OBUF_34),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(an_2_OBUF_33),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_OBUF_32),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_31),
    .O(an[0])
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_54),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_53),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_52),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_51),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_50),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_49),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_48),
    .O(display[0])
  );
  FDR   \u4/selec_0  (
    .C(\u2/q [18]),
    .D(N1),
    .R(\u4/selec [0]),
    .Q(\u4/selec [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \u1/presente_FSM_FFd4  (
    .C(\u2/q [0]),
    .D(\u1/presente_FSM_FFd4-In1 ),
    .S(\u1/presente_FSM_FFd1_55 ),
    .Q(\u1/presente_FSM_FFd4_60 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \u1/presente_FSM_FFd4-In11  (
    .I0(\u1/presente_FSM_FFd5_62 ),
    .I1(Bp_IBUF_1),
    .I2(\u1/presente_FSM_FFd4_60 ),
    .O(\u1/presente_FSM_FFd4-In1 )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \u1/presente_FSM_FFd2  (
    .C(\u2/q [0]),
    .CE(Sp_IBUF_26),
    .D(N0),
    .S(\u1/presente_FSM_FFd3_58 ),
    .Q(\u1/presente_FSM_FFd2_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<1>_rt  (
    .I0(\u2/q [1]),
    .O(\u2/Mcount_q_cy<1>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<2>_rt  (
    .I0(\u2/q [2]),
    .O(\u2/Mcount_q_cy<2>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<3>_rt  (
    .I0(\u2/q [3]),
    .O(\u2/Mcount_q_cy<3>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<4>_rt  (
    .I0(\u2/q [4]),
    .O(\u2/Mcount_q_cy<4>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<5>_rt  (
    .I0(\u2/q [5]),
    .O(\u2/Mcount_q_cy<5>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<6>_rt  (
    .I0(\u2/q [6]),
    .O(\u2/Mcount_q_cy<6>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<7>_rt  (
    .I0(\u2/q [7]),
    .O(\u2/Mcount_q_cy<7>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<8>_rt  (
    .I0(\u2/q [8]),
    .O(\u2/Mcount_q_cy<8>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<9>_rt  (
    .I0(\u2/q [9]),
    .O(\u2/Mcount_q_cy<9>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<10>_rt  (
    .I0(\u2/q [10]),
    .O(\u2/Mcount_q_cy<10>_rt_65 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<11>_rt  (
    .I0(\u2/q [11]),
    .O(\u2/Mcount_q_cy<11>_rt_67 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<12>_rt  (
    .I0(\u2/q [12]),
    .O(\u2/Mcount_q_cy<12>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<13>_rt  (
    .I0(\u2/q [13]),
    .O(\u2/Mcount_q_cy<13>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<14>_rt  (
    .I0(\u2/q [14]),
    .O(\u2/Mcount_q_cy<14>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<15>_rt  (
    .I0(\u2/q [15]),
    .O(\u2/Mcount_q_cy<15>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<16>_rt  (
    .I0(\u2/q [16]),
    .O(\u2/Mcount_q_cy<16>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_cy<17>_rt  (
    .I0(\u2/q [17]),
    .O(\u2/Mcount_q_cy<17>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<14>_rt  (
    .I0(\u3/Dctr [14]),
    .O(\u3/Madd_Dctr_add0000_cy<14>_rt_206 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<13>_rt  (
    .I0(\u3/Dctr [13]),
    .O(\u3/Madd_Dctr_add0000_cy<13>_rt_204 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<12>_rt  (
    .I0(\u3/Dctr [12]),
    .O(\u3/Madd_Dctr_add0000_cy<12>_rt_202 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<11>_rt  (
    .I0(\u3/Dctr [11]),
    .O(\u3/Madd_Dctr_add0000_cy<11>_rt_200 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<10>_rt  (
    .I0(\u3/Dctr [10]),
    .O(\u3/Madd_Dctr_add0000_cy<10>_rt_198 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<9>_rt  (
    .I0(\u3/Dctr [9]),
    .O(\u3/Madd_Dctr_add0000_cy<9>_rt_224 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<8>_rt  (
    .I0(\u3/Dctr [8]),
    .O(\u3/Madd_Dctr_add0000_cy<8>_rt_222 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<7>_rt  (
    .I0(\u3/Dctr [7]),
    .O(\u3/Madd_Dctr_add0000_cy<7>_rt_220 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<6>_rt  (
    .I0(\u3/Dctr [6]),
    .O(\u3/Madd_Dctr_add0000_cy<6>_rt_218 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<5>_rt  (
    .I0(\u3/Dctr [5]),
    .O(\u3/Madd_Dctr_add0000_cy<5>_rt_216 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<4>_rt  (
    .I0(\u3/Dctr [4]),
    .O(\u3/Madd_Dctr_add0000_cy<4>_rt_214 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<3>_rt  (
    .I0(\u3/Dctr [3]),
    .O(\u3/Madd_Dctr_add0000_cy<3>_rt_212 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<2>_rt  (
    .I0(\u3/Dctr [2]),
    .O(\u3/Madd_Dctr_add0000_cy<2>_rt_210 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_cy<1>_rt  (
    .I0(\u3/Dctr [1]),
    .O(\u3/Madd_Dctr_add0000_cy<1>_rt_208 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u2/Mcount_q_xor<18>_rt  (
    .I0(\u2/q [18]),
    .O(\u2/Mcount_q_xor<18>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \u3/Madd_Dctr_add0000_xor<15>_rt  (
    .I0(\u3/Dctr [15]),
    .O(\u3/Madd_Dctr_add0000_xor<15>_rt_226 )
  );
  BUFGP   clk_p_BUFGP (
    .I(clk_p),
    .O(clk_p_BUFGP_40)
  );
  INV   \u2/Mcount_q_lut<0>_INV_0  (
    .I(\u2/q [0]),
    .O(\u2/Mcount_q_lut [0])
  );
  INV   \u3/Madd_Dctr_add0000_lut<0>_INV_0  (
    .I(\u3/Dctr [0]),
    .O(\u3/Madd_Dctr_add0000_lut [0])
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

