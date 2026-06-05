# M4 Benchmark Summary

## Submitted accelerator

The submitted M4 accelerator is a memory-mapped signed INT8 MAC accelerator. It implements one signed INT8 multiply-accumulate operation per active compute cycle and returns a signed 32-bit accumulated result through the memory-mapped interface.

This is not an FPGA-measured end-to-end accelerator benchmark. The hardware throughput is derived from the synthesized timing result and the RTL cycle model. The software baseline is measured using the Python tiled GEMM benchmark in project/benchmark_gemm.py.

## Software baseline

The M1 software baseline uses a 16 x 16 x 16 tiled GEMM workload with tile size 4.

FLOPs = 2 * 16 * 16 * 16 = 8192 FLOP

Measured median software runtime = 1931.06 us

Software throughput = 8192 FLOP / 1931.06 us = 0.004242 GOPS

Measured software peak RSS = 9.8438 MB

## M4 accelerator throughput

The M4 RTL performs one signed INT8 MAC per valid compute cycle. One MAC is counted as two operations: one multiply and one accumulate.

Target OpenLane clock period = 10 ns

Worst setup slack = -2.624 ns

Corrected period = 10 ns + 2.624 ns = 12.624 ns

Corrected frequency = 1 / 12.624 ns = 79.2 MHz

Useful work per cycle = 2 FLOP/cycle

Accelerator throughput = 79.2 MHz * 2 FLOP/cycle = 158.4 MFLOP/s = 0.1584 GOPS

## Speedup

Speedup = accelerator throughput / software throughput

Speedup = 0.1584 GOPS / 0.004242 GOPS = 37.3x

Equivalent accelerator time for 8192 FLOP:

Accelerator time = 8192 FLOP / 158.4e6 FLOP/s = 51.72 us

Speedup = 1931.06 us / 51.72 us = 37.3x

## Power and energy estimate

The OpenLane power report estimates total power as 0.715 mW.

Accelerator energy = 0.715 mW * 51.72 us = 0.03698 uJ

This is a synthesis-based estimate, not measured silicon or FPGA energy. No measured software energy number is available, so the energy comparison is reported only for the accelerator.

## Caveats

The accelerator result is not an end-to-end measured GEMM runtime. It assumes one useful MAC every cycle and no memory-mapped interface stalls. In practice, the host must write operands and control registers before each MAC operation, so the real end-to-end throughput would be lower unless the interface is improved or local buffering is added.

The design also did not close timing at the original 10 ns target. The reported accelerator frequency is based on the corrected period using the worst negative setup slack. A full re-run at the corrected period would be needed to confirm final timing closure.
