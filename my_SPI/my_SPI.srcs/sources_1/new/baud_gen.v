`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/20 11:22:59
// Design Name: 
// Module Name: baud_gen
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


module baud_gen(
input rst,
input clk,
output reg sclk
    );

reg [3:0] cnt;

    
always@(posedge clk)
begin
    if(rst)
        cnt <= 4'b0;
    else
    begin
        if (cnt >= 9)
        begin
            sclk <= 0;
            cnt <= 0;
        end
        else if ((cnt >4) && (cnt <9))
        begin
            sclk <= 0;
            cnt <= cnt +1;
        end
        else if ((cnt >=0) && (cnt <= 4))
            sclk <= 1;
            cnt <= cnt +1;
    end
end 
   
endmodule
