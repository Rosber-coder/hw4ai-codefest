The hardware result is projected from timing because the 10 ns target did not close across all corners. The worst slack was -2.624 ns, so a conservative corrected clock period of 12.624 ns was used, giving approximately 79.2 MHz.

Since compute_core performs one INT8 MAC per valid cycle, this equals 2 operations per cycle. The projected accelerator throughput is therefore 79.2M x 2 = 158.4 MOPS, or 0.1584 GOPS.
