#include "xxhash.c"
/* XXH32 public API, fixed lengths (content + seed symbolic) */
#define T(N) unsigned int target_xxh32_len##N(const void* p, unsigned int seed) { return XXH32(p, N, seed); }
T(0) T(1) T(4) T(7) T(15) T(16) T(17) T(31) T(32) T(37)
