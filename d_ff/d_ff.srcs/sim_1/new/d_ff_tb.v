`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 15:14:44
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;

reg rst;
reg clk;
reg din;
wire qout;

initial
begin
clk <= 0;
forever clk <= #5 ~clk;
end

initial
begin
rst <= 0;
#8
rst <= 1;
#24
rst <= 0;
#8
rst <= 1;
end

initial
begin
din <= 1;
#16
din <= 0;
#8
din <= 1;
#1000
$finish;
end



//d_ff d_ff_0(.rst(rst),.clk(clk),.din(din),.qout(qout));





endmodule
