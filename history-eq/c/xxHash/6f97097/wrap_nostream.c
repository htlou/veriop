#include "xxh_harness.h"
#define XXH_INLINE_ALL
#include "xxhash.h"
uint64_t target_xxh64_stream(const uint8_t* p) {
    XXH64_state_t s;
    XXH64_reset(&s, 0);
    XXH64_update(&s, p, 8);
    return XXH64_digest(&s);
}
