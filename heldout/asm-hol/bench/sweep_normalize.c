// Supplementary (non-official) size sweep for bignum_normalize, using the same
// timing style as benchmarks/benchmark.c (clock(), repeated calls on fixed
// buffers, average over 65 bit densities x OUTER reps). Link with one library.
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>
extern uint64_t bignum_normalize(uint64_t k, uint64_t *z);
static uint64_t b0[1000];
static uint64_t random64d(int density) {
  uint64_t r = 0; for (int i = 0; i < 64; i++) r = (r + r) + ((rand() & 0x3F) < density); return r; }
int main(void) {
  const int ks[] = {1, 2, 3, 4, 5, 6, 8, 9, 12, 16, 17, 24, 32, 48, 64, 128};
  for (unsigned t = 0; t < sizeof ks / sizeof ks[0]; t++) {
    uint64_t k = ks[t], reps = 2000000 / (k + 4) + 10; double total = 0; int n = 0;
    for (int outer = 0; outer < 2; outer++) for (int d = 0; d <= 64; d++) {
      for (uint64_t i = 0; i < k; i++) b0[i] = random64d(d);
      clock_t s = clock();
      for (uint64_t i = 0; i < reps; i++) bignum_normalize(k, b0);
      total += 1e9 * (double)(clock() - s) / ((double)reps * CLOCKS_PER_SEC); n++;
    }
    printf("%lu\t%.2f\n", k, total / n);
  }
  return 0;
}
