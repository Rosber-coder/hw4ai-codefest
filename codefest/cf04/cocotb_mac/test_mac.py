import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge


@cocotb.test()
async def test_mac_basic(dut):
    # Start clock
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    # Apply reset
    dut.rst.value = 1
    dut.a.value = 0
    dut.b.value = 0
    await RisingEdge(dut.clk)

    # IMPORTANT: wait for reset to take effect
    await RisingEdge(dut.clk)

    # Check reset worked
    assert dut.out.value.to_signed() == 0

    # Release reset
    dut.rst.value = 0

    # Apply inputs
    dut.a.value = 3
    dut.b.value = 4

    # Wait 1 cycle to latch inputs
    await RisingEdge(dut.clk)

    # Accumulate
    for expected in [12, 24, 36]:
        await RisingEdge(dut.clk)
        assert dut.out.value.to_signed() == expected

    # Apply reset again
    dut.rst.value = 1
    await RisingEdge(dut.clk)

    # Wait for reset to apply
    await RisingEdge(dut.clk)

    assert dut.out.value.to_signed() == 0

    # Release reset
    dut.rst.value = 0

    # Negative test
    dut.a.value = -5
    dut.b.value = 2

    await RisingEdge(dut.clk)

    for expected in [-10, -20]:
        await RisingEdge(dut.clk)
        assert dut.out.value.to_signed() == expected


@cocotb.test()
async def test_mac_overflow(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    # Reset
    dut.rst.value = 1
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    dut.rst.value = 0

    # Force near max
    dut.out.value = 2147483640

    dut.a.value = 3
    dut.b.value = 4

    # Wait for latch + compute
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)

    assert dut.out.value.to_signed() == -2147483644
