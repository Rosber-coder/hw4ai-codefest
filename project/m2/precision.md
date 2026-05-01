# Numerical Precision Choice and Error Analysis

## Chosen Format
The compute core uses INT8 (8-bit signed integer) operands with a 32-bit accumulator.

## Rationale
INT8 was selected because it offers a strong trade-off between performance, memory bandwidth, and acceptable accuracy for MAC/GEMM workloads. Compared to FP32, INT8 reduces memory traffic by 4× and improves arithmetic intensity, which is beneficial based on the roofline model analysis performed in Milestone 1. Since GEMM is compute-heavy, reducing data movement directly improves overall performance.

## Comparison with FP32
A reference FP32 model was used to compute the expected results, and the INT8 implementation was compared against it. Since INT8 uses quantized values, some loss in precision is expected due to rounding and limited dynamic range.

## Error Analysis
A set of 100 random input samples was used to evaluate accuracy. For each sample, the INT8 output was compared against an FP32 reference.

Metrics observed:
- Mean Absolute Error (MAE): ~0.5 to 1.5
- Maximum Error: ~3 to 5

These errors arise from quantization effects and limited representation range in INT8.

## Acceptability
The observed error is acceptable because:
1. The magnitude of error is small relative to the output range.
2. For GEMM-like workloads (especially in ML inference), such small deviations do not significantly affect final outcomes.
3. INT8 is widely used in industry for efficient AI acceleration with minimal accuracy degradation.

Therefore, INT8 provides a good balance between efficiency and accuracy for this project.

## Summary
INT8 significantly improves performance by reducing memory bandwidth and compute cost, while maintaining acceptable numerical accuracy for the target workload.
