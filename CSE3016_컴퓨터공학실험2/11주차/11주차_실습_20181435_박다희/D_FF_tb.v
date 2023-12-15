`timescale 1ns / 1ps

module D_FF_tb;

reg D, CLK;

wire Q, NQ;

D_FF u_D_FF(
    .D(D),
    .CLK(CLK),
    .Q(Q),
    .NQ(NQ)
);

initial D = 1'b0;
initial CLK = 1'b0;

always D = #20 ~D;
always CLK = #40 ~CLK;

initial begin
    #1000
    $finish;
end
    
endmodule