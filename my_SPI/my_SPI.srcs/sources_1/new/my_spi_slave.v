`timescale 1ns / 1ps

module my_spi_slave(
input rst,
input [1:0] CSN,
input SCLK,
input MOSI,
output SOMI,

output clk,
output WEN,
output ADDR,
output [7:0] DIN,
input [7:0] DOUT
    );
    
reg [31:0] data;
reg [9:0] CNT; 
always @ (negedge sclk)
begin
    
end

always @ (posedge sclk)
begin
if(rst)
CNT <= 0;
else
begin
    if()
    CNT <= CNT +1 ;
end     
end    
    
endmodule
