# Remaining Tasks Before M4

1. **Pipeline the MAC datapath in `project/m2/rtl/compute_core.sv`** to fix the −2.624 ns
   setup slack (WNS at max_ss_100C_1v60). Register the 16-bit intermediate product
   (`product = a * b`) into a pipeline register on the clock edge, then perform the 32-bit
   sign-extension and accumulation (`out <= out + {{16{product[15]}}, product}`) in the
   following cycle. This splits the multiply-accumulate critical path into two shorter
   stages, allowing the design to close timing at the 10 ns target across all corners.

2. **Add a cycle counter and valid-cycle counter to `project/m3/rtl/top.sv`** so that
   accelerator runtime can be measured in actual cycles from the cocotb testbench rather
   than estimated from projected clock frequency. Specifically: add a 32-bit `cycle_count`
   register that increments every clock cycle, and a 32-bit `mac_count` register that
   increments when `core_valid` is asserted. Expose both via memory-mapped read registers
   (e.g., at addresses 0x10 and 0x14) so the cocotb testbench can read them after the
   GEMM workload completes and compute actual utilization = mac_count / cycle_count.

3. **Add an 8-entry input FIFO buffer in `project/m3/rtl/top.sv`** between the host
   interface (`interface_ctrl`) and the MAC core (`compute_core`) to decouple operand
   delivery from MAC execution. The current design stalls the MAC core whenever the host
   interface is not asserting `valid`, wasting compute cycles during register-write
   sequences. An 8-entry FIFO (one entry per (A, B) pair, 16 bits wide) would allow the
   host to pre-load a burst of operands and let the MAC core drain them at full throughput,
   improving MAC utilization toward the 100% assumed in the CF09 projection.
