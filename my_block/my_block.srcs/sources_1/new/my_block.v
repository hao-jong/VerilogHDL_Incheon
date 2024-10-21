`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 14:19:40
// Design Name: 
// Module Name: my_block
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


module my_block(input clk, b,output reg c, a);
    
    always @(posedge clk)
        a <= b;
    always @(posedge clk)
        c <= a;

endmodule
