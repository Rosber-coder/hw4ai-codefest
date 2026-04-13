import random
import time


def generate_matrix(rows, cols):
    return [[random.randint(-128, 127) for _ in range(cols)] for _ in range(rows)]


def zero_matrix(rows, cols):
    return [[0 for _ in range(cols)] for _ in range(rows)]


def tiled_gemm(A, B, tile_size=4):
    N = len(A)
    K = len(A[0])
    M = len(B[0])

    C = zero_matrix(N, M)

    # Tiled loops (hardware-style)
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

    A = generate_matrix(N, K)
    B = generate_matrix(K, M)

    start = time.perf_counter()
    C = tiled_gemm(A, B, tile_size=4)
    end = time.perf_counter()

    print(f"Tiled GEMM (pure Python) time: {(end - start)*1e6:.2f} us")


if __name__ == "__main__":
    main()
