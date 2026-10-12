// 292ddc3: concrete-input instance of target_s32_bfx (wrap.c, -DPART_BFX -DBF_NEW_S32) at the input
// found by the bwd run (n = -1073183987, d = 3). NEW: s32 branchfree gen/do; OLD: s32 gen/do.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "side.h"
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm (both sides) */
#include "libdivide.h"
static inline __attribute__((always_inline)) int32_t impl(int32_t n, int32_t dv) {
#if defined(LIBDIVIDE_SIDE_NEW)
  __auto_type d = libdivide_s32_branchfree_gen(dv); return libdivide_s32_branchfree_do(n, &d);
#else
  struct libdivide_s32_t d = libdivide_s32_gen(dv); return libdivide_s32_do(n, &d);
#endif
}
__attribute__((flatten)) int32_t target_cex(void) { return impl(-1073183987, 3); }
__attribute__((flatten)) int32_t target_cex_n(int32_t n) { return impl(n, 3); }
