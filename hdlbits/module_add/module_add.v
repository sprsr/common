module module_add(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire x;
    add16 m1 ( .a(a[15:0]),
               .b(b[15:0]),
              .cin(0),
              .cout(x),
              .sum(sum[15:0])
             );
    add16 m2 ( .a(a[31:16]),
               .b(b[31:16]),
              .cin(x),
              .cout(),
              .sum(sum[31:16])
             );
endmodule
