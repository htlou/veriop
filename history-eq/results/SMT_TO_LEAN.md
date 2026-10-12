# C UNKNOWN cases: SMT-to-Lean feasibility probe

As of 2026-10-07, **68 C performance commits remain UNKNOWN**: 20 in libdivide and 48 in xxHash. This probe did **not** reclassify any commit. It establishes one useful arithmetic lemma and identifies the missing end-to-end proof obligation.

## What the proposed tools actually provide

| Tool | Useful here | Limitation for these C cases |
|---|---|---|
| [Lean-SMT](https://github.com/ufmg-smite/lean-smt) | Sends a Lean goal to cvc5 and replays an UNSAT proof in Lean. | Bitvector support is experimental; replay may leave proof holes. It does not translate C or LLVM IR into Lean. Current `main` pins Lean 4.33.0. |
| [lean-crush](https://github.com/AD1024/lean-crush) | Can use Z3/cvc5 for BitVec goals, report a candidate model, and reconstruct or replay a checked proof. | A model can be spurious if the encoding is incomplete; checked reconstruction supports fewer cases than solver search. Avoid `reconstructOrTrust` for proof claims. Current `main` pins Lean 4.34.0. |
| [lean.py](https://basisresearch.github.io/lean.py/z3py-guide.html) | Python API and SMT-LIB2 parser for Lean goals. | Its `Solver.check()` returns UNSAT or UNKNOWN, never SAT, and cannot extract a model. It cannot implement the requested “otherwise give a counterexample” path by itself. Requires Python >=3.12; this shell defaults to 3.10. |
| Lean `omega` / `bv_decide` | Already available locally, with no new dependency. | A monolithic 64-bit multiplication BitVec goal timed out. Smaller arithmetic lemmas succeeded. `bv_decide` also adds native-computation trust; inspect `#print axioms` for accepted proofs. |

The installed default Lean is 4.22.0; Lean 4.33.0 is also installed. Alive2's local Z3 binary is 4.15.3, below lean-crush's documented >=4.15.4 requirement, and cvc5 is not installed. No Lean-SMT or lean-crush theorem is claimed here.

## Pilot: libdivide `31f1e42` on i386

This commit swaps the two arguments at twelve calls to `libdivide_mullhi_{u,s}{16,32,64}`. The [existing Alive2 result](../c/libdivide/31f1e42/i386/result.json) proves eight i386 targets bidirectionally, but the four signed/unsigned 64-bit targets time out. The portable 64-bit helpers split the operands into 32-bit halves; on i386, that fallback is the relevant implementation.

[LeanHighMul.lean](../c/libdivide/31f1e42/LeanHighMul.lean) contains four checked facts:

1. The unsigned cross-product/carry formula is symmetric as natural-number arithmetic.
2. The formula with **the actual C unsigned 64-bit modular intermediate operations** equals that natural-number formula for four 32-bit half-words, so the unsigned fallback is symmetric under those inputs.
3. The signed cross-product/carry formula is symmetric as integer arithmetic, using Euclidean division/remainder to represent arithmetic shift and low-half extraction.
4. For all valid 32-bit halves and a 32-bit low-product carry, every signed 64-bit intermediate in the portable fallback stays in the `int64_t` range. This discharges the arithmetic no-overflow obligation for that helper.

`lean c/libdivide/31f1e42/LeanHighMul.lean` and `elan run leanprover/lean4:v4.33.0 lean ...` both pass. `#print axioms` reports `propext` and `Quot.sound` for the symmetry theorems, plus `Classical.choice` for the no-overflow theorem; no `sorry` or external-solver axiom is used. This is still a manually modeled arithmetic helper, not an automatic translation of the compiled old/new LLVM functions, so the commit stays **UNKNOWN**.

The direct 64-bit BitVec encoding in [LeanHighMulBitVec.attempt.lean.txt](../c/libdivide/31f1e42/LeanHighMulBitVec.attempt.lean.txt) times out with `bv_decide`, including with `acNf` and a 60-second SAT budget. Alive2's `--smt-bench` option exported 18 SMT-LIB2 queries, including this representative [value query](../c/libdivide/31f1e42/smt_queries/value_7IYvueo7Vd85.smt2): it contains 128-bit multiplication, poison/undef guards, and both output formulas. Running local Z3 4.15.3 with `-T:10` on that query returned `timeout`. Moving the *same* query to another proof frontend does not remove its bitvector search cost.

## What would close a C commit

For this pilot, the remaining step is to connect the Lean model to the exact old/new C or LLVM function bodies, including signed shifts, casts, definedness, and the selected i386 preprocessor branch, then compose that helper result through the public division functions. A mathematical lemma about the intended algorithm alone does not certify the compiled program.

For other UNKNOWN commits, the practical route is to extract small pure arithmetic kernels, prove them compositionally, and keep the original Alive2/LLVM checks for memory, state, and callers. For xxHash streaming, SIMD, dispatch, and large-input loops, an SMT-to-Lean tactic alone is unlikely to replace the missing memory/loop invariants. If an SMT solver finds SAT, validate its model against the public API and input contract before labeling it a counterexample. If it finds UNSAT, require a checked certificate or Lean proof and an audited link from the C/LLVM semantics to that formula.

The C cases are not all arithmetic: [libdivide `31f1e42`](../c/libdivide/31f1e42/entry.json) is a good kernel-lemma candidate; [xxHash `44bb94e`](../c/xxHash/44bb94e/entry.json) rewrites streaming update and needs a state/loop relation; [xxHash `b8c3176`](../c/xxHash/b8c3176/entry.json) changes constructor initialization, outside a per-function arithmetic theorem. `SAT`, `UNSAT`, and `UNKNOWN` are three real outcomes. A timeout is neither a proof nor a counterexample, so “prove it or produce a counterexample” cannot be guaranteed for all 68 cases.

Reproduce the pilot from `history-eq/`:

```sh
lean c/libdivide/31f1e42/LeanHighMul.lean
elan run leanprover/lean4:v4.33.0 lean c/libdivide/31f1e42/LeanHighMul.lean
../alive2/.venv/bin/z3 -T:10 c/libdivide/31f1e42/smt_queries/value_7IYvueo7Vd85.smt2
python3 tools/audit.py
```
