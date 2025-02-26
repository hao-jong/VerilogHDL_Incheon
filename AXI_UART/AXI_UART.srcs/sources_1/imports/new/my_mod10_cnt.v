`timescale 1ns / 1ps

module mod10 (
input clk, rst, increment, reset_cnt,
output reg count_10
);

reg [3:0] cnt;

always @ (posedge clk or posedge rst)
begin
    if (rst || reset_cnt)
        begin
            cnt <= 0;
            count_10 <= 0;
        end
    else
        begin
            if (cnt == 10)
                begin
                    count_10 <= 1;
                end
            else if (increment)
                begin
                    cnt <= cnt + 1;
                end
            else //(!increment && ! (q == 9)) 
                begin
                    cnt <= cnt;
                end
        end
end        
endmodule
