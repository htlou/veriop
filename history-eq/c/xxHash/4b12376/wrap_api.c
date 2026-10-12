#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: long inputs (>240) with symbolic content; fixed lengths. */
uint64_t target_64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
uint64_t target_64_len300(const uint8_t* p) { return XXH3_64bits(p, 300); }
uint64_t target_64seed_len300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
void target_128_len300(uint64_t* out, const uint8_t* p) { XXH128_hash_t h = XXH3_128bits(p, 300); out[0]=h.low64; out[1]=h.high64; }
