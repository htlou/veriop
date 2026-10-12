#include <stdint.h>
#include <string.h>
#include <immintrin.h>
typedef uint16_t ggml_fp16_t;
#define GGML_FP32_TO_FP16(x) _cvtss_sh(x, 0)
static inline void row(const float * x, ggml_fp16_t * y, int64_t n) {
    int64_t i = 0;
#if defined(__F16C__)
#if defined(__AVX512F__)
    for (; i + 15 < n; i += 16) {
        __m512 x_vec = _mm512_loadu_ps(x + i);
        __m256i y_vec = _mm512_cvtps_ph(x_vec, _MM_FROUND_TO_NEAREST_INT);
        _mm256_storeu_si256((__m256i *)(y + i), y_vec);
    }
#endif
    for (; i + 7 < n; i += 8) {
        __m256 x_vec = _mm256_loadu_ps(x + i);
        __m128i y_vec = _mm256_cvtps_ph(x_vec, _MM_FROUND_TO_NEAREST_INT);
        _mm_storeu_si128((__m128i *)(y + i), y_vec);
    }
    for (; i + 3 < n; i += 4) {
        __m128 x_vec = _mm_loadu_ps(x + i);
        __m128i y_vec = _mm_cvtps_ph(x_vec, _MM_FROUND_TO_NEAREST_INT);
        _mm_storel_epi64((__m128i *)(y + i), y_vec);
    }
#endif
    for (; i < n; ++i) {
        y[i] = GGML_FP32_TO_FP16(x[i]);
    }
}
uint16_t target_0(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[0]; }
uint16_t target_1(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[1]; }
uint16_t target_2(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[2]; }
uint16_t target_3(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[3]; }
uint16_t target_4(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[4]; }
uint16_t target_5(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[5]; }
uint16_t target_6(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[6]; }
uint16_t target_7(uint32_t a0,uint32_t a1,uint32_t a2,uint32_t a3,uint32_t a4,uint32_t a5,uint32_t a6,uint32_t a7) { uint32_t bits[8]={a0,a1,a2,a3,a4,a5,a6,a7}; float x[8]; memcpy(x,bits,32); ggml_fp16_t y[8]; row(x,y,8); return y[7]; }
