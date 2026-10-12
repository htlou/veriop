/* 2013-era API (XXH32(const void*, int, unsigned); XXH32_init/update/digest with void* state).
 * Whole library compiled into this TU; same file used for old and new. */
#include <stdlib.h>
#include <string.h>
#include "xxhash.c"
#ifdef NONNULL
#define PRE if (!p) return 0;   /* precondition: input pointer non-NULL (documented domain) */
#else
#define PRE
#endif
#if defined(STREAM)
unsigned int target_xxh32_stream(const void* p, unsigned int seed) {
  PRE
  void* s = XXH32_init(seed);
#ifdef SPLIT
  XXH32_update(s, p, SPLIT); XXH32_update(s, (const char*)p + SPLIT, LEN - SPLIT);
#else
  XXH32_update(s, p, LEN);
#endif
  return XXH32_digest(s);
}
#elif defined(SYMLEN)
unsigned int target_xxh32_symlen(const void* p, int len, unsigned int seed) {
  PRE
  if (len < 0 || len > SYMLEN) return 0;
  return XXH32(p, len, seed);
}
#else
unsigned int target_xxh32(const void* p, unsigned int seed) { PRE return XXH32(p, LEN, seed); }
#endif
