/* Dispatcher-level harness (identical for old/new). Includes the dispatcher translation unit
   (xxh_x86dispatch_model.c = xxh_x86dispatch.c with ONLY the cpuid/xgetbv inline-asm bodies replaced,
   see mk_model.py) so that its static dispatch tables / setDispatch() are visible.
   CPU model: -DXXM_CPU=0 symbolic (uninterpreted pure functions), 1 = SSE2-only CPU,
   2 = AVX2 CPU (no AVX512F), 3 = AVX512F CPU.  -DSETDISPATCH=<name of the static init function>.
   Targets that call SETDISPATCH() first model "dispatcher already initialised" (the NULL-check path
   is then never taken); the function-pointer tables are then constant-foldable for a fixed CPU.
   Select a target with -DT=<n>. */
#include <stdint.h>
#include <string.h>
#ifndef XXM_CPU
#define XXM_CPU 0
#endif
#if XXM_CPU == 0
extern uint32_t xxm_cpuid(uint32_t leaf, uint32_t subleaf, int reg) __attribute__((const));
extern uint64_t xxm_xgetbv(void) __attribute__((const));
#else
static inline uint32_t xxm_cpuid(uint32_t leaf, uint32_t subleaf, int reg) {
    (void)subleaf;
    if (leaf == 0) return reg == 0 ? 13u : 0u;                              /* max leaf */
    if (leaf == 1) return reg == 3 ? (1u << 26)                             /* edx: SSE2 */
                        : reg == 2 ? ((1u << 26) | (1u << 27)) : 0u;        /* ecx: XSAVE|OSXSAVE */
    if (leaf == 7) return reg == 1 ? ((XXM_CPU >= 2 ? (1u << 5) : 0u)       /* ebx: AVX2 */
                                    | (XXM_CPU >= 3 ? (1u << 16) : 0u)) : 0u; /* ebx: AVX512F */
    return 0u;
}
static inline uint64_t xxm_xgetbv(void) { return XXM_CPU >= 3 ? 0xE6u : 0x6u; } /* XCR0: SSE|AVX(|opmask|ZMM) */
#endif
#include "xxh_x86dispatch_model.c"

#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#ifndef SETDISPATCH
#define SETDISPATCH setDispatch
#endif
/* 1: XXH3 64-bit streaming through the dispatcher: 100 + 200 bytes (crosses the internal buffer) */
#if SEL(1)
uint64_t target_upd64_disp(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    SETDISPATCH();
    XXH3_64bits_reset(&s);
    XXH3_64bits_update_dispatch(&s, p, 100);
    XXH3_64bits_update_dispatch(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
/* 2: XXH128 streaming through the dispatcher: 100 + 200 bytes */
#if SEL(2)
void target_upd128_disp(const uint8_t* p, uint64_t* out) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    SETDISPATCH();
    XXH3_128bits_reset(&s);
    XXH3_128bits_update_dispatch(&s, p, 100);
    XXH3_128bits_update_dispatch(&s, p + 100, 200);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64;
}
#endif
/* 3: CPU feature detection only */
#if SEL(3)
int target_featureTest(void) { return XXH_featureTest(); }
#endif
/* 4: one-shot long hash through the dispatcher (unchanged by the update commits; control) */
#if SEL(4)
uint64_t target_hash64_disp_300(const uint8_t* p) {
    SETDISPATCH();
    return XXH3_64bits_dispatch(p, 300);
}
#endif
/* 5: XXH3 64-bit streaming through the dispatcher WITHOUT explicit initialisation
      (dispatch tables = arbitrary initial global state) */
#if SEL(5)
uint64_t target_upd64_disp_noinit(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update_dispatch(&s, p, 100);
    XXH3_64bits_update_dispatch(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
/* 6: the dispatching update entry point alone, symbolic state/input/len, dispatch tables in arbitrary
      initial global state (no explicit initialisation) */
#if SEL(6)
int target_upd64_disp_entry(XXH3_state_t* s, const uint8_t* p, size_t n) {
    return (int)XXH3_64bits_update_dispatch(s, p, n);
}
#endif
/* 7: as 6, under the precondition guaranteed by __attribute__((constructor)) XXH_setDispatch:
      the dispatch table has been initialised (update pointer non-NULL) before any API call */
#if SEL(7)
int target_upd64_disp_entry_init(XXH3_state_t* s, const uint8_t* p, size_t n) {
    __builtin_assume(XXH_g_dispatch.update != NULL);
    return (int)XXH3_64bits_update_dispatch(s, p, n);
}
#endif
