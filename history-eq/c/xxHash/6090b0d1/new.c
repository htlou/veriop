#include "dispatch_model.h"

#define UPDATE_WRAPPER(name) \
  static inline int XXH3_128bits_update_##name(XXH3_state_t *state, const void *input, size_t len) { \
    return XXH3_update(state, (const unsigned char *)input, len, 1, DISPATCH_ARGS(name)); \
  }

UPDATE_WRAPPER(scalar)
UPDATE_WRAPPER(sse2)
UPDATE_WRAPPER(avx2)
UPDATE_WRAPPER(avx512)

int target_update(XXH3_state_t *state, const void *input, size_t len, unsigned backend) {
  __builtin_assume(backend < 4);
  switch (backend) {
    case 0: return XXH3_128bits_update_scalar(state, input, len);
    case 1: return XXH3_128bits_update_sse2(state, input, len);
    case 2: return XXH3_128bits_update_avx2(state, input, len);
    default: return XXH3_128bits_update_avx512(state, input, len);
  }
}
