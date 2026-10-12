#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* input bytes are passed by value (U8ARGS a,b = 128 bytes) and copied into a local buffer */
uint32_t target_xxh32_len16(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 16, seed);
}
uint32_t target_xxh32_len17(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 17, seed);
}
uint32_t target_xxh32_len18(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 18, seed);
}
uint32_t target_xxh32_len19(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 19, seed);
}
uint32_t target_xxh32_len20(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 20, seed);
}
uint32_t target_xxh32_len21(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 21, seed);
}
uint32_t target_xxh32_len22(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 22, seed);
}
uint32_t target_xxh32_len23(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 23, seed);
}
uint32_t target_xxh32_len24(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 24, seed);
}
uint32_t target_xxh32_len25(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 25, seed);
}
uint32_t target_xxh32_len26(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 26, seed);
}
uint32_t target_xxh32_len27(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 27, seed);
}
uint32_t target_xxh32_len28(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 28, seed);
}
uint32_t target_xxh32_len29(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 29, seed);
}
uint32_t target_xxh32_len30(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 30, seed);
}
uint32_t target_xxh32_len31(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 31, seed);
}
uint32_t target_xxh32_len32(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 32, seed);
}
uint32_t target_xxh32_len33(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 33, seed);
}
uint32_t target_xxh32_len35(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 35, seed);
}
uint32_t target_xxh32_len39(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 39, seed);
}
uint32_t target_xxh32_len47(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 47, seed);
}
uint32_t target_xxh32_len48(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 48, seed);
}
uint32_t target_xxh32_len63(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 63, seed);
}
uint32_t target_xxh32_len64(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 64, seed);
}
