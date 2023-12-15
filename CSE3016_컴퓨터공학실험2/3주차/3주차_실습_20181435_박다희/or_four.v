`timescale 1ns / 1ps

module or_four(a, b, c, d, e, f, g);

input a, b, c, d;
output e, f, g;

assign e = a|b;
assign f = e|c;
assign g = f|d;

endmodule
