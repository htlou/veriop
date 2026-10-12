/* 777ec65 api: canonical-form decoders (the public users of XXH_readBE32/XXH_readBE64). *_ptr: canonical passed by pointer; *_val: canonical bytes passed by value (no uninitialized bytes) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint32_t target_api_xxh32_fromCanonical_ptr(const XXH32_canonical_t* c) { return XXH32_hashFromCanonical(c); }
uint64_t target_api_xxh64_fromCanonical_ptr(const XXH64_canonical_t* c) { return XXH64_hashFromCanonical(c); }
uint32_t target_api_xxh32_fromCanonical_val(uint32_t v) { XXH32_canonical_t c; memcpy(&c, &v, 4); return XXH32_hashFromCanonical(&c); }
uint64_t target_api_xxh64_fromCanonical_val(uint64_t v) { XXH64_canonical_t c; memcpy(&c, &v, 8); return XXH64_hashFromCanonical(&c); }
void target_api_xxh128_fromCanonical_val(uint64_t a, uint64_t b, XXH128_hash_t* o) { XXH128_canonical_t c; memcpy(&c, &a, 8); memcpy((char*)&c + 8, &b, 8); *o = XXH128_hashFromCanonical(&c); }
