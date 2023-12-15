`timescale 1ns / 1ps

module bcd_tb;

reg A0, A1, A2, A3;

wire O1, O2, O3, O4, O5, O6, O7, O8, O9;

bcd u_bcd(
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .O1(O1),
    .O2(O2),
    .O3(O3),
    .O4(O4),
    .O5(O5),
    .O6(O6),
    .O7(O7),
    .O8(O8),
    .O9(O9)
);

initial A0 = 1'b0;
initial A1 = 1'b0;
initial A2 = 1'b0;
initial A3 = 1'b0;

always A0 = #20 ~A0;
always A1 = #30 ~A1;
always A2 = #30 ~A2;
always A3 = #30 ~A3;

initial begin
    #1000
    $finish;
end
    
endmodule