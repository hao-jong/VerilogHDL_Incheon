`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 16:33:11
// Design Name: 
// Module Name: my_tick_gen
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


module my_tick_gen(
input clk,
input rst,
output reg tick
    );
reg [20:0] cnt;    
    
always @ (posedge clk)
begin
    if (rst)
        cnt <= 0;
    else if (cnt == 1000000)
    begin
        cnt <= 0;
        tick <= 1;
    end
    else
    begin
        cnt <= cnt+1;
        tick <= 0;
    end
end    
endmodule
