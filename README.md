# hw4ai-codefest

Roshan Bernard Premarajan  
ECE 410/510 Spring 2026  
Tentative project topic: INT8 tiled matrix multiplication accelerator chiplet


## COPT Project Compute Core

For COPT Part B, I implemented a parameterized INT8 GEMM/MAC compute core in `project/hdl/int8_gemm_core.sv`.

The module accepts signed INT8 operands `a_in` and `b_in`, multiplies them, sign-extends the product into a 32-bit accumulator, and updates `acc_out` only when `valid_in` is asserted. The design includes a synchronous reset and a `valid_out` signal to indicate a valid accumulated output.

The cocotb testbench in `project/hdl/test_int8_gemm_core.py` verifies:
- reset behavior
- signed INT8 multiplication
- 32-bit accumulation
- valid-based gating
- hold behavior when `valid_in` is low

The simulation passed using Icarus Verilog and cocotb.

### Interface Choice

The current compute core uses a simple streaming valid-based interface. This is a good first step because the core can accept one MAC-style operation per valid cycle and can later be extended toward AXI-stream or a lightweight memory-mapped interface.

Based on the M1/CF02 roofline analysis, the INT8 tiled GEMM kernel has moderate arithmetic intensity. A streaming interface helps keep operands moving efficiently while allowing reuse inside the compute core, which is important for improving accelerator utilization.

### Precision Choice

I selected INT8 precision because the project targets ML inference-style GEMM. INT8 reduces memory bandwidth and storage requirements compared with FP32 while keeping the hardware smaller and more efficient. The design uses INT8 operands with 32-bit accumulation, which is a common approach for quantized neural network inference.
