#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api level, long inputs (>240 bytes): symbolic content, fixed lengths.
   len 256: 3 stripes + last stripe (no scramble); secret sizes fixed (136 = XXH3_SECRET_SIZE_MIN, 192 = default). */
uint64_t target_64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
uint64_t target_64seed_len256(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 256, seed); }
uint64_t target_64sec192_len256(const uint8_t* p, const uint8_t* s) { return XXH3_64bits_withSecret(p, 256, s, 192); }
uint64_t target_64sec136_len320(const uint8_t* p, const uint8_t* s) { return XXH3_64bits_withSecret(p, 320, s, 136); }
void target_128_len256(uint64_t* out, const uint8_t* p) { XXH128_hash_t h = XXH3_128bits(p, 256); out[0]=h.low64; out[1]=h.high64; }
