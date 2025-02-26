`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 14:41:26
// Design Name: 
// Module Name: bcd_cnt_test
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


module bcd_cnt_test(
input clk,
input rst,
input [1:0] watch_state,
input pls_100hz,
input disp_md,
output bcd
    );
reg [3:0] cnt_10ms;
reg [3:0] cnt_100ms;
reg [3:0] cnt_1s;
reg [2:0] cnt_10s;
reg [3:0] cnt_1m;
reg [2:0] cnt_10m;
reg cnt_100ms_en;
reg cnt_1s_en;
reg cnt_10s_en;
reg cnt_1m_en;
reg cnt_10m_en;
     
always@ (posedge pls_100hz or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_10ms <= 0;
    cnt_100ms_en <= 1'b0;
    end
    else if ((cnt_10ms >=  0) && (cnt_10ms < 9))
    begin
    cnt_10ms <= cnt_10ms + 1;
    cnt_100ms_en <= 1'b0;
    end
    else if (cnt_10ms >= 9)
    begin
    cnt_10ms <= 0;
    cnt_100ms_en <= 1'b1;
    end
end   

always@ (posedge cnt_100ms_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_100ms <= 0;
    cnt_1s_en <= 1'b0;
    end
    else if ((cnt_100ms >=  0) && (cnt_100ms < 9))
    begin
    cnt_100ms <= cnt_100ms + 1;
    cnt_1s_en <= 1'b0;
    end
    else if (cnt_100ms >= 9)
    begin
    cnt_100ms <= 0;
    cnt_1s_en <= 1'b1;
    end
end

always@ (posedge cnt_1s_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_1s <= 0;
    cnt_10s_en <= 1'b0;
    end
    else if ((cnt_1s >=  0) && (cnt_1s < 9))
    begin
    cnt_1s <= cnt_1s + 1;
    cnt_10s_en <= 1'b0;
    end
    else if (cnt_1s >= 9)
    begin
    cnt_1s <= 0;
    cnt_10s_en <= 1'b1;
    end
end

always@ (posedge cnt_10s_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_10s <= 0;
    cnt_1m_en <= 1'b0;
    end
    else if ((cnt_10s >=  0) && (cnt_10s < 5))
    begin
    cnt_10s <= cnt_10s + 1;
    cnt_1m_en <= 1'b0;
    end
    else if (cnt_10s >= 5)
    begin
    cnt_10s <= 0;
    cnt_1m_en <= 1'b1;
    end
end      

always@ (posedge cnt_1m_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_1m <= 0;
    cnt_10m_en <= 1'b0;
    end
    else if ((cnt_1m >=  0) && (cnt_1m < 9))
    begin
    cnt_1m <= cnt_1m + 1;
    cnt_10m_en <= 1'b0;
    end
    else if (cnt_1m >= 9)
    begin
    cnt_1m <= 0;
    cnt_10m_en <= 1'b1;
    end
end      

always@ (posedge cnt_10m_en or negedge rst)
begin
    if(!rst || watch_state == 2'b00)
    begin
    cnt_10m <= 0;
    end
    else if ((cnt_10m >=  0) && (cnt_10m < 5))
    begin
    cnt_10m <= cnt_10m + 1;
    end
    else if (cnt_10m >= 5)
    begin
    cnt_10m <= 0;
    end
end      

    
endmodule
