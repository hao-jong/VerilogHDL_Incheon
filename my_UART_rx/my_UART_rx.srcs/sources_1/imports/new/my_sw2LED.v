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


module my_display(
    input clk,      // 클럭 추가
    input rst,      // 리셋 추가
    input tick,
    input [3:0] digit_1,
    input [3:0] digit_10,
    
    output [6:0] AN,
    output reg CA
);
    wire [3:0] digit;
    reg [7:0] LED; 
    assign AN = LED[6:0];
    assign digit = CA ? digit_10 : digit_1;    // 대문자였던 DIGIT_1, DIGIT_10 수정
    
    // initial 대신 always 블록과 reset 사용
    always @(posedge clk or posedge rst) begin
        if (rst)
            CA <= 1'b0;
        else if (tick)
            CA <= ~CA;
    end
    
    always @(*) begin    // 조합논리 always 블록은 * 사용
        case(digit)
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
            4'ha: LED = 8'h77;
            4'hb: LED = 8'h7c;
            4'hc: LED = 8'h39;
            4'hd: LED = 8'h5e;
            4'he: LED = 8'h79;
            4'hf: LED = 8'h71;
            default: LED = 8'h00;
        endcase
    end
endmodule
