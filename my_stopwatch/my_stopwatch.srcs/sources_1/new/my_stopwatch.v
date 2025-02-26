`timescale 1ns / 1ps

module my_stopwatch(
    input clk,          // Clock input
    input clr,          // Clear input
    input rst,          // Reset input
    input start,        // Start button
    output [6:0] AN,    // Anode control for 2-digit 7-segment display
    output CA,     // Cathode control for 7-segment display
    output reg LED_R,
    output reg LED_G,
    output reg LED_B
   
);

`ifdef SIMULATION
    parameter CENT_TICK = 10;
`else
    parameter CENT_TICK = 100;
`endif
/* 
display module
*/
disp_mod disp_mod_0(.TICK(tick),.DIGIT_1(sec_cnt),.DIGIT_10(ten_sec_cnt),.CA(CA),.AN(AN));

parameter rst_stopwatch_stt = 2'b00;
parameter stop_stopwatch_stt = 2'b01;
parameter start_stopwatch_stt = 2'b10;
parameter clr_stopwatch_stt = 2'b11;

reg [1:0] curr_state;
reg [1:0] next_state;

reg cnt_en;
reg clr_cnt_en;
reg two_sec_elapsed;

wire tick;
reg [6:0] csec_cnt;
reg [3:0] sec_cnt;        // 0-9 seconds
reg [3:0] ten_sec_cnt;
reg [6:0] clr_cnt; //clr_cnt
reg cnt_clr;

// Instantiate tick generator (100Hz)
my_tick tick_0(.clk(clk), .rst(rst), .tick(tick));    

always @(posedge clk) 
    begin
    if (rst)
        curr_state <= rst_stopwatch_stt;
    else
        curr_state <= next_state;
    end

//state machine
always @ (posedge clk)
begin
        case (curr_state)
        rst_stopwatch_stt :
            begin
                clr_cnt <= 0;
                clr_cnt_en <= 0;
                cnt_en <= 0;
                cnt_clr <= 1;
                
                LED_R <=1;
                LED_G <=0;
                LED_B <=0;
                    next_state <= stop_stopwatch_stt;
            end
         stop_stopwatch_stt :
            begin
                clr_cnt_en <= 0;
                cnt_en <= 0;
                two_sec_elapsed <= 0;
                cnt_clr <=0;
                LED_R <=0;
                LED_G <=1;
                LED_B <=0;
                
                if (start == 0)
                    next_state <= stop_stopwatch_stt;
                else//(start == 1)
                    next_state <= start_stopwatch_stt;
            end
         start_stopwatch_stt :
            begin
                clr_cnt_en <= 0;
                cnt_en <= 1;
                
                LED_R <=0;
                LED_G <=0;
                LED_B <=1;
                
                
                if (start == 0)
                    next_state <= stop_stopwatch_stt;
                else if (clr == 1)
                    next_state <= clr_stopwatch_stt;
                else //(start == 1 & clr == 0)
                    next_state <= start_stopwatch_stt;
            end
         clr_stopwatch_stt :
            begin
                clr_cnt_en <= 1;
                cnt_en <= 1;
                
                LED_R <=1;
                LED_G <=1;
                LED_B <=1;
                
                
                if (clr == 0)
                    next_state <= start_stopwatch_stt;
                else if (two_sec_elapsed == 1)
                    next_state <= rst_stopwatch_stt;
                else //(two_sec_elapsed == 0 & clr == 1)
                    next_state <= clr_stopwatch_stt;
            end
        endcase
end

//sec counter
always @ (posedge tick or posedge cnt_clr)
begin
    if(cnt_clr == 1)
        begin
            csec_cnt <= 0;
            sec_cnt <= 0;
            ten_sec_cnt <= 0;
        end
        else if (ten_sec_cnt == 10)
            begin
                csec_cnt <=0;
                sec_cnt <= 0;
                ten_sec_cnt <= 0;
            end
        else if (sec_cnt == 10)
            begin
                csec_cnt <=0;
                sec_cnt <= 0;
                ten_sec_cnt <= ten_sec_cnt + 1;
            end
        else if (csec_cnt == CENT_TICK - 1)
            begin
                csec_cnt <= 0;
                sec_cnt <= sec_cnt +1;
            end
        else if (cnt_en == 1)
                csec_cnt <= csec_cnt + 1;
        else //(cnt_en == 0)
                csec_cnt <= csec_cnt;      
end


//2sec_counter
always @(posedge tick)
begin
    if (rst ==1)
        begin
            clr_cnt <= 0;
            two_sec_elapsed <= 0;
        end
    else if (clr_cnt_en ==1)
        begin
            if (clr_cnt == 2* CENT_TICK)  // 2 seconds at 100Hz
                begin
                    two_sec_elapsed <= 1;
                    clr_cnt <= clr_cnt;
                end
            else
                begin
                    clr_cnt <= clr_cnt + 1;
                end
        end

end

endmodule

