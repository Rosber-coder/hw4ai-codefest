# Heilmeier Questions — Project M1

## Q1. What are you trying to do?

I am designing a hardware accelerator chiplet for tiled dense matrix multiplication (INT8 GEMM). The target computation is matrix multiplication, which is a core kernel used in many AI/ML workloads, especially transformer linear layers and attention-related matrix operations.

The dominant kernel in this project is dense matrix multiplication, implemented in software as `tiled_gemm()` and intended to map to a hardware compute engine built from multiply-accumulate (MAC) units, on-chip buffers, and a streaming interface to a host system.

The goal is to offload this compute-intensive kernel from software to a custom hardware design written in SystemVerilog, integrated as a chiplet, and synthesized using OpenLane 2.

## Q2. How is it done today, and what are the limits of current practice?

Today, dense matrix multiplication is typically executed in software on CPUs, GPUs, or optimized libraries. In my current software baseline, the project algorithm is implemented in pure Python as tiled GEMM.

Profiling identified `tiled_gemm()` as the dominant computational kernel. The innermost operation is:

    C[i][j] += A[i][k] * B[k][j]

This repeated multiply-accumulate operation dominates the computation. The software baseline measured a median execution time of 1676.95 us over 10 runs for a 16 × 16 × 16 INT8 GEMM problem, with an achieved throughput of 4.8851 MFLOP/s.

Roofline analysis showed that the kernel has an arithmetic intensity of approximately 10.67 FLOP/byte. On the target CPU, this lies slightly below the ridge point of approximately 11.54 FLOP/byte, which places the kernel in the memory-bound region. This means current performance is limited not only by compute throughput, but also by data movement efficiency. The main limitations of the software approach are interpreter overhead, limited parallelism, and poor control over dataflow and reuse compared to a custom hardware implementation.

## Q3. What is your approach, and why do you think it will be better?

My approach is to implement the tiled GEMM kernel as a dedicated hardware accelerator chiplet with a MAC-based compute engine, on-chip input/output buffering, and a streaming host interface.

The key reason this should be better is that the kernel is highly regular and structured, making it a strong candidate for hardware acceleration. Profiling shows that matrix multiplication is the dominant kernel, and roofline analysis shows that data movement is a key bottleneck on the current CPU. A hardware design can improve this by increasing parallelism in the MAC operations and improving data reuse through explicit buffering and tiled execution.

The hypothetical hardware accelerator design point on the roofline is placed at 256 GFLOP/s, with sufficient bandwidth provisioned so that the accelerator is not interface-bound. This suggests that the hardware design can move the workload closer to a more efficient operating region than the current software baseline.

Overall, the proposed approach is better because it directly targets the dominant kernel, reduces software overhead, improves parallel execution of MAC operations, and provides a hardware structure that is better aligned with the computational pattern of GEMM.
