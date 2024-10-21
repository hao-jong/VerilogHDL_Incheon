`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:28:10
// Design Name: 
// Module Name: my_shift_register_tb
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


module my_shift_register_tb;

reg RST,CLK;
reg [7:0] SEED;
wire data_out;

initial
    begin
        RST = 1;
        #100
        SEED = 8'b1010_1100;
        #100
        RST = 0;
    end
    
initial
    begin
        CLK <= 0;
        forever #5 CLK <= ~CLK;
    end        
    
my_shift_register MSR_0 (RST,CLK,SEED,data_out);
    
endmodule
