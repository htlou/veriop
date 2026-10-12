/* 935f280 secondary (non-perf refactor hunk): XXH_xorshift64 helper used in XXH3_avalanche, XXH3_len_4to8_64b, scalar XXH3_scrambleAcc. 64-bit API len 0..16 + scalar scrambleAcc by value (compile with -DXXH_VECTOR=0) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_4to8(const uint8_t* p, size_t len, uint64_t seed) { if (len < 4 || len > 8) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_seed_9to16(const uint8_t* p, size_t len, uint64_t seed) { if (len < 9 || len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_raw_scrambleAcc_scalar(U8ARGS(a), U8ARGS(s), uint64_t* out) {
  _Alignas(64) uint64_t acc[8]; U8FILL(acc, 0, a);
  _Alignas(64) unsigned char sec[64]; U8FILL(sec, 0, s);
  XXH3_scrambleAcc(acc, sec);
  memcpy(out, acc, 64);
}
