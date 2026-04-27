`timescale 1ns/1ps

module mac_tb;

    logic clk;
    logic rst;
    logic signed [7:0] a;
    logic signed [7:0] b;
    logic signed [31:0] out;

    mac dut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .out(out)
    );

    // 10 ns clock period
    always #5 clk = ~clk;

    initial begin
        $dumpfile("mac_tb.vcd");
        $dumpvars(0, mac_tb);

        clk = 0;
        rst = 1;
        a = 0;
        b = 0;

        // Apply reset
        @(posedge clk);
        #1;
        if (out !== 32'sd0)
            $display("FAIL: Reset output expected 0, got %0d", out);
        else
            $display("PASS: Reset output = %0d", out);

        // Release reset
        rst = 0;

        // Apply a = 3, b = 4 for 3 cycles
        a = 8'sd3;
        b = 8'sd4;

        @(posedge clk);
        #1;
        $display("Cycle 1: a=%0d b=%0d out=%0d", a, b, out);

        @(posedge clk);
        #1;
        $display("Cycle 2: a=%0d b=%0d out=%0d", a, b, out);

        @(posedge clk);
        #1;
        $display("Cycle 3: a=%0d b=%0d out=%0d", a, b, out);

        // Assert reset again
        rst = 1;
        @(posedge clk);
        #1;
        $display("After reset: out=%0d", out);

        // Release reset and apply a = -5, b = 2 for 2 cycles
        rst = 0;
        a = -8'sd5;
        b = 8'sd2;

        @(posedge clk);
        #1;
        $display("Cycle 4: a=%0d b=%0d out=%0d", a, b, out);

        @(posedge clk);
        #1;
        $display("Cycle 5: a=%0d b=%0d out=%0d", a, b, out);

        $finish;
    end

endmodule
