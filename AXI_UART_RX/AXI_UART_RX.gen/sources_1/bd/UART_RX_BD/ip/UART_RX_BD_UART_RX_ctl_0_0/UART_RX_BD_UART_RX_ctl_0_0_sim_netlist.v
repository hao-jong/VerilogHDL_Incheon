// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Jan  7 11:48:04 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_project/AXI_UART_RX/AXI_UART_RX.gen/sources_1/bd/UART_RX_BD/ip/UART_RX_BD_UART_RX_ctl_0_0/UART_RX_BD_UART_RX_ctl_0_0_sim_netlist.v
// Design      : UART_RX_BD_UART_RX_ctl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_RX_BD_UART_RX_ctl_0_0,UART_RX_ctl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UART_RX_ctl,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module UART_RX_BD_UART_RX_ctl_0_0
   (clk,
    rst,
    RXD,
    data_out,
    parity_error);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN UART_RX_BD_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input RXD;
  output [7:0]data_out;
  output parity_error;

  wire RXD;
  wire clk;
  wire [7:0]data_out;
  wire parity_error;
  wire rst;

  (* KEEP_HIERARCHY = "soft" *) 
  UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl inst
       (.RXD(RXD),
        .clk(clk),
        .data_out(data_out),
        .parity_error(parity_error),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "CNT_11" *) 
module UART_RX_BD_UART_RX_ctl_0_0_CNT_11
   (clk,
    rst,
    CNT_11_rst,
    CNT_11_up,
    CNT_11);
  input clk;
  input rst;
  input CNT_11_rst;
  input CNT_11_up;
  output [3:0]CNT_11;

  wire [3:0]CNT_11;
  wire CNT_11_rst;
  wire CNT_11_up;
  wire clk;
  wire p_0_in;
  wire [3:0]p_1_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004555)) 
    \CNT_11[0]_i_1 
       (.I0(CNT_11[0]),
        .I1(CNT_11[2]),
        .I2(CNT_11[3]),
        .I3(CNT_11[1]),
        .I4(CNT_11_rst),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \CNT_11[1]_i_1 
       (.I0(CNT_11[1]),
        .I1(CNT_11[0]),
        .I2(CNT_11_rst),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h006C)) 
    \CNT_11[2]_i_1 
       (.I0(CNT_11[0]),
        .I1(CNT_11[2]),
        .I2(CNT_11[1]),
        .I3(CNT_11_rst),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAEA)) 
    \CNT_11[3]_i_1 
       (.I0(CNT_11_rst),
        .I1(CNT_11[1]),
        .I2(CNT_11[3]),
        .I3(CNT_11[0]),
        .I4(CNT_11[2]),
        .I5(CNT_11_up),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00006CCC)) 
    \CNT_11[3]_i_2 
       (.I0(CNT_11[1]),
        .I1(CNT_11[3]),
        .I2(CNT_11[0]),
        .I3(CNT_11[2]),
        .I4(CNT_11_rst),
        .O(p_1_in[3]));
  FDCE \CNT_11_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(CNT_11[0]));
  FDCE \CNT_11_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(CNT_11[1]));
  FDCE \CNT_11_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(CNT_11[2]));
  FDCE \CNT_11_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(CNT_11[3]));
endmodule

