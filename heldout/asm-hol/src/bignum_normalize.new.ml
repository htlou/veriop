(*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT-0
 *)

(* ========================================================================= *)
(* Normalization of a bignum in-place in constant time.                      *)
(* ========================================================================= *)

needs "x86/proofs/base.ml";;

(**** print_literal_from_elf "x86/generic/bignum_normalize.o";;
 ****)

let bignum_normalize_mc =
  define_assert_from_elf "bignum_normalize_mc" "x86/generic/bignum_normalize.o"
[
  0xf3; 0x0f; 0x1e; 0xfa;  (* ENDBR64 *)
  0x48; 0x31; 0xc0;        (* XOR (% rax) (% rax) *)
  0x49; 0x89; 0xf8;        (* MOV (% r8) (% rdi) *)
  0x49; 0x83; 0xe8; 0x01;  (* SUB (% r8) (Imm8 (word 1)) *)
  0x0f; 0x82; 0xaf; 0x00; 0x00; 0x00;
                           (* JB (Imm32 (word 175)) *)
  0x4a; 0x8b; 0x0c; 0xc6;  (* MOV (% rcx) (Memop Quadword (%%% (rsi,3,r8))) *)
  0x74; 0x71;              (* JE (Imm8 (word 113)) *)
  0x49; 0xc7; 0xc1; 0x01; 0x00; 0x00; 0x00;
                           (* MOV (% r9) (Imm32 (word 1)) *)
  0x4a; 0x8b; 0x14; 0xce;  (* MOV (% rdx) (Memop Quadword (%%% (rsi,3,r9))) *)
  0x48; 0x85; 0xd2;        (* TEST (% rdx) (% rdx) *)
  0x49; 0x0f; 0x45; 0xc1;  (* CMOVNE (% rax) (% r9) *)
  0x49; 0xff; 0xc1;        (* INC (% r9) *)
  0x49; 0x39; 0xf9;        (* CMP (% r9) (% rdi) *)
  0x72; 0xed;              (* JB (Imm8 (word 237)) *)
  0x48; 0xf7; 0xd0;        (* NOT (% rax) *)
  0x48; 0x01; 0xf8;        (* ADD (% rax) (% rdi) *)
  0x49; 0xc7; 0xc0; 0x01; 0x00; 0x00; 0x00;
                           (* MOV (% r8) (Imm32 (word 1)) *)
  0x49; 0x89; 0xf9;        (* MOV (% r9) (% rdi) *)
  0x49; 0x89; 0xfa;        (* MOV (% r10) (% rdi) *)
  0x4d; 0x29; 0xc2;        (* SUB (% r10) (% r8) *)
  0x4a; 0x8b; 0x54; 0xce; 0xf8;
                           (* MOV (% rdx) (Memop Quadword (%%%% (rsi,3,r9,-- &8))) *)
  0x4a; 0x8b; 0x4c; 0xd6; 0xf8;
                           (* MOV (% rcx) (Memop Quadword (%%%% (rsi,3,r10,-- &8))) *)
  0x4c; 0x85; 0xc0;        (* TEST (% rax) (% r8) *)
  0x48; 0x0f; 0x45; 0xd1;  (* CMOVNE (% rdx) (% rcx) *)
  0x4a; 0x89; 0x54; 0xce; 0xf8;
                           (* MOV (Memop Quadword (%%%% (rsi,3,r9,-- &8))) (% rdx) *)
  0x49; 0xff; 0xc9;        (* DEC (% r9) *)
  0x49; 0xff; 0xca;        (* DEC (% r10) *)
  0x75; 0xe2;              (* JNE (Imm8 (word 226)) *)
  0x4a; 0x8b; 0x54; 0xce; 0xf8;
                           (* MOV (% rdx) (Memop Quadword (%%%% (rsi,3,r9,-- &8))) *)
  0x4c; 0x85; 0xc0;        (* TEST (% rax) (% r8) *)
  0x49; 0x0f; 0x45; 0xd2;  (* CMOVNE (% rdx) (% r10) *)
  0x4a; 0x89; 0x54; 0xce; 0xf8;
                           (* MOV (Memop Quadword (%%%% (rsi,3,r9,-- &8))) (% rdx) *)
  0x49; 0xff; 0xc9;        (* DEC (% r9) *)
  0x75; 0xea;              (* JNE (Imm8 (word 234)) *)
  0x4d; 0x01; 0xc0;        (* ADD (% r8) (% r8) *)
  0x49; 0x39; 0xf8;        (* CMP (% r8) (% rdi) *)
  0x72; 0xbb;              (* JB (Imm8 (word 187)) *)
  0x48; 0x8b; 0x4c; 0xfe; 0xf8;
                           (* MOV (% rcx) (Memop Quadword (%%%% (rsi,3,rdi,-- &8))) *)
  0xba; 0x7f; 0x00; 0x00; 0x00;
                           (* MOV (% edx) (Imm32 (word 127)) *)
  0x48; 0x0f; 0xbd; 0xc9;  (* BSR (% rcx) (% rcx) *)
  0x48; 0x0f; 0x44; 0xca;  (* CMOVE (% rcx) (% rdx) *)
  0x48; 0x83; 0xf1; 0x3f;  (* XOR (% rcx) (Imm8 (word 63)) *)
  0x48; 0xc1; 0xe0; 0x06;  (* SHL (% rax) (Imm8 (word 6)) *)
  0x48; 0x01; 0xc8;        (* ADD (% rax) (% rcx) *)
  0x4d; 0x31; 0xc9;        (* XOR (% r9) (% r9) *)
  0x4d; 0x31; 0xc0;        (* XOR (% r8) (% r8) *)
  0x4a; 0x8b; 0x14; 0xc6;  (* MOV (% rdx) (Memop Quadword (%%% (rsi,3,r8))) *)
  0x49; 0x89; 0xd2;        (* MOV (% r10) (% rdx) *)
  0x4c; 0x0f; 0xa5; 0xca;  (* SHLD (% rdx) (% r9) (% cl) *)
  0x4a; 0x89; 0x14; 0xc6;  (* MOV (Memop Quadword (%%% (rsi,3,r8))) (% rdx) *)
  0x4d; 0x89; 0xd1;        (* MOV (% r9) (% r10) *)
  0x49; 0xff; 0xc0;        (* INC (% r8) *)
  0x49; 0x39; 0xf8;        (* CMP (% r8) (% rdi) *)
  0x72; 0xe6;              (* JB (Imm8 (word 230)) *)
  0xc3                     (* RET *)
];;

let bignum_normalize_tmc = define_trimmed "bignum_normalize_tmc" bignum_normalize_mc;;

let BIGNUM_NORMALIZE_EXEC = X86_MK_CORE_EXEC_RULE bignum_normalize_tmc;;

(* ------------------------------------------------------------------------- *)
(* Some lemmas for the binary-strided digit shift.                           *)
(* ------------------------------------------------------------------------- *)

