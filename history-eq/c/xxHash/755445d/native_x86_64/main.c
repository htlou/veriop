/* native sanity: print XXH3 64/128 (default, seeded, custom secret), XXH32, XXH64 for len 0..256 */
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
int main(void) {
  unsigned char buf[300], sec[200]; uint64_t x = 0x9E3779B97F4A7C15ULL;
  for (int i = 0; i < 300; i++) { x ^= x << 13; x ^= x >> 7; x ^= x << 17; buf[i] = (unsigned char)x; }
  for (int i = 0; i < 200; i++) { x ^= x << 13; x ^= x >> 7; x ^= x << 17; sec[i] = (unsigned char)x; }
  uint64_t seeds[2] = {0, 0x0123456789ABCDEFULL};
  for (size_t len = 0; len <= 256; len++) {
    for (int k = 0; k < 2; k++) {
      XXH128_hash_t h = XXH3_128bits_withSeed(buf + 3, len, seeds[k]);
      printf("len=%zu seed=%d xxh3_64=%016llx xxh3_128=%016llx%016llx xxh32=%08x xxh64=%016llx\n", len, k,
        (unsigned long long)XXH3_64bits_withSeed(buf + 3, len, seeds[k]),
        (unsigned long long)h.high64, (unsigned long long)h.low64,
        (unsigned)XXH32(buf + 3, len, (uint32_t)seeds[k]), (unsigned long long)XXH64(buf + 3, len, seeds[k]));
    }
    XXH128_hash_t hs = XXH3_128bits_withSecret(buf + 1, len, sec, 192);
    printf("len=%zu secret xxh3_64=%016llx xxh3_128=%016llx%016llx\n", len,
      (unsigned long long)XXH3_64bits_withSecret(buf + 1, len, sec, 192), (unsigned long long)hs.high64, (unsigned long long)hs.low64);
  }
  return 0;
}
