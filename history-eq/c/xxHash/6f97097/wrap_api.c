#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH3 long seeded path (XXH_SIZE_OPT>=1 forces the scalar initCustomSecret instead of the SIMD one) */
uint64_t target_64seed_len256(const uint8_t* p, uint64_t s) { return XXH3_64bits_withSeed(p, 256, s); }
void target_128seed_len256(uint64_t* out, const uint8_t* p, uint64_t s) { XXH128_hash_t h = XXH3_128bits_withSeed(p, 256, s); out[0]=h.low64; out[1]=h.high64; }
uint64_t target_64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
