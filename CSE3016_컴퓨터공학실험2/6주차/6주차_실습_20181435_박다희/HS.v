`timescale 1ns / 1ps

module HS (A, B, D, b);
    input A, B;
    output D, b;

    assign D = ((~A)&B)|(A&(~B));
    assign b = (~A)&B;
    
endmodule
