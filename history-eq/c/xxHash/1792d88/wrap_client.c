/* client level: separately compiled user code that only sees the declarations.
   XXH_MALLOCF (malloc attribute) => returned pointer is noalias with everything else. */
#include <stdint.h>
#include <stddef.h>
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
int target_client_create(int* q) {
  *q = 1;
  XXH64_state_t* s = XXH64_createState();
  if (!s) return -1;
  *(int*)s = 2;          /* may clobber *q only if s may alias q */
  int r = *q;
  XXH64_freeState(s);
  return r;
}
