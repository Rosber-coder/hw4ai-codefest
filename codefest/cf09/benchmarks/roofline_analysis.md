# CF09 Roofline Analysis

The software baseline achieves 0.004242 GOPS with an arithmetic intensity of approximately 10.67 ops/byte. This point lands far below the roofline, showing that the Python/software GEMM baseline is not reaching the available compute roof. The main reason is software overhead, scalar execution, and loop/control overhead rather than the arithmetic intensity itself.

The CLLM accelerator point is labelled as projected. The original 10 ns clock target did not close across all corners, with worst setup slack of -2.624 ns. Therefore, a conservative corrected clock period of 12.624 ns was used, giving about 79.2 MHz. Since the current `compute_core.sv` performs one INT8 MAC per valid cycle, the projected throughput is 79.2M x 2 = 158.4 MOPS, or 0.1584 GOPS.

The accelerator lands close to the projected compute roof because the roofline itself is based on the same one-MAC-per-cycle projected hardware limit. The gap between the accelerator and an ideal stronger accelerator is mainly architectural: this design has only one MAC lane, no array-level parallelism, and no measured memory system. To convert this projection into a measured result, the next step is to close timing, add cycle counters, and run either cycle-accurate simulation or FPGA execution with measured stalls and bandwidth.
