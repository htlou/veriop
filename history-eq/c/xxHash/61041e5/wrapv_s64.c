#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* input bytes are passed by value (U8ARGS a,b = 128 bytes) and copied into a local buffer */
uint64_t target_s64_0_0(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 0);
  return XXH64_digest(&s);
}
uint64_t target_s64_7_8(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 7);
  XXH64_update(&s, buf + 7, 8);
  return XXH64_digest(&s);
}
uint64_t target_s64_13_18(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 13);
  XXH64_update(&s, buf + 13, 18);
  return XXH64_digest(&s);
}
uint64_t target_s64_10_30(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 10);
  XXH64_update(&s, buf + 10, 30);
  return XXH64_digest(&s);
}
uint64_t target_s64_32_0(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 32);
  return XXH64_digest(&s);
}
uint64_t target_s64_20_13(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 20);
  XXH64_update(&s, buf + 20, 13);
  return XXH64_digest(&s);
}
uint64_t target_s64_40_23(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 40);
  XXH64_update(&s, buf + 40, 23);
  return XXH64_digest(&s);
}
uint64_t target_s64_3_60(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 3);
  XXH64_update(&s, buf + 3, 60);
  return XXH64_digest(&s);
}
uint64_t target_s64_64_0(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 64);
  return XXH64_digest(&s);
}
uint64_t target_s64_1_95(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 1);
  XXH64_update(&s, buf + 1, 95);
  return XXH64_digest(&s);
}
uint64_t target_s64_65_63(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, buf, 65);
  XXH64_update(&s, buf + 65, 63);
  return XXH64_digest(&s);
}
