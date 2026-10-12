#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: pre-existing entry points whose internals were reorganised (len > 240 long path + one 129..240 length) */
uint64_t target_64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
uint64_t target_64seed_len256(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 256, seed); }
uint64_t target_64seed_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
uint64_t target_64sec192_len256(const uint8_t* p, const uint8_t* s) { return XXH3_64bits_withSecret(p, 256, s, 192); }
void target_128seed_len256(uint64_t* out, const uint8_t* p, uint64_t seed) { XXH128_hash_t h = XXH3_128bits_withSeed(p, 256, seed); out[0]=h.low64; out[1]=h.high64; }
