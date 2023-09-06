module vector5(
    input a, b, c, d, e,
    output [24:0] out 
);
    wire [24:0] part1;
    wire [24:0] part2;
    assign part1= {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign part2= {5{a, b, c, d, e}};
    assign out = ~part1 ^ part2;
endmodule
