`timescale 1ns/1ps // sets the time unit to 1ns and the time precision to 1ps

module example_test(
    output reg a,
    output reg b,
    output reg c,
    input y
);

    reg [3:0] i; // 4-bit register to iterate through all combinations of a, b, c

    initial begin
        $dumpfile("waves/dump.vcd");
        $dumpvars(0, example_test);

        // create for loop to test all combinations of a, b, c
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i; // assign the value of i to a, b, c
            #50; // delay for 50ns
            $display("a=%b b=%b c=%b y=%b", a,b,c,y);
        end
    end
endmodule
