# CF09 – Arithmetic Intensity and Roofline Analysis

## 1. Dominant Kernel

The dominant kernel in this project is the INT8 GEMM-style multiply-accumulate workload implemented using `compute_core.sv` and exercised through the M3 host-interface testbench.

The full operating point used in the submitted project is:

- Matrix A: 16 x 16 INT8
- Matrix B: 16 x 16 INT8
- Matrix C/output: 16 x 16 INT32
- GEMM shape: N = 16, K = 16, M = 16
- Accumulation type: INT32

The computation is:

`C[row][col] = sum(A[row][k] * B[k][col]) for k = 0 to 15`

This matches the M3 testbench, which checks 256 output elements with 16 MACs each, for a total of 4096 MAC operations.

---

## 2. FLOPs per Kernel Invocation

One MAC operation has:

- 1 multiply
- 1 add

So:

`FLOPs per MAC = 2`

For a GEMM with N = 16, K = 16, and M = 16:

`MACs = N * K * M`

`MACs = 16 * 16 * 16 = 4096`

`FLOPs = 2 * N * K * M`

`FLOPs = 2 * 16 * 16 * 16 = 8192`

Therefore, one full 16 x 16 GEMM-style kernel invocation performs **8192 FLOPs**.

---

## 3. Arithmetic Intensity Bounds

Arithmetic intensity is:

`AI = FLOPs / Bytes transferred`

### Lower Bound: No Data Reuse

In the no-reuse case, each MAC fetches its INT8 activation and INT8 weight from memory. The INT32 output matrix is written once.

Memory traffic:

- Read A operand for each MAC: 4096 * 1 byte = 4096 bytes
- Read B operand for each MAC: 4096 * 1 byte = 4096 bytes
- Write C output matrix: 16 * 16 * 4 bytes = 1024 bytes

Total traffic:

`Bytes_no_reuse = 4096 + 4096 + 1024 = 9216 bytes`

Arithmetic intensity:

`AI_no_reuse = 8192 / 9216 = 0.89 FLOP/byte`

Reuse pattern modeled: **No data reuse**. Every MAC reads both operands again.

---

### Upper Bound: Full GEMM-Style Matrix Reuse

In the full-reuse case, matrix A and matrix B are brought on-chip once and reused across the GEMM computation. The INT32 output matrix is written once.

Memory traffic:

- Read A matrix once: 16 * 16 * 1 byte = 256 bytes
- Read B matrix once: 16 * 16 * 1 byte = 256 bytes
- Write C matrix once: 16 * 16 * 4 bytes = 1024 bytes

Total traffic:

`Bytes_full_reuse = 256 + 256 + 1024 = 1536 bytes`

Arithmetic intensity:

`AI_full_reuse = 8192 / 1536 = 5.33 FLOP/byte`

Reuse pattern modeled: **Full GEMM-style matrix reuse / tiled GEMM reuse**, where A and B values are kept on-chip and reused across multiple MAC operations before the final INT32 C matrix is written back.

---

## 4. Roofline Analysis

The roofline model uses platform values derived from the actual submitted design configuration.

From `project/m3/synth/config.json`:

- Clock period = 10 ns
- Clock frequency = 100 MHz

From the compute datapath:

- The compute core performs one INT8 MAC per valid cycle
- One MAC = 2 operations

Therefore:

`Peak compute = 2 ops/cycle * 100 MHz = 200 Mops/s = 0.2 GOPS`

From the top-level host interface:

- `wdata` and `rdata` are 32-bit wide
- 32 bits = 4 bytes

Assuming one 32-bit transfer per cycle for the ideal interface roofline model:

`Peak memory bandwidth = 4 bytes/cycle * 100 MHz = 400 MB/s = 0.4 GB/s`

Ridge point:

`AI_ridge = Peak Compute / Peak Bandwidth`

`AI_ridge = 0.2 / 0.4 = 0.5 FLOP/byte`

Kernel points:

| Case | Bytes Transferred | Arithmetic Intensity | Roofline Region |
|---|---:|---:|---|
| No Data Reuse | 9216 bytes | 0.89 FLOP/byte | Compute-bound side |
| Full GEMM-Style Matrix Reuse | 1536 bytes | 5.33 FLOP/byte | Compute-bound side |
| Ridge Point | - | 0.50 FLOP/byte | Boundary |

The roofline sketch is provided in `cman_roofline_sketch.png`.

---

## 5. Bottleneck and Improvement

Both arithmetic intensity values are greater than the design-derived ridge point:

- No reuse: 0.89 FLOP/byte > 0.50 FLOP/byte
- Full GEMM-style reuse: 5.33 FLOP/byte > 0.50 FLOP/byte

Therefore, under the submitted design-derived roofline model, the accelerator is on the **compute-bound side**.

Current bottleneck:

- Limited compute throughput, because the submitted RTL has only one INT8 MAC lane.
- The interface can feed 32-bit data, but the compute datapath only consumes one pair of INT8 operands per valid MAC operation.

Highest-leverage improvement:

Increase compute parallelism by adding multiple MAC lanes or unrolling the inner product. For example, processing several INT8 products per cycle would increase peak GOPS and better match the full 16 x 16 GEMM workload. Local SRAM/register buffering for A, B, and partial sums is still useful, but with the current single-MAC datapath, compute parallelism is the main bottleneck.
