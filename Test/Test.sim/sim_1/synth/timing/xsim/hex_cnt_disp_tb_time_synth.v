// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Feb 20 14:30:06 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FPGA_project/Test/Test.sim/sim_1/synth/timing/xsim/hex_cnt_disp_tb_time_synth.v
// Design      : hex_cnt_disp
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module hex_cnt_disp
   (clk,
    rst_n,
    tick,
    disp_md,
    seg0,
    seg1);
  input clk;
  input rst_n;
  input tick;
  input disp_md;
  output [6:0]seg0;
  output [6:0]seg1;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire disp_md;
  wire disp_md_IBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire [6:0]seg0;
  wire [6:0]seg0_OBUF;
  wire [6:0]seg1;
  wire [6:0]seg1_OBUF;
  wire tick;
  wire tick_IBUF;

initial begin
 $sdf_annotate("hex_cnt_disp_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF disp_md_IBUF_inst
       (.I(disp_md),
        .O(disp_md_IBUF));
  hex_cnt_test hex_cnt_test_0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .disp_md_IBUF(disp_md_IBUF),
        .rst_n_IBUF(rst_n_IBUF),
        .seg0_OBUF(seg0_OBUF),
        .seg1_OBUF(seg1_OBUF),
        .tick_IBUF(tick_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  OBUF \seg0_OBUF[0]_inst 
       (.I(seg0_OBUF[0]),
        .O(seg0[0]));
  OBUF \seg0_OBUF[1]_inst 
       (.I(seg0_OBUF[1]),
        .O(seg0[1]));
  OBUF \seg0_OBUF[2]_inst 
       (.I(seg0_OBUF[2]),
        .O(seg0[2]));
  OBUF \seg0_OBUF[3]_inst 
       (.I(seg0_OBUF[3]),
        .O(seg0[3]));
  OBUF \seg0_OBUF[4]_inst 
       (.I(seg0_OBUF[4]),
        .O(seg0[4]));
  OBUF \seg0_OBUF[5]_inst 
       (.I(seg0_OBUF[5]),
        .O(seg0[5]));
  OBUF \seg0_OBUF[6]_inst 
       (.I(seg0_OBUF[6]),
        .O(seg0[6]));
  OBUF \seg1_OBUF[0]_inst 
       (.I(seg1_OBUF[0]),
        .O(seg1[0]));
  OBUF \seg1_OBUF[1]_inst 
       (.I(seg1_OBUF[1]),
        .O(seg1[1]));
  OBUF \seg1_OBUF[2]_inst 
       (.I(seg1_OBUF[2]),
        .O(seg1[2]));
  OBUF \seg1_OBUF[3]_inst 
       (.I(seg1_OBUF[3]),
        .O(seg1[3]));
  OBUF \seg1_OBUF[4]_inst 
       (.I(seg1_OBUF[4]),
        .O(seg1[4]));
  OBUF \seg1_OBUF[5]_inst 
       (.I(seg1_OBUF[5]),
        .O(seg1[5]));
  OBUF \seg1_OBUF[6]_inst 
       (.I(seg1_OBUF[6]),
        .O(seg1[6]));
  IBUF tick_IBUF_inst
       (.I(tick),
        .O(tick_IBUF));
endmodule

module hex_cnt_test
   (seg0_OBUF,
    seg1_OBUF,
    tick_IBUF,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    disp_md_IBUF);
  output [6:0]seg0_OBUF;
  output [6:0]seg1_OBUF;
  input tick_IBUF;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input disp_md_IBUF;

  wire [2:0]bcd2seg0_in;
  wire [2:0]bcd2seg1_in;
  wire clk_IBUF_BUFG;
  wire cnt_10ms1;
  wire \cnt_10ms[0]_i_1_n_0 ;
  wire \cnt_10ms[1]_i_1_n_0 ;
  wire \cnt_10ms[2]_i_1_n_0 ;
  wire \cnt_10ms[3]_i_1_n_0 ;
  wire \cnt_10ms[4]_i_1_n_0 ;
  wire \cnt_10ms[5]_i_1_n_0 ;
  wire \cnt_10ms[6]_i_1_n_0 ;
  wire [6:0]cnt_10ms_reg;
  wire \cnt_1m[0]_i_1_n_0 ;
  wire \cnt_1m[1]_i_1_n_0 ;
  wire \cnt_1m[2]_i_1_n_0 ;
  wire \cnt_1m[3]_i_1_n_0 ;
  wire \cnt_1m[4]_i_1_n_0 ;
  wire \cnt_1m[5]_i_1_n_0 ;
  wire \cnt_1m[5]_i_2_n_0 ;
  wire cnt_1m_en;
  wire cnt_1m_en_reg_n_0;
  wire [5:0]cnt_1m_reg;
  wire cnt_1s1;
  wire \cnt_1s[0]_i_1_n_0 ;
  wire \cnt_1s[1]_i_1_n_0 ;
  wire \cnt_1s[2]_i_1_n_0 ;
  wire \cnt_1s[3]_i_1_n_0 ;
  wire \cnt_1s[4]_i_1_n_0 ;
  wire \cnt_1s[5]_i_1_n_0 ;
  wire cnt_1s_en;
  wire cnt_1s_en_i_3_n_0;
  wire cnt_1s_en_reg_n_0;
  wire [5:0]cnt_1s_reg;
  wire disp_md_IBUF;
  wire [3:1]hex2bcd0_in;
  wire [6:4]hex2bcd0_in__0;
  wire [3:1]hex2bcd1_in;
  wire [5:4]hex2bcd1_in__0;
  wire [0:0]high_digit0;
  wire [3:1]low_digit0;
  wire rst_n_IBUF;
  wire [6:0]seg0_OBUF;
  wire \seg0_OBUF[6]_inst_i_14_n_0 ;
  wire \seg0_OBUF[6]_inst_i_16_n_0 ;
  wire \seg0_OBUF[6]_inst_i_17_n_0 ;
  wire \seg0_OBUF[6]_inst_i_19_n_0 ;
  wire \seg0_OBUF[6]_inst_i_2_n_0 ;
  wire [6:0]seg1_OBUF;
  wire \seg1_OBUF[6]_inst_i_3_n_0 ;
  wire \seg1_OBUF[6]_inst_i_6_n_0 ;
  wire st0;
  wire st0_i_1_n_0;
  wire st1;
  wire st2;
  wire st3;
  wire st4;
  wire st5;
  wire tick_IBUF;

  LUT2 #(
    .INIT(4'h1)) 
    \cnt_10ms[0]_i_1 
       (.I0(cnt_10ms_reg[0]),
        .I1(cnt_1s_en),
        .O(\cnt_10ms[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_10ms[1]_i_1 
       (.I0(cnt_10ms_reg[1]),
        .I1(cnt_10ms_reg[0]),
        .I2(cnt_1s_en),
        .O(\cnt_10ms[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt_10ms[2]_i_1 
       (.I0(cnt_10ms_reg[2]),
        .I1(cnt_10ms_reg[1]),
        .I2(cnt_10ms_reg[0]),
        .I3(cnt_1s_en),
        .O(\cnt_10ms[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_10ms[3]_i_1 
       (.I0(cnt_10ms_reg[3]),
        .I1(cnt_10ms_reg[2]),
        .I2(cnt_10ms_reg[0]),
        .I3(cnt_10ms_reg[1]),
        .I4(cnt_1s_en),
        .O(\cnt_10ms[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \cnt_10ms[4]_i_1 
       (.I0(cnt_10ms_reg[4]),
        .I1(cnt_10ms_reg[3]),
        .I2(cnt_10ms_reg[1]),
        .I3(cnt_10ms_reg[0]),
        .I4(cnt_10ms_reg[2]),
        .I5(cnt_1s_en),
        .O(\cnt_10ms[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00024000BFFF4000)) 
    \cnt_10ms[5]_i_1 
       (.I0(cnt_1s_en_i_3_n_0),
        .I1(cnt_10ms_reg[3]),
        .I2(cnt_10ms_reg[4]),
        .I3(cnt_10ms_reg[2]),
        .I4(cnt_10ms_reg[5]),
        .I5(cnt_10ms_reg[6]),
        .O(\cnt_10ms[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002FFFF40000000)) 
    \cnt_10ms[6]_i_1 
       (.I0(cnt_1s_en_i_3_n_0),
        .I1(cnt_10ms_reg[3]),
        .I2(cnt_10ms_reg[4]),
        .I3(cnt_10ms_reg[2]),
        .I4(cnt_10ms_reg[5]),
        .I5(cnt_10ms_reg[6]),
        .O(\cnt_10ms[6]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[0]_i_1_n_0 ),
        .Q(cnt_10ms_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[1]_i_1_n_0 ),
        .Q(cnt_10ms_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[2]_i_1_n_0 ),
        .Q(cnt_10ms_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[3]_i_1_n_0 ),
        .Q(cnt_10ms_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[4]_i_1_n_0 ),
        .Q(cnt_10ms_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[5]_i_1_n_0 ),
        .Q(cnt_10ms_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_10ms[6]_i_1_n_0 ),
        .Q(cnt_10ms_reg[6]));
  LUT5 #(
    .INIT(32'h15555555)) 
    \cnt_1m[0]_i_1 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[2]),
        .I2(cnt_1m_reg[3]),
        .I3(cnt_1m_reg[5]),
        .I4(cnt_1m_reg[4]),
        .O(\cnt_1m[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0666666666666666)) 
    \cnt_1m[1]_i_1 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[1]),
        .I2(cnt_1m_reg[2]),
        .I3(cnt_1m_reg[3]),
        .I4(cnt_1m_reg[5]),
        .I5(cnt_1m_reg[4]),
        .O(\cnt_1m[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0078787878787878)) 
    \cnt_1m[2]_i_1 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[1]),
        .I2(cnt_1m_reg[2]),
        .I3(cnt_1m_reg[3]),
        .I4(cnt_1m_reg[5]),
        .I5(cnt_1m_reg[4]),
        .O(\cnt_1m[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07807F807F807F80)) 
    \cnt_1m[3]_i_1 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[1]),
        .I2(cnt_1m_reg[2]),
        .I3(cnt_1m_reg[3]),
        .I4(cnt_1m_reg[5]),
        .I5(cnt_1m_reg[4]),
        .O(\cnt_1m[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07FF7FFF80008000)) 
    \cnt_1m[4]_i_1 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[1]),
        .I2(cnt_1m_reg[2]),
        .I3(cnt_1m_reg[3]),
        .I4(cnt_1m_reg[5]),
        .I5(cnt_1m_reg[4]),
        .O(\cnt_1m[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_1m[5]_i_1 
       (.I0(st4),
        .I1(st5),
        .O(\cnt_1m[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07FF8000FFFF0000)) 
    \cnt_1m[5]_i_2 
       (.I0(cnt_1m_reg[0]),
        .I1(cnt_1m_reg[1]),
        .I2(cnt_1m_reg[2]),
        .I3(cnt_1m_reg[3]),
        .I4(cnt_1m_reg[5]),
        .I5(cnt_1m_reg[4]),
        .O(\cnt_1m[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_1m_en_i_1
       (.I0(st2),
        .I1(st3),
        .O(cnt_1s1));
  LUT6 #(
    .INIT(64'h8080800080008000)) 
    cnt_1m_en_i_2
       (.I0(cnt_1s_reg[4]),
        .I1(cnt_1s_reg[5]),
        .I2(cnt_1s_reg[3]),
        .I3(cnt_1s_reg[2]),
        .I4(cnt_1s_reg[1]),
        .I5(cnt_1s_reg[0]),
        .O(cnt_1m_en));
  FDCE #(
    .INIT(1'b0)) 
    cnt_1m_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(cnt_1m_en),
        .Q(cnt_1m_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[0]_i_1_n_0 ),
        .Q(cnt_1m_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[1]_i_1_n_0 ),
        .Q(cnt_1m_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[2]_i_1_n_0 ),
        .Q(cnt_1m_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[3]_i_1_n_0 ),
        .Q(cnt_1m_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[4]_i_1_n_0 ),
        .Q(cnt_1m_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1m_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_1m[5]_i_1_n_0 ),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1m[5]_i_2_n_0 ),
        .Q(cnt_1m_reg[5]));
  LUT5 #(
    .INIT(32'h15555555)) 
    \cnt_1s[0]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[2]),
        .I2(cnt_1s_reg[3]),
        .I3(cnt_1s_reg[5]),
        .I4(cnt_1s_reg[4]),
        .O(\cnt_1s[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0666666666666666)) 
    \cnt_1s[1]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[1]),
        .I2(cnt_1s_reg[2]),
        .I3(cnt_1s_reg[3]),
        .I4(cnt_1s_reg[5]),
        .I5(cnt_1s_reg[4]),
        .O(\cnt_1s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0078787878787878)) 
    \cnt_1s[2]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[1]),
        .I2(cnt_1s_reg[2]),
        .I3(cnt_1s_reg[3]),
        .I4(cnt_1s_reg[5]),
        .I5(cnt_1s_reg[4]),
        .O(\cnt_1s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07807F807F807F80)) 
    \cnt_1s[3]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[1]),
        .I2(cnt_1s_reg[2]),
        .I3(cnt_1s_reg[3]),
        .I4(cnt_1s_reg[5]),
        .I5(cnt_1s_reg[4]),
        .O(\cnt_1s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07FF7FFF80008000)) 
    \cnt_1s[4]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[1]),
        .I2(cnt_1s_reg[2]),
        .I3(cnt_1s_reg[3]),
        .I4(cnt_1s_reg[5]),
        .I5(cnt_1s_reg[4]),
        .O(\cnt_1s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h07FF8000FFFF0000)) 
    \cnt_1s[5]_i_1 
       (.I0(cnt_1s_reg[0]),
        .I1(cnt_1s_reg[1]),
        .I2(cnt_1s_reg[2]),
        .I3(cnt_1s_reg[3]),
        .I4(cnt_1s_reg[5]),
        .I5(cnt_1s_reg[4]),
        .O(\cnt_1s[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    cnt_1s_en_i_1
       (.I0(st0),
        .I1(st1),
        .O(cnt_10ms1));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    cnt_1s_en_i_2
       (.I0(cnt_10ms_reg[6]),
        .I1(cnt_10ms_reg[5]),
        .I2(cnt_10ms_reg[2]),
        .I3(cnt_10ms_reg[4]),
        .I4(cnt_10ms_reg[3]),
        .I5(cnt_1s_en_i_3_n_0),
        .O(cnt_1s_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_1s_en_i_3
       (.I0(cnt_10ms_reg[1]),
        .I1(cnt_10ms_reg[0]),
        .O(cnt_1s_en_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cnt_1s_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(cnt_10ms1),
        .CLR(st0_i_1_n_0),
        .D(cnt_1s_en),
        .Q(cnt_1s_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[0]_i_1_n_0 ),
        .Q(cnt_1s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[1]_i_1_n_0 ),
        .Q(cnt_1s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[2]_i_1_n_0 ),
        .Q(cnt_1s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[3]_i_1_n_0 ),
        .Q(cnt_1s_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[4]_i_1_n_0 ),
        .Q(cnt_1s_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1s_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(cnt_1s1),
        .CLR(st0_i_1_n_0),
        .D(\cnt_1s[5]_i_1_n_0 ),
        .Q(cnt_1s_reg[5]));
  LUT6 #(
    .INIT(64'hA3A3A35CA3A300FF)) 
    \seg0_OBUF[0]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[2]),
        .I4(bcd2seg0_in[1]),
        .I5(bcd2seg0_in[0]),
        .O(seg0_OBUF[0]));
  LUT6 #(
    .INIT(64'hA30000A3A3FFA3FF)) 
    \seg0_OBUF[1]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[1]),
        .I4(bcd2seg0_in[0]),
        .I5(bcd2seg0_in[2]),
        .O(seg0_OBUF[1]));
  LUT6 #(
    .INIT(64'hA3A3A3FFA300A3FF)) 
    \seg0_OBUF[2]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[2]),
        .I4(bcd2seg0_in[1]),
        .I5(bcd2seg0_in[0]),
        .O(seg0_OBUF[2]));
  LUT6 #(
    .INIT(64'h00A3A35CA3A300FF)) 
    \seg0_OBUF[3]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[2]),
        .I4(bcd2seg0_in[1]),
        .I5(bcd2seg0_in[0]),
        .O(seg0_OBUF[3]));
  LUT6 #(
    .INIT(64'h00000000A300A3FF)) 
    \seg0_OBUF[4]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[1]),
        .I4(bcd2seg0_in[2]),
        .I5(bcd2seg0_in[0]),
        .O(seg0_OBUF[4]));
  LUT6 #(
    .INIT(64'hA300A300A35CA3FF)) 
    \seg0_OBUF[5]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[2]),
        .I4(bcd2seg0_in[0]),
        .I5(bcd2seg0_in[1]),
        .O(seg0_OBUF[5]));
  LUT6 #(
    .INIT(64'h00A3A3A3A3A35C5C)) 
    \seg0_OBUF[6]_inst_i_1 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(low_digit0[3]),
        .I2(tick_IBUF),
        .I3(bcd2seg0_in[0]),
        .I4(bcd2seg0_in[2]),
        .I5(bcd2seg0_in[1]),
        .O(seg0_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg0_OBUF[6]_inst_i_10 
       (.I0(cnt_1s_reg[1]),
        .I1(cnt_10ms_reg[1]),
        .I2(disp_md_IBUF),
        .O(hex2bcd0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg0_OBUF[6]_inst_i_11 
       (.I0(cnt_1s_reg[2]),
        .I1(cnt_10ms_reg[2]),
        .I2(disp_md_IBUF),
        .O(hex2bcd0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg0_OBUF[6]_inst_i_12 
       (.I0(cnt_1s_reg[3]),
        .I1(cnt_10ms_reg[3]),
        .I2(disp_md_IBUF),
        .O(hex2bcd0_in[3]));
  LUT6 #(
    .INIT(64'hF3DCF9CEF1CCD8C6)) 
    \seg0_OBUF[6]_inst_i_13 
       (.I0(hex2bcd0_in__0[4]),
        .I1(hex2bcd0_in__0[5]),
        .I2(hex2bcd0_in__0[6]),
        .I3(hex2bcd0_in[3]),
        .I4(hex2bcd0_in[2]),
        .I5(hex2bcd0_in[1]),
        .O(high_digit0));
  LUT6 #(
    .INIT(64'h555F0000555F333F)) 
    \seg0_OBUF[6]_inst_i_14 
       (.I0(cnt_1s_reg[5]),
        .I1(cnt_10ms_reg[5]),
        .I2(hex2bcd0_in__0[4]),
        .I3(hex2bcd0_in[3]),
        .I4(disp_md_IBUF),
        .I5(cnt_10ms_reg[6]),
        .O(\seg0_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE51412CAE92514D2)) 
    \seg0_OBUF[6]_inst_i_15 
       (.I0(hex2bcd0_in__0[4]),
        .I1(hex2bcd0_in__0[5]),
        .I2(hex2bcd0_in__0[6]),
        .I3(hex2bcd0_in[1]),
        .I4(hex2bcd0_in[2]),
        .I5(hex2bcd0_in[3]),
        .O(low_digit0[2]));
  LUT6 #(
    .INIT(64'h0BBBBBBBBBBBBBBB)) 
    \seg0_OBUF[6]_inst_i_16 
       (.I0(disp_md_IBUF),
        .I1(cnt_10ms_reg[6]),
        .I2(hex2bcd0_in__0[4]),
        .I3(hex2bcd0_in__0[5]),
        .I4(hex2bcd0_in[2]),
        .I5(hex2bcd0_in[3]),
        .O(\seg0_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000000001F1F11FF)) 
    \seg0_OBUF[6]_inst_i_17 
       (.I0(hex2bcd0_in[2]),
        .I1(hex2bcd0_in[3]),
        .I2(cnt_1s_reg[4]),
        .I3(cnt_10ms_reg[4]),
        .I4(disp_md_IBUF),
        .I5(\seg0_OBUF[6]_inst_i_19_n_0 ),
        .O(\seg0_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0C230631F1CCD8C6)) 
    \seg0_OBUF[6]_inst_i_18 
       (.I0(hex2bcd0_in__0[4]),
        .I1(hex2bcd0_in__0[5]),
        .I2(hex2bcd0_in__0[6]),
        .I3(hex2bcd0_in[3]),
        .I4(hex2bcd0_in[2]),
        .I5(hex2bcd0_in[1]),
        .O(low_digit0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCFCA)) 
    \seg0_OBUF[6]_inst_i_19 
       (.I0(cnt_10ms_reg[5]),
        .I1(cnt_1s_reg[5]),
        .I2(disp_md_IBUF),
        .I3(cnt_10ms_reg[6]),
        .O(\seg0_OBUF[6]_inst_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    \seg0_OBUF[6]_inst_i_2 
       (.I0(cnt_10ms_reg[4]),
        .I1(cnt_10ms_reg[5]),
        .I2(disp_md_IBUF),
        .I3(cnt_10ms_reg[6]),
        .O(\seg0_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h100208E1C4D0C208)) 
    \seg0_OBUF[6]_inst_i_3 
       (.I0(hex2bcd0_in__0[4]),
        .I1(hex2bcd0_in__0[5]),
        .I2(hex2bcd0_in__0[6]),
        .I3(hex2bcd0_in[1]),
        .I4(hex2bcd0_in[2]),
        .I5(hex2bcd0_in[3]),
        .O(low_digit0[3]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \seg0_OBUF[6]_inst_i_4 
       (.I0(high_digit0),
        .I1(cnt_1s_reg[0]),
        .I2(cnt_10ms_reg[0]),
        .I3(disp_md_IBUF),
        .I4(tick_IBUF),
        .O(bcd2seg0_in[0]));
  LUT4 #(
    .INIT(16'h22F0)) 
    \seg0_OBUF[6]_inst_i_5 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg0_OBUF[6]_inst_i_14_n_0 ),
        .I2(low_digit0[2]),
        .I3(tick_IBUF),
        .O(bcd2seg0_in[2]));
  LUT6 #(
    .INIT(64'h02A202A2FFFF0000)) 
    \seg0_OBUF[6]_inst_i_6 
       (.I0(\seg0_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg0_OBUF[6]_inst_i_16_n_0 ),
        .I2(\seg0_OBUF[6]_inst_i_14_n_0 ),
        .I3(\seg0_OBUF[6]_inst_i_17_n_0 ),
        .I4(low_digit0[1]),
        .I5(tick_IBUF),
        .O(bcd2seg0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg0_OBUF[6]_inst_i_7 
       (.I0(cnt_1s_reg[4]),
        .I1(cnt_10ms_reg[4]),
        .I2(disp_md_IBUF),
        .O(hex2bcd0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg0_OBUF[6]_inst_i_8 
       (.I0(cnt_1s_reg[5]),
        .I1(cnt_10ms_reg[5]),
        .I2(disp_md_IBUF),
        .O(hex2bcd0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg0_OBUF[6]_inst_i_9 
       (.I0(cnt_10ms_reg[6]),
        .I1(disp_md_IBUF),
        .O(hex2bcd0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCC87)) 
    \seg1_OBUF[0]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[0]));
  LUT4 #(
    .INIT(16'h8C4F)) 
    \seg1_OBUF[1]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC8CF)) 
    \seg1_OBUF[2]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4C87)) 
    \seg1_OBUF[3]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2023)) 
    \seg1_OBUF[4]_inst_i_1 
       (.I0(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I1(bcd2seg1_in[0]),
        .I2(bcd2seg1_in[1]),
        .I3(bcd2seg1_in[2]),
        .O(seg1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC0C7)) 
    \seg1_OBUF[5]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4CC3)) 
    \seg1_OBUF[6]_inst_i_1 
       (.I0(bcd2seg1_in[0]),
        .I1(\seg1_OBUF[6]_inst_i_3_n_0 ),
        .I2(bcd2seg1_in[2]),
        .I3(bcd2seg1_in[1]),
        .O(seg1_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg1_OBUF[6]_inst_i_10 
       (.I0(cnt_1m_reg[4]),
        .I1(cnt_1s_reg[4]),
        .I2(disp_md_IBUF),
        .O(hex2bcd1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg1_OBUF[6]_inst_i_11 
       (.I0(cnt_1m_reg[3]),
        .I1(cnt_1s_reg[3]),
        .I2(disp_md_IBUF),
        .O(hex2bcd1_in[3]));
  LUT5 #(
    .INIT(32'h5555DDF5)) 
    \seg1_OBUF[6]_inst_i_2 
       (.I0(\seg1_OBUF[6]_inst_i_6_n_0 ),
        .I1(cnt_1m_reg[0]),
        .I2(cnt_1s_reg[0]),
        .I3(disp_md_IBUF),
        .I4(tick_IBUF),
        .O(bcd2seg1_in[0]));
  LUT6 #(
    .INIT(64'hEFFBFFFEFEEFBFFF)) 
    \seg1_OBUF[6]_inst_i_3 
       (.I0(tick_IBUF),
        .I1(hex2bcd1_in[2]),
        .I2(hex2bcd1_in[1]),
        .I3(hex2bcd1_in__0[5]),
        .I4(hex2bcd1_in__0[4]),
        .I5(hex2bcd1_in[3]),
        .O(\seg1_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E06318318C)) 
    \seg1_OBUF[6]_inst_i_4 
       (.I0(hex2bcd1_in[3]),
        .I1(hex2bcd1_in__0[4]),
        .I2(hex2bcd1_in__0[5]),
        .I3(hex2bcd1_in[2]),
        .I4(hex2bcd1_in[1]),
        .I5(tick_IBUF),
        .O(bcd2seg1_in[2]));
  LUT6 #(
    .INIT(64'h9C9C1818A5522994)) 
    \seg1_OBUF[6]_inst_i_5 
       (.I0(hex2bcd1_in[3]),
        .I1(hex2bcd1_in__0[4]),
        .I2(hex2bcd1_in__0[5]),
        .I3(hex2bcd1_in[1]),
        .I4(hex2bcd1_in[2]),
        .I5(tick_IBUF),
        .O(bcd2seg1_in[1]));
  LUT6 #(
    .INIT(64'hC7F11C0FFFFFFFFF)) 
    \seg1_OBUF[6]_inst_i_6 
       (.I0(hex2bcd1_in[1]),
        .I1(hex2bcd1_in[2]),
        .I2(hex2bcd1_in__0[5]),
        .I3(hex2bcd1_in__0[4]),
        .I4(hex2bcd1_in[3]),
        .I5(tick_IBUF),
        .O(\seg1_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg1_OBUF[6]_inst_i_7 
       (.I0(cnt_1m_reg[2]),
        .I1(cnt_1s_reg[2]),
        .I2(disp_md_IBUF),
        .O(hex2bcd1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \seg1_OBUF[6]_inst_i_8 
       (.I0(cnt_1m_reg[1]),
        .I1(cnt_1s_reg[1]),
        .I2(disp_md_IBUF),
        .O(hex2bcd1_in[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \seg1_OBUF[6]_inst_i_9 
       (.I0(cnt_1m_reg[5]),
        .I1(cnt_1s_reg[5]),
        .I2(disp_md_IBUF),
        .O(hex2bcd1_in__0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    st0_i_1
       (.I0(rst_n_IBUF),
        .O(st0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    st0_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(st0_i_1_n_0),
        .D(tick_IBUF),
        .Q(st0));
  FDCE #(
    .INIT(1'b0)) 
    st1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(st0_i_1_n_0),
        .D(st0),
        .Q(st1));
  FDRE #(
    .INIT(1'b0)) 
    st2_reg
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(cnt_1s_en_reg_n_0),
        .Q(st2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st3_reg
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(st2),
        .Q(st3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st4_reg
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(cnt_1m_en_reg_n_0),
        .Q(st4),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    st5_reg
       (.C(clk_IBUF_BUFG),
        .CE(rst_n_IBUF),
        .D(st4),
        .Q(st5),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