let NORMALIZE_BIGDIGIT_MUL_POW2 = prove
 (`!m s j. bigdigit (2 EXP (64 * s) * m) j =
           if j < s then 0 else bigdigit m (j - s)`,
  REPEAT GEN_TAC THEN REWRITE_TAC[bigdigit] THEN COND_CASES_TAC THENL
   [SUBGOAL_THEN
     `2 EXP (64 * s) * m =
      2 EXP (64 * j) * 2 EXP 64 * 2 EXP (64 * (s - j - 1)) * m`
    SUBST1_TAC THENL
     [REWRITE_TAC[MULT_ASSOC; GSYM EXP_ADD] THEN
      AP_THM_TAC THEN AP_TERM_TAC THEN AP_TERM_TAC THEN ASM_ARITH_TAC;
      SIMP_TAC[DIV_MULT; EXP_EQ_0; ARITH_EQ; GSYM MULT_ASSOC] THEN
      SIMP_TAC[MOD_MULT; EXP_EQ_0; ARITH_EQ]];
    SUBGOAL_THEN `2 EXP (64 * j) = 2 EXP (64 * s) * 2 EXP (64 * (j - s))`
    SUBST1_TAC THENL
     [REWRITE_TAC[GSYM EXP_ADD] THEN AP_TERM_TAC THEN ASM_ARITH_TAC;
      SIMP_TAC[GSYM DIV_DIV; DIV_MULT; EXP_EQ_0; ARITH_EQ;
               MULT_EQ_0]]]);;

let NORMALIZE_MOD_POW2_STEP = prove
 (`!l b. l MOD 2 EXP (b + 1) =
         l MOD 2 EXP b + 2 EXP b * bitval(ODD(l DIV 2 EXP b))`,
  REPEAT GEN_TAC THEN REWRITE_TAC[EXP_ADD; EXP_1; MOD_MULT_MOD] THEN
  REWRITE_TAC[BITVAL_ODD] THEN ARITH_TAC);;

let NORMALIZE_BITSIZE_LOWDIGITS_STEP = prove
 (`!n i. (bitsize(lowdigits n (i + 1)) - 1) DIV 64 =
         if bigdigit n i = 0 then (bitsize(lowdigits n i) - 1) DIV 64
         else i`,
  REPEAT GEN_TAC THEN REWRITE_TAC[LOWDIGITS_CLAUSES] THEN
  COND_CASES_TAC THEN ASM_REWRITE_TAC[MULT_CLAUSES; ADD_CLAUSES] THEN
  ASM_SIMP_TAC[BITSIZE_MULT_ADD; LOWDIGITS_BOUND] THEN
  MATCH_MP_TAC DIV_UNIQ THEN EXISTS_TAC `bitsize(bigdigit n i) - 1` THEN
  MP_TAC(SPECL [`bigdigit n i`; `64`] BITSIZE_LE) THEN
  MP_TAC(SPEC `bigdigit n i` BITSIZE_EQ_0) THEN
  ASM_REWRITE_TAC[BIGDIGIT_BOUND] THEN ARITH_TAC);;

let NORMALIZE_BITSIZE_DIGITS_FACTS = prove
 (`!n k. n < 2 EXP (64 * k) /\ ~(k = 0)
         ==> (bitsize n - 1) DIV 64 < k /\
             n < 2 EXP (64 * ((bitsize n - 1) DIV 64 + 1)) /\
             (~(n = 0) ==> 2 EXP (64 * ((bitsize n - 1) DIV 64)) <= n) /\
             (n = 0 ==> (bitsize n - 1) DIV 64 = 0)`,
  REPEAT GEN_TAC THEN STRIP_TAC THEN REPEAT CONJ_TAC THENL
   [RULE_ASSUM_TAC(REWRITE_RULE[GSYM BITSIZE_LE]) THEN
    SIMP_TAC[RDIV_LT_EQ; ARITH_EQ] THEN ASM_ARITH_TAC;
    REWRITE_TAC[GSYM BITSIZE_LE] THEN ARITH_TAC;
    DISCH_TAC THEN TRANS_TAC LE_TRANS `2 EXP (bitsize n - 1)` THEN
    ASM_SIMP_TAC[BITSIZE_REV; LE_EXP; ARITH_EQ] THEN
    MP_TAC(SPECL [`bitsize n - 1`; `64`] DIVISION) THEN ARITH_TAC;
    SIMP_TAC[BITSIZE_0] THEN CONV_TAC NUM_REDUCE_CONV]);;

let NORMALIZE_WORD_SUB_ADD1 = prove
 (`!a. word_sub (word (a + 1)) (word 1):int64 = word a`,
  REWRITE_TAC[GSYM WORD_ADD] THEN CONV_TAC WORD_RULE);;

(* ------------------------------------------------------------------------- *)
(* Proof.                                                                    *)
(* ------------------------------------------------------------------------- *)

