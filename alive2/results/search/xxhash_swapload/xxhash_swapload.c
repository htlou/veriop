#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

__attribute__((always_inline)) uint64_t target_9to16(
    const unsigned char *input, size_t len,
    const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len >= 9 && len <= 16);
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    uint64_t key1 = (XXH_readLE64(secret + 24) ^ XXH_readLE64(secret + 32)) + seed;
    uint64_t key2 = (XXH_readLE64(secret + 40) ^ XXH_readLE64(secret + 48)) - seed;
    uint64_t first = XXH_readLE64(input);
    uint64_t lo = first ^ key1;
    uint64_t hi = XXH_readLE64(input + len - 8) ^ key2;
    uint64_t swapped = XXH_swap64(first) ^ XXH_swap64(key1);
    uint64_t acc = len + swapped + hi + XXH3_mul128_fold64(lo, hi);
    return XXH3_avalanche(acc);
}

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return target_9to16(input, len, secret, seed);
    if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
    if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret + 56) ^ XXH_readLE64(secret + 64)));
}
