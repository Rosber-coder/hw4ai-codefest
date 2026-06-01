# Remaining Tasks Before M4

1. Pipeline the MAC datapath in `project/m2/rtl/compute_core.sv` by separating the INT8 multiply and 32-bit accumulation across two stages. This directly targets the timing issue seen in M3, where the 10 ns clock did not close and the worst setup slack was -2.624 ns.

2. Add cycle counters and valid-cycle counters in the M3 testbench/top-level wrapper so accelerator runtime can be measured in cycles instead of estimated only from projected clock frequency.

3. Add SRAM-style input and weight buffering before the MAC core so the accelerator can be fed continuously without host/interface stalls reducing useful MAC utilization.
