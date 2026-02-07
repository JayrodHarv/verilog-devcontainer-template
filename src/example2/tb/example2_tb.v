`timescale 1ns/1ps

module example2_tb;

    // --------------------
    // Signals
    // --------------------
    reg clk;
    reg rst;

    // DUT signals
    // reg  a;
    // reg  b;
    // wire y;

    // --------------------
    // Clock generation
    // --------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // --------------------
    // DUT instance
    // --------------------
    example2 dut (
        // .a(a),
        // .b(b),
        // .y(y)
    );

    // --------------------
    // Dump waves
    // --------------------
    initial begin
        $dumpfile("waves/dump.vcd");
        $dumpvars(0, example2_tb);
    end

    // --------------------
    // Test sequence
    // --------------------
    initial begin
        rst = 1;
        #20 rst = 0;

        // stimulus here

        #100;
        $display("TEST COMPLETE");
        $finish;
    end

endmodule
