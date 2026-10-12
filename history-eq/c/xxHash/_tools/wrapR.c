/* raw units on small XXH3 helpers (all args symbolic). */
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
#ifdef FOLD
unsigned long long target_fold64(unsigned long long a, unsigned long long b) { return FOLD(a, b); }
#endif
#ifdef ACC512
/* precondition: acc is a local (does not alias input/secret), as in the library */
void target_acc512(unsigned long long* accio, const void* in, const void* sec) {
  __attribute__((aligned(64))) unsigned long long acc[8];
  KEYPRE(sec)
  memcpy(acc, accio, sizeof(acc));
  XXH3_accumulate_512(acc, in, sec ACC512);
  memcpy(accio, acc, sizeof(acc));
}
#endif
#ifdef SCRAMBLE
void target_scramble(unsigned long long* accio, const void* sec) {
  __attribute__((aligned(64))) unsigned long long acc[8];
  memcpy(acc, accio, sizeof(acc));
  XXH3_scrambleAcc(acc, sec);
  memcpy(accio, acc, sizeof(acc));
}
#endif
