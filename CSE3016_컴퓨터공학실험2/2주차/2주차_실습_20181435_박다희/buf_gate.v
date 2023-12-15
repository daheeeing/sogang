`timescale 1ns / 1ps

module buf_gate(
    input a,
    output y );
    
    assign y = ~(~a);
endmodule
