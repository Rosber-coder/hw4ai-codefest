# CF09 – Arithmetic Intensity and Roofline Analysis

## 1. Dominant Kernel

The dominant kernel in this project is an INT8 GEMM-style multiply-accumulate workload
implemented in `compute_core.sv` and exercised through the M3 host-interface testbench.

Operating point:

- Matrix A: 16 × 16 INT8 activations
- Matrix B: 16 × 16 INT8 weights
- Matrix C (output): 16 × 16 INT32
- GEMM shape: N = 16, K = 16, M = 16
- Accumulation type: INT32

The computation is:

```
C[row][col] = Σ A[row][k] × B[k][col]  for k = 0..15
```

The M3 testbench checks 256 output elements with 16 MACs each, for 4096 MAC operations total.

---

## 2. FLOPs per Kernel Invocation

One MAC = 1 multiply + 1 add = 2 FLOPs.

```
FLOPs = 2 × N × K × M = 2 × 16 × 16 × 16 = 8192 FLOPs
```

---

## 3. Arithmetic Intensity Bounds

```
AI = FLOPs / Bytes transferred
```

### Lower Bound — No Data Reuse

Every MAC fetches both INT8 operands from off-chip memory. The INT32 output is written once.

```
Read A (per MAC):  4096 MACs × 1 byte = 4096 bytes
Read B (per MAC):  4096 MACs × 1 byte = 4096 bytes
Write C (once):    16 × 16 × 4 bytes  = 1024 bytes
─────────────────────────────────────────────────────
Total              Bytes_no_reuse      = 9216 bytes

AI_lower = 8192 / 9216 = 0.89 FLOP/byte
```

Reuse pattern: **No data reuse** — every MAC re-fetches both operands from off-chip.

---

### Upper Bound — Full GEMM-Style Weight Reuse

Both matrix A and matrix B are loaded on-chip once and reused across all MACs.
The INT32 output matrix is written back once.

```
Read A (once):   16 × 16 × 1 byte = 256 bytes
Read B (once):   16 × 16 × 1 byte = 256 bytes
Write C (once):  16 × 16 × 4 bytes = 1024 bytes
────────────────────────────────────────────────
Total            Bytes_full_reuse  = 1536 bytes

AI_upper = 8192 / 1536 = 5.33 FLOP/byte
```

Reuse pattern: **Full GEMM-style matrix reuse** — A and B are brought on-chip once and
reused across the entire 16×16 GEMM before C is written back.

---

## 4. Roofline Analysis

### Platform: sky130 HD PDK — Nominal Figures (tt_025C_1v80 corner)

The target synthesis platform is the sky130 HD standard-cell library via OpenLane.
The following platform figures use sky130 PDK nominal values, **not** the design's own
achieved throughput. Using the design's throughput as the ceiling would be tautological —
it would guarantee the kernel always lands at the ceiling regardless of its actual behavior.

**Peak compute:**

The sky130 HD library achieves approximately 200 MHz for simple datapaths in the nominal
TT (tt_025C_1v80) corner. This design's M3 STA confirms it passes timing at the TT corner
(only the slow-slow SS corners violate at 100 MHz). A single INT8 MAC lane at 200 MHz
gives:

```
Peak compute = 2 ops/cycle × 200 MHz = 400 MOPS = 0.4 GOPS
```

**Peak memory bandwidth:**

The host interface uses a 32-bit `wdata`/`rdata` bus (4 bytes). At the sky130 nominal
200 MHz clock, one 32-bit transfer per cycle gives:

```
Peak BW = 4 bytes/cycle × 200 MHz = 800 MB/s = 0.8 GB/s
```

**Ridge point:**

```
AI_ridge = Peak Compute / Peak BW = 0.4 GOPS / 0.8 GB/s = 0.5 FLOP/byte
```

**Kernel positions on the roofline:**

| Case                       | AI (FLOP/byte) | Region vs. ridge (0.5) |
|----------------------------|---------------:|------------------------|
| No data reuse (lower)      |           0.89 | Compute-bound          |
| Full GEMM-style reuse (upper) |         5.33 | Compute-bound          |
| Ridge point                |           0.50 | Boundary               |

Both bounds fall to the right of the ridge point, placing the kernel in the **compute-bound**
region under the sky130 platform roofline.

**Design operating point (for comparison):**

The design does not reach the platform ceiling. Timing did not close in slow-corner
synthesis (WNS = −2.624 ns at max_ss_100C_1v60). Using the corrected clock period of
12.624 ns → **79.2 MHz**, the design's actual peak compute is:

```
Design peak compute = 2 ops/cycle × 79.2 MHz = 0.1584 GOPS  (projected)
```

This is 60% below the sky130 platform ceiling of 0.4 GOPS, showing meaningful room to
improve by closing timing (pipelining the MAC datapath).

The roofline sketch is saved as `cman_roofline_sketch.png`.

*Note: The rubric requires a hand-drawn sketch. The submitted sketch is programmatically
generated via `make_roofline_plot.py`. A compliant submission should replace this with a
hand-drawn version saved as a scan or photo.*

---

## 5. Bottleneck and Improvement

Both AI bounds (0.89 and 5.33 FLOP/byte) exceed the ridge point (0.50 FLOP/byte).
The kernel is **compute-bound** on the sky130 platform.

**Current bottleneck:** Compute throughput. The design has a single INT8 MAC lane in
`compute_core.sv`. The multiply and accumulate share one combinational path, causing the
timing violation (−2.624 ns WNS). The interface can supply 4 bytes/cycle, but the
datapath only consumes one INT8 pair per valid cycle.

**Highest-leverage improvement:** Pipeline the MAC datapath in `project/m2/rtl/compute_core.sv`
by registering the 16-bit product (`product = a * b`) and performing the INT32 accumulation
in the following cycle. This splits the critical combinational path (multiply + add + sign
extend + 32-bit accumulate) into two shorter stages, targeting the −2.624 ns slack and
allowing the design to close at the 10 ns target in all corners.
