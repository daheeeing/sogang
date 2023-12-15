`timescale 1ns / 1ps

module FS_tb;

reg AA, BB, bnbn;

wire D,b;

FS u_FS(
    .A(AA),
    .B(BB),
    .bn(bnbn),
    .D(D),
    .b(b)
);

initial AA = 1'b0;
initial BB = 1'b0;
initial bnbn = 1'b0;

always AA = #20 ~AA;
always BB = #30 ~BB;
always bnbn = #40 ~bnbn;

initial begin
    #240
    $finish;
end
    
endmodule
