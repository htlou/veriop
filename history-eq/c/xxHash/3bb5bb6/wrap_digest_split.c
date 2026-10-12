#define XXH_PRIVATE_API
#include "xxhash.h"

#define CHECK_STATE(N, L, SUFFIX) \
    unsigned target_le_##N##_##SUFFIX(const XXH32_state_t *s) { \
        __builtin_assume(s->memsize == N); \
        __builtin_assume(s->large_len == L); \
        return XXH32_digest_endian(s, XXH_littleEndian); \
    }

CHECK_STATE(5, 0, small)
CHECK_STATE(5, 1, large)
CHECK_STATE(6, 0, small)
CHECK_STATE(6, 1, large)
CHECK_STATE(7, 0, small)
CHECK_STATE(7, 1, large)
