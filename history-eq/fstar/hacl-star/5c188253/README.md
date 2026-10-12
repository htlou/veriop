# HACL* `5c188253`: HPKE typechecking speed

**Verdict: unverified.** The parent `e4ed92aeeaf11b7dc7ad22a60fd67fe3efe21c53` and child `5c1882530f7d935330855424f9865b002798230c` change only `specs/Spec.Agile.HPKE.fst`. The exact historical file blobs are archived in [`old/`](old/Spec.Agile.HPKE.fst) and [`new/`](new/Spec.Agile.HPKE.fst); their Git blob IDs are `82800e13e23c4a889510383713df7ee06c4194cc` and `0f2d5407180762583306815bdd806020160b5841`.

The diff changes proof refinements, annotations, assertions, and solver settings to improve F* typechecking time. No before/after functional relation has been proved. Each archived file was submitted to the same installed F* 2026.10.06 and Z3 4.13.3 using HACL*'s current include directories and separate output directories. Both attempts exit 1 before checking the historical target: F* loads the **current** `Spec.Agile.HPKE.fst` together with its current interface and reports `Expected the definition of encryption_context to precede [context_export]` at line 401. See [`fstar-old.log`](fstar-old.log) and [`fstar-new.log`](fstar-new.log). This is a mixed-revision dependency failure, not a counterexample or a failed optimization proof.

The historical parent and child trees both name `specs/Spec.Agile.HPKE.fsti` blob `a395926d4b07f52a7e4fadcd13fee0769cf6266c`, but that blob is absent from the local partial Git store (`GIT_NO_LAZY_FETCH=1 git cat-file -e` fails). A faithful historical F* module check needs that interface and matching dependencies. Even successful independent F* checks would establish well-typedness, not old/new equivalence; that requires a separate relational theorem over the HPKE outputs or a corresponding extracted-code checker.

No official historical before/after benchmark score is recorded for this commit.
