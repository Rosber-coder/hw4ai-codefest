# Synthesis Interpretation

The OpenLane flow was run on the INT8 MAC compute core using the SKY130 HD
standard cell library with a target clock period of 10 ns (100 MHz). The
final post-route signoff timing report shows that timing was met: the
worst-case critical path delay is approximately 8.59 ns, leaving a positive
setup slack of +1.45 ns and a hold slack of +0.31 ns. WNS and TNS are both
0.00 ns across all reported corners, confirming clean timing closure after
placement, routing, parasitic extraction, and signoff STA.

The critical path runs from input port b[2] (startpoint) to flip-flop
_1293_ (endpoint, sky130_fd_sc_hd__dfxtp_1). The path traverses the signed
multiply-accumulate combinational datapath. Dominant cell types along the
path are AOI/OAI complex gates: or3b_4, a211o_1 (appears three times), and
o211a_1. These multi-input AND-OR-INVERT cells account for the bulk of the
8.59 ns arrival time. The bottleneck is combinational logic feeding the
registered accumulator output, not clock distribution.

The synthesized netlist contains 663 standard cells before physical
implementation and 3985 total cells after P&R (including fill and tap
cells). Core area is 33,344.48 µm². The top three contributors by instance
count are: xnor2_2 (51 instances), a21o_2 (49 instances), and nand2_2 (38
instances), all serving the multiply-accumulate arithmetic logic. The design
includes 32 D flip-flops (dfxtp_2), confirming a compact single-cycle
accumulator register file.

No setup violations, hold violations, DRC errors, or LVS errors were
reported at signoff. Warnings worth investigating before M3: one pin antenna
violation on net9 / pin _0955_/A on met1 layer (partial/required ratio
1.07, exceeding the 400 limit); and PSM IR-drop warnings (PSM-0019,
PSM-0022) indicating that net voltages for VPWR/VGND were not explicitly
set, which may affect IR-drop accuracy. These do not block the current
result but should be resolved for M3 signoff.
