
#include <cuda_runtime.h>
#include <iostream>
#include <vector>
#include <iomanip>

#define N 1024
#define TILE 8

#define CHECK_CUDA(call)                                                   \
do {                                                                       \
    cudaError_t err = call;                                                \
    if (err != cudaSuccess) {                                              \
        std::cerr << "CUDA error at " << __FILE__ << ":" << __LINE__       \
                  << " -> " << cudaGetErrorString(err) << std::endl;       \
        exit(EXIT_FAILURE);                                                \
    }                                                                      \
} while (0)

__global__ void gemm_tiled_kernel(const float* A, const float* B, float* C, int n) {
    __shared__ float As[TILE][TILE];
    __shared__ float Bs[TILE][TILE];

    int tx = threadIdx.x;
    int ty = threadIdx.y;

    int row = blockIdx.y * TILE + ty;
    int col = blockIdx.x * TILE + tx;

    float sum = 0.0f;

    for (int tile = 0; tile < (n + TILE - 1) / TILE; tile++) {
        int a_col = tile * TILE + tx;
        int b_row = tile * TILE + ty;

        if (row < n && a_col < n)
            As[ty][tx] = A[row * n + a_col];
        else
            As[ty][tx] = 0.0f;

        if (b_row < n && col < n)
            Bs[ty][tx] = B[b_row * n + col];
        else
            Bs[ty][tx] = 0.0f;

        __syncthreads();

        for (int k = 0; k < TILE; k++) {
            sum += As[ty][k] * Bs[k][tx];
        }

        __syncthreads();
    }

    if (row < n && col < n) {
        C[row * n + col] = sum;
    }
}

void init_matrix(std::vector<float>& M, int n) {
    for (int i = 0; i < n * n; i++) {
        M[i] = 1.0f;
    }
}

int main() {
    size_t bytes = N * N * sizeof(float);

    std::vector<float> h_A(N * N), h_B(N * N), h_C(N * N);
    init_matrix(h_A, N);
    init_matrix(h_B, N);

    float *d_A, *d_B, *d_C;
    CHECK_CUDA(cudaMalloc(&d_A, bytes));
    CHECK_CUDA(cudaMalloc(&d_B, bytes));
    CHECK_CUDA(cudaMalloc(&d_C, bytes));

    CHECK_CUDA(cudaMemcpy(d_A, h_A.data(), bytes, cudaMemcpyHostToDevice));
    CHECK_CUDA(cudaMemcpy(d_B, h_B.data(), bytes, cudaMemcpyHostToDevice));

    dim3 block(TILE, TILE);
    dim3 grid((N + TILE - 1) / TILE,
              (N + TILE - 1) / TILE);

    cudaEvent_t start, stop;
    CHECK_CUDA(cudaEventCreate(&start));
    CHECK_CUDA(cudaEventCreate(&stop));

    // Warm-up
    gemm_tiled_kernel<<<grid, block>>>(d_A, d_B, d_C, N);
    CHECK_CUDA(cudaDeviceSynchronize());

    CHECK_CUDA(cudaEventRecord(start));
    gemm_tiled_kernel<<<grid, block>>>(d_A, d_B, d_C, N);
    CHECK_CUDA(cudaEventRecord(stop));
    CHECK_CUDA(cudaEventSynchronize(stop));

    float ms;
    CHECK_CUDA(cudaEventElapsedTime(&ms, start, stop));

    double flops = 2.0 * N * N * N;
    double gflops = flops / (ms / 1000.0) / 1e9;

    std::cout << std::fixed << std::setprecision(3);
    std::cout << "Tiled GEMM (TILE=8)\n";
    std::cout << "Time (ms): " << ms << "\n";
    std::cout << "GFLOP/s: " << gflops << std::endl;

    cudaFree(d_A);
    cudaFree(d_B);
    cudaFree(d_C);
}
