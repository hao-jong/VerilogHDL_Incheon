`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 10:25:49
// Design Name: 
// Module Name: my_p2s
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



module my_p2s(
input CLK,
input RST,
input [7:0] SIN,
input SOF_in,
output reg SOUT,
output reg SOF_out
    );

integer idx;
reg [7:0] mem;
    
always @ (posedge CLK)
    begin
        if (RST == 1)
            begin
                 SOUT <= 0;
                SOF_out <= 1'b0;
            end
        else if (SOF_in == 1 )
            begin
                idx <= 7;
                mem <= SIN;
                SOF_out <= 1'b0;
            end
         else if (idx == 7)
            begin
                SOUT <= mem[7];
                idx <=idx -1;
                SOF_out <= 1'b1;
            end
        else if (idx < 7 && idx >= 0)
            begin
                SOUT <= mem[idx];
                idx <=idx -1;
                SOF_out <= 1'b0; 
            end 
        else //(idx == -1)
            begin
                SOUT <= 0;
                idx <= 7;
                SOF_out <= 1'b0;
            end       
    end   
endmodule
