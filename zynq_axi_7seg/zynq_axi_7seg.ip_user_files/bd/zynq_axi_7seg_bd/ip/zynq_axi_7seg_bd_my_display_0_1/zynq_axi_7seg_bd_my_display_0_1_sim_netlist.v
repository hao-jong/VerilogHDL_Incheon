// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 16 10:23:33 2024
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_project/zynq_axi_7seg/zynq_axi_7seg.gen/sources_1/bd/zynq_axi_7seg_bd/ip/zynq_axi_7seg_bd_my_display_0_1/zynq_axi_7seg_bd_my_display_0_1_sim_netlist.v
// Design      : zynq_axi_7seg_bd_my_display_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_axi_7seg_bd_my_display_0_1,my_display,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_display,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module zynq_axi_7seg_bd_my_display_0_1
   (clk,
    rst,
    tick,
    bin_num,
    AN,
    CA);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zynq_axi_7seg_bd_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input tick;
  input [7:0]bin_num;
  output [6:0]AN;
  output CA;

  wire [6:0]AN;
  wire CA;
  wire [7:0]bin_num;
  wire clk;
  wire rst;
  wire tick;

  zynq_axi_7seg_bd_my_display_0_1_my_display inst
       (.AN(AN),
        .CA_reg_0(CA),
        .bin_num(bin_num),
        .clk(clk),
        .rst(rst),
        .tick(tick));
endmodule

(* ORIG_REF_NAME = "my_display" *) 
module zynq_axi_7seg_bd_my_display_0_1_my_display
   (AN,
    CA_reg_0,
    bin_num,
    tick,
    clk,
    rst);
  output [6:0]AN;
  output CA_reg_0;
  input [7:0]bin_num;
  input tick;
  input clk;
  input rst;

  wire [6:0]AN;
  wire CA_i_1_n_0;
  wire CA_reg_0;
  wire [7:0]bin_num;
  wire clk;
  wire [3:0]digit__3;
  wire rst;
  wire tick;

  LUT6 #(
    .INIT(64'hDDD666D6FFFBBBFB)) 
    \AN[0]_INST_0 
       (.I0(digit__3[3]),
        .I1(digit__3[2]),
        .I2(bin_num[1]),
        .I3(CA_reg_0),
        .I4(bin_num[5]),
        .I5(digit__3[0]),
        .O(AN[0]));
  LUT6 #(
    .INIT(64'h56A6015157F7FFFF)) 
    \AN[1]_INST_0 
       (.I0(digit__3[3]),
        .I1(bin_num[1]),
        .I2(CA_reg_0),
        .I3(bin_num[5]),
        .I4(digit__3[0]),
        .I5(digit__3[2]),
        .O(AN[1]));
  LUT6 #(
    .INIT(64'h777FFF7F66677767)) 
    \AN[2]_INST_0 
       (.I0(digit__3[3]),
        .I1(digit__3[2]),
        .I2(bin_num[1]),
        .I3(CA_reg_0),
        .I4(bin_num[5]),
        .I5(digit__3[0]),
        .O(AN[2]));
  LUT6 #(
    .INIT(64'h333EEE3EDDDBBBDB)) 
    \AN[3]_INST_0 
       (.I0(digit__3[3]),
        .I1(digit__3[2]),
        .I2(bin_num[1]),
        .I3(CA_reg_0),
        .I4(bin_num[5]),
        .I5(digit__3[0]),
        .O(AN[3]));
  LUT6 #(
    .INIT(64'hAAAAA808FEAEFFFF)) 
    \AN[4]_INST_0 
       (.I0(digit__3[3]),
        .I1(bin_num[1]),
        .I2(CA_reg_0),
        .I3(bin_num[5]),
        .I4(digit__3[2]),
        .I5(digit__3[0]),
        .O(AN[4]));
  LUT6 #(
    .INIT(64'hEEE666E6EEEFFFEF)) 
    \AN[5]_INST_0 
       (.I0(digit__3[3]),
        .I1(digit__3[2]),
        .I2(bin_num[1]),
        .I3(CA_reg_0),
        .I4(bin_num[5]),
        .I5(digit__3[0]),
        .O(AN[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AN[5]_INST_0_i_1 
       (.I0(bin_num[4]),
        .I1(CA_reg_0),
        .I2(bin_num[0]),
        .O(digit__3[0]));
  LUT6 #(
    .INIT(64'hABFBFFFFFD5DAAAA)) 
    \AN[6]_INST_0 
       (.I0(digit__3[3]),
        .I1(bin_num[0]),
        .I2(CA_reg_0),
        .I3(bin_num[4]),
        .I4(digit__3[2]),
        .I5(digit__3[1]),
        .O(AN[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AN[6]_INST_0_i_1 
       (.I0(bin_num[7]),
        .I1(CA_reg_0),
        .I2(bin_num[3]),
        .O(digit__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AN[6]_INST_0_i_2 
       (.I0(bin_num[6]),
        .I1(CA_reg_0),
        .I2(bin_num[2]),
        .O(digit__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AN[6]_INST_0_i_3 
       (.I0(bin_num[5]),
        .I1(CA_reg_0),
        .I2(bin_num[1]),
        .O(digit__3[1]));
  LUT2 #(
    .INIT(4'h6)) 
    CA_i_1
       (.I0(tick),
        .I1(CA_reg_0),
        .O(CA_i_1_n_0));
  FDCE CA_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(CA_i_1_n_0),
        .Q(CA_reg_0));
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
