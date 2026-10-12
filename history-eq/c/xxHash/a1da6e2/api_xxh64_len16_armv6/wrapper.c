/* 2014-2019 API: XXH32(const void*, size_t, unsigned), XXH64(const void*, size_t, ull),
 * XXHnn_reset/update/digest on a stack state. Whole library compiled into this TU
 * (xxhash.c includes xxhash.h); same file used for old and new. */
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#ifdef PRIVATE_API
#  define XXH_PRIVATE_API
#  include "xxhash.h"
#else
#  include "xxhash.c"
#endif
#ifdef NONNULL
#define PRE if (!p) return 0;
#else
#define PRE
#endif
#ifdef H64
typedef unsigned long long R; typedef unsigned long long S;
#define HASH XXH64
#define ST XXH64_state_t
#define RESET XXH64_reset
#define UPDATE XXH64_update
#define DIGEST XXH64_digest
#else
typedef unsigned int R; typedef unsigned int S;
#define HASH XXH32
#define ST XXH32_state_t
#define RESET XXH32_reset
#define UPDATE XXH32_update
#define DIGEST XXH32_digest
#endif
#ifdef __cplusplus
extern "C" {
#endif
#if defined(STREAM)
R target_stream(const void* p, S seed) {
  PRE
  ST st; RESET(&st, seed);
#ifdef SPLIT
  UPDATE(&st, p, SPLIT); UPDATE(&st, (const char*)p + SPLIT, LEN - SPLIT);
#else
  UPDATE(&st, p, LEN);
#endif
  return DIGEST(&st);
}
#elif defined(SYMLEN)
R target_symlen(const void* p, size_t len, S seed) {
  PRE
#ifdef MINLEN
  if (len < MINLEN) return 0;
#endif
  if (len > SYMLEN) return 0;
  return HASH(p, len, seed);
}
#else
R target_oneshot(const void* p, S seed) { PRE return HASH(p, LEN, seed); }
#endif
#ifdef __cplusplus
}
#endif
