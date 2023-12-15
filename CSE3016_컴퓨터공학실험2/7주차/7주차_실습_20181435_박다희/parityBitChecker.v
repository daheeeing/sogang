`timescale 1ns / 1ps

module parityBitChecker (InA, InB, InC, InD, InP, OutPEC);
    input InA, InB, InC, InD, InP;
    output OutPEC;

    assign OutPEC = InA^InB^InC^InD^InP;
    
endmodule
