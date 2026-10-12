/* client level: separately compiled user code that only sees the declarations (library linked
   separately). XXH_NOESCAPE lets the compiler assume the pointers do not escape through the call. */
#include <stdint.h>
#include <stddef.h>
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void ext(void);
uint64_t target_client_oneshot(uint64_t v) {
  uint64_t buf[4] = {v, v, v, v};
  uint64_t h = XXH64(buf, sizeof(buf), 0);
  ext();                 /* may modify buf only if buf escaped */
  return h + buf[0];
}
uint64_t target_client_update(XXH64_state_t* st, uint64_t v) {
  uint64_t buf[4] = {v, v, v, v};
  XXH64_update(st, buf, sizeof(buf));
  ext();
  return buf[1];
}
uint32_t target_client_xxh3_update(XXH3_state_t* st, uint32_t v) {
  uint32_t buf[4] = {v, v, v, v};
  XXH3_64bits_update(st, buf, sizeof(buf));
  ext();
  return buf[2];
}
