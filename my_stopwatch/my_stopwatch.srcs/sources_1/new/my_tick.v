`timescale 1ns / 1ps

module my_tick(
input clk,
input rst,
output reg tick
    );
 
`ifdef SIMULATION
    parameter COUNT_MAX = 10;
`else
    parameter COUNT_MAX = 1250000;
`endif
    
    // Counter register
    reg [23:0] counter;  // 24 bits needed for counting to 9,999,999
    
    // Counter logic
    always @(posedge clk) 
        begin
            if (rst == 1) 
                begin
                    counter <= 24'd0;
                    tick <= 1'b0;
                end
            
            else if (counter == COUNT_MAX) 
                begin
                    counter <= 24'd0;
                    tick <= 1'b1; 
                end
            else 
                begin
                    counter <= counter + 1'b1;
                    tick <= 1'b0;
                end
        end

endmodule
