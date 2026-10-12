# evm-semantics `16dac735`: shorter stack guards

**Local verdict: `EQUIV_PARTIAL`.** The [source audit](check.py) confirms that the exact historical `optimizations.md` differs only by 11 condition replacements: nine stack-size expressions and the `DUP`/`SWAP` minimum-stack tests. The nine size tests fall into three arithmetic patterns. For nonnegative stack length and valid `DUP`/`SWAP` index `N >= 1`, the [Z3 queries](guard-relation.smt2) prove the old and new trigger conditions equal (`unsat` for all three XOR queries; [log](z3.log)). This uses the stack-length interpretation of one-word cons and the index-update behavior of `WS[N - 1 := W0]`.

The unchanged historical `evm.md` and `evm-types.md` Git blobs are missing locally, so their 2024 K definitions were not compiled or source-audited. The proof is an integer abstraction of the changed guard expressions, **not** a K proof of all historical rule firings, proof-search behavior, or whole-definition equivalence. No official before/after benchmark score is available for this commit. Z3 is called directly; its location in the Kuiper package does not make this a Kuiper proof.

Run from project root: `python3 history-eq/k/evm-semantics/16dac735/check.py`.
