`timescale 1ns / 1ps

module twobit_comparator_tb;

reg InA, InB, InC, InD;

wire OutF1, OutF2, OutF3;

twobit_comparator u_twobit_comparator(
    .InA(InA),
    .InB(InB),
    .InC(InC),
    .InD(InD),
    .OutF1(OutF1),
    .OutF2(OutF2),
    .OutF3(OutF3)
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