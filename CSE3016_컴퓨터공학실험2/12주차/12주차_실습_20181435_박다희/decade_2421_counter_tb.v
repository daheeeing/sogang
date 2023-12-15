`timescale 1ns / 1ps

module decade_2421_counter_tb;

reg clk, rst;
wire[3:0] out;

decade_2421_counter u_decade_2421_counter_tb(clk, rst, out);

always #10 clk = ~clk;

initial begin
clk <= 1'b0;
rst <= 1'b0;
#20 rst <= 1'b1;
#80 rst <= 1'b0;
#50 rst <= 1'b1;
end

endmodule