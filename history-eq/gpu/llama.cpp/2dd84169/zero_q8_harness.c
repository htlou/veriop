#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "ggml-common.h"
#include "ggml-quants.h"

// Only the fp16 value 0x3c00 is read by this test; the historical table maps it to 1.0f.
float ggml_table_f32_f16[1 << 16];
void ggml_vec_dot_q6_K_q8_K(int n, float * s, size_t bs, const void * vx,
                            size_t bx, const void * vy, size_t by, int nrc);

int main(void) {
    float input[QK_K] = {0};
    block_q6_K x;
    block_q8_K y;
    float out;
    memset(&x, 0, sizeof x);
    x.d = 0x3c00;
    ggml_table_f32_f16[x.d] = 1.0f;
    for (int j = 0; j < QK_K / 16; ++j) x.scales[j] = 1;
    quantize_row_q8_K_ref(input, &y, QK_K);
#ifdef INIT_BSUMS
    memset(y.bsums, 0, sizeof y.bsums);
#endif
    printf("d=%g q0=%d\n", y.d, y.qs[0]);
    ggml_vec_dot_q6_K_q8_K(QK_K, &out, 0, &x, 0, &y, 0, 1);
    printf("out=%a\n", out);
    return 0;
}
