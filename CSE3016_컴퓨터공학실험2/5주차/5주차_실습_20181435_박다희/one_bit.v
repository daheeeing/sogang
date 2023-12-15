`timescale 1ns / 1ps

module one_bit (a, b, c, d, e, f);
    input a, b;
    output c, d, e, f;

    assign c = ~((a&(~b)) | ((~a)&b));
    assign d = (a&(~b)) | ((~a)&b);
    assign e = a & (~b);
    assign f = (~a) & b;
    
endmodule

