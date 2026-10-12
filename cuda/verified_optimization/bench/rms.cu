// Compile against the repository translation unit; use its actual launch path.
#include "norm.cu"
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <random>
#include <vector>

int main(int argc, char ** argv) {
    if (argc != 6) {
        fprintf(stderr, "usage: rms NCOLS NROWS LAUNCHES REPEATS OUTPUT.bin\n");
        return 2;
    }
    int ncols = std::stoi(argv[1]), nrows = std::stoi(argv[2]);
    int launches = std::stoi(argv[3]), repeats = std::stoi(argv[4]);
    if (ncols < 1 || ncols > 65536 || nrows < 1 || nrows > 4096 ||
        launches < 1 || launches > 100000 || repeats < 1 || repeats > 100) return 2;
    size_t count = size_t(ncols) * nrows;
    std::vector<float> input(count), output(count);
    std::mt19937 rng(20261003);
    std::uniform_real_distribution<float> dist(-1.0f, 1.0f);
    for (float & x : input) x = dist(rng);
    float * x = nullptr, * out = nullptr;
    CUDA_CHECK(cudaMalloc(&x, count * sizeof(float)));
    CUDA_CHECK(cudaMalloc(&out, count * sizeof(float)));
    CUDA_CHECK(cudaMemcpy(x, input.data(), count * sizeof(float), cudaMemcpyHostToDevice));
    cudaStream_t stream;
    CUDA_CHECK(cudaStreamCreate(&stream));
    int device;
    cudaDeviceProp prop;
    CUDA_CHECK(cudaGetDevice(&device));
    CUDA_CHECK(cudaGetDeviceProperties(&prop, device));
    for (int block : {256, 1024}) {
        auto kernel = block == 256 ? rms_norm_f32<256, false, false, false>
                                   : rms_norm_f32<1024, false, false, false>;
        cudaFuncAttributes attributes;
        int active_blocks;
        CUDA_CHECK(cudaFuncGetAttributes(&attributes, kernel));
        CUDA_CHECK(cudaOccupancyMaxActiveBlocksPerMultiprocessor(&active_blocks, kernel, block, 128));
        printf("{\"resource_block\":%d,\"registers_per_thread\":%d,\"static_shared_bytes\":%zu,"
               "\"dynamic_shared_bytes\":128,\"local_bytes\":%zu,\"max_active_blocks_per_sm\":%d,"
               "\"theoretical_occupancy\":%.9g}\n", block, attributes.numRegs, attributes.sharedSizeBytes,
               attributes.localSizeBytes, active_blocks, double(active_blocks * block) / prop.maxThreadsPerMultiProcessor);
    }
    const float eps = 1e-5f;
    auto launch = [&] {
        rms_norm_f32_cuda(x, out, ncols, nrows, 1, 1, ncols,
                         int64_t(ncols) * nrows, int64_t(ncols) * nrows, eps, stream);
    };
    for (int i = 0; i < 200; ++i) launch();
    CUDA_CHECK(cudaGetLastError());
    CUDA_CHECK(cudaStreamSynchronize(stream));
    cudaEvent_t begin, end;
    CUDA_CHECK(cudaEventCreate(&begin));
    CUDA_CHECK(cudaEventCreate(&end));
    std::vector<double> times;
    for (int r = 0; r < repeats; ++r) {
        CUDA_CHECK(cudaEventRecord(begin, stream));
        for (int i = 0; i < launches; ++i) launch();
        CUDA_CHECK(cudaEventRecord(end, stream));
        CUDA_CHECK(cudaEventSynchronize(end));
        float ms;
        CUDA_CHECK(cudaEventElapsedTime(&ms, begin, end));
        times.push_back(double(ms) * 1000 / launches);
    }
    CUDA_CHECK(cudaMemcpy(output.data(), out, count * sizeof(float), cudaMemcpyDeviceToHost));
    double max_abs = 0, max_rel = 0;
    for (int row = 0; row < nrows; ++row) {
        double sum = 0;
        for (int col = 0; col < ncols; ++col) {
            double value = input[size_t(row) * ncols + col];
            sum += value * value;
        }
        double scale = 1.0 / std::sqrt(sum / ncols + eps);
        for (int col = 0; col < ncols; ++col) {
            size_t i = size_t(row) * ncols + col;
            double reference = input[i] * scale;
            double error = std::abs(output[i] - reference);
            if (!std::isfinite(output[i]) || error > 1e-5 + 1e-4 * std::abs(reference)) return 3;
            max_abs = std::max(max_abs, error);
            max_rel = std::max(max_rel, error / std::max(std::abs(reference), 1e-30));
        }
    }
    std::ofstream saved(argv[5], std::ios::binary);
    saved.write(reinterpret_cast<const char *>(output.data()), count * sizeof(float));
    saved.close();
    if (!saved) return 4;
    printf("{\"ncols\":%d,\"nrows\":%d,\"warmup\":200,\"launches_per_repeat\":%d,"
           "\"cpu_reference_max_abs\":%.12g,\"cpu_reference_max_rel\":%.12g,\"us\":[",
           ncols, nrows, launches, max_abs, max_rel);
    for (size_t i = 0; i < times.size(); ++i) printf("%s%.9g", i ? "," : "", times[i]);
    printf("]}\n");
    CUDA_CHECK(cudaEventDestroy(begin));
    CUDA_CHECK(cudaEventDestroy(end));
    CUDA_CHECK(cudaStreamDestroy(stream));
    CUDA_CHECK(cudaFree(x));
    CUDA_CHECK(cudaFree(out));
}
