#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint32_t target_s32_0_0(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 0);
  return XXH32_digest(&s);
}
uint32_t target_s32_1_0(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 1);
  return XXH32_digest(&s);
}
uint32_t target_s32_7_8(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 7);
  XXH32_update(&s, p + 7, 8);
  return XXH32_digest(&s);
}
uint32_t target_s32_5_10(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 5);
  XXH32_update(&s, p + 5, 10);
  return XXH32_digest(&s);
}
uint32_t target_s32_15_0(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 15);
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
uint32_t target_s32_16_0(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 16);
  return XXH32_digest(&s);
}
uint32_t target_s32_20_13(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 20);
  XXH32_update(&s, p + 20, 13);
  return XXH32_digest(&s);
}
uint32_t target_s32_31_0(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 31);
  return XXH32_digest(&s);
}
uint32_t target_s32_17_30(const uint8_t* p, uint32_t seed) {
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, p, 17);
  XXH32_update(&s, p + 17, 30);
  return XXH32_digest(&s);
}
