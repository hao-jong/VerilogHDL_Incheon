`timescale 1ns / 1ps

module UART_RX(
input rst,
input clk,
input RXD,

//output [7:0] RX_DATA, //잠깐 주석
output [6:0] AN,
output CA,
output parity_error
    );
wire Rx_rdy;
wire tick;
wire [7:0] RX_DATA; // 잠깐 사용

UART_RX_ctl UART_RX_ctl_0(.clk(clk),.rst(rst),.RXD(RXD),.data_out(RX_DATA),.Rx_rdy(Rx_rdy),.parity_error(parity_error));
my_display my_display_0(.clk(clk),.rst(rst),.tick(tick),.Rx_rdy(Rx_rdy),.bin_num(RX_DATA),.AN(AN),.CA(CA));
my_tick_gen my_tick_gen_0(.clk(clk),.rst(rst),.tick(tick));
endmodule
