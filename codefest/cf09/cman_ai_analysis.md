The dominant kernel is an INT8 MAC operation implemented in compute_core.sv.

For one MAC:
FLOPs = 1 multiply + 1 add = 2 FLOPs

No-reuse bound:
AI = 2 / (1 + 1 + 4)
   = 0.33 FLOP/byte

Perfect weight reuse bound:
AI = 2 / (1 + 4)
   = 0.40 FLOP/byte

The roofline analysis shows that both arithmetic intensity values lie to the left of the ridge point (2 FLOP/byte). Therefore, the accelerator operates in the memory-bound region.

Current bottleneck:
Hardware interface / memory bandwidth.

Highest-leverage improvement:
Increase on-chip data reuse by buffering weights and partial sums in local SRAM or registers, thereby reducing off-chip memory traffic and increasing arithmetic intensity.
