`timescale 1ns / 1ps

module conv_tb;

reg aa, bb, cc, dd;

wire o1, o2, o3, o4;

conv u_conv(
    .a(aa),
    .b(bb),
    .c(cc),
    .d(dd),
    .o1(o1),
    .o2(o2),
    .o3(o3),
    .o4(o4)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #20 ~aa;
always bb = #40 ~bb;
always cc = #60 ~cc;
always dd = #80 ~dd;

initial begin
    #450
    $finish;
end
    
endmodule