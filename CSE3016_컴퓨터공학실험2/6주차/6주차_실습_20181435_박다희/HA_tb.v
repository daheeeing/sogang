`timescale 1ns / 1ps

module HA_tb;

reg AA, BB;

wire C, S;

HA u_HA(
    .A(AA),
    .B(BB),
    .C(C),
    .S(S)
);

initial AA = 1'b0;
initial BB = 1'b0;

always AA = #20 ~AA;
always BB = #30 ~BB;

initial begin
    #1000
    $finish;
end
    
endmodule
