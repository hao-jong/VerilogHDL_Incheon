`timescale 1ns / 1ps

module hex_cnt_test(
input clk,
input rst_n,
input tick,
output reg [6:0] cnt_10ms,
output reg [5:0] cnt_1s,
output reg [5:0] cnt_1m
    );
reg st0;
reg st1;
reg st2;
reg st3;
reg st4;
reg st5;

reg cnt_1s_en;
reg cnt_1m_en;

 
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        st0 <= 0;
        st1 <= 0;
    end
    else
    begin
        st0 <= tick;
        st1 <= st0;
        st2 <= cnt_1s_en;
        st3 <= st2;
        st4 <= cnt_1m_en;
        st5 <= st4;
    end    
end 

     
always @ (posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
    cnt_10ms <= 7'd0;
    cnt_1s_en <= 1'b0;
    end
    else if(st0&~st1)
    begin    
        if ((cnt_10ms >=  0) && (cnt_10ms < 99))
        begin
        cnt_10ms <= cnt_10ms + 1;
        cnt_1s_en <= 1'b0;
        end
        else if (cnt_10ms >= 99)
        begin
        cnt_10ms <= 7'd0;
        cnt_1s_en <= 1'b1;
        end
    end
end

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
    cnt_1s <= 6'd0;
    cnt_1m_en <= 1'b0;
    end
    else if(st2&~st3)
    begin    
        if ((cnt_1s >=  0) && (cnt_1s < 59))
        begin
        cnt_1s <= cnt_1s + 1;
        cnt_1m_en <= 1'b0;
        end
        else if (cnt_1s >= 59)
        begin
        cnt_1s <= 6'd0;
        cnt_1m_en <= 1'b1;
        end
    end
end

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
    cnt_1m <= 6'd0;
    end
    else if(st4&~st5)
    begin    
        if ((cnt_1m >=  0) && (cnt_1m < 59))
        begin
        cnt_1m <= cnt_1m + 1;
        end
        else if (cnt_1m >= 59)
        begin
        cnt_1m <= 6'd0;
        end
    end
end           

endmodule
