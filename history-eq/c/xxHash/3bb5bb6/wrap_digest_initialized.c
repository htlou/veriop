#define XXH_PRIVATE_API
#include "xxhash.h"

#define CHECK_STATE(N) \
    unsigned target_le_##N(unsigned total, unsigned large, \
                           unsigned v1, unsigned v2, unsigned v3, unsigned v4, \
                           unsigned m0, unsigned m1, unsigned m2, unsigned m3) { \
        XXH32_state_t s = { total, large, v1, v2, v3, v4, {m0, m1, m2, m3}, N, 0 }; \
        return XXH32_digest_endian(&s, XXH_littleEndian); \
    } \
    unsigned target_be_##N(unsigned total, unsigned large, \
                           unsigned v1, unsigned v2, unsigned v3, unsigned v4, \
                           unsigned m0, unsigned m1, unsigned m2, unsigned m3) { \
        XXH32_state_t s = { total, large, v1, v2, v3, v4, {m0, m1, m2, m3}, N, 0 }; \
        return XXH32_digest_endian(&s, XXH_bigEndian); \
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
