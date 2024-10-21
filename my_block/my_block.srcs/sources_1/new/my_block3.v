`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 14:33:04
// Design Name: 
// Module Name: my_block3
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


module my_block3;
    reg rst, ce, clk, and1;
    reg [7:0] my_bus;

    reg a = 1'b0;
    reg b = 1'b1;
    
    initial
    begin
    fork 
        rst = 1'b1;
        #20 rst = 1'b0;
        ce = 1'b1;
        #5 my_bus = 8'b11110000;
        #10 clk = 1'b1;
        #15 and1 = (a&b);
    join
    end
endmodule
