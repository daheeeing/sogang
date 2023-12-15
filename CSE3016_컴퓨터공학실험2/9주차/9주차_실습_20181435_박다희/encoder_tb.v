`timescale 1ns / 1ps

module encoder_tb;

reg A, B, C, D;

wire E0, E1;

encoder u_encoder(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E0(E0),
    .E1(E1)
);

initial A = 1'b0;
initial B = 1'b0;
initial C = 1'b0;
initial D = 1'b0;

always A = #20 ~A;
always B = #30 ~B;
always C = #40 ~C;
always D = #50 ~D;

initial begin
    #1000
    $finish;
end
    
endmodule