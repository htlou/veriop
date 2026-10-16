# Layout-sensitivity helper: 32 bytes of padding in .text placed before the
# library code, so that bignum_normalize starts at 32 (mod 64) instead of 0.
        .text
        .balign 64
        .globl s2n_layout_pad
s2n_layout_pad:
        .skip 32, 0xcc
