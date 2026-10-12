#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* input bytes are passed by value (U8ARGS a,b = 128 bytes) and copied into a local buffer */
uint32_t target_s32_0_0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 0);
  return XXH32_digest(&s);
}
uint32_t target_s32_1_0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 1);
  return XXH32_digest(&s);
}
uint32_t target_s32_7_8(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 7);
  XXH32_update(&s, buf + 7, 8);
  return XXH32_digest(&s);
}
uint32_t target_s32_5_10(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 5);
  XXH32_update(&s, buf + 5, 10);
  return XXH32_digest(&s);
}
uint32_t target_s32_15_0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 15);
  return XXH32_digest(&s);
}
uint32_t target_s32_10_10(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 10);
  XXH32_update(&s, buf + 10, 10);
  return XXH32_digest(&s);
}
uint32_t target_s32_3_20(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 3);
  XXH32_update(&s, buf + 3, 20);
  return XXH32_digest(&s);
}
uint32_t target_s32_16_0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 16);
  return XXH32_digest(&s);
}
uint32_t target_s32_20_13(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 20);
  XXH32_update(&s, buf + 20, 13);
  return XXH32_digest(&s);
}
uint32_t target_s32_31_0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 31);
  return XXH32_digest(&s);
}
uint32_t target_s32_17_30(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 17);
  XXH32_update(&s, buf + 17, 30);
  return XXH32_digest(&s);
}
