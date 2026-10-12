#!/usr/bin/env python3
"""Prove the exact SWAR formula against eight scalar decimal digits."""

from pathlib import Path

here = Path(__file__).resolve().parent
lines = ["(set-logic QF_BV)"]
for i in range(8):
    lines += [f"(declare-fun d{i} () (_ BitVec 8))", f"(assert (bvule d{i} #x09))"]
    lines += [f"(define-fun b{i} () (_ BitVec 8) (bvadd d{i} #x30))"]


def concat(items: list[str]) -> str:
    out = items[-1]
    for item in reversed(items[:-1]):
        out = f"(concat {item} {out})"
    return out


lines.append(f"(define-fun val () (_ BitVec 64) {concat([f'b{i}' for i in reversed(range(8))])})")
lines += [
    "(define-fun sub () (_ BitVec 64) (bvsub val #x3030303030303030))",
    "(define-fun mixed () (_ BitVec 64) (bvadd (bvmul sub #x000000000000000a) (bvlshr sub #x0000000000000008)))",
    "(define-fun masked () (_ BitVec 64) (bvand mixed #x000000ff000000ff))",
    "(define-fun masked2 () (_ BitVec 64) (bvand (bvlshr mixed #x0000000000000010) #x000000ff000000ff))",
    "(define-fun swar () (_ BitVec 32) ((_ extract 31 0) (bvlshr (bvadd (bvmul masked #x000f424000000064) (bvmul masked2 #x0000271000000001)) #x0000000000000020)))",
]
terms = [f"(bvmul ((_ zero_extend 24) d{i}) #x{10 ** (7-i):08x})" for i in range(8)]
old = terms[-1]
for term in reversed(terms[:-1]):
    old = f"(bvadd {term} {old})"
lines += [f"(define-fun scalar () (_ BitVec 32) {old})", "(assert (not (= scalar swar)))", "(check-sat)"]
(here / "numeric.smt2").write_text("\n".join(lines) + "\n")
print("Generated exact eight-digit QF_BV identity query")
