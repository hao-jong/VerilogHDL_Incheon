`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 09:23:31
// Design Name: 
// Module Name: add_2b_cyo
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


module add_2b_cyo(
input [7:0] a,
input [7:0] b,
output [7:0] y,
output cro
    );
    
wire [8:0] add_o;

assign add_o = a+b;     
assign cro = add_o[8];
assign y =  add_o [7:0];
    
endmodule
