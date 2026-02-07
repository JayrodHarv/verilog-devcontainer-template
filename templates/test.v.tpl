`timescale 1ns/1ps // sets the time unit to 1ns and the time precision to 1ps

module {{NAME}}_test(
    // inputs and outputs
);

    initial begin
        $dumpfile("waves/dump.vcd");
        $dumpvars(0, {{NAME}});

        // write test cases here

    end
endmodule
