`timescale 1ns / 1ps

module my_FSMsec (
input [1:0] keypad,
input front_door,
input rear_door,
input windows,
input rst,
input clk,
input tick,
output reg [1:0] FSM_State,
output reg alarm_siren
    );
   
reg start_count;
wire count_done;
wire [2:0] sensor = {front_door,rear_door,windows};
integer count_val;   
    
 always @ (posedge clk)
     begin 
        if (rst == 1)
            FSM_State <= 2'b01;
         else
             case(FSM_State)
                2'b01 : 
                begin
                    FSM_State <=2'b01;
                    alarm_siren <= 1'b0;
                    if (keypad == 2'b01)
                        begin
                            FSM_State <= 2'b10;
                        end
                    else
                        begin
                            start_count <= 1'b0;
                        end
                end
                2'b10 :
                begin
                    alarm_siren <= 1'b0;
                    start_count <= 1'b0;              
                    if (sensor !=3'b000)
                        FSM_State <= 2'b11;
                    else if (sensor == 3'b000 && keypad == 2'b10)
                        FSM_State <= 2'b01;
                    else
                        FSM_State <=2'b10;
                end     
                2'b11 : 
                begin
                    alarm_siren <= 1'b0;
                    start_count <= 1'b1;
                    if(count_done == 1'b1)
                        FSM_State <= 2'b00;
                    else if(count_done == 1'b0 && keypad == 2'b10)
                        FSM_State <= 2'b01;
                    else
                        FSM_State <= 2'b11;
                end
                2'b00 : 
                begin
                    alarm_siren <= 1'b1;
                    start_count <= 1'b0;
//                    count_done <= 1'b0;
                    if(keypad == 2'b10)
                        FSM_State <= 2'b01;
                    else
                        FSM_State <= 2'b00;    
                end
             endcase 
     end   
     
always @ (posedge tick)
    begin
        if (rst == 1)
            count_val <= 0;
        else if (start_count == 1'b1)
            count_val <= count_val + 1;
        else
            count_val <= count_val;
 
    end   
assign count_done = (count_val >= 400);     
endmodule
