//1-bit full adder
module full_adder_1b (
    input a,
    input b,
    input cin,
    output reg sum,
    output reg cout
);
  always @(a or b or cin) begin
    sum  = #2 a ^ b ^ cin;
    cout = #2 (a & b) | (a & cin) | (b & cin);
  end
endmodule
