#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

uint32_t target_xxh32_64(U8ARGS(x), uint32_t seed) {
  uint64_t input[8];
  U8FILL(input, 0, x);
  return XXH32(input, 64, seed);
}

uint64_t target_xxh64_64(U8ARGS(x), uint64_t seed) {
  uint64_t input[8];
  U8FILL(input, 0, x);
  return XXH64(input, 64, seed);
}
