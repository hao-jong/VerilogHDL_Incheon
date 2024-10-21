`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:43:38
// Design Name: 
// Module Name: count3
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


module count3(input clk, rst, output[2:0] q);
    wire n1, n2;
assign n1 = (q[0]^q[1]);
assign n2 = (q[2]^q[0]&q[1]);
my_DFF dff0(~q[0], clk, rst, q[0]);
my_DFF dff1(n1, clk, rst, q[1]);
my_DFF dff2(n2, clk, rst, q[2]);

endmodule
