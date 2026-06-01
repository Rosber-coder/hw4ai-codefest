| Metric | M1 Software Baseline | CLLM Accelerator |
|---|---:|---:|
| Result type | Measured | Projected |
| Execution time | 1931.06 us | Not measured end-to-end |
| Throughput | 0.004242 GOPS | 0.1584 GOPS projected |
| Peak memory / RSS | 9.8438 MB | Not measured |
| Timing basis | Wall-clock Python benchmark | 12.624 ns corrected period from timing |
| Clock frequency | CPU/software runtime | 79.2 MHz projected |
| Useful work per cycle | Not cycle based | 1 INT8 MAC/cycle = 2 ops/cycle |
| Speedup | 1.0x | 37.3x projected |
| Main caveat | Measured scalar/software baseline | Projected ASIC-style throughput, not FPGA-measured |
