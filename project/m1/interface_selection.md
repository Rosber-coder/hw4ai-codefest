# Interface Selection and Bandwidth Analysis

## Chosen Interface
The selected interface for this project is **AXI4-Stream**.

AXI4-Stream is appropriate for this design because the target workload is tiled matrix multiplication, which naturally maps to a streaming dataflow. Matrix tiles can be sent from the host into the accelerator as a continuous stream, while result tiles can be streamed back after computation. Compared to very low-bandwidth interfaces such as I2C or SPI, AXI4-Stream is much better suited for sustaining the data movement required by a compute-oriented kernel. The project document also identifies AXI4-Stream as a natural fit for inference-style pipelines with continuous data flow. For control and configuration registers, AXI4-Lite could be paired with AXI4-Stream in a more complete implementation, but the primary data interface selected here is AXI4-Stream.

## Host Platform Assumption
The assumed host platform is an **FPGA SoC–style host system**. This is a realistic environment for an AXI-based accelerator because AXI interconnects are widely used in FPGA and SoC designs.

## Kernel Bandwidth Requirement
From the roofline and partition analysis, the target hypothetical accelerator performance is:

- Target compute throughput = **256 GFLOP/s**
- Arithmetic intensity = **10.67 FLOP/byte**

Required bandwidth is:

- Bandwidth = Performance / Arithmetic Intensity
- Bandwidth = 256 / 10.67
- Bandwidth ≈ **24 GB/s**

Therefore, the interface must sustain at least approximately **24 GB/s** to avoid becoming a bottleneck.

## Interface Bandwidth Comparison
AXI4-Stream does not have one fixed bandwidth; its throughput depends on the stream width and clock frequency.

For example:

- 256-bit AXI4-Stream at 250 MHz:
  - Bandwidth = 256 bits × 250 MHz
  - = 64 Gbit/s
  - = **8 GB/s**

This would be **insufficient** for the required 24 GB/s.

- 512-bit AXI4-Stream at 400 MHz:
  - Bandwidth = 512 bits × 400 MHz
  - = 204.8 Gbit/s
  - = **25.6 GB/s**

This would be **sufficient** for the required 24 GB/s.

## Bottleneck Status
If the AXI4-Stream interface is implemented with insufficient width or clock frequency, the accelerator would become **interface-bound** even if the compute engine itself can sustain the target throughput.

At a 256-bit, 250 MHz operating point, the interface would only provide 8 GB/s, which is well below the required 24 GB/s. In that case, the design would be interface-bound.

At a 512-bit, 400 MHz operating point, the interface would provide 25.6 GB/s, which is slightly above the required 24 GB/s. In that case, the design would not be interface-bound.

## Conclusion
AXI4-Stream is the most appropriate interface for this tiled GEMM accelerator because it matches the streaming nature of the workload and is commonly used in FPGA/SoC accelerator integration. Based on the estimated bandwidth requirement of 24 GB/s, the interface must be provisioned with sufficient width and frequency to avoid becoming the system bottleneck.
