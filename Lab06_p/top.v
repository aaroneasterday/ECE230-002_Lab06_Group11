// Implement top level module
module top(
    input [7:0]sw,
    output [5:0]led
);

light assign_light(
    .downstairs(sw[0]),
    .upstairs(sw[1]),
    .stair_light(led[0])
);

adder assign_adder(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
);

full_adder assign_full(
    .A(sw[4]),
    .B(sw[5]),
    .C(sw[6]),
    .D(sw[7]),
    .carryIn(0),
    .Y(led[3]),
    .Z(led[4]),
    .carry2(led[5])
);
endmodule