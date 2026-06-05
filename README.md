# HW4AI Project – INT8 MAC Accelerator

Roshan Bernard Premarajan
ECE 410/510 – Hardware for Artificial Intelligence and Machine Learning
Spring 2026

This repository contains the complete Milestone 4 submission for a memory-mapped signed INT8 MAC accelerator. The accelerator implements the core multiply-accumulate operation used in tiled GEMM workloads, using signed 8-bit operands and a signed 32-bit accumulator. The design was verified through simulation, synthesized using OpenLane 2, and benchmarked against a software baseline.

## Milestone 4 Deliverables

The complete Milestone 4 submission can be found in:

- project/m4/README.md – Catalog of all M4 deliverables
- project/m4/report/design_justification.pdf – Final design justification report
- project/m4/rtl/ – Final RTL source code
- project/m4/tb/ – Verification testbench
- project/m4/sim/ – Simulation results and waveform
- project/m4/synth/ – Synthesis reports
- project/m4/bench/ – Benchmark results and roofline analysis

## Design Overview

The submitted hardware consists of three primary modules:

- compute_core.sv – Signed INT8 multiply-accumulate datapath
- interface_ctrl.sv – Memory-mapped control and status interface
- top.sv – Top-level integration module

All benchmark, synthesis, and report results correspond to this final submitted hardware implementation.
