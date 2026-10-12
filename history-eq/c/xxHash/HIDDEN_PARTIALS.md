# Four xxHash `UNKNOWN` commits with verified local equalities

[`revalidate_hidden_partials.py`](revalidate_hidden_partials.py) checks each selected historical source file against its Git blob, checks every saved LLVM IR hash against its archived result, and reruns bidirectional Alive2 on the recorded target functions. The [machine-readable record](revalidated-hidden-partials.json) links all eight fresh logs. Every selected check reports correct transformations and zero errors; no result below proves the full commit.

| Commit | Revalidated scope | Remaining gap |
|---|---|---|
| `7ad2406` | Opt-in ARMv5 XXH32, 16-byte one-shot hash | One archived opt-in XXH64 33-byte case is unresolved; other architectures and lengths are not exhausted. |
| `0117f18` | MSVC-macro x64 XXH3 64-bit, 256-byte path | The two 128-bit long-input checks remain inconclusive. |
| `4ff3a1b` | Five selected fixed-length public hash calls | Arbitrary lengths and every `XXH_ASSUME` caller are unproved; a non-target helper still has unsupported `noalias` in this Alive2 build. |
| `f534e5b` | Five fixed-length public XXH3 AVX2 calls | The 1088-byte path remains inconclusive; the archived AVX512 checks are not rerun here. |

The other three entries remain `EQUIV_PARTIAL` in the optimization sample. `7ad2406` now has a separate [complete default x86-64 module check](7ad2406/full-module/README.md) and is scoped `EQUIV` in that build; its ARMv5 opt-in case above remains only a local proof. Their old commit-level `UNKNOWN` labels described the unproved remainder, not absence of local proofs. No official historical before/after benchmark score is inferred.

Reproduce from the project root:

```sh
python3 -B history-eq/c/xxHash/revalidate_hidden_partials.py
```
