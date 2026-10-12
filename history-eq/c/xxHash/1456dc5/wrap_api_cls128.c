/* 1456dc5 api 128-bit: symbolic len split by trip count of the 2nd loop (len/32 - 4 iterations) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
void target_api_128_seed_129to159(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 129 || len > 159) return; *o = XXH3_128bits_withSeed(p, len, seed); }
void target_api_128_seed_160to191(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 160 || len > 191) return; *o = XXH3_128bits_withSeed(p, len, seed); }
void target_api_128_seed_192to223(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 192 || len > 223) return; *o = XXH3_128bits_withSeed(p, len, seed); }
void target_api_128_seed_224to240(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 224 || len > 240) return; *o = XXH3_128bits_withSeed(p, len, seed); }
