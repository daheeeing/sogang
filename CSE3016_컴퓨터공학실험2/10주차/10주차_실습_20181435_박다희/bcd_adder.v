`timescale 1ns / 1ps

module bcd_adder(
    input [3:0] A, B,
    input Cin,
    output [7:0] S,
    output [6:0] C,
    output Cout, K
    );
    
    assign S[0] = A[0]^B[0]^Cin;
    assign C[0] = (A[0]&B[0])|(Cin&(A[0]^B[0]));
    assign S[1] = A[1]^B[1]^C[0];
    assign C[1] = (A[1]&B[1])|(C[0]&(A[1]^B[1]));
    assign S[2] = A[2]^B[2]^C[1];
    assign C[2] = (A[2]&B[2])|(C[1]&(A[2]^B[2]));
    assign S[3] = A[3]^B[3]^C[2];
    assign K = (A[3]&B[3])|(C[2]&(A[3]^B[3]));
    assign Cout = K|(S[3]&S[2])|(S[3]&S[1]);
    assign S[4] = 0^S[0]^0;
    assign C[3] = (0&S[0])|(0&(0^S[0]));
    assign S[5] = Cout^S[1]^C[3];
    assign C[4] = (Cout&S[1])|(C[3]&(Cout^S[1]));
    assign S[6] = Cout^S[2]^C[4];
    assign C[5] = (Cout&S[2])|(C[4]&(Cout^S[2]));
    assign S[7] = 0^S[3]^C[5];
    assign C[6] = (0&S[3])|(C[5]&(0^S[3]));
    
endmodule
