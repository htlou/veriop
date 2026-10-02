#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

extern uint64_t target_1to3(const unsigned char *, size_t,
                          const unsigned char *, uint64_t);

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (len == 1) return target_1to3(input, len, secret, seed);
    return XXH3_len_0to16_64b(input, len, secret, seed);
}
