/* 777ec65 api: XXH32 len 0..15, XXH64 len 0..31, XXH3_64bits_withSeed len 0..128, XXH3_128bits_withSeed len 0..16 (symbolic len) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint32_t target_api_xxh32_0to15(const uint8_t* p, size_t len, uint32_t seed) { if (len > 15) return 0; return XXH32(p, len, seed); }
uint64_t target_api_xxh64_0to31(const uint8_t* p, size_t len, uint64_t seed) { if (len > 31) return 0; return XXH64(p, len, seed); }
uint64_t target_api_xxh3_64_seed_0to128(const uint8_t* p, size_t len, uint64_t seed) { if (len > 128) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_xxh3_128_seed_0to16(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len > 16) return; *o = XXH3_128bits_withSeed(p, len, seed); }
