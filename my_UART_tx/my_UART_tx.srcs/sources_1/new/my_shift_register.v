`timescale 1ns / 1ps

module shiftReg (clk, loaddata, load, shift, sout);
input clk, load, shift;
input [8:0] loaddata;
output sout;
wire [9:0] ns;
assign ns =     (load & shift) ?   10'b1111111111 :
                          load ? {loaddata, 1'b0} :
                         shift ?   {1'b1, q[9:1]} :
                                                    q;
reg [9:0] q;

always @(posedge clk) 
    begin
        q <= ns;
    end
  
assign sout = q[0];
endmodule
