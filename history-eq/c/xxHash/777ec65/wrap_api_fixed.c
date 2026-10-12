/* 777ec65 api (fixed lengths that enter the main loops): XXH32 len 16/31, XXH64 len 32/63 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint32_t target_api_xxh32_len16(const uint8_t* p, uint32_t seed) { return XXH32(p, 16, seed); }
uint32_t target_api_xxh32_len31(const uint8_t* p, uint32_t seed) { return XXH32(p, 31, seed); }
uint64_t target_api_xxh64_len32(const uint8_t* p, uint64_t seed) { return XXH64(p, 32, seed); }
uint64_t target_api_xxh64_len63(const uint8_t* p, uint64_t seed) { return XXH64(p, 63, seed); }
