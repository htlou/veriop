#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH3 64-bit, inputs of length 4..8 (the changed XXH3_len_4to8_64b range) */
uint64_t target_xxh3_64_seed_4to8(const uint8_t* p, size_t len, uint64_t seed) {
  if (len < 4 || len > 8) return 0;
  return XXH3_64bits_withSeed(p, len, seed);
}
uint64_t target_xxh3_64_4to8(const uint8_t* p, size_t len) {
  if (len < 4 || len > 8) return 0;
  return XXH3_64bits(p, len);
}
/* raw: the changed internal function, secret symbolic */
uint64_t target_raw_len_4to8_64b(const uint8_t* p, size_t len, const uint8_t* secret, uint64_t seed) {
  if (len < 4 || len > 8) return 0;
  return XXH3_len_4to8_64b(p, len, secret, seed);
}