let BIGNUM_NORMALIZE_CORRECT = time prove
 (`!k z n pc.
        nonoverlapping (word pc,0xc0) (z,8 * val k)
        ==> ensures x86
             (\s. bytes_loaded s (word pc) (BUTLAST bignum_normalize_tmc) /\
                  read RIP s = word pc /\
                  C_ARGUMENTS [k; z] s /\
                  bignum_from_memory (z,val k) s = n)
             (\s. read RIP s = word(pc + 0xbf) /\
                  bignum_from_memory (z,val k) s =
                  2 EXP (64 * val k - bitsize n) * n /\
                  C_RETURN s = word(64 * val k - bitsize n))
             (MAYCHANGE [RIP; RAX; RCX; RDX; R8; R9; R10] ,,
              MAYCHANGE [memory :> bytes(z,8 * val k)] ,,
              MAYCHANGE SOME_FLAGS ,, MAYCHANGE [events])`,
  W64_GEN_TAC `k:num` THEN
  MAP_EVERY X_GEN_TAC [`z:int64`; `n:num`; `pc:num`] THEN
  REWRITE_TAC[ALL; ALLPAIRS; NONOVERLAPPING_CLAUSES] THEN
  REWRITE_TAC[C_ARGUMENTS; C_RETURN; SOME_FLAGS] THEN
  DISCH_THEN(REPEAT_TCL CONJUNCTS_THEN ASSUME_TAC) THEN
  BIGNUM_TERMRANGE_TAC `k:num` `n:num` THEN

  (*** Degenerate k = 0 case ***)

  ASM_CASES_TAC `k = 0` THENL
   [UNDISCH_THEN `k = 0` SUBST_ALL_TAC THEN
    REPEAT(FIRST_X_ASSUM(SUBST_ALL_TAC o MATCH_MP (ARITH_RULE
     `a < 2 EXP (64 * 0) ==> a = 0`))) THEN
    REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
    ENSURES_INIT_TAC "s0" THEN X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--4) THEN
    ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[BITSIZE_0] THEN ARITH_TAC;
    ALL_TAC] THEN

  (*** Get a basic bound on k from the nonoverlapping assumption ***)

  FIRST_ASSUM(MP_TAC o MATCH_MP (ONCE_REWRITE_RULE[IMP_CONJ]
    NONOVERLAPPING_IMP_SMALL_2)) THEN
  ANTS_TAC THENL [UNDISCH_TAC `~(k = 0)` THEN ARITH_TAC; DISCH_TAC] THEN

  (*** The digitwise normalization, reaching the same intermediate ***)
  (*** assertion as the earlier O(k^2) version at the "bitpart" label ***)

  ENSURES_SEQUENCE_TAC `pc + 0x87`
   `\s. read RDI s = word k /\
        read RSI s = z /\
        bignum_from_memory(z,k) s = 2 EXP (64 * val(read RAX s)) * n /\
        read RCX s = word(bigdigit (bignum_from_memory(z,k) s) (k - 1)) /\
        val(read RAX s) <= k - 1 /\
        (n = 0 ==> val(read RAX s) = k - 1) /\
        (~(n = 0) ==> 2 EXP (64 * (k - 1)) <= bignum_from_memory(z,k) s)` THEN
  CONJ_TAC THENL
   [ASM_CASES_TAC `k = 1` THENL
     [UNDISCH_THEN `k = 1` SUBST_ALL_TAC THEN
      REWRITE_TAC[BIGNUM_FROM_MEMORY_SING; SUB_REFL] THEN
      REWRITE_TAC[VAL_WORD_GALOIS; DIMINDEX_64] THEN
      ENSURES_INIT_TAC "s0" THEN
      SUBGOAL_THEN
       `read(memory :> bytes64(word_add z (word(8 * val(word 0:int64))))) s0 =
        word n`
      ASSUME_TAC THENL
       [ASM_REWRITE_TAC[WORD_ADD_0; VAL_WORD_0; MULT_CLAUSES]; ALL_TAC] THEN
      X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--6) THEN
      ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[] THEN
      RULE_ASSUM_TAC(REWRITE_RULE[MULT_CLAUSES]) THEN
      ASM_REWRITE_TAC[VAL_WORD_0; MULT_CLAUSES; EXP] THEN
      ASM_SIMP_TAC[VAL_WORD; GSYM LOWDIGITS_1; DIMINDEX_64; lowdigits; MOD_LT;
                   MULT_CLAUSES] THEN
      ARITH_TAC;
      ALL_TAC] THEN

    (*** The number p of the highest nonzero digit (0 if none) and the ***)
    (*** number l = k - 1 - p of digits by which we need to shift left  ***)

    MP_TAC(SPECL [`n:num`; `k:num`] NORMALIZE_BITSIZE_DIGITS_FACTS) THEN
    ASM_REWRITE_TAC[] THEN
    ABBREV_TAC `p = (bitsize n - 1) DIV 64` THEN STRIP_TAC THEN
    ABBREV_TAC `l = k - 1 - p` THEN
    SUBGOAL_THEN `l + p + 1 = k` ASSUME_TAC THENL
     [EXPAND_TAC "l" THEN ASM_ARITH_TAC; ALL_TAC] THEN
    SUBGOAL_THEN `l < 2 EXP bitsize(k - 1)` ASSUME_TAC THENL
     [MATCH_MP_TAC LET_TRANS THEN EXISTS_TAC `k - 1` THEN
      REWRITE_TAC[BITSIZE] THEN ASM_ARITH_TAC; ALL_TAC] THEN
    SUBGOAL_THEN `~(bitsize(k - 1) = 0)` ASSUME_TAC THENL
     [REWRITE_TAC[BITSIZE_EQ_0] THEN ASM_ARITH_TAC; ALL_TAC] THEN

    (*** The outer loop over the binary strides 2^b < k ***)

    ENSURES_WHILE_UP_TAC `bitsize(k - 1)` `pc + 0x3d` `pc + 0x7d`
     `\b s. read RDI s = word k /\
            read RSI s = z /\
            read RAX s = word l /\
            read R8 s = word(2 EXP b) /\
            bignum_from_memory(z,k) s = 2 EXP (64 * (l MOD 2 EXP b)) * n` THEN
    ASM_REWRITE_TAC[] THEN REPEAT CONJ_TAC THENL
     [(*** The initial "scanloop" finding p and hence l ***)

      ENSURES_WHILE_AUP_TAC `1` `k:num` `pc + 0x1d` `pc + 0x2b`
       `\i s. read RDI s = word k /\
              read RSI s = z /\
              read R9 s = word i /\
              bignum_from_memory(z,k) s = n /\
              read RAX s = word((bitsize(lowdigits n i) - 1) DIV 64)` THEN
      ASM_REWRITE_TAC[] THEN REPEAT CONJ_TAC THENL
       [ASM_ARITH_TAC;

        SUBGOAL_THEN `word_sub (word k) (word 1):int64 = word(k - 1)`
        ASSUME_TAC THENL
         [ASM_SIMP_TAC[WORD_SUB; LE_1; VAL_WORD_1]; ALL_TAC] THEN
        VAL_INT64_TAC `k - 1` THEN
        MP_TAC(ARITH_RULE `k - 1 = 0 <=> k = 0 \/ k = 1`) THEN
        ASM_REWRITE_TAC[] THEN DISCH_TAC THEN
        MP_TAC(ARITH_RULE `k < 1 <=> k = 0`) THEN
        ASM_REWRITE_TAC[] THEN DISCH_TAC THEN
        SUBGOAL_THEN `(bitsize(lowdigits n 1) - 1) DIV 64 = 0` SUBST1_TAC THENL
         [MP_TAC(SPECL [`lowdigits n 1`; `64`] BITSIZE_LE) THEN
          MP_TAC(SPECL [`n:num`; `1`] LOWDIGITS_BOUND) THEN ARITH_TAC;
          ALL_TAC] THEN
        REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN ENSURES_INIT_TAC "s0" THEN
        MP_TAC(ISPECL [`k:num`; `z:int64`; `s0:x86state`; `k - 1`]
           BIGDIGIT_BIGNUM_FROM_MEMORY) THEN
        ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
        ASM_REWRITE_TAC[ARITH_RULE `k - 1 < k <=> ~(k = 0)`] THEN
        DISCH_THEN(MP_TAC o SYM) THEN
        GEN_REWRITE_TAC LAND_CONV [VAL_WORD_GALOIS] THEN
        REWRITE_TAC[DIMINDEX_64] THEN STRIP_TAC THEN
        X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--7) THEN
        ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[];

        X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
        REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN ENSURES_INIT_TAC "s0" THEN
        MP_TAC(ISPECL [`k:num`; `z:int64`; `s0:x86state`; `i:num`]
           BIGDIGIT_BIGNUM_FROM_MEMORY) THEN
        ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
        DISCH_THEN(MP_TAC o SYM) THEN
        GEN_REWRITE_TAC LAND_CONV [VAL_WORD_GALOIS] THEN
        REWRITE_TAC[DIMINDEX_64] THEN STRIP_TAC THEN
        X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--4) THEN
        ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[] THEN
        REWRITE_TAC[NORMALIZE_BITSIZE_LOWDIGITS_STEP; VAL_WORD_BIGDIGIT;
                    WORD_ADD] THEN
        COND_CASES_TAC THEN ASM_REWRITE_TAC[];

        X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
        X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--2);

        ASM_SIMP_TAC[LOWDIGITS_SELF] THEN
        REWRITE_TAC[EXP; MOD_1; MULT_CLAUSES] THEN
        X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--5) THEN
        SUBGOAL_THEN `k = (l + p + 1)` SUBST1_TAC THENL
         [ASM_REWRITE_TAC[]; ALL_TAC] THEN
        REWRITE_TAC[GSYM WORD_ADD] THEN CONV_TAC WORD_RULE];

      (*** One pass of the outer loop with stride h = 2^b ***)

      X_GEN_TAC `b:num` THEN STRIP_TAC THEN
      ABBREV_TAC `h = 2 EXP b` THEN
      SUBGOAL_THEN `h < k /\ ~(h = 0)` STRIP_ASSUME_TAC THENL
       [EXPAND_TAC "h" THEN REWRITE_TAC[EXP_EQ_0; ARITH_EQ] THEN
        UNDISCH_TAC `b < bitsize(k - 1)` THEN
        REWRITE_TAC[GSYM NOT_LE; BITSIZE_LE] THEN ASM_ARITH_TAC;
        ALL_TAC] THEN
      SUBGOAL_THEN `b < 64` ASSUME_TAC THENL
       [REWRITE_TAC[GSYM NOT_LE] THEN DISCH_TAC THEN
        UNDISCH_TAC `h < k` THEN EXPAND_TAC "h" THEN REWRITE_TAC[NOT_LT] THEN
        TRANS_TAC LE_TRANS `2 EXP 64` THEN
        ASM_SIMP_TAC[LT_IMP_LE; LE_EXP; ARITH_EQ];
        ALL_TAC] THEN
      ABBREV_TAC `m = 2 EXP (64 * l MOD h) * n` THEN
      ABBREV_TAC `c <=> ODD(l DIV h)` THEN
      ABBREV_TAC `r = if c then 2 EXP (64 * h) * m else m` THEN
      SUBGOAL_THEN `2 EXP (64 * l MOD 2 EXP (b + 1)) * n = r` ASSUME_TAC THENL
       [EXPAND_TAC "r" THEN EXPAND_TAC "m" THEN EXPAND_TAC "c" THEN
        ASM_REWRITE_TAC[NORMALIZE_MOD_POW2_STEP] THEN
        UNDISCH_THEN `(if c then 2 EXP (64 * h) * m else m) = r`
         (SUBST1_TAC o SYM) THEN
        UNDISCH_THEN `2 EXP (64 * l MOD h) * n = m` (SUBST1_TAC o SYM) THEN
        BOOL_CASES_TAC `c:bool` THEN
        REWRITE_TAC[BITVAL_CLAUSES; MULT_CLAUSES; ADD_CLAUSES;
                    LEFT_ADD_DISTRIB; EXP_ADD] THEN
        CONV_TAC NUM_RING;
        ALL_TAC] THEN
      SUBGOAL_THEN `r < 2 EXP (64 * k) /\ m <= r` STRIP_ASSUME_TAC THENL
       [CONJ_TAC THENL
         [FIRST_X_ASSUM(SUBST1_TAC o SYM) THEN
          TRANS_TAC LTE_TRANS
           `2 EXP (64 * l MOD 2 EXP (b + 1)) * 2 EXP (64 * (p + 1))` THEN
          ASM_REWRITE_TAC[LT_MULT_LCANCEL; EXP_EQ_0; ARITH_EQ; GSYM EXP_ADD;
                          LE_EXP] THEN
          MP_TAC(SPECL [`l:num`; `2 EXP (b + 1)`] MOD_LE) THEN ASM_ARITH_TAC;
          UNDISCH_THEN `(if c then 2 EXP (64 * h) * m else m) = r`
           (SUBST1_TAC o SYM) THEN
          COND_CASES_TAC THEN REWRITE_TAC[LE_REFL] THEN
          MP_TAC(SPECL [`1`; `2 EXP (64 * h)`; `m:num`; `m:num`] LE_MULT2) THEN
          REWRITE_TAC[MULT_CLAUSES; LE_REFL; LE_1; EXP_EQ_0; ARITH_EQ] THEN
          REWRITE_TAC[ARITH_RULE `1 <= n <=> ~(n = 0)`; EXP_EQ_0; ARITH_EQ]];
        ALL_TAC] THEN
      UNDISCH_THEN `2 EXP (64 * l MOD 2 EXP (b + 1)) * n = r` SUBST1_TAC THEN
      SUBGOAL_THEN `val(word_and (word l) (word h):int64) = 0 <=> ~c`
      ASSUME_TAC THENL
       [EXPAND_TAC "h" THEN EXPAND_TAC "c" THEN
        REWRITE_TAC[VAL_WORD_AND_POW2; BIT_WORD; DIMINDEX_64] THEN
        ASM_REWRITE_TAC[MULT_EQ_0; EXP_EQ_0; ARITH_EQ; BITVAL_EQ_0];
        ALL_TAC] THEN

      ENSURES_SEQUENCE_TAC `pc + 0x64`
       `\s. read RDI s = word k /\
            read RSI s = z /\
            read RAX s = word l /\
            read R8 s = word h /\
            read R9 s = word h /\
            read R10 s = word 0 /\
            bignum_from_memory(z,h) s = lowdigits m h /\
            bignum_from_memory(word_add z (word(8 * h)),k - h) s =
            highdigits r h` THEN
      CONJ_TAC THENL
       [(*** The "shiftloop" moving digits up by h places if c ***)

        ENSURES_WHILE_PDOWN_TAC `k - h` `pc + 0x46` `pc + 0x62`
         `\i s. (read RDI s = word k /\
                 read RSI s = z /\
                 read RAX s = word l /\
                 read R8 s = word h /\
                 read R10 s = word i /\
                 read R9 s = word(h + i) /\
                 bignum_from_memory(z,h + i) s = lowdigits m (h + i) /\
                 bignum_from_memory(word_add z (word(8 * (h + i))),k - (h + i))
                 s = highdigits r (h + i)) /\
                (read ZF s <=> i = 0)` THEN
        ASM_REWRITE_TAC[] THEN REPEAT CONJ_TAC THENL
         [ASM_ARITH_TAC;

          SUBGOAL_THEN `h + (k - h) = k` SUBST1_TAC THENL
           [UNDISCH_TAC `h < k` THEN ARITH_TAC; ALL_TAC] THEN
          SUBGOAL_THEN `word_sub (word k) (word h):int64 = word(k - h)`
          ASSUME_TAC THENL
           [ASM_SIMP_TAC[WORD_SUB; LT_IMP_LE]; ALL_TAC] THEN
          SUBGOAL_THEN `lowdigits m k = m /\ highdigits r k = 0`
           (fun th -> REWRITE_TAC[th]) THENL
           [CONJ_TAC THENL
             [MATCH_MP_TAC LOWDIGITS_SELF THEN TRANS_TAC LET_TRANS `r:num` THEN
              ASM_REWRITE_TAC[];
              MATCH_MP_TAC HIGHDIGITS_ZERO THEN ASM_REWRITE_TAC[]];
            ALL_TAC] THEN
          REWRITE_TAC[SUB_REFL; BIGNUM_FROM_MEMORY_TRIVIAL] THEN
          X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--3);

          X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
          REWRITE_TAC[ADD_ASSOC] THEN
          SUBGOAL_THEN `h + i < k` ASSUME_TAC THENL
           [UNDISCH_TAC `i < k - h` THEN ARITH_TAC; ALL_TAC] THEN
          SUBGOAL_THEN
           `word(8 * val(word(i + 1):int64) + 18446744073709551608):int64 =
            word(8 * i) /\
            word(8 * val(word((h + i) + 1):int64) + 18446744073709551608):int64 =
            word(8 * (h + i))`
          STRIP_ASSUME_TAC THENL
           [REWRITE_TAC[WORD_ADD] THEN
            REWRITE_TAC[SYM(WORD_REDUCE_CONV `word_neg(word 8):int64`)] THEN
            CONV_TAC WORD_RULE;
            ALL_TAC] THEN
          REWRITE_TAC[BIGNUM_FROM_MEMORY_EQ_LOWDIGITS] THEN
          REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
          ENSURES_INIT_TAC "s0" THEN
          SUBGOAL_THEN
           `read(memory :> bytes64(word_add z (word(8 * i)))) s0 =
            word(bigdigit m i)`
          ASSUME_TAC THENL
           [MP_TAC(ISPECL [`h + i:num`; `z:int64`; `s0:x86state`; `i:num`]
               BIGDIGIT_BIGNUM_FROM_MEMORY) THEN
            ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
            ASM_REWRITE_TAC[BIGDIGIT_LOWDIGITS;
                            ARITH_RULE `i < h + i <=> ~(h = 0)`] THEN
            DISCH_THEN SUBST1_TAC THEN REWRITE_TAC[WORD_VAL];
            ALL_TAC] THEN
          X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--7) THEN
          ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[] THEN
          REWRITE_TAC[NORMALIZE_WORD_SUB_ADD1] THEN ASM_REWRITE_TAC[] THEN
          REWRITE_TAC[GSYM BIGNUM_FROM_MEMORY_BYTES] THEN
          ONCE_REWRITE_TAC[BIGNUM_FROM_MEMORY_OFFSET_EQ_HIGHDIGITS] THEN
          ASM_REWRITE_TAC[ARITH_RULE `k - (h + i) = 0 <=> ~(h + i < k)`] THEN
          REWRITE_TAC[ARITH_RULE `k - (h + i) - 1 = k - ((h + i) + 1)`] THEN
          ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
          EXPAND_TAC "r" THEN COND_CASES_TAC THEN
          REWRITE_TAC[NORMALIZE_BIGDIGIT_MUL_POW2;
                      ARITH_RULE `~(h + i < h)`; ADD_SUB2];

          REPEAT STRIP_TAC THEN X86_SIM_TAC BIGNUM_NORMALIZE_EXEC [1];

          REWRITE_TAC[ADD_CLAUSES] THEN
          X86_SIM_TAC BIGNUM_NORMALIZE_EXEC [1]];

        (*** The "zeroloop" zeroing the bottom h digits if c ***)

        ENSURES_WHILE_PDOWN_TAC `h:num` `pc + 0x64` `pc + 0x78`
         `\i s. (read RDI s = word k /\
                 read RSI s = z /\
                 read RAX s = word l /\
                 read R8 s = word h /\
                 read R10 s = word 0 /\
                 read R9 s = word i /\
                 bignum_from_memory(z,i) s = lowdigits m i /\
                 bignum_from_memory(word_add z (word(8 * i)),k - i) s =
                 highdigits r i) /\
                (read ZF s <=> i = 0)` THEN
        ASM_REWRITE_TAC[] THEN REPEAT CONJ_TAC THENL
         [X86_SIM_TAC BIGNUM_NORMALIZE_EXEC [];

          X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
          SUBGOAL_THEN `i < k` ASSUME_TAC THENL
           [UNDISCH_TAC `i < h` THEN UNDISCH_TAC `h < k` THEN ARITH_TAC;
            ALL_TAC] THEN
          SUBGOAL_THEN
           `word(8 * val(word(i + 1):int64) + 18446744073709551608):int64 =
            word(8 * i)`
          ASSUME_TAC THENL
           [REWRITE_TAC[WORD_ADD] THEN
            REWRITE_TAC[SYM(WORD_REDUCE_CONV `word_neg(word 8):int64`)] THEN
            CONV_TAC WORD_RULE;
            ALL_TAC] THEN
          REWRITE_TAC[BIGNUM_FROM_MEMORY_EQ_LOWDIGITS] THEN
          REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
          ENSURES_INIT_TAC "s0" THEN
          X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--5) THEN
          ENSURES_FINAL_STATE_TAC THEN
          ASM_REWRITE_TAC[NORMALIZE_WORD_SUB_ADD1] THEN
          REWRITE_TAC[GSYM BIGNUM_FROM_MEMORY_BYTES] THEN
          ONCE_REWRITE_TAC[BIGNUM_FROM_MEMORY_OFFSET_EQ_HIGHDIGITS] THEN
          ASM_REWRITE_TAC[ARITH_RULE `k - i = 0 <=> ~(i < k)`] THEN
          REWRITE_TAC[ARITH_RULE `k - i - 1 = k - (i + 1)`] THEN
          ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
          EXPAND_TAC "r" THEN COND_CASES_TAC THEN
          ASM_REWRITE_TAC[NORMALIZE_BIGDIGIT_MUL_POW2];

          REPEAT STRIP_TAC THEN X86_SIM_TAC BIGNUM_NORMALIZE_EXEC [1];

          REWRITE_TAC[MULT_CLAUSES; WORD_ADD_0; SUB_0; HIGHDIGITS_0] THEN
          SUBGOAL_THEN `word(2 EXP (b + 1)):int64 = word_add (word h) (word h)`
          SUBST1_TAC THENL
           [EXPAND_TAC "h" THEN REWRITE_TAC[GSYM WORD_ADD; EXP_ADD] THEN
            AP_TERM_TAC THEN ARITH_TAC;
            ALL_TAC] THEN
          X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--2)]];

      (*** The outer loop-back ***)

      X_GEN_TAC `b:num` THEN STRIP_TAC THEN
      SUBGOAL_THEN `2 EXP b < k` ASSUME_TAC THENL
       [UNDISCH_TAC `b < bitsize(k - 1)` THEN
        REWRITE_TAC[GSYM NOT_LE; BITSIZE_LE] THEN UNDISCH_TAC `~(k = 0)` THEN
        ARITH_TAC;
        ALL_TAC] THEN
      SUBGOAL_THEN `val(word(2 EXP b):int64) = 2 EXP b` ASSUME_TAC THENL
       [MATCH_MP_TAC VAL_WORD_EQ THEN REWRITE_TAC[DIMINDEX_64] THEN
        TRANS_TAC LT_TRANS `k:num` THEN ASM_REWRITE_TAC[];
        ALL_TAC] THEN
      X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--2);

      (*** The outer loop exit and reload of the top digit ***)

      ASM_SIMP_TAC[MOD_LT] THEN
      SUBGOAL_THEN `k <= 2 EXP bitsize(k - 1) /\ 2 EXP bitsize(k - 1) < 2 EXP 64`
      STRIP_ASSUME_TAC THENL
       [MP_TAC(SPECL [`k - 1`; `bitsize(k - 1)`] BITSIZE_LE) THEN
        REWRITE_TAC[LE_REFL] THEN DISCH_TAC THEN
        MP_TAC(SPEC `k - 1` BITSIZE_REV) THEN
        ANTS_TAC THENL [UNDISCH_TAC `~(k = 0)` THEN UNDISCH_TAC `~(k = 1)` THEN
                        ARITH_TAC; DISCH_TAC] THEN
        CONJ_TAC THENL
         [UNDISCH_TAC `k - 1 < 2 EXP bitsize (k - 1)` THEN ARITH_TAC;
          ALL_TAC] THEN
        SUBGOAL_THEN `2 EXP bitsize(k - 1) = 2 * 2 EXP (bitsize(k - 1) - 1)`
        SUBST1_TAC THENL
         [REWRITE_TAC[GSYM(CONJUNCT2 EXP)] THEN AP_TERM_TAC THEN
          UNDISCH_TAC `~(bitsize (k - 1) = 0)` THEN ARITH_TAC;
          ALL_TAC] THEN
        MAP_EVERY UNDISCH_TAC
         [`192 + 8 * k <= 2 EXP 64`; `2 EXP (bitsize (k - 1) - 1) <= k - 1`] THEN
        ARITH_TAC;
        ALL_TAC] THEN
      SUBGOAL_THEN
       `val(word(2 EXP bitsize(k - 1)):int64) = 2 EXP bitsize(k - 1)`
      ASSUME_TAC THENL
       [MATCH_MP_TAC VAL_WORD_EQ THEN ASM_REWRITE_TAC[DIMINDEX_64]; ALL_TAC] THEN
      SUBGOAL_THEN
       `word(8 * k + 18446744073709551608):int64 = word(8 * (k - 1)) /\
        word(8 * val(word k:int64) + 18446744073709551608):int64 =
        word(8 * (k - 1))`
      STRIP_ASSUME_TAC THENL
       [ASM_REWRITE_TAC[] THEN
        SUBGOAL_THEN `k = (k - 1) + 1` (fun th ->
          GEN_REWRITE_TAC (LAND_CONV o RAND_CONV o LAND_CONV o RAND_CONV) [th])
        THENL [UNDISCH_TAC `~(k = 0)` THEN ARITH_TAC;
               REWRITE_TAC[WORD_INDEX_WRAP]];
        ALL_TAC] THEN
      SUBGOAL_THEN `val(word l:int64) = l` ASSUME_TAC THENL
       [MATCH_MP_TAC VAL_WORD_EQ THEN REWRITE_TAC[DIMINDEX_64] THEN
        TRANS_TAC LT_TRANS `k:num` THEN ASM_REWRITE_TAC[] THEN
        UNDISCH_TAC `l + p + 1 = k` THEN ARITH_TAC;
        ALL_TAC] THEN
      SUBGOAL_THEN `~(2 EXP bitsize(k - 1) < k)` ASSUME_TAC THENL
       [ASM_REWRITE_TAC[NOT_LT]; ALL_TAC] THEN
      REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN ENSURES_INIT_TAC "s0" THEN
      MP_TAC(ISPECL [`k:num`; `z:int64`; `s0:x86state`; `k - 1`]
         BIGDIGIT_BIGNUM_FROM_MEMORY) THEN
      ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
      ASM_REWRITE_TAC[ARITH_RULE `k - 1 < k <=> ~(k = 0)`] THEN
      DISCH_THEN(MP_TAC o SYM) THEN
      GEN_REWRITE_TAC LAND_CONV [VAL_WORD_GALOIS] THEN
      REWRITE_TAC[DIMINDEX_64] THEN STRIP_TAC THEN
      X86_STEPS_TAC BIGNUM_NORMALIZE_EXEC (1--3) THEN
      ENSURES_FINAL_STATE_TAC THEN ASM_REWRITE_TAC[] THEN
      REPEAT CONJ_TAC THENL
       [UNDISCH_TAC `l + p + 1 = k` THEN ARITH_TAC;
        DISCH_TAC THEN UNDISCH_TAC `n = 0 ==> p = 0` THEN ASM_REWRITE_TAC[] THEN
        UNDISCH_TAC `l + p + 1 = k` THEN ARITH_TAC;
        DISCH_TAC THEN
        SUBGOAL_THEN `k - 1 = l + p` SUBST1_TAC THENL
         [UNDISCH_TAC `l + p + 1 = k` THEN ARITH_TAC; ALL_TAC] THEN
        REWRITE_TAC[LEFT_ADD_DISTRIB; EXP_ADD; LE_MULT_LCANCEL] THEN
        ASM_SIMP_TAC[]]];
    ALL_TAC] THEN

  (*** Ghost things up again ***)

  GHOST_INTRO_TAC `m:num` `bignum_from_memory (z,k)` THEN
  BIGNUM_TERMRANGE_TAC `k:num` `m:num` THEN
  GHOST_INTRO_TAC `d:num` `\s. val(read RAX s)` THEN
  GEN_REWRITE_TAC (RATOR_CONV o LAND_CONV o ONCE_DEPTH_CONV)
   [VAL_WORD_GALOIS] THEN
  REWRITE_TAC[DIMINDEX_64] THEN GLOBALIZE_PRECONDITION_TAC THEN
  UNDISCH_THEN `m = 2 EXP (64 * d) * n` (ASSUME_TAC o SYM) THEN

  (*** The "bitloop" loop ***)

  ABBREV_TAC `c = 64 - bitsize(bigdigit m (k - 1))` THEN

  ENSURES_WHILE_UP_TAC `k:num` `pc + 0xa5` `pc + 0xba`
   `\i s. read RDI s = word k /\
          read RSI s = z /\
          read RAX s = word(64 * d + c) /\
          read R8 s = word i /\
          read RCX s = word c /\
          bignum_from_memory(word_add z (word (8 * i)),k - i) s =
          highdigits m i /\
          2 EXP (64 * i) * val(read R9 s) DIV 2 EXP (64 - c MOD 64) +
          bignum_from_memory(z,i) s =
          2 EXP (c MOD 64) * lowdigits m i` THEN
  ASM_REWRITE_TAC[] THEN REPEAT CONJ_TAC THENL
   [X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--8) THEN
    SIMP_TAC[GSYM BIGNUM_FROM_MEMORY_BYTES; BIGNUM_FROM_MEMORY_TRIVIAL] THEN
    REWRITE_TAC[LOWDIGITS_0; DIV_0; VAL_WORD_0; MULT_CLAUSES; ADD_CLAUSES;
                WORD_ADD_0; HIGHDIGITS_0; SUB_0] THEN
    ASM_REWRITE_TAC[BIGNUM_FROM_MEMORY_BYTES] THEN
    MATCH_MP_TAC(TAUT `(q ==> p) /\ q ==> p /\ q`) THEN CONJ_TAC THENL
     [DISCH_THEN SUBST1_TAC THEN CONV_TAC WORD_RULE; ALL_TAC] THEN
    SIMP_TAC[GSYM VAL_EQ_0; VAL_WORD_EQ; DIMINDEX_64; BIGDIGIT_BOUND] THEN
    EXPAND_TAC "c" THEN POP_ASSUM_LIST(K ALL_TAC) THEN
    COND_CASES_TAC THEN ASM_REWRITE_TAC[BITSIZE_0; SUB_0] THEN
    CONV_TAC WORD_REDUCE_CONV THEN ONCE_REWRITE_TAC[WORD_XOR_SYM] THEN
    SUBST1_TAC(ARITH_RULE `63 = 2 EXP 6 - 1`) THEN
    W(MP_TAC o PART_MATCH (rand o rand) WORD_SUB_MASK_WORD o lhand o snd) THEN
    ANTS_TAC THENL
     [MATCH_MP_TAC VAL_WORD_LT THEN ARITH_TAC;
      DISCH_THEN(SUBST1_TAC o SYM)] THEN
    CONV_TAC NUM_REDUCE_CONV THEN REWRITE_TAC[WORD_SUB] THEN
    REWRITE_TAC[BITSIZE_LE; BIGDIGIT_BOUND] THEN
    MP_TAC(ISPEC `word (bigdigit m (k - 1)):int64` WORD_CLZ_LT_DIMINDEX) THEN
    ASM_SIMP_TAC[WORD_EQ_0; DIMINDEX_64; BIGDIGIT_BOUND] THEN
    SIMP_TAC[ARITH_RULE `i <= 63 <=> i < 64`] THEN DISCH_THEN(K ALL_TAC) THEN
    SIMP_TAC[WORD_CLZ_BITSIZE; WORD_SUB; DIMINDEX_64; BITSIZE_LE; VAL_WORD_LT;
             BIGDIGIT_BOUND; VAL_WORD_EQ] THEN
    CONV_TAC WORD_RULE;

    X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
    GHOST_INTRO_TAC `b:int64` `read R9` THEN
    GEN_REWRITE_TAC (RATOR_CONV o LAND_CONV o ONCE_DEPTH_CONV)
     [BIGNUM_FROM_MEMORY_OFFSET_EQ_HIGHDIGITS] THEN
    ASM_REWRITE_TAC[ARITH_RULE `k - i = 0 <=> ~(i < k)`] THEN
    REWRITE_TAC[ARITH_RULE `k - i - 1 = k - (i + 1)`] THEN
    REWRITE_TAC[BIGNUM_FROM_MEMORY_STEP] THEN
    X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--6) THEN
    SIMP_TAC[VAL_WORD_SUBWORD_JOIN_64; DIMINDEX_64; GSYM WORD_ADD;
             ARITH_RULE `64 - k <= 64`] THEN
    SIMP_TAC[VAL_WORD_EQ; BIGDIGIT_BOUND; DIMINDEX_64] THEN
    REWRITE_TAC[MOD_64_CLAUSES; LOWDIGITS_CLAUSES] THEN
    REWRITE_TAC[EXP_ADD; ARITH_RULE `64 * (i + 1) = 64 * i + 64`] THEN
    FIRST_X_ASSUM(MATCH_MP_TAC o MATCH_MP (NUM_RING
     `ee * b + m:num = c * l
      ==> e * d + y = c * z + b
          ==> (ee * e) * d + m + ee * y = c * (ee * z + l)`)) THEN
    REWRITE_TAC[ADD_ASSOC; EQ_ADD_RCANCEL] THEN
    REWRITE_TAC[ARITH_RULE `64 - (64 - x MOD 64) = x MOD 64`] THEN
    SUBGOAL_THEN `2 EXP 64 = 2 EXP (c MOD 64) * 2 EXP (64 - c MOD 64)`
    SUBST1_TAC THENL
     [REWRITE_TAC[GSYM EXP_ADD] THEN AP_TERM_TAC THEN ARITH_TAC;
      REWRITE_TAC[GSYM LEFT_ADD_DISTRIB; GSYM MULT_ASSOC]] THEN
    REWRITE_TAC[DIVISION_SIMP];

    X_GEN_TAC `i:num` THEN STRIP_TAC THEN VAL_INT64_TAC `i:num` THEN
    X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--2);

    GHOST_INTRO_TAC `b:int64` `read R9` THEN
    ASM_SIMP_TAC[LOWDIGITS_SELF] THEN
    X86_SIM_TAC BIGNUM_NORMALIZE_EXEC (1--2)] THEN

  FIRST_X_ASSUM(MP_TAC o MATCH_MP (ARITH_RULE
   `e * b + z = cn
    ==> (e * b < e * 1 ==> e * b = 0)
        ==> cn < e ==> z = cn`)) THEN
  ANTS_TAC THENL
   [SIMP_TAC[LT_MULT_LCANCEL; EXP_EQ_0; ARITH_EQ; MULT_EQ_0] THEN ARITH_TAC;
    ALL_TAC] THEN
  ASM_CASES_TAC `n = 0` THENL
   [UNDISCH_TAC `n = 0 ==> d = k - 1` THEN
    UNDISCH_TAC `2 EXP (64 * d) * n = m` THEN
    ASM_REWRITE_TAC[MULT_CLAUSES] THEN
    DISCH_THEN(SUBST_ALL_TAC o SYM) THEN DISCH_THEN SUBST1_TAC THEN
    REWRITE_TAC[MULT_CLAUSES; EXP_LT_0; ARITH_EQ] THEN
    DISCH_THEN(fun th -> REWRITE_TAC[th]) THEN EXPAND_TAC "c" THEN
    AP_TERM_TAC THEN REWRITE_TAC[BIGDIGIT_0; BITSIZE_0] THEN
    UNDISCH_TAC `~(k = 0)` THEN ARITH_TAC;
    UNDISCH_THEN `n = 0 ==> d = k - 1` (K ALL_TAC) THEN
    UNDISCH_TAC `~(n = 0) ==> 2 EXP (64 * (k - 1)) <= m` THEN
    ASM_REWRITE_TAC[] THEN DISCH_TAC] THEN
  ANTS_TAC THENL
   [SUBGOAL_THEN `64 * k = c MOD 64 + (64 * k - c MOD 64)` SUBST1_TAC THENL
     [UNDISCH_TAC `~(k = 0)` THEN ARITH_TAC;
      REWRITE_TAC[EXP_ADD; LT_MULT_LCANCEL; ARITH_EQ; EXP_EQ_0]] THEN
    REWRITE_TAC[GSYM BITSIZE_LE] THEN
    SUBGOAL_THEN
     `m = 2 EXP (64 * (k - 1)) * highdigits m (k - 1) + lowdigits m (k - 1)`
    SUBST1_TAC THENL [REWRITE_TAC[HIGH_LOW_DIGITS]; ALL_TAC] THEN
    ASM_SIMP_TAC[HIGHDIGITS_TOP] THEN
    UNDISCH_THEN `64 - bitsize (bigdigit m (k - 1)) = c`
     (SUBST1_TAC o SYM) THEN
    ASM_CASES_TAC `bigdigit m (k - 1) = 0` THENL
     [ASM_REWRITE_TAC[BITSIZE_0; MULT_CLAUSES; ADD_CLAUSES] THEN
      CONV_TAC NUM_REDUCE_CONV THEN REWRITE_TAC[BITSIZE_LE; SUB_0] THEN
      TRANS_TAC LTE_TRANS `2 EXP (64 * (k - 1))` THEN
      ASM_REWRITE_TAC[LOWDIGITS_BOUND; LE_EXP; ARITH_EQ] THEN ARITH_TAC;
      ASM_SIMP_TAC[BITSIZE_MULT_ADD; LOWDIGITS_BOUND]] THEN
    MATCH_MP_TAC(ARITH_RULE `a + c <= b ==> a <= b - c MOD 64`) THEN
    MATCH_MP_TAC(ARITH_RULE
     `~(k = 0) /\ b <= 64 ==> (64 * (k - 1) + b) + (64 - b) <= 64 * k`) THEN
    ASM_REWRITE_TAC[BITSIZE_LE; BIGDIGIT_BOUND];
    DISCH_THEN SUBST1_TAC] THEN
  SUBGOAL_THEN `c MOD 64 = c` SUBST1_TAC THENL
   [MATCH_MP_TAC MOD_LT THEN EXPAND_TAC "c" THEN
    REWRITE_TAC[ARITH_RULE `64 - n < 64 <=> ~(n = 0)`] THEN
    ASM_SIMP_TAC[BITSIZE_EQ_0; GSYM HIGHDIGITS_TOP] THEN
    ASM_REWRITE_TAC[HIGHDIGITS_EQ_0; NOT_LT];
    ALL_TAC] THEN
  SUBST1_TAC(SYM(ASSUME `2 EXP (64 * d) * n = m`)) THEN
  REWRITE_TAC[ONCE_REWRITE_RULE[ADD_SYM] (GSYM EXP_ADD); MULT_ASSOC] THEN
  SUBGOAL_THEN `64 * k - bitsize n = 64 * d + c`
    (fun th -> REWRITE_TAC[th]) THEN
  EXPAND_TAC "c" THEN MATCH_MP_TAC(ARITH_RULE
   `b <= 64 * k /\ c <= 64 /\ 64 * k + c = 64 * (d + 1) + b
    ==> 64 * k - b = 64 * d + 64 - c`) THEN
  ASM_REWRITE_TAC[BITSIZE_LE; BIGDIGIT_BOUND] THEN
  ASM_SIMP_TAC[GSYM HIGHDIGITS_TOP; highdigits; BITSIZE_DIV] THEN
  MATCH_MP_TAC(ARITH_RULE `c:num <= b /\ a + b = c + d ==> a + b - c = d`) THEN
  CONJ_TAC THENL
   [REWRITE_TAC[LE_BITSIZE] THEN DISCH_THEN(K ALL_TAC) THEN
    TRANS_TAC LE_TRANS `2 EXP (64 * (k - 1))` THEN
    ASM_REWRITE_TAC[LE_EXP] THEN ARITH_TAC;
    SUBST1_TAC(SYM(ASSUME `2 EXP (64 * d) * n = m`))] THEN
  REWRITE_TAC[BITSIZE_MULT] THEN ASM_REWRITE_TAC[] THEN
  UNDISCH_TAC `~(k = 0)` THEN ARITH_TAC);;

