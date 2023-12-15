`timescale 1ns / 1ps

module ring_counter_tb;

reg clk, rst;
wire [3:0]out;

ring_counter ring_counter_tb(
    .clk(clk),
    .rst(rst),
    .out(out)
);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always clk = #20~clk;
initial rst <= #400 ~rst;

initial #800 $finish;

endmodule
