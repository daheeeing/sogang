`timescale 1ns / 1ps

module HS_tb;

reg AA, BB;

wire D,b;

HS u_HS(
    .A(AA),
    .B(BB),
    .D(D),
    .b(b)
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