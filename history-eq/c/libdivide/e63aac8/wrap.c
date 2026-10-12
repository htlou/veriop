// Branchfree-introduction commits (2016 "branchfree" branch).
//  *_bfx: the branchfree API vs. the pre-commit API (cross-API when the branchfree variant of that
//         type did not exist before the commit: then the OLD side uses the branchfull gen/do).
//  *_bfull: the existing branchfull API (gen+do), whose shared generator was modified.
// Per-commit configuration (which types have a branchfree do on each side) is given by -D flags:
//   BF_NEW_<T>  : type T is checked in the bfx unit; BF_OLD_<T>: old side already had branchfree T.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "side.h"
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
#define BFULL(ty, sty) \
T sty target_##ty##_bfull(sty n, sty dv) { if (dv == 0) return 0; struct libdivide_##ty##_t d = libdivide_##ty##_gen(dv); return libdivide_##ty##_do(n, &d); }
#define BFX_NEWAPI(ty, sty, COND) \
T sty target_##ty##_bfx(sty n, sty dv) { if (COND) return 0; __auto_type d = libdivide_##ty##_branchfree_gen(dv); return libdivide_##ty##_branchfree_do(n, &d); }
#define BFX_OLDAPI(ty, sty, COND) \
T sty target_##ty##_bfx(sty n, sty dv) { if (COND) return 0; struct libdivide_##ty##_t d = libdivide_##ty##_gen(dv); return libdivide_##ty##_do(n, &d); }
#define UCOND (dv < 2)
#define SCOND (dv == 0 || dv == 1 || dv == -1)
#ifndef PART_BFX
#ifdef ONLY_S64
BFULL(s64, int64_t)
#else
BFULL(u32, uint32_t) BFULL(u64, uint64_t) BFULL(s32, int32_t) BFULL(s64, int64_t)
#endif
#else
#if defined(LIBDIVIDE_SIDE_NEW)
#define PICK_u32 BFX_NEWAPI
#define PICK_u64 BFX_NEWAPI
#define PICK_s32 BFX_NEWAPI
#define PICK_s64 BFX_NEWAPI
#else
#ifdef BF_OLD_U32
#define PICK_u32 BFX_NEWAPI
#else
#define PICK_u32 BFX_OLDAPI
#endif
#ifdef BF_OLD_U64
#define PICK_u64 BFX_NEWAPI
#else
#define PICK_u64 BFX_OLDAPI
#endif
#ifdef BF_OLD_S32
#define PICK_s32 BFX_NEWAPI
#else
#define PICK_s32 BFX_OLDAPI
#endif
#define PICK_s64 BFX_OLDAPI
#endif
#ifdef BF_NEW_U32
PICK_u32(u32, uint32_t, UCOND)
#endif
#ifdef BF_NEW_U64
PICK_u64(u64, uint64_t, UCOND)
#endif
#ifdef BF_NEW_S32
PICK_s32(s32, int32_t, SCOND)
#endif
#ifdef BF_NEW_S64
PICK_s64(s64, int64_t, SCOND)
#endif
#endif
