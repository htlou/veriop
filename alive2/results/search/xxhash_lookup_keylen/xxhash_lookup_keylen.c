#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

extern uint64_t target_1to3(const unsigned char *, size_t,
                          const unsigned char *, uint64_t);

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return XXH3_len_9to16_64b(input, len, secret, seed);
    if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
    if (len >= 2) {
        XXH_ASSERT(input != NULL);
        XXH_ASSERT(secret != NULL);
        uint64_t key = (XXH_readLE32(secret) ^ XXH_readLE32(secret + 4)) + seed;
        key ^= len << 8;
        uint32_t packed = ((uint32_t)input[0] << 16) |
                          ((uint32_t)input[1] << 24) | input[len - 1];
        return XXH64_avalanche((uint64_t)packed ^ key);
    }
    if (len) return target_1to3(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret + 56) ^ XXH_readLE64(secret + 64)));
}
