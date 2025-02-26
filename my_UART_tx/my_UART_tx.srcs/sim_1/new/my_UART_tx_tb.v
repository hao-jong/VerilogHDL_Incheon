`timescale 1ns / 1ps

module my_UART_tx_tb;

parameter EVEN = 1'b0;
parameter ODD = 1'b1;

reg clk, rst, send;
reg parityselect;
reg [7:0] data;
 
my_UART_tx  my_UART_tx_0(.clk(clk),.rst(rst),.send(send),.parityselect(parityselect),.data(data),.busy(busy),.sout(sout));

initial
begin
rst <= 1;
send <=0;
data <= {4'b0100, 4'b1011};
parityselect <= EVEN;
repeat(1085*10) @(posedge clk);
$finish;


end

initial
    begin
        clk = 0;
        forever clk = #5 ~ clk;
    end


endmodule
