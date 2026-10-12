#include <stdint.h>
#define XXH_STATIC_LINKING_ONLY
#define XXH_INLINE_ALL
#include "xxhash.h"
void target_secret(unsigned char out[192], uint64_t seed) {
#ifdef GRPC_NEW
    XXH3_generateSecret_fromSeed(out, seed);
#else
    XXH3_initCustomSecret(out, seed);
#endif
}
