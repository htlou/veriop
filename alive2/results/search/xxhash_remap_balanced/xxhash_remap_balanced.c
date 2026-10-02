#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

extern uint64_t lookup_fallback(const unsigned char *, size_t,
                               const unsigned char *, uint64_t);

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len <= 3)) return lookup_fallback(input, len, secret, seed);
    if (XXH_likely(len <= 8)) return XXH3_len_4to8_64b(input, len, secret, seed);
    return XXH3_len_9to16_64b(input, len, secret, seed);
}
