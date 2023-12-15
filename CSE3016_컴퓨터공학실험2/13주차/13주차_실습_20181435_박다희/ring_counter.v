`timescale 1ns / 1ps

module ring_counter(clk, rst, out);
input clk, rst;
output [3:0] out;
reg [3:0] out;

initial out = 4'b0001;

always@(posedge clk)
begin
    if (!rst) begin 
        out = 4'b0001;
    end
    else begin 
    out[3] <= out[0];
    out[2] <= out[3];
    out[1] <= out[2];
    out[0] <= out[1];
    end
end
endmodule
