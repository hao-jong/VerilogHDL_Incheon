// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 16 10:23:33 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA_project/zynq_axi_7seg/zynq_axi_7seg.gen/sources_1/bd/zynq_axi_7seg_bd/ip/zynq_axi_7seg_bd_my_display_0_1/zynq_axi_7seg_bd_my_display_0_1_stub.v
// Design      : zynq_axi_7seg_bd_my_display_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_display,Vivado 2024.1" *)
module zynq_axi_7seg_bd_my_display_0_1(clk, rst, tick, bin_num, AN, CA)
/* synthesis syn_black_box black_box_pad_pin="rst,tick,bin_num[7:0],AN[6:0],CA" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input tick;
  input [7:0]bin_num;
  output [6:0]AN;
  output CA;
endmodule
