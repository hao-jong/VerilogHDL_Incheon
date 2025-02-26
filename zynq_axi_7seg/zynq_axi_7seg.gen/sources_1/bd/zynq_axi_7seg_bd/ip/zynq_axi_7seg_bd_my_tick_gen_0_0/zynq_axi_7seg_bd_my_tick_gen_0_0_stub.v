// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 16 10:23:34 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/FPGA_project/zynq_axi_7seg/zynq_axi_7seg.gen/sources_1/bd/zynq_axi_7seg_bd/ip/zynq_axi_7seg_bd_my_tick_gen_0_0/zynq_axi_7seg_bd_my_tick_gen_0_0_stub.v
// Design      : zynq_axi_7seg_bd_my_tick_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_tick_gen,Vivado 2024.1" *)
module zynq_axi_7seg_bd_my_tick_gen_0_0(clk, rst, tick)
/* synthesis syn_black_box black_box_pad_pin="rst,tick" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  output tick;
endmodule
