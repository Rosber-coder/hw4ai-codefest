# Synthesis Interpretation

The OpenLane flow was run on the INT8 MAC compute core using the SKY130 HD
standard cell library with a target clock period of 10 ns (100 MHz). The
final post-route signoff STA confirms clean timing closure: WNS is 0.00 ns,
TNS is 0.00 ns, worst setup slack is +1.45 ns, and worst hold slack is
+0.31 ns. The design meets the 100 MHz target with 1.45 ns of margin after
full placement, routing, parasitic extraction, and signoff STA.

The worst-case setup path runs from input port b[2] (startpoint) to
flip-flop _1293_ (endpoint, sky130_fd_sc_hd__dfxtp_1), with a data arrival
time of 8.59 ns. The path traverses the signed multiply-accumulate
combinational datapath. The dominant cell types along the actual path are
and4_1, or3b_4, a211o_1 (three instances), a21bo_1, and3_1, o21a_1,
o211a_1, a31o_1, xor2_1, or4b_4, o211a_4, or3_4, a21oi_2, nor3_1, and
o311a_1. These multi-input AND-OR-INVERT complex gates account for the full
8.59 ns arrival time. The bottleneck is combinational datapath logic, not
clocking or sequential elements.

The synthesized netlist contains 663 mapped standard cells before physical
implementation, growing to 3985 total cells after P&R (including fill and
tap). Core area is 33,344.48 um^2. The top three contributors by instance
count from the synthesis stat report are xnor2_2 (51 instances), a21o_2
(49 instances), and nand2_2 (38 instances), all serving the INT8
multiply-accumulate arithmetic. The design contains 32 D flip-flops
(dfxtp_2).

No setup violations, hold violations, DRC errors, or LVS errors were
reported at signoff. Two warnings need attention before M3: one antenna
violation on pin _0955_/A, net9, met1 layer (partial/required ratio 1.07,
exceeds the 400 limit); and PSM IR-drop warnings PSM-0019 and PSM-0022
indicating VPWR and VGND voltages were not explicitly set, which reduces
IR-drop estimate accuracy. Neither blocks the current result.
