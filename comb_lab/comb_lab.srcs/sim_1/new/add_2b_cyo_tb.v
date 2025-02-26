`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 09:29:45
// Design Name: 
// Module Name: add_2b_cyo_tb
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


module add_2b_cyo_tb;

reg [7:0] a;
reg [7:0] b;
wire [7:0] y;
wire cro;


initial
begin
    a <= 8'd150;
    b <= 8'd150;
end


add_2b_cyo add_2b_cyo_0(
.a(a),.b(b),.y(y),.cro(cro)
    );
endmodule
