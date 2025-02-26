// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Nov 11 12:32:08 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/FPGA_project/my_stopwatch/my_stopwatch.sim/sim_1/synth/func/xsim/my_stopwatch_tb_func_synth.v
// Design      : my_stopwatch
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module disp_mod
   (CA_OBUF,
    tick);
  output CA_OBUF;
  input tick;

  wire CA_OBUF;
  wire CA_i_1_n_0;
  wire tick;

  LUT1 #(
    .INIT(2'h1)) 
    CA_i_1
       (.I0(CA_OBUF),
        .O(CA_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CA_reg
       (.C(tick),
        .CE(1'b1),
        .D(CA_i_1_n_0),
        .Q(CA_OBUF),
        .R(1'b0));
endmodule

(* CENT_TICK = "100" *) (* clr_stopwatch_stt = "2'b11" *) (* rst_stopwatch_stt = "2'b00" *) 
(* start_stopwatch_stt = "2'b10" *) (* stop_stopwatch_stt = "2'b01" *) 
(* NotValidForBitStream *)
module my_stopwatch
   (clk,
    clr,
    start,
    AN,
    CA);
  input clk;
  input clr;
  input start;
  output [6:0]AN;
  output CA;

  wire [6:0]AN;
  wire CA;
  wire CA_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [5:0]p_0_in;
  wire rst;
  wire \rst_wait[4]_i_1_n_0 ;
  wire \rst_wait[5]_i_1_n_0 ;
  wire [5:0]rst_wait_reg;
  wire tick;

  OBUF \AN_OBUF[0]_inst 
       (.I(1'b0),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(1'b1),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(1'b1),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(1'b1),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b1),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(1'b1),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(1'b1),
        .O(AN[6]));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  disp_mod disp_mod_0
       (.CA_OBUF(CA_OBUF),
        .tick(tick));
  FDRE #(
    .INIT(1'b1)) 
    rst_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rst_wait[4]_i_1_n_0 ),
        .Q(rst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_wait[0]_i_1 
       (.I0(rst_wait_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rst_wait[1]_i_1 
       (.I0(rst_wait_reg[0]),
        .I1(rst_wait_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rst_wait[2]_i_1 
       (.I0(rst_wait_reg[1]),
        .I1(rst_wait_reg[0]),
        .I2(rst_wait_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rst_wait[3]_i_1 
       (.I0(rst_wait_reg[2]),
        .I1(rst_wait_reg[0]),
        .I2(rst_wait_reg[1]),
        .I3(rst_wait_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \rst_wait[4]_i_1 
       (.I0(rst_wait_reg[4]),
        .I1(rst_wait_reg[2]),
        .I2(rst_wait_reg[0]),
        .I3(rst_wait_reg[1]),
        .I4(rst_wait_reg[3]),
        .I5(rst_wait_reg[5]),
        .O(\rst_wait[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rst_wait[4]_i_2 
       (.I0(rst_wait_reg[3]),
        .I1(rst_wait_reg[1]),
        .I2(rst_wait_reg[0]),
        .I3(rst_wait_reg[2]),
        .I4(rst_wait_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hCA)) 
    \rst_wait[5]_i_1 
       (.I0(rst_wait_reg[5]),
        .I1(p_0_in[5]),
        .I2(\rst_wait[4]_i_1_n_0 ),
        .O(\rst_wait[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rst_wait[5]_i_2 
       (.I0(rst_wait_reg[4]),
        .I1(rst_wait_reg[2]),
        .I2(rst_wait_reg[0]),
        .I3(rst_wait_reg[1]),
        .I4(rst_wait_reg[3]),
        .I5(rst_wait_reg[5]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rst_wait[4]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(rst_wait_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rst_wait[4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(rst_wait_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rst_wait[4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(rst_wait_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rst_wait[4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(rst_wait_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rst_wait[4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(rst_wait_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rst_wait_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rst_wait[5]_i_1_n_0 ),
        .Q(rst_wait_reg[5]),
        .R(1'b0));
  my_tick tick_0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst(rst),
        .tick(tick));
endmodule

module my_tick
   (tick,
    clk_IBUF_BUFG,
    rst);
  output tick;
  input clk_IBUF_BUFG;
  input rst;

  wire clk_IBUF_BUFG;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire [23:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire rst;
  wire tick;
  wire tick_i_1_n_0;
  wire [3:3]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(\counter[0]_i_6_n_0 ),
        .I4(rst),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \counter[0]_i_3 
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(counter_reg[19]),
        .I3(counter_reg[18]),
        .I4(counter_reg[22]),
        .I5(counter_reg[23]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \counter[0]_i_4 
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(counter_reg[11]),
        .I5(counter_reg[10]),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \counter[0]_i_6 
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(counter_reg[12]),
        .I3(counter_reg[13]),
        .I4(counter_reg[17]),
        .I5(counter_reg[16]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [3],\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    tick_i_1
       (.I0(\counter[0]_i_5_n_0 ),
        .I1(\counter[0]_i_3_n_0 ),
        .I2(\counter[0]_i_6_n_0 ),
        .I3(rst),
        .I4(\counter[0]_i_4_n_0 ),
        .O(tick_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick),
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
