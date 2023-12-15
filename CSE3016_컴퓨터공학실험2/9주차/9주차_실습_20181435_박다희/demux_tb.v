`timescale 1ns / 1ps

module demux_tb;

reg a, b, F;

wire A, B, C, D;

demux u_demux(
    .a(a),
    .b(b),
    .F(F),
    .A(A),
    .B(B),
    .C(C),
    .D(D)
);

initial a = 1'b0;
initial b = 1'b0;
initial F = 1'b0;

always a = #20 ~a;
always b = #30 ~b;
always F = #40 ~F;

initial begin
    #1000
    $finish;
end
    
endmodule