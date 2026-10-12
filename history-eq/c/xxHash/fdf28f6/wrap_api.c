#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH3 17..128 (rerolled under XXH_SIZE_OPT>=1), long seeded path (seed==0 shortcut removed under
   XXH_SIZE_OPT>=1) and long default path (prefetch disabled under XXH_SIZE_OPT>=1). Fixed lengths. */
uint64_t target_64_len17(const uint8_t* p) { return XXH3_64bits(p, 17); }
uint64_t target_64seed_len33(const uint8_t* p, uint64_t s) { return XXH3_64bits_withSeed(p, 33, s); }
uint64_t target_64seed_len80(const uint8_t* p, uint64_t s) { return XXH3_64bits_withSeed(p, 80, s); }
uint64_t target_64seed_len128(const uint8_t* p, uint64_t s) { return XXH3_64bits_withSeed(p, 128, s); }
void target_128seed_len100(uint64_t* out, const uint8_t* p, uint64_t s) { XXH128_hash_t h = XXH3_128bits_withSeed(p, 100, s); out[0]=h.low64; out[1]=h.high64; }
uint64_t target_64seed_len256(const uint8_t* p, uint64_t s) { return XXH3_64bits_withSeed(p, 256, s); }
uint64_t target_64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
