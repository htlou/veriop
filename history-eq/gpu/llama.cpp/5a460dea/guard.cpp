#include <algorithm>
#include <array>
#include <cstddef>
#include <cstdint>
#include <cstdio>
constexpr int GGML_MAX_DIMS=4, GGML_TENSOR_FLAG_OUTPUT=1;
enum ggml_op { GGML_OP_NONE, GGML_OP_VIEW, GGML_OP_RESHAPE, GGML_OP_TRANSPOSE,
               GGML_OP_PERMUTE, GGML_OP_GATED_DELTA_NET, GGML_OP_CPY, GGML_OP_ADD };
enum ggml_type { GGML_TYPE_F32 };
struct ggml_tensor {
    ggml_op op{}; ggml_type type{}; int flags{}; ggml_tensor * src[6]{};
    ggml_tensor * view_src{}; size_t view_offs{}; int64_t ne[4]{}; size_t nb[4]{};
    void * data{}; int K{}; bool contiguous{};
};
struct ggml_cgraph { int n_nodes; ggml_tensor ** nodes; };
struct ggml_cuda_gated_delta_net_fused_cache { float * data; int64_t slot_stride; };
static bool ggml_is_empty(const ggml_tensor *) { return false; }
static bool ggml_is_contiguous(const ggml_tensor * t) { return t->contiguous; }
static int ggml_get_op_params_i32(const ggml_tensor * t, int) { return t->K; }
static size_t ggml_type_size(ggml_type) { return 4; }
static size_t ggml_row_size(ggml_type, int64_t n) { return 4*n; }
static bool ggml_cuda_is_view_or_noop(const ggml_tensor * t) {
    return ggml_is_empty(t) || t->op == GGML_OP_RESHAPE || t->op == GGML_OP_TRANSPOSE ||
           t->op == GGML_OP_VIEW || t->op == GGML_OP_PERMUTE || t->op == GGML_OP_NONE;
}

static int ggml_cuda_try_gdn_cache_fusion(
        const ggml_cgraph * cgraph, int node_idx, ggml_cuda_gated_delta_net_fused_cache & fused_state_cpy) {
    const ggml_tensor * gdn = cgraph->nodes[node_idx];
    // the kernel skips the snapshot tail, so the gdn output must not be a graph output
    if (gdn->op != GGML_OP_GATED_DELTA_NET || gdn->type != GGML_TYPE_F32 ||
        (gdn->flags & GGML_TENSOR_FLAG_OUTPUT)) {
        return 0;
    }

    const ggml_tensor * src_v     = gdn->src[2];
    const int64_t       S_v       = src_v->ne[0];
    const int64_t       H         = src_v->ne[1];
    const int64_t       n_tokens  = src_v->ne[2];
    const int64_t       n_seqs    = src_v->ne[3];
    const int64_t       D         = S_v * S_v * H;
    const int64_t       K         = ggml_get_op_params_i32(gdn, 0); // snapshot slot count
    const int64_t       n_written = std::min<int64_t>(n_tokens, K); // newest n_written slots are written

    // snapshot tail starts right after the attention scores
    const size_t tail_off = ggml_row_size(GGML_TYPE_F32, S_v * H * n_tokens * n_seqs);

    // snapshot cpy is the first real node after the gdn (skip views/no-ops)
    const ggml_tensor * cpy  = nullptr;
    int                 skip = 0;
    for (int j = node_idx + 1; j < cgraph->n_nodes && cpy == nullptr; ++j) {
        const ggml_tensor * n = cgraph->nodes[j];
        if (ggml_cuda_is_view_or_noop(n)) {
            continue;
        }
        if (n->op != GGML_OP_CPY || (n->flags & GGML_TENSOR_FLAG_OUTPUT)) {
            return 0;
        }
        cpy  = n;
        skip = j - node_idx;
    }
    if (cpy == nullptr) {
        return 0;
    }

    const ggml_tensor * src = cpy->src[0]; // view of the gdn snapshot tail
    const ggml_tensor * dst = cpy->src[1]; // cache view the kernel writes to

    // src must be this gdn's snapshot tail (contiguous, at the tail offset)
    if (src->op != GGML_OP_VIEW || src->view_src != gdn || src->view_offs != tail_off ||
        !ggml_is_contiguous(src)) {
        return 0;
    }

    // dst is the [D, n_seqs, n_written] cache view; require nb[1] == D (the per-seq stride the kernel
    // assumes). ggml_cpy pins src to the same element count.
    const std::array<int64_t, GGML_MAX_DIMS> expected_ne = { D, n_seqs, n_written, 1 };
    if (dst->op != GGML_OP_VIEW || dst->type != GGML_TYPE_F32 || dst->data == nullptr ||
        !std::equal(expected_ne.begin(), expected_ne.end(), dst->ne) ||
        dst->nb[0] != ggml_type_size(GGML_TYPE_F32) || dst->nb[1] != (size_t) ggml_row_size(GGML_TYPE_F32, D)) {
        return 0;
    }

    fused_state_cpy.data        = (float *) dst->data; // rollback group 0 (newest)
    fused_state_cpy.slot_stride = K > 1 ? (int64_t) (dst->nb[2] / sizeof(float)) : 0;
    return skip;
}

int main() {
    float cache_data[256]{};
    ggml_tensor v{}; v.ne[0]=16; v.ne[1]=v.ne[2]=v.ne[3]=1;
    ggml_tensor gdn{}; gdn.op=GGML_OP_GATED_DELTA_NET; gdn.type=GGML_TYPE_F32;
    gdn.src[2]=&v; gdn.K=2;
    ggml_tensor tail{}; tail.op=GGML_OP_VIEW; tail.view_src=&gdn;
    tail.view_offs=64; tail.contiguous=true;
    ggml_tensor cache{}; cache.op=GGML_OP_VIEW; cache.type=GGML_TYPE_F32;
    cache.ne[0]=256; cache.ne[1]=cache.ne[2]=cache.ne[3]=1;
    cache.nb[0]=4; cache.nb[1]=cache.nb[2]=cache.nb[3]=1024;
    cache.data=cache_data;
    ggml_tensor cpy{}; cpy.op=GGML_OP_CPY; cpy.src[0]=&tail; cpy.src[1]=&cache;
    ggml_tensor add{}; add.op=GGML_OP_ADD; add.flags=GGML_TENSOR_FLAG_OUTPUT;
    add.src[0]=&cpy; add.src[1]=&tail;
    ggml_tensor * nodes[]={&gdn,&tail,&cache,&cpy,&add};
    ggml_cgraph graph{5,nodes};
    ggml_cuda_gated_delta_net_fused_cache fused{};
    int skip=ggml_cuda_try_gdn_cache_fusion(&graph,0,fused);
    if (skip!=3 || fused.data!=cache_data || fused.slot_stride!=256 ||
        nodes[skip+1]!=&add || add.src[1]!=&tail) return 1;
    std::printf("guard_fires=1 skipped_nodes=%d later_tail_consumer=1\n",skip);
}
