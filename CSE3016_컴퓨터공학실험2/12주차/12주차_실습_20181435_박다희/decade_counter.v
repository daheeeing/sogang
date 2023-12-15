`timescale 1ns / 1ps

module decade_counter(clk, rst, out);

output[3:0] out;
input clk, rst;
reg[3:0] out;

always @(posedge clk)

    begin
     if (!rst)
        out<=0;
     else
        if (out == 9) begin
            out <= 0;
        end
        else begin
        out <= out + 1;
        end
    end

endmodule