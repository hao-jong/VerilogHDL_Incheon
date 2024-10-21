`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 16:02:25
// Design Name: 
// Module Name: my_cn32
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


module my_cn32(
input clk,
input rst,
input dir,
output reg [7:0] a
    );

always @ (posedge clk)
begin
    if(rst == 1)
    a <= 8'b0;
    else
        begin
            if (dir == 1)
                a <= a + 1;
            else if (dir == 0)
                a <= a - 1;
            else
                a <= a;
        end
    
end
endmodule
