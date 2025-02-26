`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/21 10:41:58
// Design Name: 
// Module Name: debounce
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


module debounce(
input btn_in,
input clk,
output reg btn_out
    );
reg [20:0] cnt;
reg d_ff;
reg [1:0] state; 
reg cnt_rst;
reg cnt_en;
   
always @ (posedge clk)
begin
    case (state)
     0:
     begin
        cnt_rst <= 1;
        cnt_en <= 0;
        d_ff <= btn_in;
        
             if ((btn_in != d_ff))
             begin
             state <= 2'b01;
             end
     end
     1:
     begin
        cnt_rst <= 0;
        cnt_en <= 1;
        d_ff <= btn_in;
        
            if(cnt >= 1249999)
            begin    
                state <= 2'b10;
            end
            else if(btn_in == d_ff)
            begin
                state <= 2'b01;    
            end
            else // (btn_in != d_ff)
            begin
                state <= 2'b00;
            end
     end
     2:
     begin
        cnt_rst <= 0;
        cnt_en <= 0;
        d_ff <= btn_in;
            
            state <= 2'b00;
     end
    endcase
end

always @ (posedge clk)
begin
if (cnt_rst)
    cnt <= 21'd0;    
else if (cnt_en)
    cnt <= cnt + 1;
else
    cnt <= cnt;
end    
endmodule
