/* native sanity harness: links one compiled wrapper (old or new) and prints target outputs
 * for a few pseudo-random inputs. Usage: ./a.out  (prints one line per trial) */
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stddef.h>
typedef struct { unsigned long long a, b; } NH128;
extern unsigned long long target_xxh3_64() __attribute__((weak));
extern void target_xxh128() __attribute__((weak));
extern unsigned long long target_oneshot() __attribute__((weak));
extern unsigned int target_xxh32() __attribute__((weak));
extern unsigned int target_xxh32_stream() __attribute__((weak));
extern unsigned long long target_fold64(unsigned long long, unsigned long long) __attribute__((weak));
static uint64_t s = 0x9E3779B97F4A7C15ull;
static uint64_t rnd(void) { s ^= s << 13; s ^= s >> 7; s ^= s << 17; return s; }
int main(void) {
  static unsigned char buf[4096 + 64];
  for (int t = 0; t < 8; t++) {
    for (size_t i = 0; i < sizeof buf; i++) buf[i] = (unsigned char)rnd();
    unsigned long long seed = (t & 1) ? rnd() : 0;
    const unsigned char* p = buf + (t % 8);           /* also misaligned pointers */
    if (target_xxh3_64) printf("%016llx\n", ((unsigned long long(*)(const void*, unsigned long long))target_xxh3_64)(p, seed));
    if (target_xxh128) { NH128 h; ((void(*)(const void*, unsigned long long, NH128*))target_xxh128)(p, seed, &h); printf("%016llx%016llx\n", h.b, h.a); }
    if (target_oneshot) printf("%016llx\n", ((unsigned long long(*)(const void*, unsigned long long))target_oneshot)(p, seed));
    if (target_xxh32) printf("%08x\n", ((unsigned(*)(const void*, unsigned))target_xxh32)(p, (unsigned)seed));
    if (target_xxh32_stream) printf("%08x\n", ((unsigned(*)(const void*, unsigned))target_xxh32_stream)(p, (unsigned)seed));
    if (target_fold64) printf("%016llx\n", target_fold64(rnd(), rnd()));
  }
  return 0;
}
