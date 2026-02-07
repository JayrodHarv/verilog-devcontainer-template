`timescale 1ns/1ps

module adder_tb;

    // Signals
    reg [3:0] a;
    reg [3:0] b;
    wire [4:0] sum;

    // Instantiate DUT
    adder dut (
        .a(a),
        .b(b),
        .sum(sum)
    );

    // Instantiate stimulus
    adder_test stim (
        .a(a),
        .b(b)
    );

    // Clock / dump (if needed)
    initial begin
        $dumpfile("waves/adder.vcd");
        $dumpvars(0, adder_tb);
    end

    initial begin
        #50; // wait for stimulus to finish
        $display("TEST COMPLETE");
        $finish;
    end

endmodule
