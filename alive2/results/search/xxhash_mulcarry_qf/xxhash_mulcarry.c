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
    uint64_t lo = XXH_readLE64(input) ^ key1;
    uint64_t hi = XXH_readLE64(input + len - 8) ^ key2;
    uint64_t low;
    unsigned overflow = __builtin_mul_overflow(lo, hi, &low);
    uint64_t high = (uint64_t)(((unsigned __int128)lo * hi) >> 64);
    uint64_t folded = low ^ (overflow ? high : 0);
    uint64_t acc = len + XXH_swap64(lo) + hi + folded;
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
