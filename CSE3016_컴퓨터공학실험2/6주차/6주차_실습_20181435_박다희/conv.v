`timescale 1ns / 1ps

module conv(a, b, c, d, o1, o2, o3, o4);
    input a, b, c, d;
    output o1, o2, o3, o4;

    assign o1 = (b&c)|(b&d)|a;
    assign o2 = a|(b&~d)|(b&c);
    assign o3 = a|(~b&c)|(b&~c&d);
    assign o4 = d;

endmodule
