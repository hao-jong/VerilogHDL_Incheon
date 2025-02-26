`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 16:34:02
// Design Name: 
// Module Name: cnt9
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


module cnt9(
input clk,
input rst,
output reg [2:0] num
    );
    
always@ (posedge clk or negedge rst)
begin
if (!rst)
    num <= 0;
else
    num <= num + 1;     
end    
    
endmodule
