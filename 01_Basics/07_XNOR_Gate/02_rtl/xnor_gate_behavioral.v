module xnor_gate_behavioral(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A ^ B);
end

endmodule