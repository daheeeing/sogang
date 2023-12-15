`timescale 1ns / 1ps

module mealy(clk, rst, i, out, z);
input clk, rst, i;
output [3:0] out;
output z;
reg z;
reg [3:0] out;

reg [3:0]tar = 4'b1101;

initial out = 4'b0000;
initial z = 1'b0;

always@(posedge clk)
begin
    if (!rst) begin 
        out = 4'b0000;
        z = 1'b0;
    end
    else begin
    if (out == tar) begin
        z = 1'b1;
    end
    else begin
        z = 1'b0;
    end
    out[3] <= out[2];
    out[2] <= out[1];
    out[1] <= out[0];
    out[0] <= i;
    end
end

endmodule