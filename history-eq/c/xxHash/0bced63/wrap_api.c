#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: seeded long-input hashes (len > 240 -> XXH3_hashLong_*_withSeed -> initCustomSecret). len 300 = 4 stripes
   + last (unaligned) stripe, no scramble in this (pre-0.8) version. */
uint64_t target_64seed_len300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
void target_128seed_len300(uint64_t* out, const uint8_t* p, uint64_t seed) { XXH128_hash_t h = XXH3_128bits_withSeed(p, 300, seed); out[0]=h.low64; out[1]=h.high64; }
