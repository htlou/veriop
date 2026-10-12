#use "/srv/home/hantaolou/code/veriop/history-eq/hol/s2n-bignum/19eac44a/hol-init.ml";;
Sys.chdir "/tmp/veriop-s2n-19e-old";;
needs "x86/proofs/base.ml";;
let SQUARE_32_LOWDIGITS = prove
 (`!a. a < 2 EXP (64 * 32) ==> lowdigits (a * a) 64 = a EXP 2`,
  REWRITE_TAC[EXP_2] THEN REPEAT STRIP_TAC THEN
  MATCH_MP_TAC LOWDIGITS_SELF THEN
  REWRITE_TAC[ARITH_RULE `64 * 64 = 64 * 32 + 64 * 32`; EXP_ADD] THEN
  ASM_SIMP_TAC[LT_MULT2]);;
SQUARE_32_LOWDIGITS;;
