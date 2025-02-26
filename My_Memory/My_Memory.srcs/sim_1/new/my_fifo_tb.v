`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 10:25:28
// Design Name: 
// Module Name: my_fifo_tb
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


module my_fifo_tb;
reg clk;
reg rst;
reg [7:0] D_in;
reg ren;
reg wen;
wire [7:0] D_out;
integer i;

my_fifo my_fifo_0(
.clk(clk),
.rst(rst),
.D_in(D_in),
.wen(wen),
.ren(ren),

.D_out(D_out)
    );
initial
    begin
        rst <= 0;
        #10 rst <= 1;
        #10 rst <= 0;
          
        # 100 wen = 0;
        for (i = 0; i < 10; i= i+1)
            begin
                ren = 1;
                #10 D_in = i+33;
            end 
        for (i = 0; i < 10; i= i+1)
            begin
                ren = 0;
                #10 D_in = i+88;
            end 

    
        # 100 wen = 1;
        for (i = 0; i < 10; i= i+1)
            begin
                ren = 1;
                #10 D_in = i+33;
            end
        for (i = 0; i < 10; i= i+1)
            begin
                ren = 0;
                #10 D_in = i+88;
            end 
    end

initial
    begin
        clk <= 0;
        forever #5 clk <= ~ clk;
    end    


endmodule
