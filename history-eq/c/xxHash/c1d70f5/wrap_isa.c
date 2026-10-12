/* Per-ISA harness for the dispatcher's streaming update (c1d70f5 / 6090b0d).
   Models "the dispatcher has selected ISA <X>" on both sides, WITHOUT touching the global dispatch
   tables (whose layout changed: Alive2 rejects globals of different size):
     old side: XXH3_64bits_update_dispatch() executes
               XXH3_update(state, input, len, XXH3_acc_64bits, g_coreFunc.accumulate_512, g_coreFunc.scrambleAcc)
               with g_coreFunc = k_coreFunc[X] = { XXH3_accumulate_512_X, XXH3_scrambleAcc_X }
     new side: XXH3_64bits_update_dispatch() executes g_dispatch.update = k_dispatch[X].update
               = XXH3_64bits_update_X (state, input, len)
   (128-bit analogously with XXH3_acc_128bits / XXH3_128bits_update_X; 6090b0d.)
   The function called on each side is written out below; this is the ONLY side-specific code
   (XXH_SIDE_NEW from <side>_model/xxh_side.h), because the per-ISA functions do not exist in the old
   file. State: stack, memset, reset, two updates (100 + 200 bytes, crosses the 256-byte buffer), digest.
   -DISA=0 scalar, 1 sse2, 2 avx2.  Select a target with -DT=<n>. */
#include <stdint.h>
#include <string.h>
#include "xxh_side.h"
extern uint32_t xxm_cpuid(uint32_t leaf, uint32_t subleaf, int reg) __attribute__((const));
extern uint64_t xxm_xgetbv(void) __attribute__((const));
#include "xxh_x86dispatch_model.c"
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#ifndef ISA
#define ISA 2
#endif
#if ISA == 0
#  define SFX(f) f##_scalar
#elif ISA == 1
#  define SFX(f) f##_sse2
#else
#  define SFX(f) f##_avx2
#endif
#if XXH_SIDE_NEW
#  define UPD64(s, p, n)  SFX(XXH3_64bits_update)(s, p, n)
#  define UPD128(s, p, n) SFX(XXH3_128bits_update)(s, p, n)
#else
#  define UPD64(s, p, n)  XXH3_update(s, (const xxh_u8*)(p), n, XXH3_acc_64bits,  SFX(XXH3_accumulate_512), SFX(XXH3_scrambleAcc))
#  define UPD128(s, p, n) XXH3_update(s, (const xxh_u8*)(p), n, XXH3_acc_128bits, SFX(XXH3_accumulate_512), SFX(XXH3_scrambleAcc))
#endif
#if SEL(1)
uint64_t target_isa_upd64(const uint8_t* p) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_64bits_reset(&s);
    UPD64(&s, p, 100);
    UPD64(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
#if SEL(2) && defined(WITH128)
void target_isa_upd128(const uint8_t* p, uint64_t* out) {
    XXH3_state_t s; memset(&s, 0, sizeof s);
    XXH3_128bits_reset(&s);
    UPD128(&s, p, 100);
    UPD128(&s, p + 100, 200);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64;
}
#endif
