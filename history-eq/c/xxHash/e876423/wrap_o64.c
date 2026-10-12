#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_xxh64_len0(const uint8_t* p, uint64_t seed) { return XXH64(p, 0, seed); }
uint64_t target_xxh64_len7(const uint8_t* p, uint64_t seed) { return XXH64(p, 7, seed); }
uint64_t target_xxh64_len31(const uint8_t* p, uint64_t seed) { return XXH64(p, 31, seed); }
uint64_t target_xxh64_len32(const uint8_t* p, uint64_t seed) { return XXH64(p, 32, seed); }
uint64_t target_xxh64_len63(const uint8_t* p, uint64_t seed) { return XXH64(p, 63, seed); }
uint64_t target_xxh64_len64(const uint8_t* p, uint64_t seed) { return XXH64(p, 64, seed); }
uint64_t target_xxh64_len100(const uint8_t* p, uint64_t seed) { return XXH64(p, 100, seed); }
uint64_t target_s64_10_30(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 10);
  XXH64_update(&s, p + 10, 30);
  return XXH64_digest(&s);
}
uint64_t target_s64_40_23(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 40);
  XXH64_update(&s, p + 40, 23);
  return XXH64_digest(&s);
}
