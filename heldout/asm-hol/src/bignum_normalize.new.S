// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT-0

// ----------------------------------------------------------------------------
// Normalize bignum in-place by shifting left till top bit is 1
// Input z[k]; outputs function return (bits shifted left) and z[k]
//
//    extern uint64_t bignum_normalize(uint64_t k, uint64_t *z);
//
// Given a k-digit bignum z, this function shifts it left by its number of
// leading zero bits, to give result with top bit 1, unless the input number
// was 0. The return is the same as the output of bignum_clz, i.e. the number
// of bits shifted (nominally 64 * k in the case of zero input).
//
// Standard x86-64 ABI: RDI = k, RSI = z, returns RAX
// Microsoft x64 ABI:   RCX = k, RDX = z, returns RAX
// ----------------------------------------------------------------------------

#include "_internal_s2n_bignum_x86.h"

        .intel_syntax noprefix
        S2N_BN_SYM_VISIBILITY_DIRECTIVE(bignum_normalize)
        S2N_BN_FUNCTION_TYPE_DIRECTIVE(bignum_normalize)
        S2N_BN_SYM_PRIVACY_DIRECTIVE(bignum_normalize)
        .text
        .balign 32

#define k rdi
#define z rsi

// Return value, which we put in rax to save a move or two

#define r rax

// Other variables
// Matters that c is RCX as CL=lo(c) is assumed in shifts

#define b r9
#define c rcx
#define d rdx
#define i r8
#define j r10

#define dshort edx


S2N_BN_SYMBOL(bignum_normalize):
        CFI_START
        _CET_ENDBR

#if WINDOWS_ABI
        CFI_PUSH(rdi)
        CFI_PUSH(rsi)
        mov     rdi, rcx
        mov     rsi, rdx
#endif

// Initialize shift count r = 0 and i = k - 1 but return immediately if k = 0.
// Otherwise load top digit c, but then if k = 1 skip the digitwise part

        xor     r, r
        mov     i, k
        sub     i, 1
        jc      Lbignum_normalize_end
        mov     c, [z+8*i]
        jz      Lbignum_normalize_bitpart

// Digit normalization in O(k * log(k)) constant-time style. First find
// the index p of the highest nonzero digit among digits 1..k-1 (p = 0 if
// there is none) and set r = k - 1 - p, the number of digits to shift.
// Then do a binary-strided shift: for each power of 2, s = 1, 2, 4, ...
// with s < k, conditionally shift z left by s digits if (r AND s) <> 0.
// All branches and memory accesses depend only on k, not on the data.

        mov     b, 1
Lbignum_normalize_scanloop:
        mov     d, [z+8*b]
        test    d, d
        cmovnz  r, b
        inc     b
        cmp     b, k
        jc      Lbignum_normalize_scanloop
        not     r
        add     r, k

        mov     i, 1
Lbignum_normalize_outerloop:
        mov     b, k
        mov     j, k
        sub     j, i
Lbignum_normalize_shiftloop:
        mov     d, [z+8*b-8]
        mov     c, [z+8*j-8]
        test    r, i
        cmovnz  d, c
        mov     [z+8*b-8], d
        dec     b
        dec     j
        jnz     Lbignum_normalize_shiftloop
Lbignum_normalize_zeroloop:
        mov     d, [z+8*b-8]
        test    r, i
        cmovnz  d, j
        mov     [z+8*b-8], d
        dec     b
        jnz     Lbignum_normalize_zeroloop
        add     i, i
        cmp     i, k
        jc      Lbignum_normalize_outerloop

// Reload the top digit, which is now nonzero unless the input was zero.

        mov     c, [z+8*k-8]

// We now have the top digit nonzero, assuming the input was nonzero,
// and as per the invariant of the loop above, c holds that digit. So
// now just count c's leading zeros and shift z bitwise that many bits.
// We need to patch the bsr result for the undefined case of zero input

Lbignum_normalize_bitpart:
        mov     dshort, 127
        bsr     c, c
        cmovz   c, d
        xor     c, 63

        shl     r, 6
        add     r, c

        xor     b, b
        xor     i, i
Lbignum_normalize_bitloop:
        mov     d, [z+8*i]
        mov     j, d
        shld    d, b, cl
        mov     [z+8*i],d
        mov     b, j
        inc     i
        cmp     i, k
        jc      Lbignum_normalize_bitloop

Lbignum_normalize_end:
#if WINDOWS_ABI
        CFI_POP(rsi)
        CFI_POP(rdi)
#endif
        CFI_RET

S2N_BN_SIZE_DIRECTIVE(bignum_normalize)

#if defined(__linux__) && defined(__ELF__)
.section .note.GNU-stack,"",%progbits
#endif
