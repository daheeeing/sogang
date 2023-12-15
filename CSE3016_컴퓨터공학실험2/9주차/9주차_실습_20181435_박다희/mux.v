`timescale 1ns / 1ps

module mux (a, b, A, B, C, D, OA, OB, OC, OD, Z);
    input a, b, A, B, C, D;
    output OA, OB, OC, OD, Z;

    assign OA = (~a)&(~b)&A;
    assign OB = a&(~b)&B;
    assign OC = (~a)&b&C;
    assign OD = a&b&D;
    assign Z = OA|OB|OC|OD;
    
endmodule