`timescale 1ns / 1ps

module hex_cnt_test_tb;

reg clk;
reg rst_n;

reg tick;
reg disp_md;
wire bcd;

initial
begin
clk <= 0;
forever
#4 clk <= ~clk;
end

initial
begin
tick <= 0;
forever
#20 tick <= ~tick;
end

initial
begin
rst_n <= 1'b0;
#500
rst_n <= 1'b1;
end

hex_cnt_test hex_cnt_test_0(
.clk(clk),
.rst_n(rst_n),
.tick(tick)
    );
endmodule
