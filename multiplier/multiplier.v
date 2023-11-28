module MULTIPLIER_8X(
    input [7:0] a,
    input [7:0] b,
    output [15:0] result
);

    always @(*) begin
        result = a * b;
    end

endmodule;
