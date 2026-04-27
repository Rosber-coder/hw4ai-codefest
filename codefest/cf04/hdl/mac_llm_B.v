// Multiply-Accumulate (MAC) Module
// Synthesizable SystemVerilog - Compatible with Yosys
module mac (
    input  logic        clk,
    input  logic        rst,
    input  logic signed [7:0]  a,
    input  logic signed [7:0]  b,
    output logic signed [31:0] out
);

    // Intermediate product wire with full precision
    // 8-bit signed x 8-bit signed = 16-bit signed product
    // Sign extension to 32-bit is handled implicitly by the signed qualifier
    logic signed [15:0] product;

    assign product = a * b;  // Signed multiplication, result is 16-bit signed

    always_ff @(posedge clk) begin
        if (rst) begin
            out <= 32'sd0;
        end else begin
            out <= out + 32'(product);  // Explicit cast to 32-bit signed before accumulation
        end
    end

endmodule
