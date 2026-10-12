#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* Functions containing XXH_STATIC_ASSERT; compiled with -std=c99 so that the pre-C11 fallback
   definition of XXH_STATIC_ASSERT_WITH_MESSAGE (the changed line) is the one in use. */
uint32_t target_canon32(uint32_t h) { XXH32_canonical_t c; XXH32_canonicalFromHash(&c, h); uint32_t r; memcpy(&r, &c, 4); return r; }
uint64_t target_canon64(uint64_t h) { XXH64_canonical_t c; XXH64_canonicalFromHash(&c, h); uint64_t r; memcpy(&r, &c, 8); return r; }
uint64_t target_xxh3_64_len300(const uint8_t* p) { return XXH3_64bits(p, 300); }
uint64_t target_xxh3_64_seed_len300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
uint64_t target_xxh3_128_len300_hi(const uint8_t* p) { return XXH3_128bits(p, 300).high64; }
