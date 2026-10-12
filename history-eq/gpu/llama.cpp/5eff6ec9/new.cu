#define WARP_SIZE 32
static constexpr __device__ int ggml_cuda_get_physical_warp_size() { return 32; }
template<int width = WARP_SIZE>
static __device__ __forceinline__ int warp_reduce_all(int x) {
    if (width == ggml_cuda_get_physical_warp_size()) {
        return __all_sync(0xffffffff, x);
    } else {
#pragma unroll
        for (int offset = width/2; offset > 0; offset >>= 1) {
            x = __shfl_xor_sync(0xffffffff, x, offset, width) && x;
        }
        return x;
    }
}
extern "C" __global__ void check(const int *input, int *output) {
    output[threadIdx.x] = warp_reduce_all<>(input[threadIdx.x]);
}
