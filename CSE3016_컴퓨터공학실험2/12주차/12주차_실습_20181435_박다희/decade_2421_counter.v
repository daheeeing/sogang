`timescale 1ns / 1ps

module decade_2421_counter(clk, rst, out);

output[3:0] out;
input clk, rst;
reg[3:0] out;

always @(posedge clk)

    begin
     if (!rst) begin
        out<=0;
     end
     else begin
        if (out == 4) begin
            out <= ~out;
        end
        else if (out == 15) begin
            out <= 0;
        end
        else begin
        out <= out + 1;
        end
     end
    end

endmodule