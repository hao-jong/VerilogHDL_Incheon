`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/20 14:35:47
// Design Name: 
// Module Name: my_spi_master_tb
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


module my_spi_master_tb;

reg clk;
reg rst;
reg [31:0] addr;
reg [31:0] wr_data;
reg [31:0] CMD;
reg bvalid;
wire [31:0] rd_data;
wire CSN;
wire sclk;
wire MOSI;
reg SOMI;

initial
begin
    clk = 0;
    forever clk  = #5 ~clk;
end

initial
begin
    rst <= 1 ;
    wr_data <= 32'habcd_1234;
    addr <= 32'h0000_0000;
    #100
    rst <= 0 ;
    #100
    CMD <= 32'h0000_0001;
    #32
    @(posedge clk);
    bvalid <= 1;
    @(posedge clk);
    bvalid <= 0;
    end

my_spi_master my_spi_master_0(
.clk(clk),
.rst(rst),
.addr(addr),
.wr_data(wr_data),
.CMD(CMD),
.bvalid(bvalid),
.rd_data(rd_data),

.CSN(CSN),
.SCLK(sclk),
.MOSI(MOSI),
.SOMI(SOMI)
    );
endmodule
