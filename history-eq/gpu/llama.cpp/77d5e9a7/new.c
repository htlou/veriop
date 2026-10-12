#include <stdint.h>
#include <string.h>
#include <immintrin.h>
typedef struct { uint16_t bits; } ggml_bf16_t;
static inline float ggml_compute_bf16_to_fp32(ggml_bf16_t h) {
    union {
        float f;
        uint32_t i;
    } u;
    u.i = (uint32_t)h.bits << 16;
    return u.f;
}
#define GGML_BF16_TO_FP32(x) ggml_compute_bf16_to_fp32(x)
static inline void ggml_bf16_to_fp32_row(const ggml_bf16_t * x, float * y, int64_t n) {
    int i = 0;
    for (; i < n; ++i) {
        y[i] = GGML_BF16_TO_FP32(x[i]);
    }
}
uint32_t target_0(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[0],4); return bits; }
uint32_t target_1(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[1],4); return bits; }
uint32_t target_2(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[2],4); return bits; }
uint32_t target_3(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[3],4); return bits; }
uint32_t target_4(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[4],4); return bits; }
uint32_t target_5(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[5],4); return bits; }
uint32_t target_6(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[6],4); return bits; }
uint32_t target_7(uint16_t a0,uint16_t a1,uint16_t a2,uint16_t a3,uint16_t a4,uint16_t a5,uint16_t a6,uint16_t a7) { ggml_bf16_t x[8]={{a0},{a1},{a2},{a3},{a4},{a5},{a6},{a7}}; float y[8]; ggml_bf16_to_fp32_row(x,y,8); uint32_t bits; memcpy(&bits,&y[7],4); return bits; }
