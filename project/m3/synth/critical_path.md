# Critical Path and Timing Violation Discussion

The final OpenLane post-PnR timing results show that the design completes the flow, but does not fully close timing across all corners at the 10 ns clock period. The nominal TT corner reports no setup violation, but the slow-slow corners show negative setup slack.

The worst reported setup result is in the `max_ss_100C_1v60` corner:

- WNS: -2.624074 ns
- TNS: -32.354795 ns

The `nom_ss_100C_1v60` corner also shows setup violations:

- WNS: -2.495084 ns
- TNS: -30.413632 ns

A representative nominal timing path starts at register `_1425_` and ends at register `_1456_`, both clocked by `clk`. However, the true M3 timing concern is the violated slow-corner setup behavior, not the passing nominal path alone.

Based on the RTL structure, the most likely timing-critical logic is in the MAC datapath. The path corresponds to operand/control register outputs feeding multiply-related combinational logic, sign-extension logic, adder/carry-chain logic, and finally the destination accumulator/output register. This is more complex than the interface controller path, which mainly contains address decode, muxing, and register read/write logic.

The timing issue is expected because the current compute core performs multiplication and accumulation in the same cycle. In slow process corners, the delay of the multiply-plus-add datapath becomes too large for the 10 ns target period. To shorten the critical path in M4, the MAC operation should be pipelined. A practical improvement is to register the multiplication result first and perform the accumulator update in the next cycle. This would split the long combinational path into two shorter paths and improve setup timing, at the cost of one extra cycle of latency.
