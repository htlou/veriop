/* 6456c04 api: XXH3_64bits_withSeed / _withSecret per length subclass excluding len 8 (isolates the XXH_likely hints) + len==8 alone */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_0to0(const uint8_t* p, size_t len, uint64_t seed) { if (len < 0 || len > 0) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_0to0(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 0 || len > 0 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_api_64_seed_1to3(const uint8_t* p, size_t len, uint64_t seed) { if (len < 1 || len > 3) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_1to3(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 1 || len > 3 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_api_64_seed_4to7(const uint8_t* p, size_t len, uint64_t seed) { if (len < 4 || len > 7) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_4to7(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 4 || len > 7 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_api_64_seed_9to16(const uint8_t* p, size_t len, uint64_t seed) { if (len < 9 || len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_9to16(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 9 || len > 16 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_api_64_seed_8to8(const uint8_t* p, size_t len, uint64_t seed) { if (len < 8 || len > 8) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_8to8(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 8 || len > 8 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
