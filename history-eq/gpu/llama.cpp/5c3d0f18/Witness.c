#include "ggml-quants.h"
#include "ggml-impl.h"
#include <assert.h>
#include <stdio.h>
#include <string.h>

float ggml_table_f32_f16[1 << 16];

int main(void) {
    ggml_table_f32_f16[0x3c00] = GGML_COMPUTE_FP16_TO_FP32((ggml_fp16_t) 0x3c00);
    ggml_table_f32_f16[0x7bff] = GGML_COMPUTE_FP16_TO_FP32((ggml_fp16_t) 0x7bff);
    assert(ggml_table_f32_f16[0x3c00] == 1.0f);
    assert(ggml_table_f32_f16[0x7bff] == 65504.0f);
    block_q4_0 x[4] = {0};
    block_q8_0 y[4] = {0};
    ggml_table_f32_f16[0x3c00] = 1.0f;
    ggml_table_f32_f16[0x7bff] = 65504.0f;
    for (int i = 0; i < 4; ++i) {
        x[i].d = y[i].d = (i == 0 || i == 2) ? 0x7bff : 0x3c00;
        memset(x[i].qs, i == 2 ? 0x77 : 0x99, sizeof(x[i].qs));
        memset(y[i].qs, 1, sizeof(y[i].qs));
    }
    float result = -1.0f;
    ggml_vec_dot_q4_0_q8_0(128, &result, 0, x, 0, y, 0, 1);
    printf("%.9g %a\n", result, result);
    return 0;
}
