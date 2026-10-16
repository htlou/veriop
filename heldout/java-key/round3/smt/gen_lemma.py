#!/usr/bin/env python3
"""SMT-LIB (QF_BV) encoding of the in-word select lemma:
   for all w:long, j:int with 0 <= j < Long.bitCount(w):
       BitmapContainer.selectInWord(w, j) == Util.select(w, j)
Both functions are transcribed statement by statement from the Java sources (Java int = bv32,
long = bv64, two's complement, >>> = bvlshr, >> = bvashr, casts = extract / sign_extend).
The negation is asserted; `unsat` proves the lemma for all 2^96 inputs."""
L = []
def d(name, sort, expr):
    L.append(f"(define-fun {name} () {sort} {expr})")
def bc32(x):   # Integer.bitCount(int)
    return "(bvadd " + " ".join(f"((_ zero_extend 31) ((_ extract {i} {i}) {x}))" for i in range(32)) + ")"
def bc64(x):   # Long.bitCount(long), result as int
    return "(bvadd " + " ".join(f"((_ zero_extend 31) ((_ extract {i} {i}) {x}))" for i in range(64)) + ")"
I = lambda v: f"(_ bv{v % (1<<32)} 32)"
LG = lambda v: f"(_ bv{v % (1<<64)} 64)"
L.append("(set-logic QF_BV)")
L.append("(declare-const w (_ BitVec 64))")
L.append("(declare-const j (_ BitVec 32))")
d("pc", "(_ BitVec 32)", bc64("w"))
L.append(f"(assert (bvsge j {I(0)}))")
L.append("(assert (bvslt j pc))")
# ---- Util.select(long w, int j) ----
d("u_part0", "(_ BitVec 32)", "((_ extract 31 0) w)")
d("u_n0", "(_ BitVec 32)", bc32("u_part0"))
d("u_c0", "Bool", "(bvsle u_n0 j)")
d("u_part1", "(_ BitVec 32)", "(ite u_c0 ((_ extract 31 0) (bvlshr w (_ bv32 64))) u_part0)")
d("u_seen1", "(_ BitVec 32)", f"(ite u_c0 {I(32)} {I(0)})")
d("u_j1", "(_ BitVec 32)", "(ite u_c0 (bvsub j u_n0) j)")
d("u_ww1", "(_ BitVec 32)", "u_part1")
d("u_p2", "(_ BitVec 32)", f"(bvand u_ww1 {I(0xFFFF)})")
d("u_n2", "(_ BitVec 32)", bc32("u_p2"))
d("u_c2", "Bool", "(bvsle u_n2 u_j1)")
d("u_part2", "(_ BitVec 32)", f"(ite u_c2 (bvlshr u_ww1 {I(16)}) u_p2)")
d("u_seen2", "(_ BitVec 32)", f"(ite u_c2 (bvadd u_seen1 {I(16)}) u_seen1)")
d("u_j2", "(_ BitVec 32)", "(ite u_c2 (bvsub u_j1 u_n2) u_j1)")
d("u_ww2", "(_ BitVec 32)", "u_part2")
d("u_p3", "(_ BitVec 32)", f"(bvand u_ww2 {I(0xFF)})")
d("u_n3", "(_ BitVec 32)", bc32("u_p3"))
d("u_c3", "Bool", "(bvsle u_n3 u_j2)")
d("u_part3", "(_ BitVec 32)", f"(ite u_c3 (bvlshr u_ww2 {I(8)}) u_p3)")
d("u_seen3", "(_ BitVec 32)", f"(ite u_c3 (bvadd u_seen2 {I(8)}) u_seen2)")
d("u_j3", "(_ BitVec 32)", "(ite u_c3 (bvsub u_j2 u_n3) u_j2)")
d("u_ww", "(_ BitVec 32)", "u_part3")
# final loop: for (counter = 0; counter < 8; counter++) { j -= (ww >>> counter) & 1; if (j < 0) break; }
prev_j = "u_j3"
for c in range(8):
    d(f"u_jl{c}", "(_ BitVec 32)", f"(bvsub {prev_j} (bvand (bvlshr u_ww {I(c)}) {I(1)}))")
    prev_j = f"u_jl{c}"
cnt = I(8)
for c in reversed(range(8)):
    # counter = first c whose post-decrement j is negative; earlier iterations did not break
    cnt = f"(ite (bvslt u_jl{c} {I(0)}) {I(c)} {cnt})"
# the break structure: counter = smallest c with u_jl{c} < 0 (the nested ite picks the smallest)
d("u_res", "(_ BitVec 32)", f"(bvadd u_seen3 {cnt})")
# ---- BitmapContainer.selectInWord(long w, int j) ----
d("ntz", "(_ BitVec 32)", " ".join([""]) or "x")
L.pop()
ntz = I(64)
for i in reversed(range(64)):
    ntz = f"(ite (= ((_ extract {i} {i}) w) #b1) {I(i)} {ntz})"
d("s_ntz", "(_ BitVec 32)", ntz)
x, seen, jj = "w", I(0), "j"
steps = [(32, None), (16, 0xFFFF), (8, 0xFF), (4, 0xF), (2, 0x3)]
for idx, (sz, mask) in enumerate(steps):
    lo = f"((_ extract 31 0) {x})"
    arg = lo if mask is None else f"(bvand {lo} {I(mask)})"
    d(f"s_n{idx}", "(_ BitVec 32)", bc32(arg))
    d(f"s_m{idx}", "(_ BitVec 32)", f"(bvashr (bvsub (bvsub s_n{idx} {jj}) {I(1)}) {I(31)})")
    d(f"s_s{idx}", "(_ BitVec 32)", f"(bvand s_m{idx} {I(sz)})")
    # x >>>= s  (long shift by int s; Java masks the count with 63)
    d(f"s_x{idx}", "(_ BitVec 64)", f"(bvlshr {x} ((_ zero_extend 32) (bvand s_s{idx} {I(63)})))")
    d(f"s_seen{idx}", "(_ BitVec 32)", f"(bvadd {seen} s_s{idx})")
    d(f"s_j{idx}", "(_ BitVec 32)", f"(bvsub {jj} (bvand s_n{idx} s_m{idx}))")
    x, seen, jj = f"s_x{idx}", f"s_seen{idx}", f"s_j{idx}"
d("s_mlast", "(_ BitVec 32)", f"(bvashr (bvsub (bvsub (bvand ((_ extract 31 0) {x}) {I(1)}) {jj}) {I(1)}) {I(31)})")
d("s_res", "(_ BitVec 32)", f"(ite (= j {I(0)}) s_ntz (bvadd {seen} (bvand s_mlast {I(1)})))")
L.append("(assert (not (= s_res u_res)))")
L.append("(check-sat)")
L.append("(exit)")
open("select_in_word_lemma.smt2", "w").write("\n".join(L) + "\n")
print("written")
