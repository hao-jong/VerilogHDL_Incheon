`timescale 1ns / 1ps

module my_115200_timer(
input clk,
input rst,
input reset_timer,
output reg next_bit
    );
 
parameter TIMER_MAX = 1085;
 
 reg [16:0] counter;
 
 always @ (posedge clk or posedge rst)
     begin
        if (rst || reset_timer)
            begin
                counter <= 0;
                next_bit <= 0;
            end    
        else
            begin
                if (counter == TIMER_MAX - 1)
                    begin
                        counter <= 0;
                        next_bit <= 1;
                    end
                else
                    begin
                        counter <= counter + 1;
                        next_bit <= 0;
                    end
            end
     end
endmodule
