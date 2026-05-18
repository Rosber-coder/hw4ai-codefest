# CMAN — Sparsity Breakeven Analysis

Given:

N = 512  
s = sparsity = fraction of zeros

Total matrix elements:

512 × 512 = 262,144

---

## 1(a) Dense MVM Compute

Dense matrix-vector multiplication performs one multiply and one add for each matrix element.

Dense FLOPs:

2N² = 2 × 512²  
= 2 × 512 × 512  
= 2 × 262,144  
= 524,288 FLOPs

Answer:

Dense compute = 524,288 FLOPs

---

## 1(b) Dense Memory Bytes

Each FP32 value occupies 4 bytes.

Dense memory:

4N² = 4 × 512²  
= 4 × 512 × 512  
= 4 × 262,144  
= 1,048,576 bytes

Answer:

Dense memory = 1,048,576 bytes

---

## 1(c) Sparse MVM Compute

Fraction of nonzero values:

1 − s

Number of nonzero values:

(1 − s)N²  
= (1 − s) × 512 × 512  
= (1 − s) × 262,144

Sparse FLOPs:

2(1 − s)N²  
= 2 × (1 − s) × 262,144  
= 524,288(1 − s) FLOPs

Answer:

Sparse compute = 524,288(1 − s) FLOPs

---

## 1(d) Sparse Memory Bytes

CSR format stores:

1. Values array  
2. Column index array  
3. Row pointer array

### Values Array

4(1 − s)N²  
= 4 × (1 − s) × 262,144  
= 1,048,576(1 − s) bytes

### Column Index Array

4(1 − s)N²  
= 4 × (1 − s) × 262,144  
= 1,048,576(1 − s) bytes

### Row Pointer Array

4(N + 1)  
= 4 × (512 + 1)  
= 4 × 513  
= 2,052 bytes

### Total Sparse Memory

1,048,576(1 − s)  
+ 1,048,576(1 − s)  
+ 2,052

= 2,097,152(1 − s) + 2,052 bytes

Answer:

Sparse memory = 2,097,152(1 − s) + 2,052 bytes

---

## 2. FLOPs Speedup

FLOPs speedup:

Dense FLOPs / Sparse FLOPs

= 524,288 / [524,288(1 − s)]

= 1 / (1 − s)

Answer:

FLOPs speedup = 1 / (1 − s)

### Sparsity for 2× Speedup

1 / (1 − s) = 2

1 = 2(1 − s)

1 = 2 − 2s

2s = 1

s = 0.5

Answer:

2× FLOPs speedup occurs at s = 0.5 = 50% sparsity

---

## 3. Memory Breakeven

Memory breakeven occurs when:

Sparse memory = Dense memory

2,097,152(1 − s) + 2,052 = 1,048,576

Expand:

2,097,152 − 2,097,152s + 2,052 = 1,048,576

2,099,204 − 2,097,152s = 1,048,576

2,099,204 − 1,048,576 = 2,097,152s

1,050,628 = 2,097,152s

s = 1,050,628 / 2,097,152

s = 0.5010

s ≈ 50.1%

Answer:

Memory breakeven occurs at approximately 50.1% sparsity.

Above 50.1% sparsity, CSR uses less memory than dense storage.

---

## 4. End-to-End Speedup at s = 0.9

Given:

s = 0.9  
Bandwidth = 320 GB/s

### Dense Memory

1,048,576 bytes

### Sparse Memory

2,097,152(1 − 0.9) + 2,052

= 2,097,152(0.1) + 2,052

= 209,715.2 + 2,052

= 211,767.2 bytes

### Dense Execution Time

Bandwidth:

320 GB/s = 320,000,000,000 bytes/s

Dense time:

1,048,576 / 320,000,000,000

= 0.0000032768 s

= 3.2768 µs

### Sparse Execution Time

211,767.2 / 320,000,000,000

= 0.0000006618 s

= 0.6618 µs

### End-to-End Speedup

Dense time / Sparse time

= 3.2768 / 0.6618

= 4.95×

Answer:

At s = 0.9, the end-to-end speedup is approximately 4.95×.

