// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jan  6 12:15:55 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_project/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_TX/ip/AXI_UART_TX_my_UART_tx_0_0/AXI_UART_TX_my_UART_tx_0_0_sim_netlist.v
// Design      : AXI_UART_TX_my_UART_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AXI_UART_TX_my_UART_tx_0_0,my_UART_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_UART_tx,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module AXI_UART_TX_my_UART_tx_0_0
   (clk,
    rst,
    send,
    parityselect,
    data,
    busy,
    sout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN AXI_UART_TX_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input send;
  input parityselect;
  input [7:0]data;
  output busy;
  output sout;

  wire busy;
  wire clk;
  wire [7:0]data;
  wire parityselect;
  wire rst;
  wire send;
  wire sout;

  AXI_UART_TX_my_UART_tx_0_0_my_UART_tx inst
       (.busy(busy),
        .clk(clk),
        .data(data),
        .parityselect(parityselect),
        .rst(rst),
        .send(send),
        .sout(sout));
endmodule

(* ORIG_REF_NAME = "mod10" *) 
module AXI_UART_TX_my_UART_tx_0_0_mod10
   (count_10,
    reset_cnt,
    increment,
    clk,
    rst);
  output count_10;
  input reset_cnt;
  input increment;
  input clk;
  input rst;

  wire clk;
  wire cnt0_n_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire [3:0]cnt_reg;
  wire count_10;
  wire count_10_i_1_n_0;
  wire increment;
  wire reset_cnt;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    cnt0
       (.I0(reset_cnt),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[2]),
        .I5(increment),
        .O(cnt0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .I1(reset_cnt),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(reset_cnt),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(reset_cnt),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(reset_cnt),
        .O(\cnt[3]_i_1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk),
        .CE(cnt0_n_0),
        .CLR(rst),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(clk),
        .CE(cnt0_n_0),
        .CLR(rst),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(clk),
        .CE(cnt0_n_0),
        .CLR(rst),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(clk),
        .CE(cnt0_n_0),
        .CLR(rst),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt_reg[3]));
  LUT6 #(
    .INIT(64'h5555555500000040)) 
    count_10_i_1
       (.I0(reset_cnt),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(count_10),
        .O(count_10_i_1_n_0));
  FDCE count_10_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(count_10_i_1_n_0),
        .Q(count_10));
endmodule

(* ORIG_REF_NAME = "my_115200_timer" *) 
module AXI_UART_TX_my_UART_tx_0_0_my_115200_timer
   (next_bit,
    \counter_reg[4]_0 ,
    next_bit0,
    clk,
    rst,
    reset_timer);
  output next_bit;
  output \counter_reg[4]_0 ;
  input next_bit0;
  input clk;
  input rst;
  input reset_timer;

  wire clk;
  wire [16:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[4]_0 ;
  wire [16:1]data0;
  wire next_bit;
  wire next_bit0;
  wire reset_timer;
  wire rst;
  wire [3:3]NLW_counter0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[3],counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(counter[0]),
        .I2(reset_timer),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[10]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[10]),
        .I2(reset_timer),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[11]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[11]),
        .I2(reset_timer),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[12]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[12]),
        .I2(reset_timer),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[13]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[13]),
        .I2(reset_timer),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[14]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[14]),
        .I2(reset_timer),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[15]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[15]),
        .I2(reset_timer),
        .O(\counter[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \counter[16]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[16]),
        .I2(reset_timer),
        .O(\counter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    \counter[16]_i_2 
       (.I0(\counter[16]_i_3_n_0 ),
        .I1(\counter[16]_i_4_n_0 ),
        .I2(\counter[16]_i_5_n_0 ),
        .I3(counter[4]),
        .I4(counter[9]),
        .I5(counter[5]),
        .O(\counter_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \counter[16]_i_3 
       (.I0(counter[13]),
        .I1(counter[16]),
        .I2(counter[12]),
        .I3(counter[11]),
        .I4(counter[7]),
        .I5(counter[10]),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[16]_i_4 
       (.I0(counter[14]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[15]),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[16]_i_5 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[8]),
        .I3(counter[6]),
        .O(\counter[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[1]),
        .I2(reset_timer),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[2]),
        .I2(reset_timer),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[3]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[3]),
        .I2(reset_timer),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[4]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[4]),
        .I2(reset_timer),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[5]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[5]),
        .I2(reset_timer),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[6]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[6]),
        .I2(reset_timer),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[7]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[7]),
        .I2(reset_timer),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[8]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[8]),
        .I2(reset_timer),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[9]_i_1 
       (.I0(\counter_reg[4]_0 ),
        .I1(data0[9]),
        .I2(reset_timer),
        .O(\counter[9]_i_1_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[10]_i_1_n_0 ),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[11]_i_1_n_0 ),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[12]_i_1_n_0 ),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[13]_i_1_n_0 ),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[14]_i_1_n_0 ),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[15]_i_1_n_0 ),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[16]_i_1_n_0 ),
        .Q(counter[16]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[8]_i_1_n_0 ),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[9]_i_1_n_0 ),
        .Q(counter[9]));
  FDCE next_bit_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_bit0),
        .Q(next_bit));
