`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 10:22:39
// Design Name: 
// Module Name: my_security
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


module my_security(
input [1:0] keypad,
input front_door,
input rear_door,
input windows,
input rst,
input clk,
output [6:0] AN,
output CN,
output alarm_siren
    );
wire [1:0] FSM_State_w;

my_tick tick_0(.clk(clk),.rst(rst),.tick(tick));
my_FSMsec my_FSMsec_0(.keypad(keypad),.front_door(front_door),.rear_door(rear_door),.windows(windows),.rst(rst),.clk(clk),.tick(tick),.FSM_State(FSM_State_w),.alarm_siren(alarm_siren));
my_sw2LED sw2LED_0(.SW({2'b00,FSM_State_w}),.AN(AN),.CN(CN));
endmodule
