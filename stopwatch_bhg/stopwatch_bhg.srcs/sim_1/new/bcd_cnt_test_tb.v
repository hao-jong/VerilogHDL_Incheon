`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 15:13:17
// Design Name: 
// Module Name: bcd_cnt_test_tb
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


module bcd_cnt_test_tb;

reg clk;
reg rst;
reg [1:0] watch_state;
reg pls_100hz;
reg disp_md;
wire bcd;

initial
begin
clk <= 0;
forever
#4 clk <= ~clk;
end

initial
begin
pls_100hz <= 0;
forever
#20 pls_100hz <= ~pls_100hz;
end

initial
begin
watch_state <= 2'b01;
rst <= 1'b0;
#500
rst <= 1'b1;
end

bcd_cnt_test bcd_cnt_test_0(
.clk(clk),
.rst(rst),
.watch_state(watch_state),
.pls_100hz(pls_100hz),
.disp_md(disp_md),
.bcd(bcd)
    );

endmodule
