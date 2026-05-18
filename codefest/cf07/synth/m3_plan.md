# M3 Plan

The final post-route signoff result shows that the compute core meets the 10 ns clock target, with a critical path delay of about 8.59 ns and positive slack of about +1.45 ns. Since timing is met after routing and parasitic extraction, I will keep the current INT8 MAC datapath as the base compute block for M3.

For M3, the main focus will be scaling from a single compute core toward tiled GEMM acceleration. I will integrate multiple MAC units, improve interface/control logic, and test whether the larger design still meets timing. If the additional parallelism increases the critical path or area too much, I will add pipelining around the accumulator or reduce unrolling. I will also review the reported antenna issue and IR-drop setup warning before finalizing the M3 implementation.
