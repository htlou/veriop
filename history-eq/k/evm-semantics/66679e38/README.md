# evm-semantics `66679e38`: symbolic `bool2Word` simplification

**Verdict: `EQUIV_PARTIAL` at the two added rule sites.** This commit adds only two conditional K simplification rules to `lemmas/lemmas.k`. Its parent is `bb3a2b89e836baed498d06db54be11f3d18dd2ee`. The [archived exact diff](../source-screening/66679e38.source.diff) matches `git diff` for this parent/child pair (SHA-256 `f467c323f18d58344922842c59b6d47d98491c04b2bd64c082cab1d60a3678a6`).

The parent defines `bool2Word(true) => 1` and `bool2Word(false) => 0` in `evm-types.md`. The child adds `bool2Word(B) => 1 requires B` and `bool2Word(B) => 0 requires notBool B`. The [K claims](bool2word-spec.k) state those two new relations against the **parent** definition. `kprove` exited 0 with `#Top` for both claims in the [proof log](parent-rule-proof.log); the [exit record](parent-rule-proof.exit) is `0`. The backend reports `WarnTrivialClaim` because path-condition simplification closes both claims before reachability rewriting. The parent definition was already compiled from the exact `bb3a2b89` worktree in the [historical compilation](../bb3a2b89/new-historical-kompile.log), and its parsed rules contain neither new `b2w-true` nor `b2w-false` label.

Reproduce from the project root:

```sh
source benchmarks/env.sh
parent_dir=history-eq/wt/evm-jump-new/kevm-pyk/src/kevm_pyk/kproj/evm-semantics
plugin_dir=benchmarks/repos/evm-semantics/kevm-pyk/src/kevm_pyk/kproj/plugin
kprove --definition history-eq/k/evm-semantics/bb3a2b89/new-historical-kompiled \
  --spec-module BOOL2WORD-SPEC -I "$parent_dir" -I "$plugin_dir" \
  history-eq/k/evm-semantics/66679e38/bool2word-spec.k
```

This establishes validity of the two new rules under the parent's K semantics. It does not compare complete old/new KEVM proof search, establish a speedup for this commit, or measure an official benchmark before/after pair.
