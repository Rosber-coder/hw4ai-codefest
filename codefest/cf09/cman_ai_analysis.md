# CF09 – Arithmetic Intensity and Roofline Analysis

## 1. Dominant Kernel

The dominant computational kernel in the accelerator is an INT8 dot-product implemented using repeated multiply-accumulate (MAC) operations inside `compute_core.sv`.

Operating point:

* Input vector A: K INT8 activations
* Input vector B: K INT8 weights
* Accumulator: INT32
* Dot-product length: K = 16

The output is computed as:

Output = Σ(A[i] × B[i]) for i = 0 to K−1

Each output element therefore requires K MAC operations.

---

## 2. FLOPs per Kernel Invocation

One MAC consists of:

* 1 multiply
* 1 add

Therefore:

FLOPs per MAC = 2

For a dot-product of length K:

FLOPs = 2K

Substituting K = 16:

FLOPs = 2 × 16 = 32

Therefore, one kernel invocation performs **32 FLOPs**.

---

## 3. Arithmetic Intensity Bounds

### Lower Bound (No Reuse)

Assume all activations and weights are fetched from memory for each kernel invocation.

Memory traffic:

* Read activations: 16 × 1 byte = 16 bytes
* Read weights: 16 × 1 byte = 16 bytes
* Write INT32 output: 4 bytes

Total traffic:

Bytes = 16 + 16 + 4 = 36 bytes

Arithmetic intensity:

AI = FLOPs / Bytes

AI = 32 / 36

AI = 0.89 FLOP/byte

---

### Upper Bound (Perfect Weight Reuse)

Assume all weights remain on-chip and are reused.

Memory traffic:

* Read activations: 16 bytes
* Write INT32 output: 4 bytes

Total traffic:

Bytes = 16 + 4 = 20 bytes

Arithmetic intensity:

AI = 32 / 20

AI = 1.60 FLOP/byte

---

## 4. Roofline Analysis

Target platform assumptions:

* Peak compute throughput = 1 GOPS
* Peak memory bandwidth = 0.5 GB/s

Ridge point:

AI_ridge = Peak Compute / Peak Bandwidth

AI_ridge = 1 / 0.5

AI_ridge = 2 FLOP/byte

Kernel points:

| Case                 | Arithmetic Intensity |
| -------------------- | -------------------- |
| No Reuse             | 0.89 FLOP/byte       |
| Perfect Weight Reuse | 1.60 FLOP/byte       |
| Ridge Point          | 2.00 FLOP/byte       |

The roofline sketch is provided in `cman_roofline_sketch.pdf`.

---

## 5. Bottleneck and Improvement

Both arithmetic intensity values lie to the left of the ridge point.

Therefore, the accelerator operates in the memory-bound region rather than the compute-bound region.

Current bottleneck:

* Off-chip memory bandwidth
* Weight and activation movement

Highest-leverage improvement:

Increase on-chip reuse by storing weights and partial sums in local SRAM or register buffers. This reduces memory traffic, increases arithmetic intensity, and moves the design closer to the compute-bound region of the roofline model.
