typedef unsigned long size_t;
typedef long long int64_t;
#define GGML_MAX_DIMS 4
enum ADRENO_GPU_GEN { ADRENO_UNKNOWN, A6X, A7X, A8X, X1E, X2E };
struct ggml_backend_opencl_context { ADRENO_GPU_GEN adreno_gen; };
struct ggml_tensor { int64_t ne[4]; size_t nb[4]; int type; };
static size_t ggml_blck_size(int type) { return 256; }
static size_t ggml_type_size(int type) { return 210; }
size_t ggml_nbytes(const struct ggml_tensor * tensor) {
    for (int i = 0; i < GGML_MAX_DIMS; ++i) {
        if (tensor->ne[i] <= 0) {
            return 0;
        }
    }

    size_t nbytes;
    const size_t blck_size = ggml_blck_size(tensor->type);
    if (blck_size == 1) {
        nbytes = ggml_type_size(tensor->type);
        for (int i = 0; i < GGML_MAX_DIMS; ++i) {
            nbytes += (tensor->ne[i] - 1)*tensor->nb[i];
        }
    }
    else {
        nbytes = tensor->ne[0]*tensor->nb[0]/blck_size;
        for (int i = 1; i < GGML_MAX_DIMS; ++i) {
            nbytes += (tensor->ne[i] - 1)*tensor->nb[i];
        }
    }

    return nbytes;
}

extern "C" bool target(const ggml_backend_opencl_context *backend_ctx, const ggml_tensor *tensor) {
    // gemv_noshuffle variant perf drops for large M, use flat variant for large M.
    // threshold is well above typical hidden/FFN dims, but below typical vocab sizes.
    // q6_K flat gemv is worse for smaller K; 2048 seems to be a reasonable threshold.
    // note that this forces large M weights to use LM GEMM.
    // The noshuffle (transposed-weight) layout packs 2 rows per 32-bit texel and the
    // gemv reads it with a ne01/2 texel stride and an exact-cover dispatch of
    // ceil(ne01/2 / 64)*64 work-items with no store guard; the gemm uses 4-row tiles.
    // It is therefore only correct for ne01 % 128 == 0: an odd ne01 (e.g. granitemoe
    // lm_head [1536, 49155] -- odd vocab) truncates the texel stride, misaligning every
    // odd column of the transposed layout (gross garbage) and dropping the last row;
    // other non-multiples over-dispatch and write past the end of dst. Route such
    // tensors to the flat GEMV + regular convert; the matching GEMM (ne1>1) falls back
    // to CPU (see supports_op). All standard even-vocab/hidden dims are multiples of
    // 128 and keep the noshuffle path.
    if ((tensor->ne[1] % 128 != 0) && tensor->ne[2] == 1 && tensor->ne[3] == 1) {
        return true;
    }
    return tensor->ne[1] >= 32768 && tensor->ne[0] >= 2048 && tensor->ne[2] == 1 && tensor->ne[3] == 1;
}

extern "C" bool witness() { ggml_backend_opencl_context ctx{A6X}; ggml_tensor t{{1024, 327680, 1, 1}, {210, (1024/256)*210, (1024/256)*210*327680, (1024/256)*210*327680}, 14}; return target(&ctx, &t); }
