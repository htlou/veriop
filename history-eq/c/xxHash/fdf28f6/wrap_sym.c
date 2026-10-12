#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: symbolic len in [17,128] (new XXH_SIZE_OPT>=1 path is a do-while loop with <= 4 iterations; --unroll) */
uint64_t target_64seed_len17to128(const uint8_t* p, size_t len, uint64_t s) {
  if (len < 17 || len > 128) return 0; return XXH3_64bits_withSeed(p, len, s); }
void target_128seed_len17to128(uint64_t* out, const uint8_t* p, size_t len, uint64_t s) {
  if (len < 17 || len > 128) { out[0]=out[1]=0; return; }
  XXH128_hash_t h = XXH3_128bits_withSeed(p, len, s); out[0]=h.low64; out[1]=h.high64; }
