# Arithmetic Intensity Calculation — Tiled GEMM

## Problem
Matrix multiplication: C = A × B  
Dimensions: N = 16, K = 16, M = 16  
Data type: INT8 (1 byte per element)

---

## FLOPs

FLOPs = 2 × N × K × M  

FLOPs = 2 × 16 × 16 × 16  
FLOPs = 8192

---

## Memory Traffic (Bytes)

Matrix A: 16 × 16 = 256 bytes  
Matrix B: 16 × 16 = 256 bytes  
Matrix C: 16 × 16 = 256 bytes  

Total bytes = 256 + 256 + 256 = 768 bytes

---

## Arithmetic Intensity

AI = FLOPs / Bytes  

AI = 8192 / 768 ≈ 10.67 FLOP/byte

---

## Conclusion

The algorithm exhibits moderate arithmetic intensity and is expected to be compute-bound depending on the target hardware.
