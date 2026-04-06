# Heilmeier Draft — INT8 Tiled Matrix Multiplication Accelerator Chiplet

## 1) What are you trying to do?

I am designing a hardware accelerator chiplet for INT8 tiled matrix multiplication (GEMM), which is a core computation in many AI/ML workloads such as transformer layers and dense neural networks.

The goal is to offload the matrix multiplication kernel from a software implementation to a custom hardware design written in SystemVerilog, connected to a host system through a standard interface. The design will include a MAC-based compute engine, on-chip buffers for input matrices, and control logic to manage data movement and computation.

The objective is to demonstrate that a dedicated hardware accelerator can execute this kernel more efficiently than a software baseline for a fixed problem size.

---

## 2) How is it done today, and what are the limits of current practice?

Today, matrix multiplication is typically executed using optimized software libraries such as NumPy, BLAS, or PyTorch, running on CPUs or GPUs. These implementations are highly optimized but are designed for general-purpose use.

On CPUs, execution involves instruction scheduling, cache management, and control overhead, which are not specific to matrix multiplication. GPUs improve throughput through parallelism but still rely on a general execution model.

The main limitations in the context of this project are:

* additional overhead from general-purpose architectures,
* lack of visibility into low-level dataflow and hardware behavior,
* and inefficiencies when executing a fixed, repetitive kernel like GEMM.

This motivates the use of a custom hardware accelerator tailored specifically for this computation.

---

## 3) What is new in your approach, and why do you think it will be successful?

The novelty of this project lies in implementing a complete, end-to-end hardware realization of a matrix multiplication kernel as a synthesizable chiplet, rather than relying on software execution.

The approach is expected to be successful for the following reasons:

* Matrix multiplication is a compute-dominant kernel with high arithmetic intensity, making it well-suited for hardware acceleration.
* The computation has a regular structure that maps naturally to a MAC-based architecture with tiled dataflow and local buffering.
* By focusing on a single kernel instead of a full neural network, the design remains manageable while still demonstrating meaningful acceleration.

The project will combine software profiling, roofline analysis, and hardware design to justify architectural decisions and evaluate performance relative to a software baseline.
