`timescale 1ns / 1ps

module UART_RX_ctl(
input clk,
input rst,
input RXD,


(* mark_debug =  "true" *)
output [7:0] data_out,
output parity_error
    );
wire [10:0] CNT_542;
(* mark_debug =  "true" *)
wire [3:0] CNT_11;
wire CNT_542_rst ;
wire CNT_11_rst ;
wire CNT_542_up ;
wire CNT_11_up ;
wire [8:0] reg_out;
assign data_out = reg_out[7:0];

reg9 reg9_0(.clk(clk),.rst(rst),.RXD(RXD),.sample(sample),.CNT_11(CNT_11),.reg_out(reg_out));
CNT_542 CNT_542_0(.clk(clk),.rst(rst),.CNT_542_rst(CNT_542_rst),.CNT_542_up(CNT_542_up),.CNT_542(CNT_542));
CNT_11 CNT_11_0(.clk(clk),.rst(rst),.CNT_11_rst(CNT_11_rst),.CNT_11_up(CNT_11_up),.CNT_11(CNT_11));   
my_fsm my_fsm_0(.clk(clk),.rst(rst),.RXD(RXD),.CNT_542(CNT_542),.CNT_11(CNT_11),.CNT_542_rst(CNT_542_rst),.CNT_542_up(CNT_542_up),.CNT_11_rst(CNT_11_rst),.CNT_11_up(CNT_11_up),.sample(sample));




/*
EVEN parity check
*/
assign parity = ^data_out;
assign parity_error = reg_out[8] ^ parity; 
endmodule
