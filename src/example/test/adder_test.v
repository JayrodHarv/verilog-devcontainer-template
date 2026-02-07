// This is the stimulus module
module adder_test(
    output reg [3:0] a,
    output reg [3:0] b
);

    initial begin
        a = 0; b = 0;
        #10 a = 1; b = 2;
        #10 a = 3; b = 4;
        #10 a = 7; b = 8;
        #10 a = 15; b = 0;
    end

endmodule
