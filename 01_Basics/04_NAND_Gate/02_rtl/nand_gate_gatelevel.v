module nand_gate_gatelevel(
    input A,
    input B,
    output Y
);

nand (Y, A, B);

endmodule