/* 7221be4 api: XXH3_64bits_withSeed / XXH3_64bits / _withSecret, symbolic len split by the 17to128 branch structure (17..32, 33..64, 65..96, 97..128) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_17to32(const uint8_t* p, size_t len, uint64_t seed) { if (len < 17 || len > 32) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_33to64(const uint8_t* p, size_t len, uint64_t seed) { if (len < 33 || len > 64) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_65to96(const uint8_t* p, size_t len, uint64_t seed) { if (len < 65 || len > 96) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_97to128(const uint8_t* p, size_t len, uint64_t seed) { if (len < 97 || len > 128) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_97to128(const uint8_t* p, size_t len) { if (len < 97 || len > 128) return 0; return XXH3_64bits(p, len); }
uint64_t target_api_64_secret_97to128(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 97 || len > 128 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
