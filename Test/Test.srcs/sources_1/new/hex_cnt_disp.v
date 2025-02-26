`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 12:15:46
// Design Name: 
// Module Name: hex_cnt_disp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hex_cnt_disp(
input clk,
input rst_n,
input tick,
input disp_md,
output [6:0] seg0,
output [6:0] seg1
    );

wire [6:0] cnt_10ms;
wire [5:0] cnt_1s;
wire [5:0] cnt_1m;

wire [6:0] hex2bcd0_in;
wire [6:0] hex2bcd1_in;

wire [3:0] low_digit0;
wire [3:0] high_digit0;
wire [3:0] low_digit1;
wire [3:0] high_digit1;

wire [3:0] bcd2seg0_in;
wire [3:0] bcd2seg1_in;

hex_cnt_test hex_cnt_test_0(
.clk(clk),
.rst_n(rst_n),
.tick(tick),
.cnt_10ms(cnt_10ms),
.cnt_1s(cnt_1s),
.cnt_1m(cnt_1m)
    );
    
// 1s(1) & 10ms(0) CNT MUX0
assign hex2bcd0_in = disp_md ? {1'b0,cnt_1s} : cnt_10ms;    
// 1m(1) & 1s (0) CNT MUX1
assign hex2bcd1_in = disp_md ? {1'b0,cnt_1m} : {1'b0,cnt_1s};    

hex2bcd hex2bcd_0(
.hex2bcd_in(hex2bcd0_in),
.high_digit(high_digit0),
.low_digit(low_digit0)
    );
    
hex2bcd hex2bcd_1(
.hex2bcd_in(hex2bcd1_in),
.high_digit(high_digit1),
.low_digit(low_digit1)
    );

//MUX tick 0 1s&10ms
assign bcd2seg0_in = tick ? high_digit0 : low_digit0 ;      
//MUX tick 1 1m&1s
assign bcd2seg1_in = tick ? high_digit1 : low_digit1 ;                     

bcd2seg bcd2seg0(
.SW(bcd2seg0_in),
.AN(seg0)
);

bcd2seg bcd2seg1(
.SW(bcd2seg1_in),
.AN(seg1)
);
 
endmodule
