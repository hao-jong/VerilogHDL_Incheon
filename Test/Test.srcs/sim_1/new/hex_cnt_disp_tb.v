`timescale 1ns / 1ps

module hex_cnt_disp_tb;

reg clk;
reg rst_n;
reg tick;
reg disp_md;
wire [6:0] seg0;
wire [6:0] seg1;
initial
begin
clk <= 0;
forever
#4 clk <= ~clk;
end

initial
begin
disp_md <= 0;
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

hex_cnt_disp hex_cnt_disp_0(
.clk(clk),
.rst_n(rst_n),
.tick(tick),
.disp_md(disp_md),
.seg0(seg0),
.seg1(seg1)
    );
endmodule
