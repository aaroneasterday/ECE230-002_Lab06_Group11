// Implement module called full_adder
module full_adder(
    // Declare your inputs
    input A, B, C, D, carryIn,

    // Declare Y output
    output Y, Z,

    // Declare carry output
    output carry, carry2

);

    // used a two bit adder instead of two one bit adders. 

    assign Y = ~carryIn & (A ^ C) | carryIn & ~(A ^ C);
    assign carry = A & carryIn | A & C | C & carryIn;

    assign Z = ~carry & (B ^ D) | carry & ~(B ^ D);
    assign carry2 = B & carry | B & D | D & carry;

endmodule