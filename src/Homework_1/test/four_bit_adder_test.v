`timescale 1ns/1ps // sets the time unit to 1ns and the time precision to 1ps

module four_bit_adder_test(
    output reg [3:0] a,
    output reg [3:0] b,
    output reg cin,
    input [3:0] sum,
    input cout
);

    initial begin
        $dumpfile("waves/dump.vcd");
        $dumpvars(0, four_bit_adder_test);

        // 0 + 0 + 0 = 0
        // 0000 + 0000 + 0 = 0000
        a = 4'b0000; b = 4'b0000; cin = 0;
        #50; // delay for 50ns
        $display("a=%b b=%b cin=%b sum=%b cout=%b", a,b,cin,sum,cout);

        // 3 + 5 = 8
        // 0011 + 0101 = 1000
        a = 4'b0011; b = 4'b0101; cin = 0;
        #50; // delay for 50ns
        $display("a=%b b=%b cin=%b sum=%b cout=%b", a,b,cin,sum,cout);

        // 7 + 8 + 1 = 16
        // 0111 + 1000 + 1 = 10000
        a = 4'b0111; b = 4'b1000; cin = 1;
        #50; // delay for 50ns
        $display("a=%b b=%b cin=%b sum=%b cout=%b", a,b,cin,sum,cout);

        // 15 + 1 + 1 = 17
        // 1111 + 0001 + 1 = 10001
        a = 4'b1111; b = 4'b0001; cin = 1;
        #50; // delay for 50ns
        $display("a=%b b=%b cin=%b sum=%b cout=%b", a,b,cin,sum,cout);

        // 15 + 15 + 1 = 31
        // 1111 + 1111 + 1 = 11111
        a = 4'b1111; b = 4'b1111; cin = 1;
        #50; // delay for 50ns
        $display("a=%b b=%b cin=%b sum=%b cout=%b", a,b,cin,sum,cout);
    end
endmodule
