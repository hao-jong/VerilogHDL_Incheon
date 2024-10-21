`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 11:30:19
// Design Name: 
// Module Name: my_1seccnt_tb
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


module my_1seccnt_tb;

reg RST,CLK;
wire LED;

initial
    begin
        RST = 1;
        #100 
        RST = 0;
        
    end


initial
    begin
        CLK <= 0;
        forever #5 CLK = ~CLK;
    end

my_1seccnt #(.CLK_FREQ(10)) m1s_0  (RST,CLK,LED);

endmodule
