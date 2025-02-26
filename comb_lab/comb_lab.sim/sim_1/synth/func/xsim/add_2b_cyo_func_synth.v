// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 09:33:57 2025
// Host        : COMSYS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/FPGA_project/comb_lab/comb_lab.sim/sim_1/synth/func/xsim/add_2b_cyo_func_synth.v
// Design      : add_2b_cyo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module add_2b_cyo
   (a,
    b,
    y,
    cro);
  input [7:0]a;
  input [7:0]b;
  output [7:0]y;
  output cro;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire cro;
  wire cro_OBUF;
  wire [7:0]y;
  wire [7:0]y_OBUF;
  wire \y_OBUF[3]_inst_i_1_n_0 ;
  wire \y_OBUF[3]_inst_i_1_n_1 ;
  wire \y_OBUF[3]_inst_i_1_n_2 ;
  wire \y_OBUF[3]_inst_i_1_n_3 ;
  wire \y_OBUF[3]_inst_i_2_n_0 ;
  wire \y_OBUF[3]_inst_i_3_n_0 ;
  wire \y_OBUF[3]_inst_i_4_n_0 ;
  wire \y_OBUF[3]_inst_i_5_n_0 ;
  wire \y_OBUF[7]_inst_i_1_n_0 ;
  wire \y_OBUF[7]_inst_i_1_n_1 ;
  wire \y_OBUF[7]_inst_i_1_n_2 ;
  wire \y_OBUF[7]_inst_i_1_n_3 ;
  wire \y_OBUF[7]_inst_i_2_n_0 ;
  wire \y_OBUF[7]_inst_i_3_n_0 ;
  wire \y_OBUF[7]_inst_i_4_n_0 ;
  wire \y_OBUF[7]_inst_i_5_n_0 ;
  wire [3:1]NLW_cro_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_cro_OBUF_inst_i_1_O_UNCONNECTED;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  OBUF cro_OBUF_inst
       (.I(cro_OBUF),
        .O(cro));
  CARRY4 cro_OBUF_inst_i_1
       (.CI(\y_OBUF[7]_inst_i_1_n_0 ),
        .CO({NLW_cro_OBUF_inst_i_1_CO_UNCONNECTED[3:1],cro_OBUF}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cro_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  CARRY4 \y_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\y_OBUF[3]_inst_i_1_n_0 ,\y_OBUF[3]_inst_i_1_n_1 ,\y_OBUF[3]_inst_i_1_n_2 ,\y_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[3:0]),
        .O(y_OBUF[3:0]),
        .S({\y_OBUF[3]_inst_i_2_n_0 ,\y_OBUF[3]_inst_i_3_n_0 ,\y_OBUF[3]_inst_i_4_n_0 ,\y_OBUF[3]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .O(\y_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[3]_inst_i_3 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .O(\y_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[3]_inst_i_4 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .O(\y_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[3]_inst_i_5 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(\y_OBUF[3]_inst_i_5_n_0 ));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[7]),
        .O(y[7]));
  CARRY4 \y_OBUF[7]_inst_i_1 
       (.CI(\y_OBUF[3]_inst_i_1_n_0 ),
        .CO({\y_OBUF[7]_inst_i_1_n_0 ,\y_OBUF[7]_inst_i_1_n_1 ,\y_OBUF[7]_inst_i_1_n_2 ,\y_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[7:4]),
        .O(y_OBUF[7:4]),
        .S({\y_OBUF[7]_inst_i_2_n_0 ,\y_OBUF[7]_inst_i_3_n_0 ,\y_OBUF[7]_inst_i_4_n_0 ,\y_OBUF[7]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[7]_inst_i_2 
       (.I0(a_IBUF[7]),
        .I1(b_IBUF[7]),
        .O(\y_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[7]_inst_i_3 
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .O(\y_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[7]_inst_i_4 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .O(\y_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_OBUF[7]_inst_i_5 
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .O(\y_OBUF[7]_inst_i_5_n_0 ));
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
