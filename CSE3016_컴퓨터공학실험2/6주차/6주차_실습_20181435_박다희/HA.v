`timescale 1ns / 1ps

module HA (A, B, C, S);
    input A, B;
    output C, S;

    assign C = A&B;
    assign S = A^B;
    
endmodule
