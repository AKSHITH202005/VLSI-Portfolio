module not_gate_behavioral(
    input a,
    output reg y
);

always @(*) begin
    y = ~a;
end

endmodule