`timescale 1ns / 1ps

module FA_tb;

reg AA, BB, Cin;

wire Cout, S;

FA u_FA(
    .A(AA),
    .B(BB),
    .Cin(Cin),
    .Cout(Cout),
    .S(S)
);

initial AA = 1'b0;
initial BB = 1'b0;
initial Cin = 1'b0;

always AA = #20 ~AA;
always BB = #30 ~BB;
always Cin = #40 ~Cin;

initial begin
    #1000
    $finish;
end
    
endmodule