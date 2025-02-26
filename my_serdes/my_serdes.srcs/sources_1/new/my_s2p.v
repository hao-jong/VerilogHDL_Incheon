`timescale 1ns / 1ps

module my_s2p(
input CLK,
input RST,
input SIN,
input SOF_in,
output reg SOF_out,
output reg [7:0] SOUT
    );
 
integer idx; 
    
always @ (posedge CLK)
    begin
        if(RST == 1)
            begin
                SOUT <= 8'h00;
                idx <= 7;
                SOF_out <=1'b0;
            end
        else if (SOF_in == 1)
            begin
                idx <= 6;
                SOUT[7] <= SIN;
                SOF_out <= 1'b0;
            end           
        else if (idx < 7 &&idx > 0)
            begin
                SOUT [idx] <= SIN;
                idx <= idx - 1;
                SOF_out <= 1'b0;
            end
        else if (idx == 0)
            begin
                SOUT [idx] <= SIN;
                idx <= idx - 1;
                SOF_out <= 1'b1;
            end    
        else //(SOF_in == 0 &&idx < 0)
            begin
                SOUT <= 8'h00;             
                idx <= 7;
                SOF_out <=1'b0;
            end
    end    
    
    
endmodule
