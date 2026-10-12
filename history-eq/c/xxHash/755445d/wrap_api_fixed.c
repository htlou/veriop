/* 755445d api: XXH3 64/128 _withSeed at FIXED lengths in 129..240 (+ _withSecret at 200), symbolic content/seed */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_len129(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 129, seed); }
uint64_t target_api_64_seed_len143(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 143, seed); }
uint64_t target_api_64_seed_len144(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 144, seed); }
uint64_t target_api_64_seed_len160(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 160, seed); }
uint64_t target_api_64_seed_len192(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 192, seed); }
uint64_t target_api_64_seed_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
uint64_t target_api_64_seed_len224(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 224, seed); }
uint64_t target_api_64_seed_len239(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 239, seed); }
uint64_t target_api_64_seed_len240(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 240, seed); }
void target_api_128_seed_len129(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 129, seed); }
void target_api_128_seed_len159(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 159, seed); }
void target_api_128_seed_len160(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 160, seed); }
void target_api_128_seed_len191(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 191, seed); }
void target_api_128_seed_len192(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 192, seed); }
void target_api_128_seed_len200(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 200, seed); }
void target_api_128_seed_len224(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 224, seed); }
void target_api_128_seed_len240(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 240, seed); }
uint64_t target_api_64_secret_len200(const uint8_t* p, const uint8_t* sec, size_t secSize) { if (secSize < 136) return 0; return XXH3_64bits_withSecret(p, 200, sec, secSize); }
void target_api_128_secret_len200(const uint8_t* p, const uint8_t* sec, size_t secSize, XXH128_hash_t* o) { if (secSize < 136) return; *o = XXH3_128bits_withSecret(p, 200, sec, secSize); }
