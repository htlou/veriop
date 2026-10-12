/* raw unit: XXH3_accumulate(acc, data, secret, nbStripes[, accWidth]) with symbolic nbStripes <= NBMAX.
 * acc is copied to a local 64-byte-aligned array first: precondition "acc does not alias data/secret"
 * (always true inside the library, where acc is a local array of XXH3_hashLong*). */
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>
#define noinline
#include "xxh3.h"
#ifdef KEYALIGN   /* precondition: secret/key pointer aligned to KEYALIGN bytes (kKey / seeded key are ALIGN(64) in the library at this time) */
#  define KEYPRE(k) if (((unsigned long)(k)) & (KEYALIGN - 1)) return;
#else
#  define KEYPRE(k)
#endif
void target_accum(unsigned long long* accio, const void* data, const void* key, size_t nb) {
  __attribute__((aligned(64))) unsigned long long acc[8];
  if (nb > NBMAX) return;
  KEYPRE(key)
  memcpy(acc, accio, sizeof(acc));
#ifdef ACCW
  XXH3_accumulate(acc, data, key, nb, ACCW);
#else
  XXH3_accumulate(acc, data, key, nb);
#endif
  memcpy(accio, acc, sizeof(acc));
}
