`timescale 1ns / 1ps

module buf_gate_tb;

reg aa;
wire y;

buf_gate u_buf_gate (
.a(aa),
.y(y)
);

initial aa = 1'b0;
always aa = #100 ~aa;

initial begin
#1000
$finish;
end


endmodule
