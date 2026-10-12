#use "/srv/home/hantaolou/code/veriop/history-eq/hol/s2n-bignum/7420a717/hol-init.ml";;
needs "Library/prime.ml";;
let EMONT_FROM_EQ = prove
 (`!n a b x y q r.
   n * x + a = b * q /\ n * y + a = b * r
   ==> (n * x == n * y) (mod b)`, NUMBER_TAC);;
let EMONT_FROM_CONG = prove
 (`!b x y. 0 < b /\ x < b /\ y < b /\ (x == y) (mod b) ==> x = y`,
  REWRITE_TAC[CONG] THEN MESON_TAC[MOD_LT]);;
let EMONT_X_UNIQUE = prove
 (`!n a b x y q r.
    0 < b /\ x < b /\ y < b /\ coprime(n,b) /\
    n * x + a = b * q /\ n * y + a = b * r ==> x = y`,
  MESON_TAC[EMONT_FROM_EQ; EMONT_FROM_CONG; CONG_MULT_LCANCEL_IFF;
            ARITH_RULE `0 < b ==> ~(b = 0)`]);;
let EMONT_Q_UNIQUE = prove
 (`!u b q r. 0 < b /\ u = b * q /\ u = b * r ==> q = r`,
  REPEAT GEN_TAC THEN STRIP_TAC THEN
  SUBGOAL_THEN `b * q = b * r` MP_TAC THENL
   [ASM_MESON_TAC[]; REWRITE_TAC[EQ_MULT_LCANCEL] THEN ASM_ARITH_TAC]);;
let EMONT_OUTPUT_UNIQUE = prove
 (`!n a b x y q r.
    0 < b /\ x < b /\ y < b /\ coprime(n,b) /\
    n * x + a = b * q /\ n * y + a = b * r
    ==> x = y /\ q = r`,
  REPEAT GEN_TAC THEN DISCH_THEN STRIP_ASSUME_TAC THEN CONJ_TAC THENL
   [MATCH_MP_TAC (SPECL [`n:num`; `a:num`; `b:num`; `x:num`; `y:num`; `q:num`; `r:num`] EMONT_X_UNIQUE) THEN ASM_REWRITE_TAC[];
    SUBGOAL_THEN `(x:num) = y` ASSUME_TAC THENL
     [MATCH_MP_TAC (SPECL [`n:num`; `a:num`; `b:num`; `x:num`; `y:num`; `q:num`; `r:num`] EMONT_X_UNIQUE) THEN ASM_REWRITE_TAC[];
      MATCH_MP_TAC (SPECL [`(n:num) * x + a`; `b:num`; `q:num`; `r:num`]
                          EMONT_Q_UNIQUE) THEN ASM_MESON_TAC[]]]);;
let EMONT_CONG_ZERO = prove
 (`!x m. (x == 0) (mod m) <=> m divides x`, NUMBER_TAC);;
let EMONT_DIVIDES2 = prove
 (`!n w. (n * w + 1 == 0) (mod (2 EXP 64))
         ==> 2 divides (n * w + 1)`,
  REWRITE_TAC[EMONT_CONG_ZERO] THEN
  MESON_TAC[DIVIDES_EXP2; ARITH_RULE `~(64 = 0)`]);;
let EMONT_EVEN1 = prove (`~EVEN 1`, CONV_TAC NUM_REDUCE_CONV);;
let EMONT_ODD_FROM_DIVIDES = prove
 (`!n w. 2 divides (n * w + 1) ==> ODD n`,
  REWRITE_TAC[DIVIDES_2; EVEN_ADD; EVEN_MULT; EMONT_EVEN1; GSYM NOT_EVEN] THEN
  MESON_TAC[]);;
let EMONT_ODD = prove
 (`!n w. (n * w + 1 == 0) (mod (2 EXP 64)) ==> ODD n`,
  REPEAT GEN_TAC THEN DISCH_TAC THEN
  MATCH_MP_TAC (SPECL [`n:num`; `w:num`] EMONT_ODD_FROM_DIVIDES) THEN
  MATCH_MP_TAC (SPECL [`n:num`; `w:num`] EMONT_DIVIDES2) THEN
  ASM_REWRITE_TAC[]);;
let EMONT_COPRIME = prove
 (`!n w k. (n * w + 1 == 0) (mod (2 EXP 64))
            ==> coprime(n,2 EXP (64 * k))`,
  REPEAT GEN_TAC THEN DISCH_TAC THEN
  MATCH_MP_TAC COPRIME_EXP THEN
  REWRITE_TAC[CONJUNCT2 COPRIME_2] THEN
  ASM_MESON_TAC[EMONT_ODD]);;
let EMONT_SPLIT_UNIQUE = prove
 (`!b c1 c2 h1 h2.
    h1 < b /\ h2 < b /\ b * c1 + h1 = b * c2 + h2
    ==> c1 = c2 /\ h1 = h2`,
  REPEAT GEN_TAC THEN ONCE_REWRITE_TAC[MULT_SYM] THEN
  DISCH_THEN STRIP_ASSUME_TAC THEN
  MP_TAC (SPECL [`c1 * b + h1`; `b:num`; `c1:num`; `h1:num`;
                 `c2:num`; `h2:num`] DIVMOD_UNIQ_LEMMA) THEN
  ASM_REWRITE_TAC[]);;
let EMONT_RELATION_UNIQUE = prove
 (`!k n w a l1 l2 h1 h2 c1 c2.
    (n * w + 1 == 0) (mod (2 EXP 64)) /\
    l1 < 2 EXP (64 * k) /\ l2 < 2 EXP (64 * k) /\
    h1 < 2 EXP (64 * k) /\ h2 < 2 EXP (64 * k) /\
    n * l1 + a = 2 EXP (64 * k) *
                 (2 EXP (64 * k) * c1 + h1) /\
    n * l2 + a = 2 EXP (64 * k) *
                 (2 EXP (64 * k) * c2 + h2)
    ==> l1 = l2 /\ h1 = h2 /\ c1 = c2`,
  REPEAT GEN_TAC THEN DISCH_THEN STRIP_ASSUME_TAC THEN
  SUBGOAL_THEN
   `(l1:num) = l2 /\
    2 EXP (64 * (k:num)) * c1 + h1 = 2 EXP (64 * k) * c2 + h2`
  STRIP_ASSUME_TAC THENL
   [MATCH_MP_TAC (SPECL
     [`n:num`; `a:num`; `2 EXP (64 * k)`; `l1:num`; `l2:num`;
      `2 EXP (64 * k) * c1 + h1`; `2 EXP (64 * k) * c2 + h2`]
     EMONT_OUTPUT_UNIQUE) THEN
    ASM_REWRITE_TAC[EXP_LT_0; ARITH_RULE `~(2 = 0)`] THEN
    MATCH_MP_TAC (SPECL [`n:num`; `w:num`; `k:num`] EMONT_COPRIME) THEN
    ASM_REWRITE_TAC[];
    ALL_TAC] THEN
  SUBGOAL_THEN `(c1:num) = c2 /\ (h1:num) = h2` STRIP_ASSUME_TAC THENL
   [MATCH_MP_TAC (SPECL
     [`2 EXP (64 * k)`; `c1:num`; `c2:num`; `h1:num`; `h2:num`]
     EMONT_SPLIT_UNIQUE) THEN ASM_REWRITE_TAC[];
    ASM_REWRITE_TAC[]]);;
EMONT_SPLIT_UNIQUE;;
EMONT_RELATION_UNIQUE;;
