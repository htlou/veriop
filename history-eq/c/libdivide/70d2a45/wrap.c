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
uint32_t target_u32(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
int32_t target_s32(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_do(n, &x); }
uint64_t target_u64(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
int64_t target_s64(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
uint32_t target_u32_bf(uint32_t n, uint32_t d) { if (d < 2) return 0; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_do(n, &x); }
uint64_t target_u64_bf(uint64_t n, uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do(n, &x); }
int32_t target_s32_bf(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_branchfree_t x = libdivide_s32_branchfree_gen(d); return libdivide_s32_branchfree_do(n, &x); }
int64_t target_s64_bf(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return libdivide_s64_branchfree_do(n, &x); }
uint32_t target_u32_recover(uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_recover(&x); }
uint64_t target_u64_recover(uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_recover(&x); }
