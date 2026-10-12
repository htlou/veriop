#define XXH_PRIVATE_API
#include "xxhash.h"

#define CHECK_STATE(N) \
    unsigned target_le_##N(const XXH32_state_t *s) { \
        __builtin_assume(s->memsize == N); \
        return XXH32_digest_endian(s, XXH_littleEndian); \
    } \
    unsigned target_be_##N(const XXH32_state_t *s) { \
        __builtin_assume(s->memsize == N); \
        return XXH32_digest_endian(s, XXH_bigEndian); \
    }

CHECK_STATE(0)
CHECK_STATE(1)
CHECK_STATE(2)
CHECK_STATE(3)
CHECK_STATE(4)
CHECK_STATE(5)
CHECK_STATE(6)
CHECK_STATE(7)
CHECK_STATE(8)
CHECK_STATE(9)
CHECK_STATE(10)
CHECK_STATE(11)
CHECK_STATE(12)
CHECK_STATE(13)
CHECK_STATE(14)
CHECK_STATE(15)
