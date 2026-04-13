# HW/SW Partition Rationale

## (a) Roofline Position

The arithmetic intensity of the tiled GEMM kernel is approximately 10.67 FLOP/byte. The ridge point of the target CPU is approximately 11.54 FLOP/byte.

Since the kernel’s arithmetic intensity lies slightly below the ridge point, it is positioned near the transition between memory-bound and compute-bound regions, but still within the memory-bound region.

---

## (b) Bottleneck Analysis

The kernel operates in the memory-bound region of the roofline model. This indicates that performance is primarily limited by memory bandwidth rather than compute throughput.

Therefore, improving data movement efficiency and increasing data reuse are critical for performance improvement.

---

## (c) Hardware Acceleration Strategy

The dominant kernel identified through profiling is dense matrix multiplication (GEMM), implemented via tiled_gemm().

This kernel consists of repeated multiply-accumulate (MAC) operations:

    C[i][j] += A[i][k] * B[k][j]

These operations are highly regular and parallelizable, making them ideal candidates for hardware acceleration.

Therefore, the GEMM compute kernel (MAC operations) should be offloaded to hardware.

---

## (d) HW/SW Partition Decision

The system will be partitioned as follows:

Software responsibilities:
- Control flow and program orchestration
- Input data generation and preprocessing
- Memory management and data movement

Hardware responsibilities:
- Compute-intensive MAC operations
- Matrix tile multiplication using parallel compute units

This partitioning allows the compute-heavy portion of the workload to be accelerated in hardware while maintaining flexibility in software.

---

## Conclusion

Based on profiling and roofline analysis, accelerating the GEMM kernel in hardware is expected to significantly improve performance by increasing compute throughput and improving data reuse efficiency.
