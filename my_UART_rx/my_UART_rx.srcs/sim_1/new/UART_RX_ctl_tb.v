`timescale 1ns / 1ps

module UART_RX_ctl_tb;

reg clk;
reg rst;
reg RXD;
reg parity;

initial
begin
rst <= 1;
RXD <= 1;
parity <= 1;
repeat(20) @ (posedge clk);
rst <= 0;
repeat(20) @ (posedge clk);
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

UART_RX_ctl UART_RX_ctl_test(.clk(clk),.rst(rst),.RXD(RXD),.parity(parity),.data_out(data_out),.Rx_rdy(RX_rdy),.parity_error(parity_error));

endmodule
