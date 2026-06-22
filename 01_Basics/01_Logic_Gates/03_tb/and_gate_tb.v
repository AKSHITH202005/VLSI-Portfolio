`timescale 1ns/1ps

module and_gate_tb;

reg a;
reg b;

wire y;

integer errors = 0;

// DUT
and_gate_dataflow dut(
    .a(a),
    .b(b),
    .y(y)
);

task check;

    input ta;
    input tb;
    input expected;

begin

    a = ta;
    b = tb;

    #10;

    if(y == expected)
        $display("PASS : A=%b B=%b -> Y=%b",a,b,y);
    else begin
        $display("FAIL : A=%b B=%b -> Expected=%b Got=%b",
                    a,b,expected,y);
        errors = errors + 1;
    end

end

endtask


initial begin

    $dumpfile("and_gate.vcd");
    $dumpvars(0,and_gate_tb);

    check(0,0,0);
    check(0,1,0);
    check(1,0,0);
    check(1,1,1);

    if(errors==0)
        $display("\nALL TESTS PASSED");
    else
        $display("\nTOTAL ERRORS = %0d",errors);

    $finish;

end

endmodule