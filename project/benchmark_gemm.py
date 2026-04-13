import os
import time
import random
import resource
import statistics


def generate_matrix(rows, cols):
    return [[random.randint(-128, 127) for _ in range(cols)] for _ in range(rows)]


def zero_matrix(rows, cols):
    return [[0 for _ in range(cols)] for _ in range(rows)]


def tiled_gemm(A, B, tile_size=4):
    N = len(A)
    K = len(A[0])
    M = len(B[0])

    C = zero_matrix(N, M)

    for i in range(0, N, tile_size):
        for j in range(0, M, tile_size):
            for kk in range(0, K, tile_size):
                for ii in range(i, min(i + tile_size, N)):
                    for jj in range(j, min(j + tile_size, M)):
                        for k in range(kk, min(kk + tile_size, K)):
                            C[ii][jj] += A[ii][k] * B[k][jj]

    return C


def main():
    N = 16
    K = 16
    M = 16
    TILE = 4
    RUNS = 10

    random.seed(42)
    A = generate_matrix(N, K)
    B = generate_matrix(K, M)

    times_s = []

    for _ in range(RUNS):
        start = time.perf_counter()
        _ = tiled_gemm(A, B, tile_size=TILE)
        end = time.perf_counter()
        times_s.append(end - start)

    median_s = statistics.median(times_s)
    flops = 2 * N * K * M
    throughput = flops / median_s

    # ru_maxrss is KB on Linux
    peak_rss_kb = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
    peak_rss_mb = peak_rss_kb / 1024.0

    print("Benchmark Results")
    print(f"Runs: {RUNS}")
    print("Times (us):")
    for t in times_s:
        print(f"{t * 1e6:.2f}")
    print(f"Median time (us): {median_s * 1e6:.2f}")
    print(f"FLOPs per run: {flops}")
    print(f"Throughput (FLOP/s): {throughput:.2f}")
    print(f"Throughput (MFLOP/s): {throughput / 1e6:.4f}")
    print(f"Peak RSS (KB): {peak_rss_kb}")
    print(f"Peak RSS (MB): {peak_rss_mb:.4f}")


if __name__ == "__main__":
    main()
