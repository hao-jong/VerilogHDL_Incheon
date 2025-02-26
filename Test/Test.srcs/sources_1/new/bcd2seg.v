`timescale 1ns / 1ps

module bcd2seg(
    input [3:0] SW,
    output reg [6:0] AN
);


 
    always @(SW)
    begin
        case(SW)
            4'h0: AN = 7'h3f;
            4'h1: AN = 7'h06;
            4'h2: AN = 7'h5b;
            4'h3: AN = 7'h4f;
            4'h4: AN = 7'h66;
            4'h5: AN = 7'h6d;
            4'h6: AN = 7'h7d;
            4'h7: AN = 7'h27;
            4'h8: AN = 7'h7f;
            4'h9: AN = 7'h6f;
            default: AN = 7'h00;
        endcase
    end

endmodule