endmodule

(* ORIG_REF_NAME = "my_UART_tx" *) 
module AXI_UART_TX_my_UART_tx_0_0_my_UART_tx
   (busy,
    sout,
    rst,
    clk,
    data,
    send,
    parityselect);
  output busy;
  output sout;
  input rst;
  input clk;
  input [7:0]data;
  input send;
  input parityselect;

  wire busy;
  wire clk;
  wire count_10;
  wire [7:0]data;
  wire increment;
  wire load;
  wire my_115200_timer_0_n_1;
  wire next_bit;
  wire next_bit0;
  wire [8:0]ns;
  wire parityselect;
  wire [9:1]q;
  wire reset_cnt;
  wire reset_timer;
  wire rst;
  wire send;
  wire shift;
  wire sout;
  wire transmit_FSM_0_n_7;

  AXI_UART_TX_my_UART_tx_0_0_mod10 mod10_0
       (.clk(clk),
        .count_10(count_10),
        .increment(increment),
        .reset_cnt(reset_cnt),
        .rst(rst));
  AXI_UART_TX_my_UART_tx_0_0_my_115200_timer my_115200_timer_0
       (.clk(clk),
        .\counter_reg[4]_0 (my_115200_timer_0_n_1),
        .next_bit(next_bit),
        .next_bit0(next_bit0),
        .reset_timer(reset_timer),
        .rst(rst));
  AXI_UART_TX_my_UART_tx_0_0_shiftReg shiftreg_0
       (.D(ns),
        .E(transmit_FSM_0_n_7),
        .Q({q[8:1],sout}),
        .clk(clk),
        .data(data),
        .load(load),
        .parityselect(parityselect),
        .q(q[9]),
        .shift(shift));
  AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM transmit_FSM_0
       (.D(ns),
        .E(transmit_FSM_0_n_7),
        .busy(busy),
        .clk(clk),
        .count_10(count_10),
        .data(data),
        .increment(increment),
        .load(load),
        .next_bit(next_bit),
        .next_bit0(next_bit0),
        .next_bit_reg(my_115200_timer_0_n_1),
        .q(q),
        .reset_cnt(reset_cnt),
        .reset_timer(reset_timer),
        .rst(rst),
        .send(send),
        .shift(shift));
endmodule

