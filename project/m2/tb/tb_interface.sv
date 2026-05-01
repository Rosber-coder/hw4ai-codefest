`timescale 1ns/1ps

module tb_interface;

    reg clk;
    reg rst;
    reg valid;
    wire ready;
    reg write;
    reg [7:0] addr;
    reg [31:0] wdata;
    wire [31:0] rdata;

    wire core_valid;
    wire signed [7:0] core_a;
    wire signed [7:0] core_b;
    reg  signed [31:0] core_out;

    interface_module dut (
        .clk(clk),
        .rst(rst),
        .valid(valid),
        .ready(ready),
        .write(write),
        .addr(addr),
        .wdata(wdata),
        .rdata(rdata),
        .core_valid(core_valid),
        .core_a(core_a),
        .core_b(core_b),
        .core_out(core_out)
    );

    always #5 clk = ~clk;

    task bus_write;
        input [7:0] a_addr;
        input [31:0] data;
        begin
            @(negedge clk);
            valid = 1;
            write = 1;
            addr  = a_addr;
            wdata = data;

            @(negedge clk);
            valid = 0;
            write = 0;
        end
    endtask

    task bus_read;
        input [7:0] a_addr;
        begin
            @(negedge clk);
            valid = 1;
            write = 0;
            addr  = a_addr;

            @(negedge clk);
            valid = 0;
        end
    endtask

    initial begin
        clk = 0;
        rst = 1;
        valid = 0;
        write = 0;
        addr = 0;
        wdata = 0;
        core_out = 12;   // mock result

        #20;
        rst = 0;

        // WRITE A = 3
        bus_write(8'h00, 3);

        // WRITE B = 4
        bus_write(8'h04, 4);

        // START
        bus_write(8'h08, 1);

        // Check values
        if (core_a !== 3 || core_b !== 4) begin
            $display("FAIL: Write failed");
            $finish;
        end

        // READ RESULT
        bus_read(8'h0C);
        #1;

        if (rdata === 12) begin
            $display("PASS: interface working");
        end else begin
            $display("FAIL: read mismatch");
        end

        $finish;
    end

endmodule
