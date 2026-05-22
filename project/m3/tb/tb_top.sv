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

        repeat (3) @(posedge clk);
        rst = 0;

        // End-to-end host transaction:
        // A = 3, B = 4, expected MAC result = 12
        host_write(8'h00, 32'd3);
        host_write(8'h04, 32'd4);
        host_write(8'h08, 32'd1);

        repeat (3) @(posedge clk);

        host_read(8'h0C);

        @(posedge clk);

        $display("Expected result = 12");
        $display("DUT result      = %0d", $signed(rdata));

        if ($signed(rdata) == 32'sd12) begin
            $display("PASS: End-to-end host-interface-compute-host test passed");
        end else begin
            $display("FAIL: End-to-end test failed");
        end

        #20;
        $finish;
    end

endmodule
