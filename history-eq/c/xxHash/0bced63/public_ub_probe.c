#include <inttypes.h>
#include <stdio.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

int main(void) {
  unsigned char input[256];
  for (unsigned i = 0; i < sizeof input; ++i) input[i] = (unsigned char)(i * 37u + 11u);
  uint64_t seed = UINT64_C(0x8000000000000000);
  printf("%016" PRIx64 "\n", XXH3_64bits_withSeed(input, sizeof input, seed));
  return 0;
}
