## CF07 Scope Update

The OpenLane synthesis of the INT8 compute core completed successfully with
zero setup and hold violations at a 10 ns clock target. The post-route
signoff STA shows a worst-case critical path delay of 8.59 ns with +1.45 ns
of setup slack remaining, and a core area of 33,344.48 um^2 using the
SKY130 HD library.

Based on these results, the current project scope is confirmed as achievable
for M3. The 1.45 ns of slack at 100 MHz means the datapath can absorb
moderate additional logic from tiled GEMM scaling before requiring
pipelining. The 33,344.48 um^2 core area is well within sky130A capacity,
leaving headroom to integrate multiple MAC units and interface control logic.

One antenna violation (net9, met1, ratio 1.07) and two PSM IR-drop warnings
(PSM-0019, PSM-0022) were noted. Neither blocks M3 but both will be
resolved before final signoff. Scope is unchanged: INT8 MAC compute core
targeting tiled GEMM acceleration on sky130A.
