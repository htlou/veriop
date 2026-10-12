#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_xxh64_len32(const uint8_t* p, uint64_t seed) { return XXH64(p, 32, seed); }
uint64_t target_xxh64_len33(const uint8_t* p, uint64_t seed) { return XXH64(p, 33, seed); }
uint64_t target_xxh64_len36(const uint8_t* p, uint64_t seed) { return XXH64(p, 36, seed); }
uint64_t target_xxh64_len39(const uint8_t* p, uint64_t seed) { return XXH64(p, 39, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh64_len47(const uint8_t* p, uint64_t seed) { return XXH64(p, 47, seed); }
uint64_t target_xxh64_len48(const uint8_t* p, uint64_t seed) { return XXH64(p, 48, seed); }
uint64_t target_xxh64_len55(const uint8_t* p, uint64_t seed) { return XXH64(p, 55, seed); }
uint64_t target_xxh64_len56(const uint8_t* p, uint64_t seed) { return XXH64(p, 56, seed); }
uint64_t target_xxh64_len63(const uint8_t* p, uint64_t seed) { return XXH64(p, 63, seed); }
uint64_t target_xxh64_len64(const uint8_t* p, uint64_t seed) { return XXH64(p, 64, seed); }
uint64_t target_xxh64_len71(const uint8_t* p, uint64_t seed) { return XXH64(p, 71, seed); }
uint64_t target_xxh64_len95(const uint8_t* p, uint64_t seed) { return XXH64(p, 95, seed); }
uint64_t target_xxh64_len96(const uint8_t* p, uint64_t seed) { return XXH64(p, 96, seed); }
uint64_t target_xxh64_len127(const uint8_t* p, uint64_t seed) { return XXH64(p, 127, seed); }
