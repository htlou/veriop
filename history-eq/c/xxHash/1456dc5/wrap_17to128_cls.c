/* 1456dc5 (XXH_SIZE_OPT=1 config) 17to128 loop path: symbolic len per trip-count class + fixed lengths, 64b and 128b */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_17to32(const uint8_t* p, size_t len, uint64_t seed) { if (len < 17 || len > 32) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_128_seed_17to32(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 17 || len > 32) return; *o = XXH3_128bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_33to64(const uint8_t* p, size_t len, uint64_t seed) { if (len < 33 || len > 64) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_128_seed_33to64(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 33 || len > 64) return; *o = XXH3_128bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_65to96(const uint8_t* p, size_t len, uint64_t seed) { if (len < 65 || len > 96) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_128_seed_65to96(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 65 || len > 96) return; *o = XXH3_128bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_97to128(const uint8_t* p, size_t len, uint64_t seed) { if (len < 97 || len > 128) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_128_seed_97to128(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 97 || len > 128) return; *o = XXH3_128bits_withSeed(p, len, seed); }
