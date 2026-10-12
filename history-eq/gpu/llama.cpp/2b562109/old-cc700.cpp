typedef long long int64_t; static_assert(sizeof(int64_t) == 8);
#define GGML_CUDA_CC_ADA_LOVELACE    890
#define GGML_CUDA_CC_BLACKWELL       1200
#define GGML_CUDA_CC_DGX_SPARK       1210
#define GGML_CUDA_CC_OFFSET_MTHREADS 0x0100000
#define GGML_CUDA_CC_IS_NVIDIA(cc)   (cc < GGML_CUDA_CC_OFFSET_MTHREADS)
#define MMVQ_MAX_BATCH_SIZE 8
enum ggml_type { GGML_TYPE_Q2_K = 10, GGML_TYPE_Q3_K = 11, GGML_TYPE_Q4_K = 12, GGML_TYPE_Q5_K = 13, GGML_TYPE_Q6_K = 14 };
static bool ggml_is_quantized(enum ggml_type type) { return type == GGML_TYPE_Q2_K; }
bool ggml_cuda_should_use_mmvq(enum ggml_type type, int cc, int64_t ne11) {
    if (!ggml_is_quantized(type)) {
        return false;
    }
    return ne11 <= MMVQ_MAX_BATCH_SIZE;
}
extern "C" int target(int64_t ne11) { return ggml_cuda_should_use_mmvq(GGML_TYPE_Q2_K, 700, ne11); }
