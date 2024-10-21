`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 11:52:40
// Design Name: 
// Module Name: my_cnt2ssd
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


module my_cnt2ssd(
input clk,rst,dir,
output [7:0] LED
    );


wire [7:0] bus_8;
wire [3:0] bus_4;


my_cn32 my_cn32_1 (
.clk(clk),
.rst(rst),
.dir(dir),
.a(bus_8)
);
assign bus_4 = bus_8[3:0];

my_sw2LED sw2LED_1(
    .SW(bus_4),
    .AN(LED[6:0]),
    .CN(LED[7])
);

endmodule
