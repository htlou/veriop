#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* input bytes are passed by value (U8ARGS a,b = 128 bytes) and copied into a local buffer */
uint64_t target_xxh64_len0(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 0, seed);
}
uint64_t target_xxh64_len31(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 31, seed);
}
uint64_t target_xxh64_len32(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 32, seed);
}
uint64_t target_xxh64_len33(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 33, seed);
}
uint64_t target_xxh64_len63(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 63, seed);
}
uint64_t target_xxh64_len64(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 64, seed);
}
uint64_t target_xxh64_len95(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 95, seed);
}
uint64_t target_xxh64_len96(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 96, seed);
}
uint64_t target_xxh64_len127(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 127, seed);
}
uint64_t target_xxh64_len128(U8ARGS(a), U8ARGS(b), uint64_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH64(buf, 128, seed);
}
