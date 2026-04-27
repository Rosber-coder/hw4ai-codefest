module mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [7:0] a,
    input  logic signed [7:0] b,
    output logic signed [31:0] out
);

    logic signed [31:0] product_ext;

    assign product_ext = $signed(a) * $signed(b);

    always_ff @(posedge clk) begin
        if (rst) begin
            out <= 32'sd0;
        end else begin
            // 32-bit signed accumulation with wraparound
            out <= out + product_ext;
        end
    end

endmodule
