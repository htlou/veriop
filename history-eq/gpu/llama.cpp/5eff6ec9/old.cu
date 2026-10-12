#define WARP_SIZE 32
static constexpr __device__ int ggml_cuda_get_physical_warp_size() { return 32; }
template<int width = WARP_SIZE>
static __device__ __forceinline__ int warp_reduce_all(int x) {
#ifdef GGML_USE_HIP
#pragma unroll
    for (int offset = width/2; offset > 0; offset >>= 1) {
        x = x && __shfl_xor_sync(0xffffffff, x, offset, width);
    }
    return x;
#else
    static_assert(width == WARP_SIZE, "width != WARP_SIZE not implemented");
    return __all_sync(0xffffffff, x);
#endif // GGML_USE_HIP
}
extern "C" __global__ void check(const int *input, int *output) {
    output[threadIdx.x] = warp_reduce_all<>(input[threadIdx.x]);
}
