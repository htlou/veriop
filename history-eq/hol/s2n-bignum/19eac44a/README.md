# Historical 2048-bit squaring (`19eac44a`)

This commit adds `bignum_ksqr_32_64`; the parent has no same-name routine. The comparison is therefore a scoped output relation between the parent's generic `bignum_mul` called with `p=64`, `m=n=32`, and `x=y`, and the child's optimized square called with its required scratch buffer. It is not a same-signature API or whole-commit equivalence claim.

[`source-audit.json`](source-audit.json) records the exact parent/child assembly and HOL Light proof blobs, assembled object hashes, and the later support revision used only to run the old proof scripts under the installed OCaml. The parent [replay](old-theorem.txt) establishes `lowdigits (a * b) (val p)`. The separate [bridge theorem](bridge-theorem.txt) proves `a < 2 EXP (64 * 32) ==> lowdigits (a * a) 64 = a EXP 2`.

The child [replay](new-theorem.txt) establishes `BIGNUM_KSQR_32_64_SUBROUTINE_CORRECT`: its 64-limb output equals `a EXP 2`. Under the intersection of both theorems' memory/nonoverlap preconditions, set the old call's `p=64`, `m=n=32`, and `x=y`; both return with the same 64-limb numerical output. This is **`EQUIV_PARTIAL`** for that x86 output relation, not full observable-state equality: their APIs and scratch/register side effects differ. The ARM implementation and whole commit remain unchecked, and no official before/after performance score was measured.

Run `python3 -B history-eq/hol/s2n-bignum/19eac44a/check_proofs.py` from the project root to recheck source/object hashes and all three HOL Light theorem logs. The [result](proof-result.json) records the audited theorem and log hashes.
