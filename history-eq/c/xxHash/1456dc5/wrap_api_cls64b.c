/* 1456dc5 api 64-bit: symbolic len split by trip count of the 2nd loop, 192..240 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_192to207(const uint8_t* p, size_t len, uint64_t seed) { if (len < 192 || len > 207) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_208to223(const uint8_t* p, size_t len, uint64_t seed) { if (len < 208 || len > 223) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_224to239(const uint8_t* p, size_t len, uint64_t seed) { if (len < 224 || len > 239) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_240to240(const uint8_t* p, size_t len, uint64_t seed) { if (len < 240 || len > 240) return 0; return XXH3_64bits_withSeed(p, len, seed); }
