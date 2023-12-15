`timescale 1ns / 1ps

module bcd (A0, A1, A2, A3, O1, O2, O3, O4, O5, O6, O7, O8, O9);
    input A0, A1, A2, A3;
    output O1, O2, O3, O4, O5, O6, O7, O8, O9;

    assign O1 = A0 & (~A1) & (~A2) & (~A3);
    assign O2 = (~A0) & A1 & (~A2) & (~A3);
    assign O3 = A0 & A1 & (~A2) & (~A3);
    assign O4 = (~A0) & (~A1) & A2 & (~A3);
    assign O5 = A0 & (~A1) & A2 & (~A3);
    assign O6 = (~A0) & A1 & A2 & (~A3);
    assign O7 = A0 & A1 & A2 & (~A3);
    assign O8 = (~A0) & (~A1) & (~A2) & A3;
    assign O9 = A0 & (~A1) & (~A2) & A3;
    
endmodule