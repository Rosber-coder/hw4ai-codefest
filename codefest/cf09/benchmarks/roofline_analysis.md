# CF09 Roofline Analysis

The sky130 HD platform ceiling (tt_025C_1v80 nominal) is 0.4 GOPS peak compute
and 0.8 GB/s peak memory bandwidth, giving a ridge point of 0.5 FLOP/byte. The
projected accelerator at 0.1584 GOPS sits 60% below the platform compute ceiling —
not at it. This gap exists because timing did not close (WNS = −2.624 ns), leaving
the design running at a corrected 79.2 MHz instead of the sky130 nominal 200 MHz.

The dominant uncertainty in the projection is timing closure itself. The 79.2 MHz
figure is derived from a single worst-case slack number, not from a re-run STA at
the corrected period — fixing one path may expose another violation. Additionally,
the projection assumes 100% MAC utilization with no interface stalls, which will
not hold in practice since the host must write operands register-by-register before
each MAC.

To convert this to a measurement: pipeline the MAC datapath in compute_core.sv to
close timing at 10 ns across all corners, re-run OpenLane STA to confirm, add
32-bit cycle and MAC counters to the top-level wrapper (exposed at addresses 0x10
and 0x14), then run the full M3 GEMM testbench with cocotb and report measured
cycles, utilization, and throughput instead of projected values.
