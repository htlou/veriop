# `162c86c9`: Rust interceptor blocking path

**Checker verdict: UNSUPPORTED by the installed Charon/Aeneas pair.** The historical commit `162c86c9117bd3048949fa77ab878eee4b6197ff` replaces two interceptor `block_in_place(...Handle::current().block_on(...))` expressions with `escape_to_async`. [`source-scoped.diff`](source-scoped.diff) records the Rust change and the `MaterialProviders` submodule update. The optimized helper is copied unchanged into [`src/new_helper.rs`](src/new_helper.rs) from that commit's submodule SHA `3ea116182a442607720330c102f086ebf3c6975f`.

There is a concrete **local runtime difference** under a current-thread Tokio runtime. [`src/main.rs`](src/main.rs) supplies the same ready future returning `7` to the old blocking expression and the new helper. With Tokio 1.49.0 pinned in [`Cargo.lock`](Cargo.lock), the [old run](old-run.log) panics with `can call blocking only when running on the multi-threaded runtime`; the [new run](new-run.log) returns `VALUE 7`. Tokio 1.49.0 satisfies the dependency ranges of both historical revisions. This witness covers the blocking mechanism, not a complete SDK request or the other changes in the commit.

Charon with `--preset=aeneas` emitted [coroutine-unsupported warnings](charon-aeneas.log) for the full witness. To isolate that issue, Charon also [extracted only the unchanged historical helper](charon-helper.log); Aeneas still [failed inside its scoped-thread closure](aeneas-helper.log) and generated only a partial Lean file. No Aeneas relation was proved and no checker-supplied counterexample was produced. The runtime witness therefore does not convert this checker verdict into a verified Aeneas inequality.

Reproduce the runtime witness from this directory using the project's local Rust installation:

```sh
export CARGO_HOME=/srv/home/hantaolou/code/veriop/aeneas/env/cargo
export RUSTUP_HOME=/srv/home/hantaolou/code/veriop/aeneas/env/rustup
export PATH="$CARGO_HOME/bin:$PATH"
cargo +stable run --locked -- old
cargo +stable run --locked -- new
```

No official before/after benchmark score has been measured for this historical commit.
