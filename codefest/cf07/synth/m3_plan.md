# M3 Plan

Post-route signoff shows the compute core meets the 10 ns clock target with
a critical path of 8.59 ns and +1.45 ns setup slack. Since timing closes
comfortably, I will keep the INT8 MAC datapath unchanged for M3 — no
precision reduction or clock target change is needed.

The M3 focus is scaling toward tiled GEMM acceleration by integrating
multiple MAC units and improved interface control. If the larger design
pushes the critical path beyond 8.59 ns or area significantly beyond
33,344.48 um^2, I will pipeline the accumulator stage or reduce unrolling
to recover timing margin. Before M3 signoff I will also resolve the antenna
violation on net9 (met1, ratio 1.07) and the PSM-0019/PSM-0022 IR-drop
warnings.
