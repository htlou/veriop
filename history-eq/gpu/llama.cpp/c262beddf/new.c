#include <stdint.h>
int gate(int64_t head_dim, int64_t query_len, int prec, int mma_faster_for_bs1) {
    const int can_use_vector_kernel = head_dim % (2*32) == 0;
    return query_len == 1 && can_use_vector_kernel && !mma_faster_for_bs1;
}
