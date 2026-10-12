#include <stdbool.h>
#include <stdint.h>
#define GGML_TYPE_F16 1
#define GGML_TYPE_F32 2
#define GGML_TYPE_Q8_0 3
#define GGML_TYPE_Q4_0 4
#define QK8_0 32
bool support_matmul(uint32_t type, int64_t ne0) {
switch (type) {
                case GGML_TYPE_F16:
                case GGML_TYPE_F32:
                case GGML_TYPE_Q8_0:
                    // TODO: fix me
                    // Current groupsize should not be greater than k-1 in
                    // aclnnWeightQuantBatchMatmulV2GetWorkspaceSize().
                    if (ne0-1 > QK8_0) {
                        return true;
                    }
                    return false;
                case GGML_TYPE_Q4_0:
                    return true;
                default:
                    return false;
            }
        
}
bool support_q8_0_32(void) { return support_matmul(GGML_TYPE_Q8_0, 32); }
