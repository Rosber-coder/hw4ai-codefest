`timescale 1ns/1ps

module tb_compute_core;

    logic clk;
    logic rst;
    logic valid;
    logic signed [7:0] a;
    logic signed [7:0] b;
    logic signed [31:0] out;

    logic signed [31:0] expected;

    compute_core dut (
        .clk(clk),
        .rst(rst),
        .valid(valid),
        .a(a),
        .b(b),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("project/m2/sim/compute_core.vcd");
        $dumpvars(0, tb_compute_core);
        clk = 0;
        rst = 1;
        valid = 0;
        a = 0;
        b = 0;
        expected = 0;

        #10;
        rst = 0;

        // Representative INT8 MAC/GEMM-style input sequence
        valid = 1;

        a = 8'sd3;   b = 8'sd4;   expected = expected + (3 * 4);    #10;
        a = -8'sd5;  b = 8'sd2;   expected = expected + (-5 * 2);   #10;
        a = 8'sd7;   b = -8'sd3;  expected = expected + (7 * -3);   #10;
        a = -8'sd8;  b = -8'sd4;  expected = expected + (-8 * -4);  #10;

        valid = 0;
        #10;

        if (out === expected) begin
            $display("PASS: compute_core output matched expected value.");
            $display("Expected = %0d, DUT Output = %0d", expected, out);
        end else begin
            $display("FAIL: compute_core output mismatch.");
            $display("Expected = %0d, DUT Output = %0d", expected, out);
        end

        $finish;
    end

endmodule
