import numpy as np
import matplotlib.pyplot as plt

# CPU roofline assumptions
peak_compute = 960.0   # GFLOP/s
peak_bw = 83.2         # GB/s
ridge = peak_compute / peak_bw

# Kernel point
ai_kernel = 10.67
perf_kernel = min(peak_compute, peak_bw * ai_kernel)

# Hypothetical accelerator point
ai_accel = 10.67
perf_accel = 256.0

x = np.logspace(-1, 3, 400)
y = np.minimum(peak_bw * x, peak_compute)

plt.figure(figsize=(8, 6))
plt.loglog(x, y, linewidth=2, label="CPU Roofline")

plt.scatter(ai_kernel, perf_kernel, s=80, label="Software GEMM kernel")
plt.scatter(ai_accel, perf_accel, s=80, label="Hypothetical HW accelerator")

plt.axvline(ridge, linestyle="--", linewidth=1)
plt.text(ridge * 1.05, 20, f"Ridge ≈ {ridge:.2f} FLOP/byte", rotation=90)

plt.text(ai_kernel * 1.05, perf_kernel * 0.9,
         f"SW kernel\n({ai_kernel:.2f}, {perf_kernel:.1f})")
plt.text(ai_accel * 1.05, perf_accel * 1.05,
         f"HW point\n({ai_accel:.2f}, {perf_accel:.1f})")

plt.xlabel("Arithmetic Intensity (FLOP/byte)")
plt.ylabel("Performance (GFLOP/s)")
plt.title("Roofline Model for Project GEMM Kernel")
plt.legend()
plt.grid(True, which="both", linestyle=":")

plt.tight_layout()
plt.savefig("roofline_project.png", dpi=200)
print("Saved: codefest/cf02/profiling/roofline_project.png")
