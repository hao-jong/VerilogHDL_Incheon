`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 09:31:18
// Design Name: 
// Module Name: RAM
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


module RAM(
input clk,
input [6:0] addr,
input [7:0] D_in,
input wen,
output reg [7:0] D_out
    );

reg [7:0] mem [6:0];

always@ (negedge clk)
    begin
        if(wen)
            begin
                mem [addr] <= D_in;                
            end
    end

always@ (posedge clk)
    begin
        D_out <= mem [addr];
    end    
    
        
endmodule
