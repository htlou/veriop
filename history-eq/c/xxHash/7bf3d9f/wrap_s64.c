#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_s64_0_0(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 0);
  return XXH64_digest(&s);
}
uint64_t target_s64_1_0(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 1);
  return XXH64_digest(&s);
}
uint64_t target_s64_7_8(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 7);
  XXH64_update(&s, p + 7, 8);
  return XXH64_digest(&s);
}
uint64_t target_s64_5_10(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 5);
  XXH64_update(&s, p + 5, 10);
  return XXH64_digest(&s);
}
uint64_t target_s64_31_0(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 31);
  return XXH64_digest(&s);
}
uint64_t target_s64_13_18(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 13);
  XXH64_update(&s, p + 13, 18);
  return XXH64_digest(&s);
}
uint64_t target_s64_10_30(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 10);
  XXH64_update(&s, p + 10, 30);
  return XXH64_digest(&s);
}
uint64_t target_s64_32_0(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 32);
  return XXH64_digest(&s);
}
uint64_t target_s64_20_13(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 20);
  XXH64_update(&s, p + 20, 13);
  return XXH64_digest(&s);
}
uint64_t target_s64_40_23(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 40);
  XXH64_update(&s, p + 40, 23);
  return XXH64_digest(&s);
}
uint64_t target_s64_3_60(const uint8_t* p, uint64_t seed) {
  XXH64_state_t s; XXH64_reset(&s, seed);
  XXH64_update(&s, p, 3);
  XXH64_update(&s, p + 3, 60);
  return XXH64_digest(&s);
}
