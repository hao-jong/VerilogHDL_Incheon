`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 12:43:09
// Design Name: 
// Module Name: Watch_cnt
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


module Watch_cnt(
input clk,
input rst,
input watch_state,
input pls_100hz,
input disp_md,
output bcd
    );
    
reg [6:0] cnt;
    
always @ (posedge pls_100hz or negedge rst)
begin
    if(rst)
        cnt <= 7'd0;
end    
    
endmodule
