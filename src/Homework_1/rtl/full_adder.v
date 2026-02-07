`timescale 1ns/1ps // sets the time unit to 1ns and the time precision to 1ps

module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign #2 sum = a ^ b ^ cin;
    assign #2 cout = (a & b) | (b & cin) | (a & cin);

endmodule
