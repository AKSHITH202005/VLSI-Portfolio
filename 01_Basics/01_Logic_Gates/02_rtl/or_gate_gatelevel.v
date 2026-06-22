module or_gate_gatelevel(
    input wire a,
    input wire b,
    output wire y
);

    or (y, a, b);

endmodule