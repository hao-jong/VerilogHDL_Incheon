`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 09:38:22
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb;

reg clk;
reg [7:0] D_in;
reg [6:0] i;
reg wen;
reg [6:0] addr;
wire [7:0] D_out;

RAM RAM_0(
.clk(clk),
.addr(addr),
.D_in(D_in),
.wen(wen),
.D_out(D_out)
    );

initial
    begin
        # 100 wen = 0;
        for (i = 0; i < 10; i= i+1)
            begin
                addr = i;
                #10 D_in = i+33;
            end 
    
        # 100 wen = 1;
        for (i = 0; i < 10; i= i+1)
            begin
                addr = i;
                #10 D_in = i+33;
            end 
             
        # 100 wen = 0;
        for (i = 0; i < 10; i= i+1)
            begin
                addr = i;
                #10 D_in = i+33;
            end

    end
    


initial
    begin
        clk <= 0;
        forever #5 clk <= ~ clk;
    end    
endmodule
