// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Jan  7 11:48:04 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA_project/AXI_UART_RX/AXI_UART_RX.gen/sources_1/bd/UART_RX_BD/ip/UART_RX_BD_UART_RX_ctl_0_0/UART_RX_BD_UART_RX_ctl_0_0_stub.v
// Design      : UART_RX_BD_UART_RX_ctl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_RX_ctl,Vivado 2024.1" *)
module UART_RX_BD_UART_RX_ctl_0_0(clk, rst, RXD, data_out, parity_error)
/* synthesis syn_black_box black_box_pad_pin="rst,RXD,data_out[7:0],parity_error" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input RXD;
  output [7:0]data_out;
  output parity_error;
endmodule
