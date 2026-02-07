`timescale 1ns/1ps

module example (
    input a,
    input b,
    input c,
    output y
);

    assign y = a | c;

endmodule
