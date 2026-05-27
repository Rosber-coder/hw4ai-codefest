import matplotlib.pyplot as plt
import numpy as np

# Arithmetic intensity
ai = 10.67

# Throughput values in GOPS
sw_throughput = 0.004242
hw_throughput = 0.1584

# Roofline assumptions
peak_compute = 0.1584
peak_bandwidth = 0.15

x = np.logspace(-1, 2, 200)
roofline = np.minimum(peak_compute, peak_bandwidth * x)

plt.figure(figsize=(8,6))

plt.loglog(
    x,
    roofline,
    linewidth=2,
    label="Projected Roofline"
)

plt.scatter(
    ai,
    sw_throughput,
    s=100,
    marker='o',
    label="Software GEMM (measured)"
)



plt.scatter(
    ai,
    hw_throughput,
    s=120,
    marker='x',
    label="CLLM Accelerator (projected)"
)

plt.annotate(
    "SW measured",
    (ai, sw_throughput),
    textcoords="offset points",
    xytext=(10,10)
)

plt.annotate(
    "HW projected",
    (ai, hw_throughput),
    textcoords="offset points",
    xytext=(10,-15)
)
plt.xlabel("Arithmetic Intensity (ops/byte)")
plt.ylabel("Throughput (GOPS)")
plt.title("CF09 Roofline Plot — INT8 GEMM")

plt.grid(True, which="both", linestyle='--')
plt.legend()

plt.savefig(
    "codefest/cf09/benchmarks/roofline_plot.png",
    dpi=300,
    bbox_inches="tight"
)

print("Roofline plot generated successfully.")
