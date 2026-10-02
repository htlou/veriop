#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"

uint64_t target_0to16(const unsigned char *input, size_t len,
                     const unsigned char *secret, uint64_t seed) {
    __builtin_assume(len <= 16);
    switch (len) {
#define SHORT(N, HELPER) case N: return XXH3_len_##HELPER##_64b(input, N, secret, seed);
        SHORT(1, 1to3) SHORT(2, 1to3) SHORT(3, 1to3)
        SHORT(4, 4to8) SHORT(5, 4to8) SHORT(6, 4to8)
        SHORT(7, 4to8) SHORT(8, 4to8)
        SHORT(9, 9to16) SHORT(10, 9to16) SHORT(11, 9to16)
        SHORT(12, 9to16) SHORT(13, 9to16) SHORT(14, 9to16)
        SHORT(15, 9to16) SHORT(16, 9to16)
#undef SHORT
        default:
            return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
    }
}
