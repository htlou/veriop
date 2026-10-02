#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

uint64_t target_1to3(const unsigned char *input, size_t len,
                    const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len >= 1 && len <= 3);
    if (len == 1) {
        uint32_t combined = (uint32_t)input[0] * 0x01010001U + 256;
        uint64_t bitflip = (XXH_readLE32(secret) ^ XXH_readLE32(secret+4)) + seed;
        return XXH64_avalanche(combined ^ bitflip);
    }
    return XXH3_len_1to3_64b(input, len, secret, seed);
}

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (len > 8) return XXH3_len_9to16_64b(input, len, secret, seed);
    if (len >= 4) return XXH3_len_4to8_64b(input, len, secret, seed);
    if (len) return target_1to3(input, len, secret, seed);
    return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
}
