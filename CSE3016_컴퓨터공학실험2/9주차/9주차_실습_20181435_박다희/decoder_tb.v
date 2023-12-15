`timescale 1ns / 1ps

module decoder_tb;

reg A, B;

wire D0, D1, D2, D3;

decoder u_decoder(
    .A(A),
    .B(B),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3)
);

initial A = 1'b0;
initial B = 1'b0;

always A = #20 ~A;
always B = #30 ~B;

initial begin
    #1000
    $finish;
end
    
endmodule