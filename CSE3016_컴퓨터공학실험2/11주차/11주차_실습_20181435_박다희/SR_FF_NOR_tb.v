`timescale 1ns / 1ps

module SR_FF_NOR_tb;

reg S, R, CLK;

wire Q, NQ;

SR_FF_NOR u_SR_FF_NOR(
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q(Q),
    .NQ(NQ)
);

initial R = 1'b1;
initial S = 1'b0;
initial CLK = 1'b0;

always R = #20 ~R;
always S = #40 ~S;
always CLK = #60 ~CLK;

initial begin
    #1000
    $finish;
end
    
endmodule