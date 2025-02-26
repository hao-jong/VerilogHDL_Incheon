`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 12:17:09
// Design Name: 
// Module Name: CNT_31
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


module CNT_542(
input clk,
input rst,
input CNT_542_rst,
input CNT_542_up,
output reg [10:0] CNT_542    
    );
    
always @(posedge clk or posedge rst)
    begin
        if(rst || CNT_542_rst)
            CNT_542 <= 0;
        else if (CNT_542 == 1085)
            CNT_542 <= CNT_542;  
        else if (CNT_542_up)
            CNT_542 <= CNT_542 +1;
        else
            CNT_542 <= CNT_542; 
    end
endmodule
