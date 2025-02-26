`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 12:36:11
// Design Name: 
// Module Name: reg9
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


module reg9(
input clk,
input rst,
input RXD,
input sample,
input [3:0] CNT_11,
output reg [8:0] reg_out
    );

always @(posedge clk or posedge rst)
    if(rst)
        reg_out <= 0;
    else if (sample)
        case (CNT_11)
         0 : ;
         1 : reg_out[0] = RXD;
         2 : reg_out[1] = RXD;
         3 : reg_out[2] = RXD;
         4 : reg_out[3] = RXD;
         5 : reg_out[4] = RXD;
         6 : reg_out[5] = RXD;
         7 : reg_out[6] = RXD;
         8 : reg_out[7] = RXD;
         9 : reg_out[8] = RXD;
         10: ;
        endcase
     else 
        reg_out <= reg_out;          

endmodule
