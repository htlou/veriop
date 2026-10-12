/* client level: separately compiled user code that only sees the declarations (library linked
   separately). XXH_PUREF on the declarations lets the compiler merge repeated identical calls. */
#include <stdint.h>
#include <stddef.h>
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint32_t target_client_xxh32_twice(const void* p, size_t n, uint32_t s) { return XXH32(p, n, s) - XXH32(p, n, s); }
uint64_t target_client_xxh64_twice(const void* p, size_t n, uint64_t s) { return XXH64(p, n, s) - XXH64(p, n, s); }
uint64_t target_client_xxh3_twice(const void* p, size_t n) { return XXH3_64bits(p, n) - XXH3_64bits(p, n); }
uint64_t target_client_digest_twice(const XXH64_state_t* st) { return XXH64_digest(st) - XXH64_digest(st); }
