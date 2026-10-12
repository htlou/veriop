/* 1456dc5 api 64-bit: symbolic len split by trip count of the 2nd loop (len/16 - 8 iterations), 129..191 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_129to143(const uint8_t* p, size_t len, uint64_t seed) { if (len < 129 || len > 143) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_144to159(const uint8_t* p, size_t len, uint64_t seed) { if (len < 144 || len > 159) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_160to175(const uint8_t* p, size_t len, uint64_t seed) { if (len < 160 || len > 175) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_176to191(const uint8_t* p, size_t len, uint64_t seed) { if (len < 176 || len > 191) return 0; return XXH3_64bits_withSeed(p, len, seed); }