let BIGNUM_NORMALIZE_NOIBT_SUBROUTINE_CORRECT = time prove
 (`!k z n pc stackpointer returnaddress.
        nonoverlapping (word pc,LENGTH bignum_normalize_tmc) (z,8 * val k) /\
        nonoverlapping (stackpointer,8) (z,8 * val k)
        ==> ensures x86
             (\s. bytes_loaded s (word pc) bignum_normalize_tmc /\
                  read RIP s = word pc /\
                  read RSP s = stackpointer /\
                  read (memory :> bytes64 stackpointer) s = returnaddress /\
                  C_ARGUMENTS [k; z] s /\
                  bignum_from_memory (z,val k) s = n)
             (\s. read RIP s = returnaddress /\
                  read RSP s = word_add stackpointer (word 8) /\
                  bignum_from_memory (z,val k) s =
                  2 EXP (64 * val k - bitsize n) * n /\
                  C_RETURN s = word(64 * val k - bitsize n))
             (MAYCHANGE [RSP] ,, MAYCHANGE_REGS_AND_FLAGS_PERMITTED_BY_ABI ,,
              MAYCHANGE [memory :> bytes(z,8 * val k)])`,
  X86_PROMOTE_RETURN_NOSTACK_TAC bignum_normalize_tmc BIGNUM_NORMALIZE_CORRECT);;

