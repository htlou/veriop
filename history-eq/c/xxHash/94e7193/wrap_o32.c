#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint32_t target_xxh32_len0(const uint8_t* p, uint32_t seed) { return XXH32(p, 0, seed); }
uint32_t target_xxh32_len3(const uint8_t* p, uint32_t seed) { return XXH32(p, 3, seed); }
uint32_t target_xxh32_len4(const uint8_t* p, uint32_t seed) { return XXH32(p, 4, seed); }
uint32_t target_xxh32_len7(const uint8_t* p, uint32_t seed) { return XXH32(p, 7, seed); }
uint32_t target_xxh32_len15(const uint8_t* p, uint32_t seed) { return XXH32(p, 15, seed); }
uint32_t target_xxh32_len16(const uint8_t* p, uint32_t seed) { return XXH32(p, 16, seed); }
uint32_t target_xxh32_len17(const uint8_t* p, uint32_t seed) { return XXH32(p, 17, seed); }
uint32_t target_xxh32_len20(const uint8_t* p, uint32_t seed) { return XXH32(p, 20, seed); }
uint32_t target_xxh32_len31(const uint8_t* p, uint32_t seed) { return XXH32(p, 31, seed); }
uint32_t target_xxh32_len32(const uint8_t* p, uint32_t seed) { return XXH32(p, 32, seed); }
uint32_t target_xxh32_len47(const uint8_t* p, uint32_t seed) { return XXH32(p, 47, seed); }
uint32_t target_xxh32_len63(const uint8_t* p, uint32_t seed) { return XXH32(p, 63, seed); }
uint32_t target_xxh32_len64(const uint8_t* p, uint32_t seed) { return XXH32(p, 64, seed); }
uint32_t target_s32_7_8(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 7);
  XXH32_update(&s, p + 7, 8);
  return XXH32_digest(&s);
}
uint32_t target_s32_10_10(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 10);
  XXH32_update(&s, p + 10, 10);
  return XXH32_digest(&s);
}
uint32_t target_s32_3_20(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 3);
  XXH32_update(&s, p + 3, 20);
  return XXH32_digest(&s);
}
uint32_t target_s32_20_13(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 20);
  XXH32_update(&s, p + 20, 13);
  return XXH32_digest(&s);
}
