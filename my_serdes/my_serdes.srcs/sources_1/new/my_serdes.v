`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 11:14:55
// Design Name: 
// Module Name: my_serdes
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


module my_serdes(
input CLK,
input RST,
input [7:0] SIN,
input SOF_in,
output SOF_out,
output [7:0] SOUT
);
        
wire W_S;
wire W_SOF;

my_p2s p2s_0(.CLK(CLK),.RST(RST),.SIN(SIN),.SOF_in(SOF_in),.SOUT(W_S),.SOF_out(W_SOF));
my_s2p s2p_0(.CLK(CLK),.RST(RST),.SIN(W_S),.SOF_in(W_SOF),.SOF_out(SOF_out),.SOUT(SOUT));
endmodule
