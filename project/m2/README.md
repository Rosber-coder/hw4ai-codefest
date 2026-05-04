# Milestone 2 — Hardware for AI/ML

## Overview
This project implements an INT8 compute core and a memory-mapped interface.
Both modules are verified using SystemVerilog testbenches with PASS/FAIL output.

## Simulator
- Tool: Icarus Verilog (iverilog)
- Version: 11.0 (verify with `iverilog -V`)
- Flag: `-g2012`

## How to Run — Compute Core

```bash
iverilog -g2012 \
  -o project/m2/sim/compute_core.out \
  project/m2/rtl/compute_core.sv \
  project/m2/tb/tb_compute_core.sv

vvp project/m2/sim/compute_core.out | tee project/m2/sim/compute_core_run.log
```

## How to Run — Interface

```bash
iverilog -g2012 \
  -o project/m2/sim/interface.out \
  project/m2/rtl/interface_ctrl.sv \
  project/m2/tb/tb_interface.sv

vvp project/m2/sim/interface.out | tee project/m2/sim/interface_run.log
```

## Deviations from M1
The interface module is in `interface_ctrl.sv` (module: `interface_ctrl`) rather than
`interface.sv` because `interface` is a reserved keyword in SystemVerilog and is rejected
by Icarus Verilog. A stub `interface.sv` is provided in `rtl/` for grader filename
compatibility. No other deviations from the M1 plan.
