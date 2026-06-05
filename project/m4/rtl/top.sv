/*
 * Module: top
 *
 * Purpose:
 *   M4 integrated top module connecting the memory-mapped interface
 *   to the INT8 MAC compute core.
 *
 * Ports:
 *   clk   : input,  1 bit   - clock
 *   rst   : input,  1 bit   - active-high reset
 *   valid : input,  1 bit   - host request valid
 *   ready : output, 1 bit   - interface ready
 *   write : input,  1 bit   - host write enable
 *   addr  : input,  8 bits  - memory-mapped address
 *   wdata : input,  32 bits - host write data
 *   rdata : output, 32 bits - host read data
 *
 * Glue logic:
 *   No extra FIFO or clock-domain crossing is used.
 *   The interface directly drives core_valid, core_a, and core_b.
 *   The compute result core_out is returned back through the interface.
 */

module top (
    input  wire clk,
    input  wire rst,

    input  wire valid,
    output wire ready,
    input  wire write,

    input  wire [7:0]  addr,
    input  wire [31:0] wdata,
    output wire [31:0] rdata
);

    wire core_valid;
    wire signed [7:0] core_a;
    wire signed [7:0] core_b;
    wire signed [31:0] core_out;

    interface_ctrl u_interface (
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

    compute_core u_compute (
        .clk(clk),
        .rst(rst),
        .valid(core_valid),
        .a(core_a),
        .b(core_b),
        .out(core_out)
    );

endmodule
