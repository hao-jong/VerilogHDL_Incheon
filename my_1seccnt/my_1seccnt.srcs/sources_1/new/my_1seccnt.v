`timescale 1ns / 1ps

module my_1seccnt(
input  RST,
input  CLK,
output reg LED
    );
 parameter CLK_FREQ = 125_000_000;
 
 reg [31:0] cnt_val;
 reg enable;
    
 always @ (posedge CLK)
 begin
    if (RST == 1)
        begin
            cnt_val <= 0;
            enable <= 0;
            LED <= 0;
         end
     else if(cnt_val == CLK_FREQ)
         begin
            cnt_val <= 0;
            enable <= 1;
         end
     else
         begin 
            cnt_val <= cnt_val + 1;
            enable <= 0;
         end   
end

always @ (posedge CLK)
begin
    if (enable == 1)
        LED <= ~LED;
end
endmodule
