#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (len <= 3) {
        if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
        return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
    }
    if (len <= 8) return XXH3_len_4to8_64b(input, len, secret, seed);
    return XXH3_len_9to16_64b(input, len, secret, seed);
}
