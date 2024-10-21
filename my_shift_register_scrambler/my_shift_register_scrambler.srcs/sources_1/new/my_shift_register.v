`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:06:25
// Design Name: 
// Module Name: my_shift_register
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


module my_shift_register(
input RST,
input CLK,
input [7:0] SEED,
output data_out
    );
    
reg [7:0] SReg;
wire xor_output;
integer idx;
assign data_out = SReg[0];

my_xor xor_0(.a(SReg[4]),.b(SReg[2]),.c(xor_output));   

always @(posedge CLK)
    begin
        if (RST == 1)
            SReg <= SEED;
        else
            begin
                for (idx = 0; idx < 7; idx = idx + 1)
                    begin
                        SReg[idx] <= SReg[idx+1];
                    end
                    SReg[7] <= xor_output;
            end
    end
    
endmodule
