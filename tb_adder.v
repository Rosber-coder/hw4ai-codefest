`timescale 1ns/1ps

module tb_adder;

    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    adder4 dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display(" time   a     b   cin | cout  sum");
        $display("-----------------------------------");

        a = 4'b0000; b = 4'b0000; cin = 1'b0; #10;
        $display("%4t   %b  %b   %b  |  %b    %b", $time, a, b, cin, cout, sum);

        a = 4'b0011; b = 4'b0101; cin = 1'b0; #10;
        $display("%4t   %b  %b   %b  |  %b    %b", $time, a, b, cin, cout, sum);

        a = 4'b1111; b = 4'b0001; cin = 1'b0; #10;
        $display("%4t   %b  %b   %b  |  %b    %b", $time, a, b, cin, cout, sum);

        a = 4'b1010; b = 4'b0101; cin = 1'b1; #10;
        $display("%4t   %b  %b   %b  |  %b    %b", $time, a, b, cin, cout, sum);

        $finish;
    end

endmodule
