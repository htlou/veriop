#include "ggml.h"
#include "ggml-cpu.h"

#include <cstdio>

int main() {
    ggml_init_params params = {1024 * 1024, nullptr, false};
    ggml_context * ctx = ggml_init(params);
    if (!ctx) return 1;

    // ggml_mul_mat expects src0[k,m] and src1[k,n], yielding dst[m,n].
    ggml_tensor * a = ggml_new_tensor_2d(ctx, GGML_TYPE_F16, 8, 4);
    ggml_tensor * b = ggml_new_tensor_2d(ctx, GGML_TYPE_F32, 8, 2);
    ggml_tensor * c = ggml_mul_mat(ctx, a, b);
    ggml_cgraph * graph = ggml_new_graph(ctx);
    ggml_build_forward_expand(graph, c);
    for (int test = 0; test < 3; ++test) {
        for (int i = 0; i < 32; ++i)
            ggml_set_f32_1d(a, i, test == 0 ? 0.0f : test == 1 ? static_cast<float>(i % 8 + 1) : 1.0f);
        for (int i = 0; i < 16; ++i)
            ggml_set_f32_1d(b, i, test == 2 ? 1.0001f : 1.0f);
        const ggml_status status = ggml_graph_compute_with_ctx(ctx, graph, 1);
        std::printf("case=%s status=%d shape=%lldx%lld",
                    test == 0 ? "zero" : test == 1 ? "nonzero" : "nonfp16_b",
                    static_cast<int>(status), static_cast<long long>(c->ne[0]),
                    static_cast<long long>(c->ne[1]));
        for (int i = 0; i < 8; ++i) std::printf(" c%d=%a", i, ggml_get_f32_1d(c, i));
        std::puts("");
        if (status != GGML_STATUS_SUCCESS) return 2;
    }
    ggml_free(ctx);
    return 0;
}
