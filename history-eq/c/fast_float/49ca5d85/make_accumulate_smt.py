#!/usr/bin/env python3
"""Check eight scalar steps against one 100000000-step for arbitrary i."""

from pathlib import Path

here = Path(__file__).resolve().parent
lines = ["(set-logic QF_BV)", "(declare-fun initial_i () (_ BitVec 64))"]
for j in range(8):
    lines += [f"(declare-fun d{j} () (_ BitVec 64))", f"(assert (bvule d{j} #x0000000000000009))"]
scalar = "initial_i"
for j in range(8):
    scalar = f"(bvadd (bvmul {scalar} #x000000000000000a) d{j})"
digit_terms = [f"(bvmul d{j} #x{10**(7-j):016x})" for j in range(8)]
digits = digit_terms[-1]
for term in reversed(digit_terms[:-1]):
    digits = f"(bvadd {term} {digits})"
lines += [
    f"(define-fun scalar () (_ BitVec 64) {scalar})",
    f"(define-fun fast () (_ BitVec 64) (bvadd (bvmul initial_i #x0000000005f5e100) {digits}))",
    "(assert (not (= scalar fast)))",
    "(check-sat)",
]
(here / "numeric-accumulate.smt2").write_text("\n".join(lines) + "\n")
print("Generated arbitrary-initial-mantissa QF_BV query")
