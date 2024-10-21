`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:04:49
// Design Name: 
// Module Name: my_cn32_tb
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


module my_cn32_tb();
parameter CLK_PERIOD = 10.0;
reg rst,clk,dir;
wire [7:0] a;

my_cn32 cn32_1(
.clk(clk),
.rst(rst),
.dir(dir),
.a(a)
    );

initial
begin
    rst = 1'b1;
    #(CLK_PERIOD*10);
    rst = 1'b0;
end

initial clk = 1'b0; 
always #(CLK_PERIOD/2) clk = ~clk;

initial 
begin
dir = 1'b0;
#(CLK_PERIOD*20);
dir = 1'b1;
end
endmodule
