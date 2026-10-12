#include <stdint.h>
#include <riscv_vector.h>
#define memcpy __builtin_memcpy
typedef uint16_t ggml_fp16_t;
static inline float riscv_compute_fp16_to_fp32(ggml_fp16_t h) {
        _Float16 hf;
        memcpy(&hf, &h, sizeof(ggml_fp16_t));
        return hf;
    }
#define GGML_CPU_FP16_TO_FP32(x) riscv_compute_fp16_to_fp32(x)
void ggml_cpu_fp16_to_fp32(const ggml_fp16_t * x, float * y, int64_t n) {
    int64_t i = 0;
#if defined(__F16C__)
#if defined(__AVX512F__)
    for (; i + 15 < n; i += 16) {
        __m256i x_vec = _mm256_loadu_si256((const __m256i *)(x + i));
        __m512 y_vec = _mm512_cvtph_ps(x_vec);
        _mm512_storeu_ps(y + i, y_vec);
    }
#endif
    for (; i + 7 < n; i += 8) {
        __m128i x_vec = _mm_loadu_si128((const __m128i *)(x + i));
        __m256 y_vec = _mm256_cvtph_ps(x_vec);
        _mm256_storeu_ps(y + i, y_vec);
    }
    for (; i + 3 < n; i += 4) {
        __m128i x_vec = _mm_loadl_epi64((const __m128i *)(x + i));
        __m128 y_vec = _mm_cvtph_ps(x_vec);
        _mm_storeu_ps(y + i, y_vec);
    }
#endif

    for (; i < n; ++i) {
        y[i] = GGML_CPU_FP16_TO_FP32(x[i]);
    }
}
uint32_t target(uint16_t a) { uint16_t x[8]={a,a,a,a,a,a,a,a}; float y[8]; ggml_cpu_fp16_to_fp32(x,y,8); uint32_t bits; memcpy(&bits,&y[0],4); return bits; }