let BIGNUM_NORMALIZE_SUBROUTINE_CORRECT = time prove
 (`!k z n pc stackpointer returnaddress.
        nonoverlapping (word pc,LENGTH bignum_normalize_mc) (z,8 * val k) /\
        nonoverlapping (stackpointer,8) (z,8 * val k)
        ==> ensures x86
             (\s. bytes_loaded s (word pc) bignum_normalize_mc /\
                  read RIP s = word pc /\
                  read RSP s = stackpointer /\
                  read (memory :> bytes64 stackpointer) s = returnaddress /\
                  C_ARGUMENTS [k; z] s /\
                  bignum_from_memory (z,val k) s = n)
             (\s. read RIP s = returnaddress /\
                  read RSP s = word_add stackpointer (word 8) /\
                  bignum_from_memory (z,val k) s =
                  2 EXP (64 * val k - bitsize n) * n /\
                  C_RETURN s = word(64 * val k - bitsize n))
             (MAYCHANGE [RSP] ,, MAYCHANGE_REGS_AND_FLAGS_PERMITTED_BY_ABI ,,
              MAYCHANGE [memory :> bytes(z,8 * val k)])`,
  MATCH_ACCEPT_TAC(ADD_IBT_RULE BIGNUM_NORMALIZE_NOIBT_SUBROUTINE_CORRECT));;

