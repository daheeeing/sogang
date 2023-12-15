`timescale 1ns / 1ps

module up_down_counter_tb;
reg clk, rst, up;
wire [3:0]out;
wire [6:0]digit;
wire dp;

up_down_counter up_down_counter_tb(clk, rst, up, out, digit, dp);

initial begin
clk = 1'b0;
rst = 1'b0;
up = 1'b1;
end

always clk = #20~clk;
initial rst <= #800 ~rst;
initial up <= #400 ~up;

initial begin
    #1200
    $finish;
end
endmodule
