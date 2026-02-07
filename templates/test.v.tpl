`timescale 1ns/1ps // sets the time unit to 1ns and the time precision to 1ps

module four_bit_adder_test(
    // inputs and outputs
);

    initial begin
        $dumpfile("waves/dump.vcd");
        $dumpvars(0, four_bit_adder_test);

        // write test cases here

    end
endmodule
