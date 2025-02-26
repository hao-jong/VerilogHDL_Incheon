`timescale 1ns / 1ps

module hex_cnt_test(
input clk,
input rst,
input [1:0] watch_state,
input pls_100hz,
input disp_md,
output bcd
    );
    
reg [6:0] cnt_10ms;
reg [5:0] cnt_1s;
reg [5:0] cnt_1m;
reg cnt_1s_en;
reg cnt_1m_en;
     
always@ (posedge pls_100hz or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_10ms <= 0;
    cnt_1s_en <= 1'b0;
    end
    else if ((cnt_10ms >=  0) && (cnt_10ms < 99))
    begin
    cnt_10ms <= cnt_10ms + 1;
    cnt_1s_en <= 1'b0;
    end
    else if (cnt_10ms >= 99)
    begin
    cnt_10ms <= 0;
    cnt_1s_en <= 1'b1;
    end
end   

always@ (posedge cnt_1s_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_1s <= 0;
    cnt_1m_en <= 1'b0;
    end
    else if ((cnt_1s >=  0) && (cnt_1s < 59))
    begin
    cnt_1s <= cnt_1s + 1;
    cnt_1m_en <= 1'b0;
    end
    else if (cnt_1s >= 59)
    begin
    cnt_1s <= 0;
    cnt_1m_en <= 1'b1;
    end
end

always@ (posedge cnt_1m_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_1m <= 0;
    end
    else if ((cnt_1m >=  0) && (cnt_1m < 59))
    begin
    cnt_1m <= cnt_1m + 1;
    end
    else if (cnt_1m >= 59)
    begin
    cnt_1m <= 0;
    end
end
endmodule
