module int8_gemm_core #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 32
)(
    input  logic clk,
    input  logic rst,

    input  logic signed [DATA_WIDTH-1:0] a_in,
    input  logic signed [DATA_WIDTH-1:0] b_in,
    input  logic valid_in,

    output logic signed [ACC_WIDTH-1:0] acc_out,
    output logic valid_out
);

    logic signed [ACC_WIDTH-1:0] product_ext;

    assign product_ext = $signed(a_in) * $signed(b_in);

    always_ff @(posedge clk) begin
        if (rst) begin
            acc_out   <= '0;
            valid_out <= 1'b0;
        end else begin
            if (valid_in) begin
                acc_out   <= acc_out + product_ext;
                valid_out <= 1'b1;
            end else begin
                valid_out <= 1'b0;
            end
        end
    end

endmodule
