# Milestone 2 — Hardware for AI/ML

## Overview
This project implements an INT8 compute core and a memory-mapped interface. Both modules are verified using SystemVerilog testbenches.

## Simulator
- Tool: Icarus Verilog (iverilog)
- Flag: -g2012

## How to Run — Compute Core

```bash
iverilog -g2012 \
-o project/m2/sim/compute_core.out \
project/m2/rtl/compute_core.sv \
project/m2/tb/tb_compute_core.sv

vvp project/m2/sim/compute_core.out | tee project/m2/sim/compute_core_run.log
