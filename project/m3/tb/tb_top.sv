`timescale 1ns/1ps

module tb_top;

    logic clk;
    logic rst;
    logic valid;
    logic ready;
    logic write;
    logic [7:0] addr;
    logic [31:0] wdata;
    logic [31:0] rdata;

    integer row, col, k;
    integer expected;
    integer errors;

    top dut (
        .clk(clk),
        .rst(rst),
        .valid(valid),
        .ready(ready),
        .write(write),
        .addr(addr),
        .wdata(wdata),
        .rdata(rdata)
    );

    always #5 clk = ~clk;

    task reset_core;
        begin
            @(negedge clk);
            rst = 1;
            valid = 0;
            write = 0;
            addr = 0;
            wdata = 0;
            repeat (2) @(negedge clk);
            rst = 0;
        end
    endtask

    task host_write(input [7:0] write_addr, input [31:0] write_data);
        begin
            @(negedge clk);
            valid = 1'b1;
            write = 1'b1;
            addr  = write_addr;
            wdata = write_data;

            @(negedge clk);
            valid = 1'b0;
            write = 1'b0;
            addr  = 8'h00;
            wdata = 32'h00000000;
        end
    endtask

    task host_read(input [7:0] read_addr);
        begin
            @(negedge clk);
            valid = 1'b1;
            write = 1'b0;
            addr  = read_addr;

            @(negedge clk);
            valid = 1'b0;
            addr  = 8'h00;
        end
    endtask

    initial begin
        $dumpfile("project/m3/sim/cosim_waveform.vcd");
        $dumpvars(0, tb_top);

        clk = 0;
        rst = 1;
        valid = 0;
        write = 0;
        addr = 0;
        wdata = 0;
        errors = 0;

        repeat (3) @(posedge clk);
        rst = 0;

        /*
         * Full 16x16 GEMM-style test.
         *
         * For each output C[row][col], the test performs:
         * C[row][col] = sum over k=0..15 of A[row][k] * B[k][col]
         *
         * Matrix values are generated deterministically:
         * A[row][k] = row + k + 1
         * B[k][col] = k + col + 1
         *
         * Each multiply-accumulate is sent through the host interface.
         * The testbench never directly drives compute_core ports.
         */

        for (row = 0; row < 16; row = row + 1) begin
            for (col = 0; col < 16; col = col + 1) begin

                reset_core();
                expected = 0;

                for (k = 0; k < 16; k = k + 1) begin
                    host_write(8'h00, row + k + 1);
                    host_write(8'h04, k + col + 1);
                    host_write(8'h08, 32'd1);

                    expected = expected + ((row + k + 1) * (k + col + 1));

                    repeat (1) @(posedge clk);
                end

                repeat (2) @(posedge clk);
                host_read(8'h0C);
                @(posedge clk);

                if ($signed(rdata) !== expected) begin
                    $display("FAIL: C[%0d][%0d] expected=%0d got=%0d",
                             row, col, expected, $signed(rdata));
                    errors = errors + 1;
                end
            end
        end

        if (errors == 0) begin
            $display("PASS: Full 16x16 GEMM-style host-interface-compute-host test passed");
            $display("Checked 256 output elements with 16 MACs each = 4096 MAC operations");
        end else begin
            $display("FAIL: Full 16x16 GEMM-style test failed with %0d errors", errors);
        end

        #20;
        $finish;
    end

endmodule
