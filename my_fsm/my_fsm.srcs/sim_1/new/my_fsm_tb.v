`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 11:11:50
// Design Name: 
// Module Name: my_fsm_tb
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


module my_fsm_tb;

reg CLK, RST;
reg [1:0] SW;
wire [1:0] LED;

initial
begin
    RST = 1;
    #20 RST = 0;
end

initial
begin
    wait(RST == 0);
    #50
    SW = 2'b00;
    #10
    SW = 2'b01;
    #10
    SW = 2'b00;
    #10
    SW = 2'b01;
    #10
    SW = 2'b11;
    #10
    SW = 2'b10;
    
    
        
end


initial
begin
CLK = 0;
forever CLK = #5 ~CLK;
end


my_fsm fsm_0(.CLK(CLK),.RST(RST),.SW(SW),.LED(LED));

endmodule
