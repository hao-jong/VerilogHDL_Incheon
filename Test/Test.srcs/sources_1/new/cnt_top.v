`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 09:26:45
// Design Name: 
// Module Name: cnt_top
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


module cnt_top(
input clk,
input rst,
input disp_md,
output [6:0] seg0,
output CN0,
output [6:0] seg1,
output CN1
    );

parameter CNT_VAL = 1250000;

wire rst_n;
reg tick;
assign rst_n = ~rst;
assign CN0 = tick;
assign CN1 = tick;
reg [20:0] cnt_tick;

always @ (posedge clk or posedge rst)
begin
    if(rst)
    begin
        cnt_tick <= 21'd0;
        tick <= 1'b0;
    end
    else if ((cnt_tick >= 0) && (cnt_tick < (CNT_VAL/2 - 1)))
    begin
        cnt_tick <= cnt_tick+1;
        tick <= 1'b0;
    end
    else if ((cnt_tick >= (CNT_VAL/2 - 1)) && (cnt_tick <(CNT_VAL - 1)))
    begin
        cnt_tick <= cnt_tick+1;
        tick <= 1'b1; 
    end
    else
    begin
        cnt_tick <= 21'd0;
        tick <= 1'b1;
    end
end

hex_cnt_disp hex_cnt_disp_0(
.clk(clk),
.rst_n(rst_n),
.tick(tick),
.disp_md(disp_md),
.seg0(seg0),
.seg1(seg1)
    );    
    
endmodule
