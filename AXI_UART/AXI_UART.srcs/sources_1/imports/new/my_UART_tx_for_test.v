`timescale 1ns / 1ps



module my_UART_tx_for_test(
input clk,
input rst,
output busy,
output sout
    );

reg parityselect;

reg [7:0] data;
reg send;
always @ (posedge clk)
    begin
        if (rst)
        
    
    end

my_UART_tx my_UART_tx_0(.clk(clk),.rst(rst),.send(send),.parityselect(parityselect),.data(data),.busy(busy),.sout(sout));

endmodule
