`timescale 1ns / 1ps

module mux_tb;

reg a, b, A, B, C, D;

wire OA, OB, OC, OD, Z;

mux u_mux(
    .a(a),
    .b(b),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .OA(OA),
    .OB(OB),
    .OC(OC),
    .OD(OD), 
    .Z(Z)
);

initial a = 1'b0;
initial b = 1'b0;
initial A = 1'b0;
initial B = 1'b0;
initial C = 1'b0;
initial D = 1'b0;

always a = #20 ~a;
always b = #30 ~b;
always A = #40 ~A;
always B = #60 ~B;
always C = #80 ~C;
always D = #100 ~D;

initial begin
    #1000
    $finish;
end
    
endmodule