/* 0a5f34f api: XXH3_64bits / _withSeed / _withSecret for len 4..8 (class of 4to8_64b), XXH3_128bits_withSeed len 0..16 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_4to8(const uint8_t* p, size_t len) { if (len < 4 || len > 8) return 0; return XXH3_64bits(p, len); }
uint64_t target_api_64_seed_4to8(const uint8_t* p, size_t len, uint64_t seed) { if (len < 4 || len > 8) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_4to8(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 4 || len > 8 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
void target_api_128_seed_0to16(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len > 16) return; *o = XXH3_128bits_withSeed(p, len, seed); }
