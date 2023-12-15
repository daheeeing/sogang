`timescale 1ns / 1ps

module seg_display (A, B, C, D, OutA, OutB, OutC, OutD, OutE, OutF, OutG, OutDp, OutW);
    input A, B, C, D;
    output OutA, OutB, OutC, OutD, OutE, OutF, OutG, OutDp, OutW;

    assign OutA = (~A&B&D)|(A&B&~D)|(A&~B&~C)|(~A&C&D)|(B&C)|(~B&~D);
    assign OutB = (A&~C&D)|(~A&C&D)|(~A&~C&~D)|(~A&~B)|(~B&~D);
    assign OutC = (~A&D)|(~A&~C&~D)|(A&~B)|(~C&D)|(~A&B);
    assign OutD = (B&~C&D)|(~B&C&D)|(B&C&~D)|(~A&~B&~D)|(A&~C&~D);
    assign OutE = (A&B)|(C&~D)|(A&~B&C)|(~B&~D);
    assign OutF = (A&~B)|(~C&~D)|(A&C)|(B&~D)|(~A&B&~C);
    assign OutG = (C&~D)|(A&~B)|(A&D)|(~B&C)|(~A&B&~C);
    assign OutDp = 1;
    assign OutW = 1;
    
endmodule