(* ORIG_REF_NAME = "CNT_542" *) 
module UART_RX_BD_UART_RX_ctl_0_0_CNT_542
   (Q,
    clk,
    rst,
    CNT_542_rst,
    CNT_542_up);
  output [10:0]Q;
  input clk;
  input rst;
  input CNT_542_rst;
  input CNT_542_up;

  wire \CNT_542[10]_i_1_n_0 ;
  wire \CNT_542[10]_i_3_n_0 ;
  wire \CNT_542[10]_i_4_n_0 ;
  wire \CNT_542[10]_i_5_n_0 ;
  wire \CNT_542[5]_i_2_n_0 ;
  wire \CNT_542[9]_i_2_n_0 ;
  wire CNT_542_rst;
  wire CNT_542_up;
  wire [10:0]Q;
  wire clk;
  wire [10:0]p_1_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0507)) 
    \CNT_542[0]_i_1 
       (.I0(Q[0]),
        .I1(\CNT_542[10]_i_3_n_0 ),
        .I2(CNT_542_rst),
        .I3(Q[1]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hEEEEEFEE)) 
    \CNT_542[10]_i_1 
       (.I0(CNT_542_rst),
        .I1(CNT_542_up),
        .I2(\CNT_542[10]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\CNT_542[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00D2)) 
    \CNT_542[10]_i_2 
       (.I0(Q[9]),
        .I1(\CNT_542[10]_i_4_n_0 ),
        .I2(Q[10]),
        .I3(CNT_542_rst),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \CNT_542[10]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[6]),
        .I5(\CNT_542[10]_i_5_n_0 ),
        .O(\CNT_542[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \CNT_542[10]_i_4 
       (.I0(Q[7]),
        .I1(\CNT_542[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .O(\CNT_542[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \CNT_542[10]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .O(\CNT_542[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \CNT_542[1]_i_1 
       (.I0(\CNT_542[10]_i_3_n_0 ),
        .I1(CNT_542_rst),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \CNT_542[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(CNT_542_rst),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \CNT_542[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(CNT_542_rst),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \CNT_542[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(CNT_542_rst),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h00000000FF7F0080)) 
    \CNT_542[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\CNT_542[5]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(CNT_542_rst),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \CNT_542[5]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\CNT_542[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \CNT_542[6]_i_1 
       (.I0(\CNT_542[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(CNT_542_rst),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \CNT_542[7]_i_1 
       (.I0(\CNT_542[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(CNT_542_rst),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \CNT_542[8]_i_1 
       (.I0(Q[6]),
        .I1(\CNT_542[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(CNT_542_rst),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \CNT_542[9]_i_1 
       (.I0(Q[7]),
        .I1(\CNT_542[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .I5(CNT_542_rst),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \CNT_542[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\CNT_542[9]_i_2_n_0 ));
  FDCE \CNT_542_reg[0] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDCE \CNT_542_reg[10] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[10]),
        .Q(Q[10]));
  FDCE \CNT_542_reg[1] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE \CNT_542_reg[2] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDCE \CNT_542_reg[3] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(Q[3]));
  FDCE \CNT_542_reg[4] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[4]),
        .Q(Q[4]));
  FDCE \CNT_542_reg[5] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[5]),
        .Q(Q[5]));
  FDCE \CNT_542_reg[6] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[6]),
        .Q(Q[6]));
  FDCE \CNT_542_reg[7] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[7]),
        .Q(Q[7]));
  FDCE \CNT_542_reg[8] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[8]),
        .Q(Q[8]));
  FDCE \CNT_542_reg[9] 
       (.C(clk),
        .CE(\CNT_542[10]_i_1_n_0 ),
        .CLR(rst),
        .D(p_1_in[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "UART_RX_ctl" *) (* keep_hierarchy = "soft" *) 
module UART_RX_BD_UART_RX_ctl_0_0_UART_RX_ctl
   (clk,
    rst,
    RXD,
    data_out,
    parity_error);
  input clk;
  input rst;
  input RXD;
  (* mark_debug = "true" *) output [7:0]data_out;
  output parity_error;

  (* MARK_DEBUG *) wire [3:0]CNT_11;
  wire CNT_11_rst;
  wire CNT_11_up;
  wire [10:0]CNT_542;
  wire CNT_542_rst;
  wire CNT_542_up;
  wire RXD;
  wire clk;
  (* MARK_DEBUG *) wire [7:0]data_out;
  wire parity_error;
  wire parity_error_INST_0_i_1_n_0;
  (* MARK_DEBUG *) wire [8:8]reg_out;
  wire rst;
  wire sample;

  (* KEEP_HIERARCHY = "soft" *) 
  UART_RX_BD_UART_RX_ctl_0_0_CNT_11 CNT_11_0
       (.CNT_11(CNT_11),
        .CNT_11_rst(CNT_11_rst),
        .CNT_11_up(CNT_11_up),
        .clk(clk),
        .rst(rst));
  UART_RX_BD_UART_RX_ctl_0_0_CNT_542 CNT_542_0
       (.CNT_542_rst(CNT_542_rst),
        .CNT_542_up(CNT_542_up),
        .Q(CNT_542),
        .clk(clk),
        .rst(rst));
  (* COUNTER_542_RST = "2'b11" *) 
  (* IDLE = "2'b00" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* READY = "2'b01" *) 
  (* SAMPLE = "2'b10" *) 
  UART_RX_BD_UART_RX_ctl_0_0_my_fsm my_fsm_0
       (.CNT_11(CNT_11),
        .CNT_11_rst(CNT_11_rst),
        .CNT_11_up(CNT_11_up),
        .CNT_542(CNT_542),
        .CNT_542_rst(CNT_542_rst),
        .CNT_542_up(CNT_542_up),
        .RXD(RXD),
        .clk(clk),
        .rst(rst),
        .sample(sample));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    parity_error_INST_0
       (.I0(parity_error_INST_0_i_1_n_0),
        .I1(data_out[6]),
        .I2(data_out[7]),
        .I3(data_out[4]),
        .I4(data_out[5]),
        .I5(reg_out),
        .O(parity_error));
  LUT4 #(
    .INIT(16'h6996)) 
    parity_error_INST_0_i_1
       (.I0(data_out[2]),
        .I1(data_out[3]),
        .I2(data_out[0]),
        .I3(data_out[1]),
        .O(parity_error_INST_0_i_1_n_0));
  (* KEEP_HIERARCHY = "soft" *) 
  UART_RX_BD_UART_RX_ctl_0_0_reg9 reg9_0
       (.CNT_11(CNT_11),
        .RXD(RXD),
        .clk(clk),
        .reg_out({reg_out,data_out}),
        .rst(rst),
        .sample(sample));
endmodule

(* COUNTER_542_RST = "2'b11" *) (* IDLE = "2'b00" *) (* ORIG_REF_NAME = "my_fsm" *) 
(* READY = "2'b01" *) (* SAMPLE = "2'b10" *) 
module UART_RX_BD_UART_RX_ctl_0_0_my_fsm
   (clk,
    rst,
    RXD,
    CNT_542,
    CNT_11,
    CNT_542_rst,
    CNT_542_up,
    CNT_11_rst,
    CNT_11_up,
    sample);
  input clk;
  input rst;
  input RXD;
  input [10:0]CNT_542;
  input [3:0]CNT_11;
  output CNT_542_rst;
  output CNT_542_up;
  output CNT_11_rst;
  output CNT_11_up;
  output sample;

  wire [3:0]CNT_11;
  wire CNT_11_rst;
  wire CNT_11_rst_i_1_n_0;
  wire CNT_11_up_i_1_n_0;
  wire [10:0]CNT_542;
  wire CNT_542_rst;
  wire CNT_542_rst_i_2_n_0;
  wire CNT_542_up;
  wire CNT_542_up_i_1_n_0;
  wire \FSM_sequential_curr_state[0]_i_1_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_1_n_0 ;
  wire \FSM_sequential_curr_state_reg_n_0_[0] ;
  wire \FSM_sequential_curr_state_reg_n_0_[1] ;
  wire \FSM_sequential_next_state[0]_i_2_n_0 ;
  wire \FSM_sequential_next_state[0]_i_3_n_0 ;
  wire \FSM_sequential_next_state[0]_i_4_n_0 ;
  wire \FSM_sequential_next_state[0]_i_5_n_0 ;
  wire \FSM_sequential_next_state[0]_i_6_n_0 ;
  wire \FSM_sequential_next_state[1]_i_2_n_0 ;
  wire \FSM_sequential_next_state[1]_i_3_n_0 ;
  wire RXD;
  wire clk;
  wire [1:0]next_state;
  wire [1:0]next_state__0;
  wire p_0_in;
  wire rst;
  wire sample;

  assign CNT_11_up = sample;
  LUT2 #(
    .INIT(4'h1)) 
    CNT_11_rst_i_1
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .O(CNT_11_rst_i_1_n_0));
  FDRE CNT_11_rst_reg
       (.C(clk),
        .CE(p_0_in),
        .D(CNT_11_rst_i_1_n_0),
        .Q(CNT_11_rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CNT_11_up_i_1
       (.I0(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(CNT_11_up_i_1_n_0));
  FDRE CNT_11_up_reg
       (.C(clk),
        .CE(p_0_in),
        .D(CNT_11_up_i_1_n_0),
        .Q(sample),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    CNT_542_rst_i_1
       (.I0(rst),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    CNT_542_rst_i_2
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .O(CNT_542_rst_i_2_n_0));
  FDRE CNT_542_rst_reg
       (.C(clk),
        .CE(p_0_in),
        .D(CNT_542_rst_i_2_n_0),
        .Q(CNT_542_rst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    CNT_542_up_i_1
       (.I0(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(CNT_542_up_i_1_n_0));
  FDRE CNT_542_up_reg
       (.C(clk),
        .CE(p_0_in),
        .D(CNT_542_up_i_1_n_0),
        .Q(CNT_542_up),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(rst),
        .O(\FSM_sequential_curr_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(rst),
        .O(\FSM_sequential_curr_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "COUNTER_542_RST:11,SAMPLE:10,READY:01,IDLE:00" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "COUNTER_542_RST:11,SAMPLE:10,READY:01,IDLE:00" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_curr_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888AAA)) 
    \FSM_sequential_next_state[0]_i_1 
       (.I0(\FSM_sequential_next_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_next_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_next_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_next_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_next_state[0]_i_5_n_0 ),
        .I5(\FSM_sequential_next_state[0]_i_6_n_0 ),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_next_state[0]_i_2 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .I2(RXD),
        .O(\FSM_sequential_next_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_next_state[0]_i_3 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .O(\FSM_sequential_next_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \FSM_sequential_next_state[0]_i_4 
       (.I0(CNT_542[10]),
        .I1(CNT_542[9]),
        .I2(CNT_542[0]),
        .I3(CNT_542[5]),
        .I4(CNT_542[1]),
        .O(\FSM_sequential_next_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_next_state[0]_i_5 
       (.I0(CNT_11[0]),
        .I1(CNT_11[1]),
        .I2(CNT_11[3]),
        .I3(CNT_11[2]),
        .O(\FSM_sequential_next_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \FSM_sequential_next_state[0]_i_6 
       (.I0(CNT_542[9]),
        .I1(CNT_542[10]),
        .I2(CNT_542[5]),
        .I3(CNT_542[1]),
        .I4(CNT_542[0]),
        .O(\FSM_sequential_next_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00088000)) 
    \FSM_sequential_next_state[1]_i_1 
       (.I0(\FSM_sequential_next_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_next_state[1]_i_3_n_0 ),
        .I2(CNT_542[0]),
        .I3(CNT_542[5]),
        .I4(CNT_542[1]),
        .O(next_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02000020)) 
    \FSM_sequential_next_state[1]_i_2 
       (.I0(\FSM_sequential_curr_state_reg_n_0_[0] ),
        .I1(\FSM_sequential_curr_state_reg_n_0_[1] ),
        .I2(CNT_542[9]),
        .I3(CNT_542[10]),
        .I4(CNT_542[5]),
        .O(\FSM_sequential_next_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \FSM_sequential_next_state[1]_i_3 
       (.I0(CNT_542[7]),
        .I1(CNT_542[8]),
        .I2(CNT_542[2]),
        .I3(CNT_542[3]),
        .I4(CNT_542[6]),
        .I5(CNT_542[4]),
        .O(\FSM_sequential_next_state[1]_i_3_n_0 ));
  FDCE \FSM_sequential_next_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[0]),
        .Q(next_state[0]));
  FDCE \FSM_sequential_next_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state__0[1]),
        .Q(next_state[1]));
endmodule

(* ORIG_REF_NAME = "reg9" *) 
module UART_RX_BD_UART_RX_ctl_0_0_reg9
   (clk,
    rst,
    RXD,
    sample,
    CNT_11,
    reg_out);
  input clk;
  input rst;
  input RXD;
  input sample;
  input [3:0]CNT_11;
  output [8:0]reg_out;

  wire [3:0]CNT_11;
  wire RXD;
  wire clk;
  wire [8:0]reg_out;
  wire \reg_out[0]_i_1_n_0 ;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[1]_i_1_n_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[2]_i_1_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[3]_i_1_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[4]_i_1_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[5]_i_1_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[5]_i_3_n_0 ;
  wire \reg_out[6]_i_1_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[7]_i_1_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[8]_i_1_n_0 ;
  wire \reg_out[8]_i_2_n_0 ;
  wire rst;
  wire sample;

  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \reg_out[0]_i_1 
       (.I0(RXD),
        .I1(\reg_out[4]_i_2_n_0 ),
        .I2(sample),
        .I3(CNT_11[0]),
        .I4(\reg_out[0]_i_2_n_0 ),
        .I5(reg_out[0]),
        .O(\reg_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[0]_i_2 
       (.I0(CNT_11[3]),
        .I1(CNT_11[2]),
        .O(\reg_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[1]_i_1 
       (.I0(RXD),
        .I1(\reg_out[1]_i_2_n_0 ),
        .I2(reg_out[1]),
        .O(\reg_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \reg_out[1]_i_2 
       (.I0(CNT_11[0]),
        .I1(rst),
        .I2(sample),
        .I3(CNT_11[1]),
        .I4(CNT_11[3]),
        .I5(CNT_11[2]),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \reg_out[2]_i_1 
       (.I0(RXD),
        .I1(CNT_11[2]),
        .I2(rst),
        .I3(\reg_out[2]_i_2_n_0 ),
        .I4(\reg_out[5]_i_3_n_0 ),
        .I5(reg_out[2]),
        .O(\reg_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[2]_i_2 
       (.I0(CNT_11[1]),
        .I1(CNT_11[0]),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \reg_out[3]_i_1 
       (.I0(RXD),
        .I1(\reg_out[4]_i_2_n_0 ),
        .I2(\reg_out[3]_i_2_n_0 ),
        .I3(CNT_11[3]),
        .I4(CNT_11[0]),
        .I5(reg_out[3]),
        .O(\reg_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[3]_i_2 
       (.I0(sample),
        .I1(CNT_11[2]),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \reg_out[4]_i_1 
       (.I0(RXD),
        .I1(\reg_out[4]_i_2_n_0 ),
        .I2(CNT_11[2]),
        .I3(CNT_11[0]),
        .I4(\reg_out[5]_i_3_n_0 ),
        .I5(reg_out[4]),
        .O(\reg_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[4]_i_2 
       (.I0(rst),
        .I1(CNT_11[1]),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \reg_out[5]_i_1 
       (.I0(RXD),
        .I1(\reg_out[5]_i_2_n_0 ),
        .I2(CNT_11[1]),
        .I3(CNT_11[2]),
        .I4(\reg_out[5]_i_3_n_0 ),
        .I5(reg_out[5]),
        .O(\reg_out[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[5]_i_2 
       (.I0(rst),
        .I1(CNT_11[0]),
        .O(\reg_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_out[5]_i_3 
       (.I0(CNT_11[3]),
        .I1(sample),
        .O(\reg_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[6]_i_1 
       (.I0(RXD),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(reg_out[6]),
        .O(\reg_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \reg_out[6]_i_2 
       (.I0(CNT_11[3]),
        .I1(rst),
        .I2(CNT_11[1]),
        .I3(CNT_11[0]),
        .I4(sample),
        .I5(CNT_11[2]),
        .O(\reg_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[7]_i_1 
       (.I0(RXD),
        .I1(\reg_out[7]_i_2_n_0 ),
        .I2(reg_out[7]),
        .O(\reg_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \reg_out[7]_i_2 
       (.I0(CNT_11[1]),
        .I1(rst),
        .I2(sample),
        .I3(CNT_11[3]),
        .I4(CNT_11[0]),
        .I5(CNT_11[2]),
        .O(\reg_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[8]_i_1 
       (.I0(RXD),
        .I1(\reg_out[8]_i_2_n_0 ),
        .I2(reg_out[8]),
        .O(\reg_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \reg_out[8]_i_2 
       (.I0(CNT_11[2]),
        .I1(rst),
        .I2(CNT_11[3]),
        .I3(CNT_11[0]),
        .I4(CNT_11[1]),
        .I5(sample),
        .O(\reg_out[8]_i_2_n_0 ));
  FDCE \reg_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[0]_i_1_n_0 ),
        .Q(reg_out[0]));
  FDCE \reg_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[1]_i_1_n_0 ),
        .Q(reg_out[1]));
  FDCE \reg_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[2]_i_1_n_0 ),
        .Q(reg_out[2]));
  FDCE \reg_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[3]_i_1_n_0 ),
        .Q(reg_out[3]));
  FDCE \reg_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[4]_i_1_n_0 ),
        .Q(reg_out[4]));
  FDCE \reg_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[5]_i_1_n_0 ),
        .Q(reg_out[5]));
  FDCE \reg_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[6]_i_1_n_0 ),
        .Q(reg_out[6]));
  FDCE \reg_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[7]_i_1_n_0 ),
        .Q(reg_out[7]));
  FDCE \reg_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\reg_out[8]_i_1_n_0 ),
        .Q(reg_out[8]));
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
