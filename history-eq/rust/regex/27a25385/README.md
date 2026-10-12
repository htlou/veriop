# regex `27a25385`: inline annotations on the pool

**Verdict: unsupported by Aeneas at the changed API boundary.** This is one of the pinned regex repository's sampled performance candidates. The commit message says the annotations are intended to encourage cross-crate inlining, but no official benchmark result for this historical commit was measured here.

The parent is `061ee815ef2c44101dba7b0b124600fcb03c1912`; the child is `27a25385c0bd1228716271668febc88bd8c74932`. The entire commit adds 24 `#[inline]` attributes to `regex-automata/src/util/pool.rs`; it changes no function bodies. Removing lines that consist solely of `#[inline]` from the child file produces the exact parent file (both SHA-256 `acc5a4922b276bc9801f5fb58539824460cb69b34a575cecbd7eb56b1d3b4de0`). This is source-level evidence, **not** an Aeneas proof of observational equivalence or a speedup measurement.

Charon successfully extracted the historical `regex_automata::util::pool::Pool::get` dependency closure for both versions into `pool-old.llbc` and `pool-new.llbc` using `--preset=aeneas --start-from regex_automata::util::pool::Pool::get -- --lib -p regex-automata --no-default-features --features std`. Aeneas translation exited 1 on both versions. Its [parent log](aeneas-old.log) and [child log](aeneas-new.log) report unsupported locally quantified region types in `std::thread::local::LocalKey`, unsupported raw-pointer dereferencing in `pool.rs::get_slow`, and partial Lean files containing `sorry`. Thus neither partial file is an equivalence proof.

The public `Pool::get` path is the changed boundary used for the attempted proof. The unsupported verdict describes current Aeneas coverage, not a counterexample to the Rust program or a demonstrated performance improvement.
