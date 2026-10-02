#define XXH_INLINE_ALL
#define XXH_VECTOR XXH_SCALAR
#include "xxhash.h"
#include <stdio.h>
int main(void) {
  printf("#define BYTE_BITFLIP 0x%llxULL\n", (unsigned long long)(XXH_readLE32(XXH3_kSecret)^XXH_readLE32(XXH3_kSecret+4)));
  puts("static const uint64_t byte_hashes[256] = {");
  for (int i=0; i<256; ++i) {
    unsigned char c=i;
    printf("0x%016llxULL,%s",(unsigned long long)XXH3_len_1to3_64b(&c,1,XXH3_kSecret,0),i%4==3?"\n":" ");
  }
  puts("};");
}
