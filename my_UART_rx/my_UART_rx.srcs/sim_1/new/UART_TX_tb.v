`timescale 1ns / 1ps

module UART_RX_tb;

reg clk;
reg rst;
reg RXD;
reg parity;

wire [7:0] RX_DATA;
wire [6:0] AN;
wire CA;
wire parity_error;

initial
begin
rst <= 1;
RXD <= 1;
parity <= 1;
repeat(20) @ (posedge clk);
rst <= 0;
repeat(20) @ (posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 0;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 0;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 0;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 0;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 0;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//RXD <= 1;
//repeat(1085) @(posedge clk);
//repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
RXD <= 0;
repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
RXD <= 1;
repeat(1085) @(posedge clk);
repeat(1085) @(posedge clk);

$finish;
end



initial
begin
clk = 0;
forever #5 clk = ~clk;
end

UART_RX UART_RX_0(
.rst(rst),
.clk(clk),
.RXD(RXD),
.parity(parity),

.RX_DATA(RX_DATA),
.AN(AN),
.CA(CA),
.parity_error(parity_error)
    );
endmodule
