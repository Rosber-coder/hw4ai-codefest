# HW/SW Partition Rationale

## (a) Roofline Position

The arithmetic intensity of the tiled GEMM kernel is approximately 10.67 FLOP/byte. The ridge point of the target CPU is approximately 11.54 FLOP/byte.

Since the kernel’s arithmetic intensity lies slightly below the ridge point, it is positioned near the transition between memory-bound and compute-bound regions, but remains in the memory-bound region.

---

## (b) Bottleneck Analysis

The kernel operates in the memory-bound region of the roofline model. This indicates that performance is primarily limited by memory bandwidth rather than compute throughput.

Therefore, improving data movement efficiency and increasing data reuse are critical for performance improvement. Techniques such as tiling and buffering can help reduce memory traffic and improve effective bandwidth utilization.

---

## (c) Hardware Acceleration Strategy

The dominant kernel identified through profiling is dense matrix multiplication (GEMM), implemented via tiled_gemm().

This kernel consists of repeated multiply-accumulate (MAC) operations:

    C[i][j] += A[i][k] * B[k][j]

These operations are highly regular, parallelizable, and compute-intensive, making them ideal candidates for hardware acceleration.

Therefore, the GEMM compute kernel (MAC operations) should be offloaded to hardware, where parallel processing elements can significantly improve throughput.

---

## (d) HW/SW Partition Decision

The system will be partitioned as follows:

Software responsibilities:
- Control flow and program orchestration
- Input data generation and preprocessing
- Memory management and scheduling of data transfers

Hardware responsibilities:
- Compute-intensive MAC operations
- Matrix tile multiplication using parallel compute units
- Accumulation of partial sums

This partitioning allows the compute-heavy portion of the workload to be accelerated in hardware while maintaining flexibility and programmability in software.

---

## Interface Bandwidth Consideration

To sustain the performance of the hardware accelerator, sufficient data bandwidth is required between the host system and the accelerator.

Given the arithmetic intensity of 10.67 FLOP/byte and assuming a target accelerator performance of 256 GFLOP/s:

Required bandwidth = Performance / AI  
= 256 / 10.67 ≈ 24 GB/s

This indicates that the interface must support at least approximately 24 GB/s to avoid becoming a bottleneck. High-throughput interfaces such as AXI4-Stream or PCIe-based communication are suitable for sustaining this level of bandwidth.

---

## Conclusion

Based on profiling and roofline analysis, the GEMM kernel is memory-bound on the target CPU and is the primary candidate for hardware acceleration. Offloading the MAC operations to hardware is expected to significantly improve performance by increasing compute parallelism and improving data reuse, provided that sufficient interface bandwidth is available.

The chosen interface is AXI4-Stream. Using a 512-bit AXI4-Stream interface at 400 MHz gives a rated bandwidth of 25.6 GB/s. Since the required bandwidth is approximately 24 GB/s, this interface operating point is sufficient and the accelerator would not be interface-bound. In contrast, a 256-bit AXI4-Stream interface at 250 MHz would provide only 8 GB/s and would make the design interface-bound.
