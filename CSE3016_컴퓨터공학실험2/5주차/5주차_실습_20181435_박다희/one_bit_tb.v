`timescale 1ns / 1ps

module one_bit_tb;

reg aa, bb;

wire c, d, e, f;

one_bit_tb (
    .a(aa),
    .b(bb),
    .c(c),
    .d(d),
    .e(e),
    .f(f)
);

initial aa = 1'b0;
initial bb = 1'b0;

always aa = #20 ~aa;
always bb = #30 ~bb;

initial begin
    #1000
    $finish;
end
    
endmodule