(* ORIG_REF_NAME = "my_transmit_FSM" *) 
module AXI_UART_TX_my_UART_tx_0_0_my_transmit_FSM
   (reset_timer,
    busy,
    load,
    shift,
    reset_cnt,
    increment,
    next_bit0,
    E,
    D,
    clk,
    next_bit_reg,
    rst,
    data,
    q,
    send,
    count_10,
    next_bit);
  output reset_timer;
  output busy;
  output load;
  output shift;
  output reset_cnt;
  output increment;
  output next_bit0;
  output [0:0]E;
  output [8:0]D;
  input clk;
  input next_bit_reg;
  input rst;
  input [7:0]data;
  input [8:0]q;
  input send;
  input count_10;
  input next_bit;

  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire \FSM_onehot_curr_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state[4]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \__3/i__n_0 ;
  wire \__4/i__n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire clk;
  wire count_10;
  wire [7:0]data;
  wire increment;
  wire load;
  wire load_i_1_n_0;
  wire next_bit;
  wire next_bit0;
  wire next_bit_reg;
  wire next_state__0;
  wire [8:0]q;
  wire reset_cnt;
  wire reset_timer;
  wire rst;
  wire send;
  wire shift;
  wire shift_i_1_n_0;

  (* FSM_ENCODED_STATES = "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "LOAD:00010,SHIFT:01000,COUNT:00100,IDLE:00001,WAIT:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .R(rst));
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_next_state[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(send),
        .I2(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(\FSM_onehot_next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(send),
        .O(\FSM_onehot_next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \FSM_onehot_next_state[2]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I2(count_10),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(next_bit),
        .O(\FSM_onehot_next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[3]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(next_bit),
        .O(\FSM_onehot_next_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_next_state[4]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(next_state__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_next_state[4]_i_2 
       (.I0(count_10),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I2(send),
        .I3(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(\FSM_onehot_next_state[4]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(clk),
        .CE(next_state__0),
        .D(\FSM_onehot_next_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(clk),
        .CE(next_state__0),
        .CLR(rst),
        .D(\FSM_onehot_next_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(clk),
        .CE(next_state__0),
        .CLR(rst),
        .D(\FSM_onehot_next_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(clk),
        .CE(next_state__0),
        .CLR(rst),
        .D(\FSM_onehot_next_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.C(clk),
        .CE(next_state__0),
        .CLR(rst),
        .D(\FSM_onehot_next_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \__3/i_ 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(\__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \__4/i_ 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(\__4/i__n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    busy_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I5(rst),
        .O(busy_i_1_n_0));
  FDRE busy_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(\__3/i__n_0 ),
        .Q(busy),
        .R(1'b0));
  FDRE increment_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .Q(increment),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    load_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(load_i_1_n_0));
  FDRE load_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(load_i_1_n_0),
        .Q(load),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    next_bit_i_1
       (.I0(reset_timer),
        .I1(next_bit_reg),
        .O(next_bit0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \q[0]_i_1 
       (.I0(load),
        .I1(shift),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[0]_i_2 
       (.I0(q[0]),
        .I1(load),
        .I2(shift),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[1]_i_1 
       (.I0(shift),
        .I1(data[0]),
        .I2(load),
        .I3(q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[2]_i_1 
       (.I0(shift),
        .I1(data[1]),
        .I2(load),
        .I3(q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[3]_i_1 
       (.I0(shift),
        .I1(data[2]),
        .I2(load),
        .I3(q[3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[4]_i_1 
       (.I0(shift),
        .I1(data[3]),
        .I2(load),
        .I3(q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[5]_i_1 
       (.I0(shift),
        .I1(data[4]),
        .I2(load),
        .I3(q[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[6]_i_1 
       (.I0(shift),
        .I1(data[5]),
        .I2(load),
        .I3(q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[7]_i_1 
       (.I0(shift),
        .I1(data[6]),
        .I2(load),
        .I3(q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \q[8]_i_1 
       (.I0(shift),
        .I1(data[7]),
        .I2(load),
        .I3(q[8]),
        .O(D[8]));
  FDRE reset_cnt_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .Q(reset_cnt),
        .R(1'b0));
  FDRE reset_timer_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(\__4/i__n_0 ),
        .Q(reset_timer),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    shift_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(shift_i_1_n_0));
  FDRE shift_reg
       (.C(clk),
        .CE(busy_i_1_n_0),
        .D(shift_i_1_n_0),
        .Q(shift),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "shiftReg" *) 
module AXI_UART_TX_my_UART_tx_0_0_shiftReg
   (Q,
    q,
    data,
    parityselect,
    E,
    D,
    clk,
    load,
    shift);
  output [8:0]Q;
  output [0:0]q;
  input [7:0]data;
  input parityselect;
  input [0:0]E;
  input [8:0]D;
  input clk;
  input load;
  input shift;

  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire clk;
  wire [7:0]data;
  wire load;
  wire parityselect;
  wire [0:0]q;
  wire \q[9]_i_1_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire \q[9]_i_3_n_0 ;
  wire shift;

  LUT6 #(
    .INIT(64'hFFFFFFFFC33CAAAA)) 
    \q[9]_i_1 
       (.I0(q),
        .I1(\q[9]_i_2_n_0 ),
        .I2(data[1]),
        .I3(\q[9]_i_3_n_0 ),
        .I4(load),
        .I5(shift),
        .O(\q[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q[9]_i_2 
       (.I0(data[5]),
        .I1(data[2]),
        .I2(data[6]),
        .I3(parityselect),
        .I4(data[4]),
        .I5(data[7]),
        .O(\q[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[9]_i_3 
       (.I0(data[3]),
        .I1(data[0]),
        .O(\q[9]_i_3_n_0 ));
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\q[9]_i_1_n_0 ),
        .Q(q),
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
