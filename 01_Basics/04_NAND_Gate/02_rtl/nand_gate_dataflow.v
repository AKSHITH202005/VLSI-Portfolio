module nand_gate_dataflow(
    input A,
    input B,
    output Y
);

assign Y = ~(A & B);

endmodule