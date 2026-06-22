module and_gate_behavioral(
    input  wire a,
    input  wire b,
    output reg  y
);

always @(*) begin
    y = a & b;
end

endmodule