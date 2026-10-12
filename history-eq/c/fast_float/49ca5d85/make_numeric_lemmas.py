#!/usr/bin/env python3
"""Generate compositional BV checks for the exact eight-digit SWAR formula."""

from pathlib import Path

here = Path(__file__).resolve().parent


def concat(items: list[str]) -> str:
    out = items[-1]
    for x in reversed(items[:-1]):
        out = f"(concat {x} {out})"
    return out


def put(name: str, body: str, width: int) -> str:
    return f"(define-fun {name} () (_ BitVec {width}) {body})"


lines = ["(set-logic QF_BV)"]
for i in range(8):
    lines += [f"(declare-fun d{i} () (_ BitVec 8))", f"(assert (bvule d{i} #x09))"]
    lines += [put(f"b{i}", f"(bvadd d{i} #x30)", 8)]
lines += [
    put("val", concat([f"b{i}" for i in reversed(range(8))]), 64),
    put("digits_val", concat([f"d{i}" for i in reversed(range(8))]), 64),
    put("sub", "(bvsub val #x3030303030303030)", 64),
    "(push 1)",
    "(assert (not (= sub digits_val)))",
    "(check-sat)",
    "(pop 1)",
    put("mixed", "(bvadd (bvmul digits_val #x000000000000000a) (bvlshr digits_val #x0000000000000008))", 64),
]
for i in range(4):
    lines += [put(f"p{i}", f"(bvadd (bvmul d{2*i} #x0a) d{2*i+1})", 8)]
    lo = 16 * i
    hi = lo + 7
    lines += ["(push 1)", f"(assert (not (= ((_ extract {hi} {lo}) mixed) p{i})))", "(check-sat)", "(pop 1)"]

for i in range(4):
    lo = 16 * i
    hi = lo + 7
    lines += [f"(assert (= ((_ extract {hi} {lo}) mixed) p{i}))"]
lines += [
    put("pairs_a", "(bvor ((_ zero_extend 56) p0) (bvshl ((_ zero_extend 56) p2) #x0000000000000020))", 64),
    put("pairs_b", "(bvor ((_ zero_extend 56) p1) (bvshl ((_ zero_extend 56) p3) #x0000000000000020))", 64),
    "(push 1)",
    "(assert (not (= (bvand mixed #x000000ff000000ff) pairs_a)))",
    "(check-sat)",
    "(pop 1)",
    "(push 1)",
    "(assert (not (= (bvand (bvlshr mixed #x0000000000000010) #x000000ff000000ff) pairs_b)))",
    "(check-sat)",
    "(pop 1)",
]

(here / "numeric-bytes.smt2").write_text("\n".join(lines) + "\n")

for i in range(4):
    lines += [f"(declare-fun x{i} () (_ BitVec 8))", f"(assert (bvule x{i} #x63))"]
lines += [
    put("a", "(bvor ((_ zero_extend 56) x0) (bvshl ((_ zero_extend 56) x2) #x0000000000000020))", 64),
    put("b", "(bvor ((_ zero_extend 56) x1) (bvshl ((_ zero_extend 56) x3) #x0000000000000020))", 64),
    put("sum64", "(bvadd (bvmul a #x000f424000000064) (bvmul b #x0000271000000001))", 64),
    put("weighted", "(bvadd (bvmul ((_ zero_extend 24) x0) #x000f4240) (bvadd (bvmul ((_ zero_extend 24) x1) #x00002710) (bvadd (bvmul ((_ zero_extend 24) x2) #x00000064) ((_ zero_extend 24) x3))))", 32),
    "(push 1)",
    "(assert (not (= ((_ extract 63 32) sum64) weighted)))",
    "(check-sat)",
    "(pop 1)",
]

terms = [f"(bvmul ((_ zero_extend 24) d{i}) #x{10**(7-i):08x})" for i in range(8)]
scalar = terms[-1]
for term in reversed(terms[:-1]):
    scalar = f"(bvadd {term} {scalar})"
lines += [put("scalar", scalar, 32)]
for i in range(4):
    lines += [f"(assert (= x{i} p{i}))"]
lines += ["(push 1)", "(assert (not (= scalar weighted)))", "(check-sat)", "(pop 1)"]
full = "\n".join(lines) + "\n"
(here / "numeric-lemmas.smt2").write_text(full)
slow = "(push 1)\n(assert (not (= ((_ extract 63 32) sum64) weighted)))\n(check-sat)\n(pop 1)\n"
assert full.count(slow) == 1
(here / "numeric-lemmas-fast.smt2").write_text(full.replace(slow, ""))
print("Generated nine compositional obligations (seven byte/mask, two arithmetic)")
