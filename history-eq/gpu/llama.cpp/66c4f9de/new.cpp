#define __device__
#define __forceinline__ __attribute__((always_inline)) inline
#define GGML_CUDA_CC_VOLTA 700
#define QI4_0 4
#define QI4_1 4
#define VDR_Q4_0_Q8_1_MMQ 4
#define VDR_Q4_1_Q8_1_MMQ 4
#define MMQ_TILE_Y_K 8
struct alignas(8) int2 { int x, y; };
struct alignas(16) int4 { int x, y, z, w; };
static constexpr __device__ int ggml_cuda_get_max_cpy_bytes() {
#ifdef GGML_USE_HIP
    return 16;
#else
#if __CUDA_ARCH__ >= GGML_CUDA_CC_VOLTA
    return 16;
#else
    return 8;
#endif // __CUDA_ARCH__ >= GGML_CUDA_CC_VOLTA
#endif // GGML_USE_HIP
}


template <int nbytes, int alignment = 0>
static __device__ __forceinline__ void ggml_cuda_memcpy_1(void * __restrict__ dst, const void * __restrict__ src) {
    static_assert(
        nbytes <= ggml_cuda_get_max_cpy_bytes() || alignment == 0,
        "You are misusing the alignment parameter for ggml_cuda_memcpy_1. "
        "The intent is for the parameter is only as a workaround if either one of the pointers is not properly aligned. "
        "If you use it to do more bytes per copy than ggml_cuda_max_cpy_bytes() the reads and writes may not be coalesced. "
        "Call ggml_cuda_memcpy_1 in a loop instead.");
    if constexpr (alignment != 0) {
        static_assert(nbytes % alignment == 0, "bad alignment");
    }
    constexpr int nb_per_cpy = alignment == 0 ? nbytes : alignment;

#pragma unroll
    for (int i = 0; i < nbytes/nb_per_cpy; ++i) {
        if constexpr (nb_per_cpy == 1) {
            ((char *) dst)[i] = ((const char *) src)[i];
        } else if constexpr (nb_per_cpy == 2) {
            ((short *) dst)[i] = ((const short *) src)[i];
        } else if constexpr (nb_per_cpy == 4) {
            ((int *) dst)[i] = ((const int *) src)[i];
        } else if constexpr (nb_per_cpy == 8) {
            ((int2 *) dst)[i] = ((const int2 *) src)[i];
        } else if constexpr (nb_per_cpy == 16) {
            ((int4 *) dst)[i] = ((const int4 *) src)[i];
        } else {
            static_assert(nbytes == 0 && nbytes == -1, "bad nbytes");
        }
    }
}

extern "C" unsigned __int128 target_q40_0(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7) {
alignas(16) int y_qs[8] = {a0, a1, a2, a3, a4, a5, a6, a7};
constexpr int j = 0, kyqs = 0;
int u[2*VDR_Q4_0_Q8_1_MMQ];

                constexpr int max_cpy = ggml_cuda_get_max_cpy_bytes();
                constexpr int mcpy_int = max_cpy / sizeof(int);
                static_assert(VDR_Q4_0_Q8_1_MMQ == 4, "bad VDR_Q4_0_Q8_1_MMQ");

                int tmp0[4], tmp1[4];

                #pragma unroll
                for (int l0 = 0; l0 < 4 / mcpy_int; ++l0) {
                    ggml_cuda_memcpy_1<max_cpy>(tmp0 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + l0 * mcpy_int]  );
                    ggml_cuda_memcpy_1<max_cpy>(tmp1 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + QI4_0 + l0 * mcpy_int]);
                }

                u[0]=tmp0[0]; u[2]=tmp0[1]; u[4]=tmp0[2]; u[6]=tmp0[3];
                u[1]=tmp1[0]; u[3]=tmp1[1]; u[5]=tmp1[2]; u[7]=tmp1[3];

                unsigned __int128 result = 0;
