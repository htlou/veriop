#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    if (len < 4) return XXH3_len_0to16_64b(input, len, secret, seed);
    XXH_ASSERT(input != NULL);
    XXH_ASSERT(secret != NULL);
    const int wide = __builtin_unpredictable(len > 8);
    uint64_t key1, key2;
    if (wide) {
        key1 = (XXH_readLE64(secret + 24) ^ XXH_readLE64(secret + 32)) + seed;
        key2 = (XXH_readLE64(secret + 40) ^ XXH_readLE64(secret + 48)) - seed;
    } else {
        seed ^= (uint64_t)XXH_swap32((uint32_t)seed) << 32;
        key1 = (XXH_readLE64(secret + 8) ^ XXH_readLE64(secret + 16)) - seed;
        key2 = 0;
    }
    /* Every load stays within the input words read by the original path. */
    uint32_t first = XXH_readLE32(input);
    uint32_t last = XXH_readLE32(input + len - 4);
    uint32_t next = XXH_readLE32(input + (wide ? 4 : 0));
    uint32_t tail = XXH_readLE32(input + (wide ? len - 8 : 0));
    uint64_t lo = ((uint64_t)(wide ? next : first) << 32)
                | (wide ? first : last);
    lo ^= key1;
    uint64_t hi = (((uint64_t)last << 32) | tail) ^ key2;
    uint64_t short_mix = lo ^ XXH_rotl64(lo, 49) ^ XXH_rotl64(lo, 24);
    short_mix *= PRIME_MX2;
    short_mix ^= (short_mix >> 35) + len;
    uint64_t long_mix = len + XXH_swap64(lo) + hi + XXH3_mul128_fold64(lo, hi);
    long_mix ^= long_mix >> 37;
    uint64_t result = wide ? long_mix : short_mix;
    result *= wide ? PRIME_MX1 : PRIME_MX2;
    return result ^ (result >> (wide ? 32 : 28));
}
