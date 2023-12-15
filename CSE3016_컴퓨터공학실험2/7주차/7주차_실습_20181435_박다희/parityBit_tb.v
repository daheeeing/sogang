`timescale 1ns / 1ps

module parityBit_tb;

reg InA, InB, InC, InD;

wire OutE;

parityBit u_parityBit(
    .InA(InA),
    .InB(InB),
    .InC(InC),
    .InD(InD),
    .OutE(OutE)
);

initial InA = 1'b0;
initial InB = 1'b0;
initial InC = 1'b0;
initial InD = 1'b0;

always InA = #20 ~InA;
always InB = #30 ~InB;
always InC = #40 ~InC;
always InD = #50 ~InD;

initial begin
    #1000
    $finish;
end
    
endmodule
