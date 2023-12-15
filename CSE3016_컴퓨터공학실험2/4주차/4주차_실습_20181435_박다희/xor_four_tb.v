`timescale 1ns / 1ps

module xor_four_tb;

reg aa, bb, cc, dd;

wire e, f, g;

xor_four u_xor (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .e(e),
    .f(f),
    .g(g) 
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #20 ~aa;
always bb = #30 ~bb;
always cc = #40 ~cc;
always dd = #50 ~dd;

initial begin
    #1000
    $finish;
end
    
endmodule
