`timescale 1ns / 1ps

module up_down_counter(clk, rst, up, out, digit, dp);
input clk, rst, up;
output [3:0] out;
output [6:0] digit;
output dp;
reg [3:0] out;
reg [6:0] digit;
reg dp;

initial out = 4'b0000;

always @(posedge clk)
begin
if (rst == 1) begin
out = 4'b0000;
end
else if (up == 1) out = out + 1;
else if (up == 0) out = out - 1;
if (up == 0) begin
    digit[0] = 0;
    digit[1] = 1;
    digit[2] = 1;
    digit[3] = 1;
    digit[4] = 1;
    digit[5] = 0;
    digit[6] = 1;
end
else begin
    digit[0] = 0;
    digit[1] = 1;
    digit[2] = 1;
    digit[3] = 1;
    digit[4] = 1;
    digit[5] = 1;
    digit[6] = 0;
end
dp = digit[0]|digit[1]|digit[2]|digit[3]|digit[4]|digit[5]|digit[6];

end
endmodule
