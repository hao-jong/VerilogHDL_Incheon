`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:41:11
// Design Name: 
// Module Name: my_DFF
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


module my_DFF(
    input d,
    input clk,
    input rst,
    output reg q
    );
    always @(posedge clk)
    if(rst)
        q <= 1'b0;
    else
        q <= d;
    
endmodule //dff
