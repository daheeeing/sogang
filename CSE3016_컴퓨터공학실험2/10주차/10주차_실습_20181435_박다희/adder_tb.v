`timescale 1ns / 1ps

module adder_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire [3:0]C;

adder u_adder(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .C(C)
);

initial A = 4'D0;
initial B = 4'D0;
initial Cin = 1'b0;

always@(A or B or Cin)begin
A <= #10 A+4'D1;
B <= #20 A-4'D1;
Cin <= #30 ~Cin;
end

initial begin
    #1000
    $finish;
end
endmodule
