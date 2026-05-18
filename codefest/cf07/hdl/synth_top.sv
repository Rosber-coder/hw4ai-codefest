/*
 * Module: compute_core
 *
 * Purpose:
 *   Simple INT8 multiply-accumulate compute core for the HW4AI M2 project.
 *   This represents the dominant GEMM/MAC operation from the project.
 *
 * Ports:
 *   clk    : input,  1 bit   - clock
 *   rst    : input,  1 bit   - active-high synchronous reset
 *   valid  : input,  1 bit   - when high, input a and b are accumulated
 *   a      : input,  8 bits  - signed INT8 operand A
 *   b      : input,  8 bits  - signed INT8 operand B
 *   out    : output, 32 bits - signed accumulated MAC result
 *
 * Clocking:
 *   Single clock domain using clk.
 *
 * Reset:
 *   Active-high synchronous reset. When rst = 1, out is cleared to 0.
 */

module synth_top (
    input  logic clk,
    input  logic rst,
    input  logic valid,
    input  logic signed [7:0] a,
    input  logic signed [7:0] b,
    output logic signed [31:0] out
);

    logic signed [15:0] product;

    assign product = a * b;

    always_ff @(posedge clk) begin
        if (rst) begin
            out <= 32'sd0;
        end else if (valid) begin
            out <= out + {{16{product[15]}}, product};
        end
    end

endmodule
