# Milestone 3 – Integration and Synthesis

## Overview

Milestone 3 integrates the M2 interface controller and compute core into a single top-level design and verifies end-to-end functionality through co-simulation. The integrated design was then synthesized using OpenLane 2.

The design implements a simple memory-mapped host interface connected to an INT8 multiply-accumulate (MAC) compute core representing the dominant GEMM/MAC kernel used throughout the project.

---

## Simulator Information

Simulator Used:
- Icarus Verilog (iverilog)

Simulation Command:

```bash
iverilog -g2012 \
project/m2/rtl/compute_core.sv \
project/m2/rtl/interface_ctrl.sv \
project/m3/rtl/top.sv \
project/m3/tb/tb_top.sv \
-o project/m3/sim/cosim.out

vvp project/m3/sim/cosim.out
