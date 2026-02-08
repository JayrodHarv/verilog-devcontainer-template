`timescale 1ns/1ps

module {{NAME}} (
    input a,
    input b,
    input c,
    output y
);

    assign y = a | c;

endmodule
