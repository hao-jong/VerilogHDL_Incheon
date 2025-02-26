`timescale 1ns / 1ps

module my_transmit_FSM(
    input rst,
    input clk,
    input send,
    input count_10,
    input next_bit,
    output reg busy,
    output reg load,
    output reg shift,
    output reg reset_timer,
    output reg reset_cnt,
    output reg increment   
    );

reg [2:0] curr_state;
reg [2:0] next_state;
 
parameter IDLE = 3'b000;
parameter LOAD = 3'b001;
parameter COUNT = 3'b010;
parameter SHIFT = 3'b011;
parameter WAIT = 3'b100;

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
                        load <= 1;
                        shift <= 1;
                        busy <= 0;
                        reset_cnt <= 0;
                        reset_timer <= 1;
                        increment <= 0;
                        
                        
                        if(send)
                            next_state <= LOAD;
                         else
                            next_state <= IDLE;
                    end
                 LOAD :
                    begin
                        load <= 1;
                        shift <= 0;
                        busy <= 1;
                        reset_cnt <= 1;
                        reset_timer <= 1;
                        increment <= 0;
                        
                     
                        next_state <= COUNT;
                    end
                 COUNT :
                    begin
                        load <= 0;
                        shift <= 0;
                        busy <= 1;
                        reset_cnt <= 0;
                        reset_timer <= 0;
                        increment <= 0;
                        
                        
                        if(next_bit)
                            next_state <= SHIFT;
                        else //(!next_bit)
                            next_state <= COUNT;    
                    
                    end
                 SHIFT :
                    begin
                        load <= 0;
                        shift <= 1;
                        busy <= 1;
                        reset_cnt <= 0;
                        reset_timer <= 1;
                        increment <= 1;
                        
                        
                        if(count_10)
                            next_state <= WAIT;
                        else //(!count_10)
                            next_state <= COUNT;     
                    end
                 WAIT :
                    begin
                        load <= 0;
                        shift <= 0;
                        busy <= 0;
                        reset_cnt <= 0;
                        reset_timer <= 1;
                        increment <= 0;
                        
                        
                        if(send)
                            next_state <= WAIT;
                        else //(!send)
                            next_state <= IDLE;     
                    end
                endcase
        end
end

    
endmodule
