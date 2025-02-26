`timescale 1ns / 1ps

module my_display(
    input clk,
    input rst,
    input tick,
    input [7:0] bin_num,

    output [6:0] AN,
    output reg CA
);

    wire [3:0] digit;
    wire [3:0] digit_16;
    wire [3:0] digit_1;
    
    assign digit_16 = bin_num/16;
    assign digit_1 = bin_num%16;
    
    reg [7:0] LED; 
    assign AN = LED[6:0];
    assign digit = CA ? digit_16 : digit_1;
    
    // initial 대신 always 블록과 reset 사용
    always @(posedge clk or posedge rst) begin
        if (rst)
            CA <= 1'b0;
        else if (tick)
            CA <= ~CA;
    end
    
    always @(*) begin
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
