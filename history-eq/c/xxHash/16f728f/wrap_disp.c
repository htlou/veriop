/* 16f728f introduces the x86 dispatcher (new file, new API XXH3_64bits_dispatch /
   XXH3_64bits_withSeed_dispatch, documented as drop-in replacements of XXH3_64bits /
   XXH3_64bits_withSeed; xxh_x86dispatch.h even #defines the old names to the new ones).
   Cross-API check: new side = dispatcher entry point (first call: its static function-pointer cache is
   reset to NULL, so selection runs through XXH_featureTest() with a FIXED CPU model, see xxm_cpuid),
   old side = the old library's XXH3_64bits / XXH3_64bits_withSeed. This is the ONLY side-specific code
   (XXH_SIDE_NEW from <side>_model/xxh_side.h). -DXXM_CPU=1 SSE2-only CPU, 2 AVX2 CPU.
   Select a target with -DT=<n>. */
#include <stdint.h>
#include <string.h>
#include "xxh_side.h"
#ifndef XXM_CPU
#define XXM_CPU 2
#endif
static inline uint32_t xxm_cpuid(uint32_t leaf, uint32_t subleaf, int reg) {
    (void)subleaf;
    if (leaf == 0) return reg == 0 ? 13u : 0u;
    if (leaf == 1) return reg == 3 ? (1u << 26) : reg == 2 ? ((1u << 26) | (1u << 27)) : 0u;
    if (leaf == 7) return reg == 1 ? ((XXM_CPU >= 2 ? (1u << 5) : 0u) | (XXM_CPU >= 3 ? (1u << 16) : 0u)) : 0u;
    return 0u;
}
static inline uint64_t xxm_xgetbv(void) { return XXM_CPU >= 3 ? 0xE6u : 0x6u; }
#if XXH_SIDE_NEW
#  include "xxh_x86dispatch_model.c"
#  define H64(p, n)         (g_dispatch_hashLong64_default = NULL, XXH3_64bits_dispatch(p, n))
#  define H64S(p, n, seed)  (g_dispatch_hashLong64_seed = NULL, XXH3_64bits_withSeed_dispatch(p, n, seed))
#else
#  define XXH_INLINE_ALL
#  include "xxhash.h"
#  define H64(p, n)         XXH3_64bits(p, n)
#  define H64S(p, n, seed)  XXH3_64bits_withSeed(p, n, seed)
#endif
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#if SEL(1)
uint64_t target_disp_300(const uint8_t* p) { return H64(p, 300); }
#endif
#if SEL(2)
uint64_t target_disp_seed_300(const uint8_t* p, uint64_t seed) { return H64S(p, 300, seed); }
#endif
#if SEL(3)
uint64_t target_disp_100(const uint8_t* p) { return H64(p, 100); }
#endif
