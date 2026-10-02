#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (XXH_likely(len > 8)) return XXH3_len_9to16_64b(input, len, secret, seed);
    uint64_t data;
    if (XXH_likely(len == 8)) {
        data = XXH_rotl64(XXH_readLE64(input), 32);
    } else if (len >= 4) {
        data = XXH_readLE32(input + len - 4) | ((uint64_t)XXH_readLE32(input) << 32);
    } else {
        if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
        return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
    }
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    seed ^= (uint64_t)XXH_swap32((uint32_t)seed) << 32;
    uint64_t bitflip = (XXH_readLE64(secret+8) ^ XXH_readLE64(secret+16)) - seed;
    return XXH3_rrmxmx(data ^ bitflip, len);
}
