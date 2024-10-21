`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 14:45:48
// Design Name: 
// Module Name: my_module
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


module my_module(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    output OUT_AND,
    output OUT_OR,
//    output OUT_XOR,
    output OUT_NOT
    );
assign OUT_AND = A&&B;
assign OUT_OR = A || C;
//assign OUT_XOR = A ^ B;
assign OUT_NOT = !B;

endmodule
