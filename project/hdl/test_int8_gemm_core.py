import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge


@cocotb.test()
async def test_int8_gemm_core_basic(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    # ---------------- RESET ----------------
    dut.rst.value = 1
    dut.valid_in.value = 0
    dut.a_in.value = 0
    dut.b_in.value = 0

    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    assert dut.acc_out.value.to_signed() == 0

    dut.rst.value = 0

    # ---------------- FIRST MAC ----------------
    dut.a_in.value = 3
    dut.b_in.value = 4
    dut.valid_in.value = 1

    await RisingEdge(dut.clk)   # latch inputs

    dut.valid_in.value = 0      # STOP immediately (CRITICAL)

    await RisingEdge(dut.clk)   # compute

    assert dut.acc_out.value.to_signed() == 12

    # ---------------- SECOND MAC ----------------
    dut.a_in.value = -5
    dut.b_in.value = 2
    dut.valid_in.value = 1

    await RisingEdge(dut.clk)   # latch

    dut.valid_in.value = 0

    await RisingEdge(dut.clk)   # compute

    assert dut.acc_out.value.to_signed() == 2

    # ---------------- HOLD TEST ----------------
    dut.a_in.value = 7
    dut.b_in.value = 7
    dut.valid_in.value = 0

    await RisingEdge(dut.clk)

    assert dut.acc_out.value.to_signed() == 2
