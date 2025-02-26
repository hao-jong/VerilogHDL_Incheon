`timescale 1ns / 1ps

module my_UART_tx(
input clk,
input rst,
input send,
input parityselect,
input [7:0] data,
output busy,
output sout
    );


wire reset_timer;
wire next_bit;
wire count_10;
wire increment;
wire reset_cnt;
wire shift;
wire paritybit;
wire load;

wire [8:0] loaddata;
assign loaddata = {paritybit,data};


/*
*/    
my_115200_timer my_115200_timer_0(.clk(clk),.rst(rst),.reset_timer(reset_timer),.next_bit(next_bit));
/*
*/
my_transmit_FSM transmit_FSM_0(.rst(rst),.clk(clk),.send(send),.count_10(count_10),.next_bit(next_bit),.busy(busy),.load(load),.shift(shift),.reset_timer(reset_timer),.reset_cnt(reset_cnt),.increment(increment));    
/*
*/
mod10 mod10_0(.clk(clk), .rst(rst), .increment(increment),.reset_cnt(reset_cnt),.count_10(count_10));
/*
*/
shiftReg shiftreg_0 (.clk(clk), .loaddata(loaddata), .load(load), .shift(shift), .sout(sout));
/*
*/
parity_gen parity_gen_0(.data(data),.oddeven(parityselect),.parity(paritybit));
endmodule
