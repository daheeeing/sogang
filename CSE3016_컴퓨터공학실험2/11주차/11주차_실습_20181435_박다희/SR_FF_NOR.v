`timescale 1ns / 1ps

module SR_FF_NOR (R, S, CLK, Q, NQ);
    input R, S, CLK;
    output Q, NQ;

    assign Q = ~((CLK&R)|NQ);
    assign NQ = ~((CLK&S)|Q);
    
endmodule