`timescale 1ns / 1ps

module subtractor(
    input [3:0] A, B,
    input bin,
    output [3:0] D,
    output [3:0] b
    );
    assign D[0] = A[0]^B[0]^bin;
    assign b[0] = ((~A[0])&B[0])|(bin&(~(A[0]^B[0])));
    assign D[1] = A[1]^B[1]^b[0];
    assign b[1] = ((~A[1])&B[1])|(b[0]&(~(A[1]^B[1])));
    assign D[2] = A[2]^B[2]^b[1];
    assign b[2] = ((~A[2])&B[2])|(b[1]&((~A[2]^B[2])));
    assign D[3] = A[3]^B[3]^b[2];
    assign b[3] = ((~A[3])&B[3])|(b[2]&((~A[3]^B[3])));     
    
endmodule
