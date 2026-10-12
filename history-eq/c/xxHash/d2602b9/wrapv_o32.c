#ifdef _MSC_VER
/* MSVC-environment declarations normally provided by <stdlib.h>/<intrin.h> (clang builtins under MS compat) */
unsigned long _byteswap_ulong(unsigned long);
unsigned long long _byteswap_uint64(unsigned long long);
unsigned int _rotl(unsigned int, int);
unsigned long long _rotl64(unsigned long long, int);
#endif
#include "xxh_harness.h"
#ifndef NO_INLINE_ALL
#define XXH_INLINE_ALL
#endif
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* input bytes are passed by value (U8ARGS a,b = 128 bytes) and copied into a local buffer */
uint32_t target_xxh32_len0(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 0, seed);
}
uint32_t target_xxh32_len15(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 15, seed);
}
uint32_t target_xxh32_len16(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 16, seed);
}
uint32_t target_xxh32_len17(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 17, seed);
}
uint32_t target_xxh32_len20(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 20, seed);
}
uint32_t target_xxh32_len31(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 31, seed);
}
uint32_t target_xxh32_len32(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  return XXH32(buf, 32, seed);
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
uint32_t target_s32_20_13(U8ARGS(a), U8ARGS(b), uint32_t seed) {
  uint8_t buf[128]; U8FILL(buf, 0, a); U8FILL(buf, 64, b);
  XXH32_state_t s; XXH32_reset(&s, seed);
  XXH32_update(&s, buf, 20);
  XXH32_update(&s, buf + 20, 13);
  return XXH32_digest(&s);
}
