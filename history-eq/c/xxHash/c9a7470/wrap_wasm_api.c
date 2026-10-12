#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH3 hashLong at fixed length 256 (4 stripes + last stripe, no scramble); input from noundef scalars. */
#define BUF unsigned char buf[256]; U8FILL(buf,0,a); U8FILL(buf,64,b); U8FILL(buf,128,c); U8FILL(buf,192,d);
uint64_t target_xxh3_len256(U8ARGS(a), U8ARGS(b), U8ARGS(c), U8ARGS(d)) { BUF return XXH3_64bits(buf, 256); }
