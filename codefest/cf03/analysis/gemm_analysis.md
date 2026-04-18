
The naive GEMM kernel is memory-bound because each thread repeatedly loads matrix elements from global memory without reuse. For each output element, values from matrices A and B are fetched multiple times, resulting in low arithmetic intensity of approximately 0.5 FLOP/byte. Nsight Compute profiling shows low achieved memory bandwidth (~23 GB/s compared to ~320 GB/s peak) and only about 8% of peak FP32 throughput, indicating that performance is limited by memory access rather than compute capability.

Tiling reduces DRAM traffic by loading 8×8 tiles of matrices into shared memory, allowing threads within a block to reuse data and increasing arithmetic intensity to approximately 2.0 FLOP/byte. However, in this implementation, the tiled kernel did not outperform the naive kernel. The small tile size provides limited reuse, while shared memory accesses and synchronization introduce additional overhead. Nsight profiling shows even lower memory throughput (~18–19 GB/s), confirming that memory latency and overhead dominate performance.

Both kernels lie below the memory bandwidth roof and far from the compute roof, confirming memory-bound behavior.
