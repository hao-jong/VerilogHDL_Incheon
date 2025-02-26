`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 12:08:33
// Design Name: 
// Module Name: my_fsm_ssd
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


module my_fsm_ssd(
input CLK,
input RST,
input [1:0] SW,
output [6:0] AN,
output CN
    );
    
wire LED_w;    

wire enable;

reg [19:0] div_reg;

// 클럭 분주 로직
always @(posedge CLK) 
begin
    if (RST)
        div_reg <= 0;
    else
        div_reg <= div_reg + 1;
end

// MSB를 enable 신호로 사용
assign enable = div_reg[19];

my_fsm fsm_0(.CLK(CLK),.RST(RST),.SW(SW),.LED(LED_w));
my_disp disp_0(.binary_num({2'b00,LED_w}),.BTN(enable),.AN(AN),.CN(CN));  
endmodule
