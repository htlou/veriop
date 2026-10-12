/* 1456dc5 (XXH_SIZE_OPT=1 config) 17to128 loop path at fixed lengths */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_len17(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 17, seed); }
void target_api_128_seed_len17(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 17, seed); }
uint64_t target_api_64_seed_len32(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 32, seed); }
void target_api_128_seed_len32(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 32, seed); }
uint64_t target_api_64_seed_len33(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 33, seed); }
void target_api_128_seed_len33(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 33, seed); }
uint64_t target_api_64_seed_len64(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 64, seed); }
void target_api_128_seed_len64(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 64, seed); }
uint64_t target_api_64_seed_len65(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 65, seed); }
void target_api_128_seed_len65(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 65, seed); }
uint64_t target_api_64_seed_len96(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 96, seed); }
void target_api_128_seed_len96(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 96, seed); }
uint64_t target_api_64_seed_len97(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 97, seed); }
void target_api_128_seed_len97(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 97, seed); }
uint64_t target_api_64_seed_len128(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 128, seed); }
void target_api_128_seed_len128(const uint8_t* p, uint64_t seed, XXH128_hash_t* o) { *o = XXH3_128bits_withSeed(p, 128, seed); }
