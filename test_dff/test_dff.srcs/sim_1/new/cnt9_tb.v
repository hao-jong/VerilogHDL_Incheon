`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 16:36:06
// Design Name: 
// Module Name: cnt9_tb
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


module cnt9_tb;

reg clk;
reg rst;
wire [2:0] num;

initial
begin
clk <= 1'b0;
forever 
    #4 clk <= ~clk;
end

initial
begin
rst <= 0;
#50
rst <= 1;

end


cnt9 cnt9_0(
.clk(clk),
.rst(rst),
.num(num)
    );
endmodule
