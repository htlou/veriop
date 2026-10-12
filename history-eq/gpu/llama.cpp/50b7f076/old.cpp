#include <stdint.h>
enum { GGML_TYPE_F32 = 0, GGML_TYPE_F16 = 1 };
struct ggml_tensor { int64_t ne[4]; int type; ggml_tensor *src[3]; };
struct ggml_cgraph { ggml_tensor *nodes[1]; };
static bool ggml_is_quantized(int) { return false; }
static bool ggml_vk_use_mul_mat_vec_id(const struct ggml_cgraph * cgraph, int node_idx) {
    ggml_tensor * dst = cgraph->nodes[node_idx];
    ggml_tensor * src0 = dst->src[0];
    ggml_tensor * src2 = dst->src[2];
    return src2->ne[1] == 1 && (src0->type == GGML_TYPE_F32 || src0->type == GGML_TYPE_F16 || ggml_is_quantized(src0->type));
}
extern "C" bool target(int64_t batch) {
    ggml_tensor src0{{1,1,1,1}, GGML_TYPE_F32, {}};
    ggml_tensor src2{{1,batch,1,1}, GGML_TYPE_F32, {}};
    ggml_tensor dst{{1,1,1,1}, GGML_TYPE_F32, {&src0,nullptr,&src2}};
    ggml_cgraph graph{{&dst}};
    return ggml_vk_use_mul_mat_vec_id(&graph, 0);
}
