`timescale 1ns / 1ps

module SR_FF_NAND (R, S, CLK, Q, NQ);
    input R, S, CLK;
    output Q, NQ;

    assign Q = ~(~(CLK&S)&NQ);
    assign NQ = ~(~(CLK&R)&Q);
    
endmodule