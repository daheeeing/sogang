`timescale 1ns / 1ps

module Boolean2_ab_tb;

reg aa, bb, cc;

wire d, e;

Boolean2_ab_tb (
    .a(aa),
    .b(bb),
    .c(cc),
    .d(d),
    .e(e)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #20 ~aa;
always bb = #30 ~bb;
always cc = #40 ~cc;

initial begin
    #1000
    $finish;
end
    
endmodule