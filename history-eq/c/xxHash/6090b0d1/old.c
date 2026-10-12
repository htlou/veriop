#include "dispatch_model.h"

int target_update(XXH3_state_t *state, const void *input, size_t len, unsigned backend) {
  __builtin_assume(backend < 4);
  switch (backend) {
    case 0: return XXH3_update(state, input, len, 1, DISPATCH_ARGS(scalar));
    case 1: return XXH3_update(state, input, len, 1, DISPATCH_ARGS(sse2));
    case 2: return XXH3_update(state, input, len, 1, DISPATCH_ARGS(avx2));
    default: return XXH3_update(state, input, len, 1, DISPATCH_ARGS(avx512));
  }
}