(* ------------------------------------------------------------------------- *)
(* Correctness of Windows ABI version.                                       *)
(* ------------------------------------------------------------------------- *)

let bignum_normalize_windows_mc = define_from_elf
   "bignum_normalize_windows_mc" "x86/generic/bignum_normalize.obj";;

let bignum_normalize_windows_tmc = define_trimmed "bignum_normalize_windows_tmc" bignum_normalize_windows_mc;;

let BIGNUM_NORMALIZE_NOIBT_WINDOWS_SUBROUTINE_CORRECT = time prove
 (`!k z n pc stackpointer returnaddress.
        nonoverlapping (word pc,LENGTH bignum_normalize_windows_tmc) (z,8 * val k) /\
        ALL (nonoverlapping (word_sub stackpointer (word 16),24))
            [(word pc,LENGTH bignum_normalize_windows_tmc);  (z,8 * val k)]
        ==> ensures x86
             (\s. bytes_loaded s (word pc) bignum_normalize_windows_tmc /\
                  read RIP s = word pc /\
                  read RSP s = stackpointer /\
                  read (memory :> bytes64 stackpointer) s = returnaddress /\
                  WINDOWS_C_ARGUMENTS [k; z] s /\
                  bignum_from_memory (z,val k) s = n)
             (\s. read RIP s = returnaddress /\
                  read RSP s = word_add stackpointer (word 8) /\
                  bignum_from_memory (z,val k) s =
                  2 EXP (64 * val k - bitsize n) * n /\
                  WINDOWS_C_RETURN s = word(64 * val k - bitsize n))
             (MAYCHANGE [RSP] ,, WINDOWS_MAYCHANGE_REGS_AND_FLAGS_PERMITTED_BY_ABI ,,
              MAYCHANGE [memory :> bytes(z,8 * val k);
                         memory :> bytes(word_sub stackpointer (word 16),16)])`,
  WINDOWS_X86_WRAP_NOSTACK_TAC bignum_normalize_windows_tmc
    bignum_normalize_tmc BIGNUM_NORMALIZE_CORRECT);;

