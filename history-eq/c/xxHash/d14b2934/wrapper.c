#define XXH_INLINE_ALL
#include "xxhash.h"

#define HASH_CASE(N)                                                          \
  XXH32_hash_t target_hash##N(const unsigned char *input, XXH32_hash_t seed) { \
    XXH32_state_t state;                                                       \
    XXH32_reset(&state, seed);                                                 \
    XXH32_update(&state, input, N);                                            \
    XXH32_hash_t result = XXH32_digest(&state);                                \
    return result;                                                             \
  }

HASH_CASE(16)
HASH_CASE(32)
HASH_CASE(64)
