`timescale 1ns / 1ps
`define SIMULATION
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 10:44:17
// Design Name: 
// Module Name: my_stopwatch_tb
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


module my_stopwatch_tb;
my_stopwatch my_stopwatch_0(.clk(clk),.clr(clr),.rst(rst),.start(start),.AN(AN),.CA(CA));

reg clk;
reg clr;
reg rst;
reg start;

initial
begin
clr =0;
rst = 1;
start = 0;
# 50 rst = 0;
#500 start = 1;
#500 start = 0;
#500 start = 1;
#500 clr = 1;
#50 clr = 0;
#500 clr = 1;
#50 start = 1;
#10000 clr = 1;
end



initial
begin
clk = 0;
forever clk  = #5 ~clk;
end

endmodule
