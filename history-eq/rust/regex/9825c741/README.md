# `9825c741`: incremental interval insertion

**Scoped semantic verdict: `NOT_EQUIV` for public `ClassBytes` Debug output; Aeneas verdict: `UNSUPPORTED`.** The [historical diff](source-scoped.diff) replaces full canonicalization after every `IntervalSet::push` with binary search and local merging. The child returns immediately when the interval already exists; the parent always clears the `folded` cache flag after insertion. `ClassBytes` publicly exposes this path through `push`, `case_fold_simple`, and its derived `Debug` output.

The [public witness](public_witness.rs) constructs the byte class `a-a`, folds it, and inserts `a-a` again. The exact historical [parent binary](native-old.log) prints `folded: false`; the [child binary](native-new.log) prints `folded: true`. Both print the same `[A-A, a-a]` ranges. This is a representation/Debug difference, not a demonstrated regex-matching difference.

The original partial clone lacked two historical files. [Reconstruction](reconstruct.py) recovers `hir/mod.rs` from the locally cached `regex-syntax 0.8.11` package and reconstructs `Cargo.toml` by changing its version to `0.8.10`; it verifies **all 40 files per revision** against their exact Git blob IDs. A minimal root workspace manifest supplies only Cargo's inherited `include` property. Both historical crates compile offline under the `std` feature.

Charon extracted the actual old and new `IntervalSet::push` dependency closures into [parent LLBC](old.llbc) and [child LLBC](new.llbc). Aeneas [fails on the parent's `canonicalize`](aeneas-old.log), leaving a [`sorry`](old-lean/Old.lean); it [generates the child model](aeneas-new.log), which [typechecks](lean-new.log) but treats `Vec::splice` as an [external axiom](new-lean/New.lean). Therefore **Aeneas does not prove this commit relation**. The unequal result follows from the exact public Rust witness and the source-level branch difference. The aggregate semantic bucket counts this one witnessed public behavior as unequal while the per-case record retains the Aeneas limitation. No official historical before/after benchmark score was measured.

Reproduce from the project root after sourcing `aeneas/env.sh`:

```sh
python3 history-eq/rust/regex/9825c741/reconstruct.py
cargo build --offline --manifest-path /tmp/regex-9825-old/Cargo.toml -p regex-syntax --no-default-features --features std
cargo build --offline --manifest-path /tmp/regex-9825-new/Cargo.toml -p regex-syntax --no-default-features --features std
for side in old new; do
  rustc --edition=2021 -L dependency=/tmp/regex-9825-$side/target/debug/deps --extern regex_syntax=/tmp/regex-9825-$side/target/debug/libregex_syntax.rlib history-eq/rust/regex/9825c741/public_witness.rs -o /tmp/regex-9825-$side/witness
  /tmp/regex-9825-$side/witness
done
```
