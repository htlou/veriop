/* Native sanity check (not a checker result): XXH64 streaming with a single update of len >= 2^32
   vs. one-shot XXH64 on the same buffer, compiled against old/ or new/ headers. */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
int main(void) {
  size_t len = ((size_t)1 << 32) + 5;
  unsigned char* p = malloc(len);
  if (!p) { puts("malloc failed"); return 2; }
  for (size_t i = 0; i < len; i++) p[i] = (unsigned char)(i * 131 + (i >> 13));
  XXH64_state_t s; XXH64_reset(&s, 7); XXH64_update(&s, p, len);
  unsigned long long st = XXH64_digest(&s), os = XXH64(p, len, 7);
  printf("total_len=%llu streaming=%016llx oneshot=%016llx %s\n", (unsigned long long)s.total_len, st, os, st == os ? "SAME" : "DIFFERENT");
  free(p); return 0;
}
