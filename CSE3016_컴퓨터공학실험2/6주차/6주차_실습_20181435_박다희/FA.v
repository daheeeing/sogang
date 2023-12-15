`timescale 1ns / 1ps

module FA (A, B, Cin, Cout, S);
    input A, B, Cin;
    output Cout, S;

    assign S = (A^B)^Cin;
    assign Cout = (Cin&(A^B))|(A&B);
    
endmodule
