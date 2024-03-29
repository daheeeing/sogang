`timescale 1ns / 1ps

module twobit_counter(clk, rst, out);

output[1:0] out;
input clk, rst;
reg[1:0] out;

always @(posedge clk)

    begin
     if (!rst)
        out<=0;
     else
        out <= out + 1;
    end

endmodule
