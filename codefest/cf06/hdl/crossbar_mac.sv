module crossbar_mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [31:0] in_flat,
    input  logic signed [31:0] weight_flat,
    output logic signed [127:0] out_flat
);

    logic signed [7:0] in [0:3];
    logic signed [1:0] weight [0:3][0:3];
    logic signed [31:0] out [0:3];

    integer i, j;
    logic signed [31:0] temp;

    always_comb begin
        for (i = 0; i < 4; i++)
            in[i] = in_flat[i*8 +: 8];

        for (i = 0; i < 4; i++)
            for (j = 0; j < 4; j++)
                weight[i][j] = weight_flat[(i*4+j)*2 +: 2];
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            for (j = 0; j < 4; j++)
                out[j] <= 32'sd0;
        end else begin
            for (j = 0; j < 4; j++) begin
                temp = 32'sd0;
                for (i = 0; i < 4; i++) begin
                    if (weight[i][j] == 2'sd1)
                        temp = temp + in[i];
                    else
                        temp = temp - in[i];
                end
                out[j] <= temp;
            end
        end
    end

    always_comb begin
        for (j = 0; j < 4; j++)
            out_flat[j*32 +: 32] = out[j];
    end

endmodule
