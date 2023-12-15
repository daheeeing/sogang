`timescale 1ns / 1ps

module mealy_tb;

reg clk, rst, i;
wire [3:0]out;
wire z;

mealy u_mealy(clk, rst, i, out, z);

initial begin
    clk=1'b0;
    rst=1'b0;
    i=1'b0;
end

always clk=#30~clk;
always i=#50~i;
initial rst <=#500 ~rst;

endmodule