result |= (unsigned __int128)(unsigned int)u[0] << 0;
result |= (unsigned __int128)(unsigned int)u[1] << 32;
result |= (unsigned __int128)(unsigned int)u[2] << 64;
result |= (unsigned __int128)(unsigned int)u[3] << 96;
return result;
}
extern "C" unsigned __int128 target_q40_1(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7) {
alignas(16) int y_qs[8] = {a0, a1, a2, a3, a4, a5, a6, a7};
constexpr int j = 0, kyqs = 0;
int u[2*VDR_Q4_0_Q8_1_MMQ];

                constexpr int max_cpy = ggml_cuda_get_max_cpy_bytes();
                constexpr int mcpy_int = max_cpy / sizeof(int);
                static_assert(VDR_Q4_0_Q8_1_MMQ == 4, "bad VDR_Q4_0_Q8_1_MMQ");

                int tmp0[4], tmp1[4];

                #pragma unroll
                for (int l0 = 0; l0 < 4 / mcpy_int; ++l0) {
                    ggml_cuda_memcpy_1<max_cpy>(tmp0 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + l0 * mcpy_int]  );
                    ggml_cuda_memcpy_1<max_cpy>(tmp1 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + QI4_0 + l0 * mcpy_int]);
                }

                u[0]=tmp0[0]; u[2]=tmp0[1]; u[4]=tmp0[2]; u[6]=tmp0[3];
                u[1]=tmp1[0]; u[3]=tmp1[1]; u[5]=tmp1[2]; u[7]=tmp1[3];

                unsigned __int128 result = 0;
result |= (unsigned __int128)(unsigned int)u[4] << 0;
result |= (unsigned __int128)(unsigned int)u[5] << 32;
result |= (unsigned __int128)(unsigned int)u[6] << 64;
result |= (unsigned __int128)(unsigned int)u[7] << 96;
return result;
}
extern "C" unsigned __int128 target_q41_0(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7) {
alignas(16) int y_qs[8] = {a0, a1, a2, a3, a4, a5, a6, a7};
constexpr int j = 0, kyqs = 0;
int u[2*VDR_Q4_1_Q8_1_MMQ];

                constexpr int max_cpy = ggml_cuda_get_max_cpy_bytes();
                constexpr int mcpy_int = max_cpy / sizeof(int);
                static_assert(VDR_Q4_0_Q8_1_MMQ == 4, "bad VDR_Q4_0_Q8_1_MMQ");

                int tmp0[4], tmp1[4];

                #pragma unroll
                for (int l0 = 0; l0 < 4 / mcpy_int; ++l0) {
                    ggml_cuda_memcpy_1<max_cpy>(tmp0 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + l0 * mcpy_int]  );
                    ggml_cuda_memcpy_1<max_cpy>(tmp1 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + QI4_1 + l0 * mcpy_int]);
                }

                u[0]=tmp0[0]; u[2]=tmp0[1]; u[4]=tmp0[2]; u[6]=tmp0[3];
                u[1]=tmp1[0]; u[3]=tmp1[1]; u[5]=tmp1[2]; u[7]=tmp1[3];

                unsigned __int128 result = 0;
result |= (unsigned __int128)(unsigned int)u[0] << 0;
result |= (unsigned __int128)(unsigned int)u[1] << 32;
result |= (unsigned __int128)(unsigned int)u[2] << 64;
result |= (unsigned __int128)(unsigned int)u[3] << 96;
return result;
}
extern "C" unsigned __int128 target_q41_1(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7) {
alignas(16) int y_qs[8] = {a0, a1, a2, a3, a4, a5, a6, a7};
constexpr int j = 0, kyqs = 0;
int u[2*VDR_Q4_1_Q8_1_MMQ];

                constexpr int max_cpy = ggml_cuda_get_max_cpy_bytes();
                constexpr int mcpy_int = max_cpy / sizeof(int);
                static_assert(VDR_Q4_0_Q8_1_MMQ == 4, "bad VDR_Q4_0_Q8_1_MMQ");

                int tmp0[4], tmp1[4];

                #pragma unroll
                for (int l0 = 0; l0 < 4 / mcpy_int; ++l0) {
                    ggml_cuda_memcpy_1<max_cpy>(tmp0 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + l0 * mcpy_int]  );
                    ggml_cuda_memcpy_1<max_cpy>(tmp1 + l0 * mcpy_int, &y_qs[j*MMQ_TILE_Y_K + kyqs + QI4_1 + l0 * mcpy_int]);
                }

                u[0]=tmp0[0]; u[2]=tmp0[1]; u[4]=tmp0[2]; u[6]=tmp0[3];
                u[1]=tmp1[0]; u[3]=tmp1[1]; u[5]=tmp1[2]; u[7]=tmp1[3];

                unsigned __int128 result = 0;
result |= (unsigned __int128)(unsigned int)u[4] << 0;
result |= (unsigned __int128)(unsigned int)u[5] << 32;
result |= (unsigned __int128)(unsigned int)u[6] << 64;
result |= (unsigned __int128)(unsigned int)u[7] << 96;
return result;
}
