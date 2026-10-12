#include "ggml-cpu/vec.h"

extern "C" ggml_fp16_t target_gelu_quick_f16(ggml_fp16_t bits) {
    ggml_fp16_t output = 0;
    ggml_vec_gelu_quick_f16(1, &output, &bits);
    return output;
}
