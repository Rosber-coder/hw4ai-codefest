`timescale 1ns/1ps

module crossbar_tb;

    logic clk;
    logic rst;

    logic signed [31:0] in_flat;
    logic signed [31:0] weight_flat;
    logic signed [127:0] out_flat;

    logic signed [31:0] out0, out1, out2, out3;

    crossbar_mac dut (
        .clk(clk),
        .rst(rst),
        .in_flat(in_flat),
        .weight_flat(weight_flat),
        .out_flat(out_flat)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        in_flat[0*8 +: 8] = 8'sd10;
        in_flat[1*8 +: 8] = 8'sd20;
        in_flat[2*8 +: 8] = 8'sd30;
        in_flat[3*8 +: 8] = 8'sd40;

        weight_flat[(0*4+0)*2 +: 2] =  2'sd1;
        weight_flat[(0*4+1)*2 +: 2] = -2'sd1;
        weight_flat[(0*4+2)*2 +: 2] =  2'sd1;
        weight_flat[(0*4+3)*2 +: 2] = -2'sd1;

        weight_flat[(1*4+0)*2 +: 2] =  2'sd1;
        weight_flat[(1*4+1)*2 +: 2] =  2'sd1;
        weight_flat[(1*4+2)*2 +: 2] = -2'sd1;
        weight_flat[(1*4+3)*2 +: 2] = -2'sd1;

        weight_flat[(2*4+0)*2 +: 2] = -2'sd1;
        weight_flat[(2*4+1)*2 +: 2] =  2'sd1;
        weight_flat[(2*4+2)*2 +: 2] =  2'sd1;
        weight_flat[(2*4+3)*2 +: 2] = -2'sd1;

        weight_flat[(3*4+0)*2 +: 2] = -2'sd1;
        weight_flat[(3*4+1)*2 +: 2] = -2'sd1;
        weight_flat[(3*4+2)*2 +: 2] = -2'sd1;
        weight_flat[(3*4+3)*2 +: 2] =  2'sd1;

        #12 rst = 0;
        #20;

        out0 = out_flat[0*32 +: 32];
        out1 = out_flat[1*32 +: 32];
        out2 = out_flat[2*32 +: 32];
        out3 = out_flat[3*32 +: 32];

        $display("out[0] = %0d, expected = -40", out0);
        $display("out[1] = %0d, expected = 0", out1);
        $display("out[2] = %0d, expected = -20", out2);
        $display("out[3] = %0d, expected = -20", out3);

        if (out0 == -40 && out1 == 0 && out2 == -20 && out3 == -20)
            $display("PASS: Crossbar MAC outputs matched expected values.");
        else
            $display("FAIL: Crossbar MAC output mismatch.");

        $finish;
    end

endmodule
