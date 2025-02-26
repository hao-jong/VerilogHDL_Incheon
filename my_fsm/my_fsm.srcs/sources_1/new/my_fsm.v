`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 10:32:47
// Design Name: 
// Module Name: my_fsm
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


module my_fsm(
input CLK,
input RST,
input [1:0] SW,
output reg [1:0] LED
    );
 
// localparam [1:0] 
// idle = 2'b00,
// state_a = 2'b01,
// state_b = 2'b10,
// state_c = 2'b11;
                    
 reg [1:0] state;  
 
// always @ (posedge CLK)
// if (RST == 1)
//      current_state <= init;
// else
//    current_state < = next_state;
 
    
 always @ (posedge CLK)
 begin
    if (RST == 1)
        state <= 2'b00;
     else
        case (state)
           2'd0: 
               begin
                if(SW == 2'b00)
                    begin
                        LED <= 2'b00;
                        state <= 2'b01;
                    end
                else
                    begin
                        LED <= 2'b00;
                        state <= 2'b00;
                    end
               end       
           2'd1:
               begin
                if(SW == 2'b01)
                    begin
                        LED <= 2'b01;
                        state <= 2'b10;
                    end
                else
                    begin
                        LED <= 2'b01;
                        state <= 2'b01;
                    end
               end       
           2'd2:
               begin
                if(SW == 2'b10)
                    begin
                        LED <= 2'b10;
                        state <= 2'b11;
                    end
                else
                    begin
                        LED <= 2'b10;
                        state <= 2'b10;
                    end
               end       
           2'd3:
               begin
                if(SW == 2'b11)
                    begin
                        LED <= 2'b11;
                        state <= 2'b00;
                    end
                else
                    begin
                        LED <= 2'b11;
                        state <= 2'b11;
                    end
               end       
        endcase               
 end   
    
    
    
endmodule
