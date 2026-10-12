#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_xxh64_len0(const uint8_t* p, uint64_t seed) { return XXH64(p, 0, seed); }
uint64_t target_xxh64_len8(const uint8_t* p, uint64_t seed) { return XXH64(p, 8, seed); }
uint64_t target_xxh64_len31(const uint8_t* p, uint64_t seed) { return XXH64(p, 31, seed); }
uint64_t target_xxh64_len32(const uint8_t* p, uint64_t seed) { return XXH64(p, 32, seed); }
uint64_t target_xxh64_len33(const uint8_t* p, uint64_t seed) { return XXH64(p, 33, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh64_len63(const uint8_t* p, uint64_t seed) { return XXH64(p, 63, seed); }
uint64_t target_xxh64_len64(const uint8_t* p, uint64_t seed) { return XXH64(p, 64, seed); }
uint64_t target_xxh64_len95(const uint8_t* p, uint64_t seed) { return XXH64(p, 95, seed); }
uint64_t target_xxh64_len96(const uint8_t* p, uint64_t seed) { return XXH64(p, 96, seed); }
uint64_t target_xxh64_len128(const uint8_t* p, uint64_t seed) { return XXH64(p, 128, seed); }
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
uint64_t target_s64_32_32(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 32);
  XXH64_update(&s, p + 32, 32);
  return XXH64_digest(&s);
}
uint64_t target_s64_5_70(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 5);
  XXH64_update(&s, p + 5, 70);
  return XXH64_digest(&s);
}
