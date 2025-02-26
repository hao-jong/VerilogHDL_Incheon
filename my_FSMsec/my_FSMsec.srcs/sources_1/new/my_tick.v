`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 09:56:00
// Design Name: 
// Module Name: my_tick
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


module my_tick(
input clk,
input rst,
output reg tick
    );

reg [23:0] count_val;

always @ (posedge clk)
    begin
    if (rst == 1)
        tick <= 0;
    else
    begin    
            count_val <= count_val +1;
            if (count_val >=12500000)
                count_val = 0;
                tick = ~tick;
        end
    end


    
endmodule
