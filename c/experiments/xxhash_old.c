#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

#define WRAP(NAME, MIN, MAX) \
    uint64_t target_##NAME(const unsigned char *input, size_t len, \
                          const unsigned char *secret, uint64_t seed) { \
        __builtin_assume(len >= MIN && len <= MAX); \
        return XXH3_len_##NAME##_64b(input, len, secret, seed); \
    }

WRAP(1to3, 1, 3)
WRAP(4to8, 4, 8)
WRAP(9to16, 9, 16)
WRAP(0to16, 0, 16)
