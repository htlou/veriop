# rust-base64 fixed-sample audit

At pin `5b98ee180cc7c2a64af6cb12c724b1721550e0d0`, the deterministic `veriop-history-v1` sample contains **41 keyword candidates**, not 41 confirmed optimizations. The [per-commit crosswalk](rust-base64-pinned-sample-audit.json) matches each full SHA against the previously audited [Aeneas results](rust-base64.json). The one new candidate, `7cffce6f`, changes only `src/engine/tests.rs` architecture gates and is excluded as test maintenance.

| Fixed sample | Count |
|---|---:|
| Confirmed historical optimizations | 16 |
| Excluded as non-optimizations | 25 |
| Verified unequal | 0 |
| Verified equal/refinement | 0 |
| Unverified | 0 |
| Unsupported by the selected Aeneas workflow | 16 |

The broader historical audit found **25** performance commits: the 16 keyword-sample commits above plus **9** found by manual scan. Its two equal/refinement results are among the manual additions. They belong in the full-history total, but not in this random-sample tally. The repository has fewer than 200 confirmed historical performance commits in the audited source scope; the sample is exhausted, and no results are padded to 200.

The commit-level `UNSUPPORTED` tally does **not** mean every changed function is unsupported. I reran the existing Lean proof files on the current toolchain; all three exited 0, have no `sorry`/`admit`/`native_decide`/`bv_decide`/new `axiom` in their proof files, and retained their `#print axioms` output in the linked logs:

| Sampled commit | Kernel-checked local result | Why the whole commit remains unsupported |
|---|---|---|
| `d021c39` | `Engine::{encode_slice, encode, decode, decode_vec}` equivalent under explicit engine and external-function correspondence ([proof](../rust/rust-base64/lean/Cd021c39/Proof.lean), [current recheck](../rust/rust-base64/work/d021c39/proof-current.log)) | `encode_string` model does not typecheck. The two decode-slice theorems use binder-alpha-renamed generated models and are not counted as raw Aeneas-output proofs. |
| `ce2281b` | `GeneralPurpose::internal_encode` equivalent for all input/output slices and corresponding encode tables ([proof](../rust/rust-base64/lean/Cce2281b/Proof.lean), [current recheck](../rust/rust-base64/work/ce2281b/proof-current.log)) | Aeneas fails on the decode path's outer-loop break; the new SIMD kernels use unsafe raw pointers. |
| `9687b03` | Raw `add_padding` differs for a concrete input because its parameter meaning changed; `encode_with_padding` is equivalent when `internal_encode` returns the unpadded encoded length ([proof](../rust/rust-base64/lean/C9687b03/Proof.lean), [current recheck](../rust/rust-base64/work/9687b03/proof-current.log)) | Other public encode paths remain untranslated; the raw difference is not a public API counterexample. |

These are **five** proved equal API/engine-method units across `d021c39` and `ce2281b`, plus one conditional caller proof and one raw helper counterexample in `9687b03`. The two commits with proved API/engine methods are counted as `EQUIV_PARTIAL` in the optimization-only table; their whole-commit results remain unsupported. The `d021c39` proofs for unmodified generated models depend on explicit correspondence hypotheses for identical external standard-library declarations; see the theorem statements and axiom printouts.
