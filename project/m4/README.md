# Milestone 4 Submission

This folder contains the final Milestone 4 deliverables for the HW4AI project. The submitted accelerator is a memory-mapped signed INT8 MAC accelerator for the dominant multiply-accumulate operation used in tiled GEMM.

## File catalog

| Path | Description | Supports |
|---|---|---|
| rtl/top.sv | Final top-level integration module | Source code |
| rtl/compute_core.sv | Signed INT8 MAC compute datapath | Source code, architecture |
| rtl/interface_ctrl.sv | Memory-mapped control/status interface | Source code, interface |
| rtl/interface.sv | Same memory-mapped interface source copied with checklist-required filename | Source code, interface |
| tb/tb_top.sv | Final self-contained top-level testbench | Verification |
| sim/final_run.log | Final simulation log showing PASS | Verification |
| sim/final_waveform.png | Final annotated end-to-end waveform | Verification |
| synth/config.json | OpenLane 2 configuration used for synthesis | Synthesis |
| synth/openlane_run.log | Captured OpenLane run log | Synthesis |
| synth/timing_report.txt | Timing report with setup/hold information | Synthesis |
| synth/area_report.txt | Area report with cell and area summary | Synthesis |
| synth/power_report.txt | Power estimate report | Synthesis |
| bench/benchmark.md | Final hardware vs software benchmark summary | Benchmark |
| bench/benchmark_data.csv | Raw benchmark data used for calculations | Benchmark |
| bench/roofline_final.png | Final roofline plot with SW and M4 accelerator points | Benchmark, report |
| report/design_justification.pdf | Final 9-section design justification report | Report |
| report/figures/ | Figures referenced by the design report | Report figures |

| report/design_justification.md | Markdown source for final report | Report |
| report/figures/roofline_final.png | Roofline figure referenced by report | Report figures |

| report/figures/final_waveform.png | Final waveform image copied into report figures | Report figures |
| report/figures/block_diagram.txt | Text block diagram for the submitted M4 architecture | Report figures |
| report/figures/dataflow_diagram.txt | Text dataflow diagram for host-interface-MAC operation | Report figures |