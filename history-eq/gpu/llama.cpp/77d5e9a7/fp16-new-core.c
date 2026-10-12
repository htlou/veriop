#include <stdint.h>
#include <string.h>
#include <immintrin.h>
typedef uint16_t ggml_fp16_t;
#define GGML_FP32_TO_FP16(x) _cvtss_sh(x, 0)
static inline void row(const float * x, ggml_fp16_t * y, int64_t n) {
    int i = 0;
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
