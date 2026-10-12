#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: the changed function */
void target_mult64to128(uint64_t* out, uint64_t lhs, uint64_t rhs) {
  XXH128_hash_t r = XXH_mult64to128(lhs, rhs); out[0] = r.low64; out[1] = r.high64;
}
/* raw: its direct user */
uint64_t target_mul128_fold64(uint64_t lhs, uint64_t rhs) { return XXH3_mul128_fold64(lhs, rhs); }
/* api: XXH3 lengths whose code path calls XXH3_mul128_fold64 / XXH_mult64to128 (inputs as noundef scalars) */
#define T64(n) uint64_t target_api64_len##n(U8ARGS(a), U8ARGS(b), uint64_t seed) { \
  unsigned char buf[128]; U8FILL(buf,0,a); U8FILL(buf,64,b); return XXH3_64bits_withSeed(buf, n, seed); }
T64(9) T64(16) T64(17) T64(64) T64(128)
void target_api128_len12(XXH128_hash_t* o, U8ARGS(a), uint64_t seed) {
  unsigned char buf[64]; U8FILL(buf,0,a); *o = XXH3_128bits_withSeed(buf, 12, seed); }
