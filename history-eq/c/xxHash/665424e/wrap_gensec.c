#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api: XXH3_generateSecret (moved in the file, body unchanged) with a fixed 16-byte custom seed passed by value */
void target_gensec16(uint8_t* out, uint64_t c0, uint64_t c1) { uint64_t cs[2] = {c0, c1}; unsigned char b[192]; XXH3_generateSecret(b, cs, 16); memcpy(out, b, 192); }
