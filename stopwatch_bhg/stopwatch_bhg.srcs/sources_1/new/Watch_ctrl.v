`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 12:42:52
// Design Name: 
// Module Name: Watch_ctrl
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


module Watch_ctrl(
input start_stop,
input clr_dm,
input clk,
output [1:0] watch_state,
output pls_100hz,
output disp_mod
    );

//clr 2'b00
//start 2'b01
//stop  2'b10

//disp mod 0 = sec usec
//disp mod 1 = min sec 


endmodule
