`timescale 1ns / 1ps

module cnt_test(
input clk,
input rst_n,
output reg [3:0] value
    );

always@(posedge clk or negedge rst_n)   
    begin
    if(!rst_n)
        value <= 4'b0000;
    else if((value >= 0) && (value <15))
        value <= value +1;
    else
        value <= 4'b0000;        
    end   
endmodule