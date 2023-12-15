`timescale 1ns / 1ps

module seg_display_tb;

reg A, B, C, D;

wire OutA, OutB, OutC, OutD, OutE, OutF, OutG, OutDp, OutW;

seg_display u_seg_display(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .OutA(OutA),
    .OutB(OutB),
    .OutC(OutC),
    .OutD(OutD),
    .OutE(OutE),
    .OutF(OutF),
    .OutG(OutG),
    .OutDp(OutDp),
    .OutW(OutW)
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