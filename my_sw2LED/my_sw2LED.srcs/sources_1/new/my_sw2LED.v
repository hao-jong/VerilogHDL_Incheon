`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// CompLEDy: 
// Engineer: 
// 
// Create Date: 2024/10/14 14:15:41
// Design Name: 
// Module Name: my_sw2LED
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


module my_sw2LED(
    input [3:0] SW,
    output reg [6:0] AN,
    output reg CN
);
 
    reg [7:0] LED;
 
    always @(SW)
    begin
        case(SW)
            4'h0: LED = 8'h3f;
            4'h1: LED = 8'h06;
            4'h2: LED = 8'h5b;
            4'h3: LED = 8'h4f;
            4'h4: LED = 8'h66;
            4'h5: LED = 8'h6d;
            4'h6: LED = 8'h7d;
            4'h7: LED = 8'h27;
            4'h8: LED = 8'h7f;
            4'h9: LED = 8'h6f;
            default: LED = 8'h00;
        endcase

        AN = LED[6:0];
        CN = LED[7];
    end

endmodule
