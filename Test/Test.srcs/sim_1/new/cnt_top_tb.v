`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 09:56:17
// Design Name: 
// Module Name: cnt_top_tb
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


module cnt_top_tb;

reg clk;
reg rst;
reg disp_md;
wire [6:0] seg0;
wire CN0;
wire [6:0] seg1;
wire CN1;

cnt_top cnt_top_0(
.clk(clk),
.rst(rst),
.disp_md(disp_md),
.seg0(seg0),
.CN0(CN0),
.seg1(seg1),
.CN1(CN1)
    );
        
initial
begin
clk <= 0;
forever
#4 clk <= ~clk;
end

initial
begin
rst <= 1;
disp_md <= 0;
#100 rst <= 0;
end   
endmodule
