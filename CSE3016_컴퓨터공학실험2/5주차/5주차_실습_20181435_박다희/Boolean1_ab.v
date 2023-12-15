`timescale 1ns / 1ps

module Boolean1_ab (a, b, c, d, e);
    input a, b, c;
    output d, e;

    assign d = ((~a)|(~b))&(~c);
    assign e = ~((a&b)|c);
    
endmodule