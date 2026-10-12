// retry wrapper generated from wrap.c: only target_u64_bf, target_u64_recover (definitions identical)
// 70d2a45: LIBDIVIDE_INLINE = __forceinline for _MSC_VER.
// Public API entry points; numer/d symbolic (d restricted to the documented domain).
#include "side.h"
#ifdef EMULATE_MSVC_NO_HAS_ATTRIBUTE
#undef __has_attribute   /* emulate cl.exe, which has no __has_attribute: selects the _MSC_VER branch */
#endif
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#ifdef NOASM
#undef __x86_64__   /* modeling assumption: disable divq inline asm (both sides) */
#undef _M_X64
#endif
#include "libdivide.h"
uint64_t target_u64_bf(uint64_t n, uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do(n, &x); }
uint64_t target_u64_recover(uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_recover(&x); }
