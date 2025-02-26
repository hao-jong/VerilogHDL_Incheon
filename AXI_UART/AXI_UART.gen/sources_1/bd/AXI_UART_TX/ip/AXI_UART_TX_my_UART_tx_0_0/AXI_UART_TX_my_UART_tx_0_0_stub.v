// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Jan  6 12:15:55 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA_project/AXI_UART/AXI_UART.gen/sources_1/bd/AXI_UART_TX/ip/AXI_UART_TX_my_UART_tx_0_0/AXI_UART_TX_my_UART_tx_0_0_stub.v
// Design      : AXI_UART_TX_my_UART_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_UART_tx,Vivado 2024.1" *)
module AXI_UART_TX_my_UART_tx_0_0(clk, rst, send, parityselect, data, busy, sout)
/* synthesis syn_black_box black_box_pad_pin="rst,send,parityselect,data[7:0],busy,sout" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input send;
  input parityselect;
  input [7:0]data;
  output busy;
  output sout;
endmodule
