/*
 * Module: interface_ctrl
 *
 * Purpose:
 *   Memory-mapped interface to control compute_core.
 *
 * Protocol:
 *   Simple valid/ready handshake (always-ready).
 *
 * Register Map:
 *   0x00 : operand A
 *   0x04 : operand B
 *   0x08 : control (bit[0] = start)
 *   0x0C : result
 *
 * Ports:
 *   clk        : clock
 *   rst        : active-high synchronous reset
 *   valid      : request valid
 *   ready      : always ready
 *   write      : write enable
 *   addr       : address
 *   wdata      : write data
 *   rdata      : read data
 *   core_valid : trigger to compute core
 *   core_a     : operand A
 *   core_b     : operand B
 *   core_out   : result from compute core
 */



module interface_ctrl (
    input  wire clk,
    input  wire rst,

    input  wire valid,
    output wire ready,
    input  wire write,
    input  wire [7:0] addr,
    input  wire [31:0] wdata,
    output reg  [31:0] rdata,

    output reg  core_valid,
    output reg  signed [7:0] core_a,
    output reg  signed [7:0] core_b,
    input  wire signed [31:0] core_out
);

    assign ready = 1'b1;

    always @(posedge clk) begin
        if (rst) begin
            core_a     <= 0;
            core_b     <= 0;
            core_valid <= 0;
            rdata      <= 0;
        end else begin
            core_valid <= 0;

            if (valid && ready) begin
                if (write) begin
                    case (addr)
                        8'h00: core_a <= wdata[7:0];
                        8'h04: core_b <= wdata[7:0];
                        8'h08: begin
                            if (wdata[0])
                                core_valid <= 1;
                        end
                    endcase
                end else begin
                    case (addr)
                        8'h00: rdata <= {{24{core_a[7]}}, core_a};
                        8'h04: rdata <= {{24{core_b[7]}}, core_b};
                        8'h0C: rdata <= core_out;
                        default: rdata <= 0;
                    endcase
                end
            end
        end
    end

endmodule
