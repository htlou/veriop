# `a7249f86`: constant-time integer overflow check

**Scoped verdict: `EQUIV_PARTIAL`; whole-parser verdict: UNKNOWN.** The [source change](source-scoped.diff) replaces a checked reparse of max-length integer digits with a leading-digit threshold test. The official `tests/fast_int.cpp` from the child commit was compiled against both exact historical header trees; [both runs passed](official-fast-int.json). That is a correctness test, not an official performance score or an equivalence proof.

The direct [historical parser wrapper](wrap.cpp) constructs 20 decimal digits and returns the public `from_chars` error or value. Alive2 on the `-O2` [old](old-tv.ll) and [new](new-tv.ll) IR reports [2 correct, 3 failed-to-prove](fwd.log): the unconstrained parser loop is not resolved and an SMT query times out. Recompiling with the parser inlined gives one-way proofs for the bounded [error](bounded-error-fwd.log) and [value](bounded-value-fwd.log). The reverse [error](bounded-error-bwd.log) and [value](bounded-value-bwd.log) checks remain inconclusive because Alive2 drops a large constant initializer when approximating the digit table. No counterexample was established by those attempts.

There is a narrower, complete arithmetic proof. The historical `maxdigits_u64` and `min_safe_u64` tables satisfy `min_safe_u64(base) = base^(maxdigits_u64(base)-1)` for all 35 supported bases in **both** revisions ([table check](table-check.log), [check script](check_tables.py)). For a canonical max-length digit string, let `lead` be its nonzero first digit, `ms` that table value, and `suffix` the value of the remaining digits, with `0 <= suffix < ms`. Then the exact number is `N = lead*ms + suffix` and the parser accumulator is `N mod 2^64`. The old checked multiply-add loop rejects exactly when `N > UINT64_MAX`; the new branch computes the threshold formula in [overflow_lemma.cpp](overflow_lemma.cpp). Alive2 proves [35/35 old→new](lemma-fwd.log) and [35/35 new→old](lemma-bwd.log), one specialization per base. This proves the changed overflow predicate under the stated digit-to-accumulator relation; it is not a whole-parser proof, because that relation and the old loop abstraction were audited from source rather than discharged by Alive2.

The [revalidation script](revalidate_overflow.py) reconstructs exact historical headers from Git, verifies their blob IDs, checks both 35-entry tables, rebuilds the lemma IR to the archived SHA-256 hashes, and reruns current Alive2 in both directions. Its [result](revalidated-overflow.json) records 35 correct transformations per direction with zero errors. The optimization sample therefore counts this scoped proof as `EQUIV_PARTIAL`. The full parser remains unverified for arbitrary inputs and character types. No official before/after benchmark score was measured for this historical commit.

Reproduce the arithmetic check after extracting each historical `include/` tree:

```sh
python3 history-eq/c/fast_float/a7249f86/check_tables.py /tmp/ff-a724-old/include/fast_float/float_common.h /tmp/ff-a724-new/include/fast_float/float_common.h
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/a7249f86/lemma-old.ll history-eq/c/fast_float/a7249f86/lemma-new.ll
alive2/build/alive2/alive-tv --always-verify history-eq/c/fast_float/a7249f86/lemma-new.ll history-eq/c/fast_float/a7249f86/lemma-old.ll
```
