`timescale 1ns / 1ps

module D_FF (D, CLK, Q, NQ);
    input D, CLK;
    output Q, NQ;

    assign Q = ~(~(D&CLK)&NQ);
    assign NQ = ~(~(~D&CLK)&Q);
    
endmodule