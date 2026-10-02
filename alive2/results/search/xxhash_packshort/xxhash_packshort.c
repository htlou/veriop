#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

__attribute__((always_inline)) uint64_t target_1to3(
    const unsigned char *input, size_t len,
    const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len >= 1 && len <= 3);
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    uint64_t combined;
    if (len == 1) {
        uint64_t c = input[0];
        combined = (c << 16) | (c << 24) | c;
    } else {
        uint64_t word = input[0] | ((uint64_t)input[1] << 8);
        uint64_t last = len == 2 ? word >> 8 : input[2];
        combined = (word << 16) | last;
    }
    combined |= len << 8;
    uint64_t bitflip = (XXH_readLE32(secret) ^ XXH_readLE32(secret + 4)) + seed;
    return XXH64_avalanche(combined ^ bitflip);
}

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return XXH3_len_9to16_64b(input, len, secret, seed);
    if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
    if (len) return target_1to3(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret + 56) ^ XXH_readLE64(secret + 64)));
}
