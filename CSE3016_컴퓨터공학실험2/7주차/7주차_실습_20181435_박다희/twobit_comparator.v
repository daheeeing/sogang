`timescale 1ns / 1ps

module twobit_comparator (InA, InB, InC, InD, OutF1, OutF2, OutF3);
    input InA, InB, InC, InD;
    output OutF1, OutF2, OutF3;

    assign OutF1 = (InA&(~InC))|(InB&(~InC)&(~InD))|(InA&InB&(~InD));
    assign OutF2 = (~(InA^InC)) & (~(InB^InD));
    assign OutF3 = ((~InA)&InC)|((~InA)&(~InB)&InD)|((~InB)&InC&InD);
    
endmodule