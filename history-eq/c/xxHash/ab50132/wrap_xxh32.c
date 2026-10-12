#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH32 one-shot at fixed lengths >= 16 (these run XXH32_round, where the guard was added).
   Input bytes come from noundef scalar args copied into a local buffer (no poison input bytes). */
#define T(n) uint32_t target_xxh32_len##n(U8ARGS(a), U8ARGS(b), uint32_t seed) { \
  unsigned char buf[128]; U8FILL(buf,0,a); U8FILL(buf,64,b); return XXH32(buf, n, seed); }
T(16) T(17) T(31) T(32) T(48) T(64) T(100)
