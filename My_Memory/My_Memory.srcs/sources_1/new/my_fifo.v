`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 09:59:03
// Design Name: 
// Module Name: my_fifo
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


module my_fifo(
input clk,
input rst,
input [7:0] D_in,
input wen,
input ren,

output reg [7:0] D_out
    );

reg [7:0] fifo_mem [8:0];
reg [2:0] read_pointer;
reg [2:0] write_pointer;
//memory read//    
always @ (posedge clk)    
    begin
        if (ren)
            begin
                read_pointer <= read_pointer +1;
                D_out <= fifo_mem[read_pointer];
            end
    end
//memory write//
always @ (negedge clk)
    begin
        if(rst)
            begin
                fifo_mem[0] <= 8'h0;
                fifo_mem[1] <= 8'h0;
                fifo_mem[2] <= 8'h0;
                fifo_mem[3] <= 8'h0;
                fifo_mem[4] <= 8'h0;
                fifo_mem[5] <= 8'h0;
                fifo_mem[6] <= 8'h0;
                fifo_mem[7] <= 8'h0;
                read_pointer <= 3'h0;
                write_pointer <= 3'h0;
            end
        else if (wen && (write_pointer != read_pointer))
            begin
                write_pointer <= write_pointer + 1;
                fifo_mem[write_pointer] <= D_in;
            end
    end

endmodule
