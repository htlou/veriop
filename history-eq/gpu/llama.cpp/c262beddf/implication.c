#include <stdint.h>
int implication(int64_t head_dim, int64_t query_len, int prec, int mma_faster_for_bs1) {
  const int old = query_len == 1 && ((head_dim % (2*32) == 0) && (prec == 0 || head_dim <= 128)) && !mma_faster_for_bs1;
  const int new = query_len == 1 && (head_dim % (2*32) == 0) && !mma_faster_for_bs1;
  return !old || new;
}
