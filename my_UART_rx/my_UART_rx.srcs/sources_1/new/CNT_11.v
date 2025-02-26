`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 12:16:58
// Design Name: 
// Module Name: CNT_11
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


module CNT_11(
input clk,
input rst,
input CNT_11_rst,
input CNT_11_up,
output reg [3:0] CNT_11    
    );
    
always @(posedge clk or posedge rst)
    begin
        if(rst || CNT_11_rst)
            CNT_11 <= 0;
        else if (CNT_11 == 10)
            CNT_11 <= CNT_11;
        else if (CNT_11_up)
            CNT_11 <= CNT_11 +1;
        else
            CNT_11 <= CNT_11; 
    end
endmodule