let BIGNUM_NORMALIZE_WINDOWS_SUBROUTINE_CORRECT = time prove
 (`!k z n pc stackpointer returnaddress.
        nonoverlapping (word pc,LENGTH bignum_normalize_windows_mc) (z,8 * val k) /\
        ALL (nonoverlapping (word_sub stackpointer (word 16),24))
            [(word pc,LENGTH bignum_normalize_windows_mc);  (z,8 * val k)]
        ==> ensures x86
             (\s. bytes_loaded s (word pc) bignum_normalize_windows_mc /\
                  read RIP s = word pc /\
                  read RSP s = stackpointer /\
                  read (memory :> bytes64 stackpointer) s = returnaddress /\
                  WINDOWS_C_ARGUMENTS [k; z] s /\
                  bignum_from_memory (z,val k) s = n)
             (\s. read RIP s = returnaddress /\
                  read RSP s = word_add stackpointer (word 8) /\
                  bignum_from_memory (z,val k) s =
                  2 EXP (64 * val k - bitsize n) * n /\
                  WINDOWS_C_RETURN s = word(64 * val k - bitsize n))
             (MAYCHANGE [RSP] ,, WINDOWS_MAYCHANGE_REGS_AND_FLAGS_PERMITTED_BY_ABI ,,
              MAYCHANGE [memory :> bytes(z,8 * val k);
                         memory :> bytes(word_sub stackpointer (word 16),16)])`,
  MATCH_ACCEPT_TAC(ADD_IBT_RULE BIGNUM_NORMALIZE_NOIBT_WINDOWS_SUBROUTINE_CORRECT));;

