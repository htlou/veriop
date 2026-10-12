#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* armv7-a + NEON (where the new `#pragma clang loop vectorize(disable)` in XXH3_len_129to240_64b applies). */
uint64_t target_64_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
uint64_t target_64seed_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
uint64_t target_64seed_len240(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 240, seed); }
