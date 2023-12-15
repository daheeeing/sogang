`timescale 1ns / 1ps

module parityBitChecker_tb;

reg InA, InB, InC, InD, InP;

wire OutPEC;

parityBitChecker u_parityBitChecker(
    .InA(InA),
    .InB(InB),
    .InC(InC),
    .InD(InD),
    .InP(InP),
    .OutPEC(OutPEC)
);

initial InA = 1'b0;
initial InB = 1'b0;
initial InC = 1'b0;
initial InD = 1'b0;
initial InP = 1'b0;

always InA = #20 ~InA;
always InB = #30 ~InB;
always InC = #40 ~InC;
always InD = #50 ~InD;
always InP = #60 ~InP;

initial begin
    #1500
    $finish;
end
    
endmodule