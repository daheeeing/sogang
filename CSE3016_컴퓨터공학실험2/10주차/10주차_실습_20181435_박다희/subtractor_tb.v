`timescale 1ns / 1ps

module subtractor_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg bin;
    wire [3:0] D;
    wire [3:0] b;

subtractor u_subtractor(
    .A(A),
    .B(B),
    .bin(bin),
    .D(D),
    .b(b)
);

initial A = 4'D0;
initial B = 4'D0;
initial bin = 1'b0;

always@(A or B or bin)begin
A <= #10 A+4'D1;
B <= #20 A-4'D1;
bin <= #30 ~bin;
end

initial begin
    #1500
    $finish;
end
endmodule
