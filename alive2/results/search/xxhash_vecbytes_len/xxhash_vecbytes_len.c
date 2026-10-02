#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

__attribute__((always_inline)) uint64_t target_1to3(
    const unsigned char *input, size_t len,
    const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len >= 1 && len <= 3);
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    typedef unsigned char bytes4 __attribute__((vector_size(4)));
    bytes4 bytes = {input[len - 1], 0, input[0], input[len >> 1]};
    uint32_t combined;
    __builtin_memcpy(&combined, &bytes, sizeof(combined));
    uint64_t bitflip = (XXH_readLE32(secret) ^ XXH_readLE32(secret + 4)) + seed;
    return XXH64_avalanche(((uint64_t)combined | (len << 8)) ^ bitflip);
}

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return XXH3_len_9to16_64b(input, len, secret, seed);
    if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
    if (len) return target_1to3(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret + 56) ^ XXH_readLE64(secret + 64)));
}
