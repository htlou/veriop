#include "ggml.h"
#include "ggml-cpu.h"
#include "ggml-quants.h"
#include "ggml-cpu/quants.h"

#ifdef CANDIDATE
#include "ggml-cpu/repack.h"
namespace ggml::cpu::repack {
template <typename T, int64_t I, int64_t N>
int repack(ggml_tensor *, const void *, size_t);
}
#endif

#include <cstdint>
#include <cstdio>
#include <cstring>

int main(int argc, char ** argv) {
    constexpr int n = QK_K;
    ggml_init_params params = {1 << 20, nullptr, false};
    ggml_context * context = ggml_init(params);
    ggml_cpu_init();
    float matrix[8][n];
    float vector[n];
    block_q2_K weights[8];
    block_q8_K input;
    for (int row = 0; row < 8; row++) {
        for (int col = 0; col < n; col++) {
            matrix[row][col] = float((row * 71 + col * 37) % 257 - 128) / 32.0f;
        }
        quantize_row_q2_K_ref(matrix[row], &weights[row], n);
    }
    for (int col = 0; col < n; col++) vector[col] = float((col * 19) % 113 - 56) / 20.0f;
    quantize_row_q8_K_ref(vector, &input, n);
    if (argc > 1) {
        FILE * file = std::fopen(argv[1], "wb");
        if (!file) return 3;
        bool wrote = std::fwrite(weights, sizeof(weights), 1, file) == 1 &&
                     std::fwrite(&input, sizeof(input), 1, file) == 1;
        if (std::fclose(file)) wrote = false;
        if (!wrote) return 3;
    }

    float result[8] = {};
#ifdef CANDIDATE
    ggml_tensor * packed = ggml_new_tensor_2d(context, GGML_TYPE_Q2_K, n, 8);
    if (ggml::cpu::repack::repack<block_q2_K, 8, 8>(packed, weights, sizeof(weights))) return 2;
    ggml_gemv_q2_K_8x8_q8_K(n, result, 0, packed->data, &input, 1, 8);
#else
    for (int row = 0; row < 8; row++) {
        ggml_vec_dot_q2_K_q8_K(n, &result[row], 0, &weights[row], 0, &input, 0, 1);
    }
#endif
    ggml_free(context);
    for (float value : result) {
        uint32_t bits;
        std::memcpy(&bits, &value, sizeof(bits));
        std::printf("%08x %.9g\n", bits, value);
    }
}
