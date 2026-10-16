// Exhaustive-structure stress test for bignum_normalize: for every k in 0..MAXK,
// every number of leading zero limbs, and many top-limb bit patterns, compare
// against a straightforward C reference. Link with the library under test.
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
extern uint64_t bignum_normalize(uint64_t k, uint64_t *z);
#define MAXK 70
static uint64_t rnd(void) { return ((uint64_t)rand() << 62) ^ ((uint64_t)rand() << 31) ^ (uint64_t)rand(); }
static uint64_t ref(uint64_t k, uint64_t *z) {   // in-place reference
  uint64_t top = k; while (top > 0 && z[top-1] == 0) top--;
  if (top == 0) return 64 * k;
  int lz = __builtin_clzll(z[top-1]);
  uint64_t limbs = k - top, sh = 64 * limbs + lz;
  uint64_t t[MAXK + 1]; memset(t, 0, sizeof t);
  for (uint64_t i = 0; i < top; i++) t[i + limbs] = z[i];
  for (uint64_t i = k; i-- > 0;) z[i] = lz ? (t[i] << lz) | (i ? t[i-1] >> (64 - lz) : 0) : t[i];
  return sh;
}
int main(void) {
  uint64_t a[MAXK + 2], b[MAXK + 2], c[MAXK + 2]; long n = 0;
  for (uint64_t k = 0; k <= MAXK; k++)
    for (uint64_t top = 0; top <= k; top++)
      for (int trial = 0; trial < 200; trial++) {
        for (uint64_t i = 0; i < k; i++) a[i] = (i < top) ? rnd() : 0;
        if (top > 0) { int sh = trial % 64; a[top-1] = (a[top-1] | 1) >> sh; if (trial % 7 == 0) a[top-1] = 1; }
        if (trial % 11 == 0) for (uint64_t i = 0; i + 1 < top; i++) a[i] = 0;
        a[k] = 0xdeadbeefcafebabeULL; memcpy(b, a, sizeof a); memcpy(c, a, sizeof a);
        uint64_t r1 = bignum_normalize(k, b), r2 = ref(k, c);
        if (r1 != r2 || memcmp(b, c, sizeof(uint64_t) * (k + 1))) { printf("FAIL k=%lu top=%lu trial=%d r=%lu exp=%lu\n", k, top, trial, r1, r2); return 1; }
        n++;
      }
  printf("stress_normalize: all %ld cases OK (including guard word past z[k-1])\n", n);
  return 0;
}
