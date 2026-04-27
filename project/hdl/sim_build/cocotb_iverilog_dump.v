module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/int8_gemm_core.fst");
    $dumpvars(0, int8_gemm_core);
end
endmodule
