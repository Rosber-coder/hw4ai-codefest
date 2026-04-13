# Software Baseline Benchmark

## Algorithm
Tiled dense matrix multiplication (INT8 GEMM)

## Platform and Configuration
- CPU: Intel Core i7-13700H, 10 cores (20 threads), x86_64
- OS: Ubuntu on WSL2
- Python: Python 3.10
- Batch size: 1
- Matrix dimensions: N = 16, K = 16, M = 16
- Data type: INT8
- Tile size: 4

## Benchmark Method
The software baseline is a pure Python implementation of tiled GEMM in `project/gemm.py`.  
Execution time is measured using wall-clock time with `time.perf_counter()`.  
The benchmark was run for 10 trials, and the median runtime is reported.

## Execution Time
Measured runtimes over 10 runs (microseconds):
- 1787.46
- 1685.82
- 1710.30
- 1909.15
- 1668.08
- 1724.43
- 1657.41
- 1661.86
- 1635.38
- 1660.83

Median execution time:
- **1676.95 us**

## Throughput
For GEMM, throughput is reported in FLOP/s.

FLOPs per run:
- FLOPs = 2 × N × K × M
- FLOPs = 2 × 16 × 16 × 16
- FLOPs = **8192**

Using the median runtime:
- T = 1676.95 us = 1.67695 × 10^-3 s

Throughput:
- Throughput = 8192 / T
- Throughput ≈ **4,885,054.82 FLOP/s**
- Throughput ≈ **4.8851 MFLOP/s**

## Memory Usage
Peak resident set size (RSS) measured during execution:
- **10080 KB**
- **9.8438 MB**

## Summary
The reproducible software baseline for this project is a pure Python INT8 tiled GEMM implementation running on an Intel Core i7-13700H under Ubuntu on WSL2. For the 16 × 16 × 16 problem size with tile size 4, the median execution time over 10 runs is 1676.95 us, with an achieved throughput of 4.8851 MFLOP/s and peak RSS of 9.8438 MB.
