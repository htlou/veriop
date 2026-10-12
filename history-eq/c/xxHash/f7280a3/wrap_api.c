/* api-level harness for f7280a3 (identical for old/new): heap-allocated streaming states,
   createState -> reset -> update(fixed length, symbolic content) -> digest -> freeState.
   malloc/free are modelled by Alive2's built-in allocator semantics. If createState returns NULL the
   target returns 0 (both sides). Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#if SEL(1)
uint32_t target_xxh32_heap_20(const uint8_t* p, uint32_t seed) {
    XXH32_state_t* s = XXH32_createState();
    if (s == NULL) return 0;
    XXH32_reset(s, seed);
    XXH32_update(s, p, 20);
    uint32_t h = XXH32_digest(s);
    XXH32_freeState(s);
    return h;
}
#endif
#if SEL(2)
uint64_t target_xxh64_heap_40(const uint8_t* p, uint64_t seed) {
    XXH64_state_t* s = XXH64_createState();
    if (s == NULL) return 0;
    XXH64_reset(s, seed);
    XXH64_update(s, p, 40);
    uint64_t h = XXH64_digest(s);
    XXH64_freeState(s);
    return h;
}
#endif
#if SEL(3)
uint64_t target_xxh3_heap_100(const uint8_t* p) {
    XXH3_state_t* s = XXH3_createState();
    if (s == NULL) return 0;
    XXH3_64bits_reset(s);
    XXH3_64bits_update(s, p, 100);
    uint64_t h = XXH3_64bits_digest(s);
    XXH3_freeState(s);
    return h;
}
#endif
/* 4: allocation only (pointer validity / alignment not observable; just create+free) */
#if SEL(4)
int target_xxh64_create_free(void) {
    XXH64_state_t* s = XXH64_createState();
    if (s == NULL) return 0;
    XXH64_freeState(s);
    return 1;
}
#endif
/* 5-7: create -> reset -> digest (no data) -> free: allocation path only, cheap hash */
#if SEL(5)
uint32_t target_xxh32_heap_empty(uint32_t seed) {
    XXH32_state_t* s = XXH32_createState();
    if (s == NULL) return 0;
    XXH32_reset(s, seed);
    uint32_t h = XXH32_digest(s);
    XXH32_freeState(s);
    return h;
}
#endif
#if SEL(6)
uint64_t target_xxh64_heap_empty(uint64_t seed) {
    XXH64_state_t* s = XXH64_createState();
    if (s == NULL) return 0;
    XXH64_reset(s, seed);
    uint64_t h = XXH64_digest(s);
    XXH64_freeState(s);
    return h;
}
#endif
#if SEL(7)
int target_xxh3_create_free(void) {
    XXH3_state_t* s = XXH3_createState();
    if (s == NULL) return 0;
    XXH3_freeState(s);
    return 1;
}
#endif
