`timescale 1ns / 1ps

module parityBit (InA, InB, InC, InD, OutE);
    input InA, InB, InC, InD;
    output OutE;

    assign OutE = InA^InB^InC^InD;
    
endmodule
