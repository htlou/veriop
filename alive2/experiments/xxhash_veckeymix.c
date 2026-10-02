#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

__attribute__((always_inline)) uint64_t target_4to8(
    const unsigned char *input, size_t len,
    const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len >= 4 && len <= 8);
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    seed ^= (uint64_t)XXH_swap32((uint32_t)seed) << 32;
    uint32_t first = XXH_readLE32(input);
    uint32_t last = XXH_readLE32(input + len - 4);
    uint64_t key = (XXH_readLE64(secret + 8) ^ XXH_readLE64(secret + 16)) - seed;
    typedef uint32_t words4 __attribute__((vector_size(16)));
    typedef uint64_t lanes2 __attribute__((vector_size(16)));
    words4 words = {last, first, last, first};
    lanes2 keyed = (lanes2)words;
    lanes2 lanes = keyed;
    lanes = (lanes << (lanes2){49, 24}) | (lanes >> (lanes2){15, 40});
    lanes ^= __builtin_shufflevector(lanes, lanes, 1, 0);
    key ^= XXH_rotl64(key, 49) ^ XXH_rotl64(key, 24);
    lanes ^= keyed ^ (lanes2){key, key};
    uint64_t h = lanes[0];
    h *= PRIME_MX2;
    h ^= (h >> 35) + len;
    h *= PRIME_MX2;
    return h ^ (h >> 28);
}

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return XXH3_len_9to16_64b(input, len, secret, seed);
    if (XXH_likely(len >= 4)) return target_4to8(input, len, secret, seed);
    if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret + 56) ^ XXH_readLE64(secret + 64)));
}
