`timescale 1ns / 1ps

module FS (A, B, bn, D, b);
    input A, B, bn;
    output D, b;

    assign D = A^B^bn;
    assign b = (~(A^B)&bn)|(~A&B);
    
endmodule