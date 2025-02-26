`timescale 1ns / 1ps


module my_fsm(
input clk,
input rst,
input RXD,
input [10:0] CNT_542,
input [3:0] CNT_11,
output reg CNT_542_rst,
output reg CNT_542_up,
output reg CNT_11_rst,
output reg CNT_11_up,
output reg sample,
output reg Rx_rdy
    );

reg [1:0] curr_state;
reg [1:0] next_state;
 
parameter IDLE = 2'b000;
parameter READY = 2'b001;
parameter SAMPLE = 2'b010;
parameter COUNTER_542_RST = 2'b011;


always @(posedge clk) 
begin
if (rst)
    curr_state <= IDLE;
else
    curr_state <= next_state;
end   

always @ (posedge clk or posedge rst)    
begin
    if(rst)
        next_state <= IDLE;
    else
        begin
        case (curr_state)
                IDLE :
                begin
                CNT_542_rst <= 1;
                CNT_11_rst <= 1;
                CNT_542_up <= 0;
                CNT_11_up <= 0;
                Rx_rdy <= 0;
                sample <= 0;
                if(RXD == 0)
                    next_state <= READY;
                else // (RXD == 1)
                    next_state <= IDLE;
                end
                                
                READY :
                begin
                CNT_542_rst <= 0;
                CNT_11_rst <= 0;
                CNT_542_up <= 1;
                CNT_11_up <= 0;
                Rx_rdy <= 0;
                sample <= 0;
                if(CNT_542 == 542)
                    next_state <= SAMPLE;
                else if (CNT_542 == 1085)
                    next_state <= COUNTER_542_RST;
                else if (CNT_11 == 10)
                    next_state <= IDLE;
                else// (CNT_1085 ~= 16 or CNT_542 ~= 1085 or CNT_11 ~= 10)
                    next_state <= READY;    
                end                
                
                SAMPLE :
                begin
                CNT_542_rst <= 0;
                CNT_11_rst <= 0;
                CNT_542_up <= 1;
                CNT_11_up <= 1;
                Rx_rdy <= 0;
                sample <= 1;
                
                next_state <= READY;
                end
                                
                COUNTER_542_RST :
                begin
                CNT_542_rst <= 1;
                CNT_11_rst <= 0;
                CNT_542_up <= 0;
                CNT_11_up <= 0;
                Rx_rdy <= 0;
                sample <= 0;
                next_state <= READY;        
                end
         
        endcase
        end        
end

endmodule
