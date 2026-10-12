# lz4_flex — historical performance commits vs. Charon → Aeneas → Lean 4

Full data: `results/lz4_flex.json`. Artifacts: `rust/lz4_flex/` (`work/<sha>/` LLBC + charon/aeneas/lean logs and printed/normalised LLBC diffs, `lean/C<sha>/` generated models, merged `*Both.lean` and `Proof*.lean`, `scripts/` pipeline).

## Funnel

| step | count |
|---|---|
| non-merge commits touching `src/` (excl. tests, bin, test_bins, main.rs) | 320 |
| keyword candidates | 91 |
| rejected after reading message+diff | 29 |
| manual-scan additions | 13 |
| **performance commits** | **75** |

## Verdicts (primary = api level where needed)

| verdict | commits |
|---|---|
| EQUIV | 1 |
| EQUIV_BOUNDED | 0 |
| EQUIV_UNDER_PRECOND | 0 |
| REFINES | 0 |
| NOT_EQUIV | 0 |
| UNKNOWN | 0 |
| UNSUPPORTED | 74 |

Raw-level verdicts: EQUIV 5, NOT_EQUIV 7, UNKNOWN 1, UNSUPPORTED 62

UNSUPPORTED reasons: unsafe-raw-pointers 29, aeneas-error 25, lean-model-typecheck-error 10, missing-std-model 9, new-code-does-not-build 1

Structurally identical LLBC excluded from Aeneas proof counts: 16 units in 13 commits.

## Per-commit table

| commit | date | subject | commit verdict | raw | reason/kind |
|---|---|---|---|---|---|
| 4f385c8 | 2020-02-16 | improve decrompression | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| dd79989 | 2020-05-04 | some tests & optimizations | UNSUPPORTED | UNSUPPORTED | new-code-does-not-build |
| 8961caa | 2020-05-12 | add faster hash function | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 05bc4a6 | 2020-05-13 | compression performance improvement | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| c10b91c | 2020-05-14 | manually inline for performance improvements | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| d5b0ebe | 2020-05-17 | impove compression performance by 2x | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 073d918 | 2020-05-18 | Improve Compression speed | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 54c5f02 | 2020-05-20 | Improve Compression Speed (on par with C++ for several cases) | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 64b1eb3 | 2020-05-22 | use unchecked access to hashtable | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| d9990d6 | 2020-05-22 | improve compression speed for uncompressed data, add jpg benchmark | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| f296911 | 2020-05-22 | use different dictionary sizes depending on input size | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 1e9a072 | 2020-05-23 | cleanup, add inline | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 6dc25f8 | 2020-05-23 | improve duplicate check loop | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| cd7af6e | 2020-05-23 | remove inline(never), fix end check | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| e6ef192 | 2020-05-23 | refactor loop for inlining | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| f8ccd0a | 2020-05-24 | move cur to function and remove temp pos, gain 4% | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 7f4159c | 2020-05-31 | safe_decode conditional, fix bound checks, performance improvements | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| d1cb17c | 2020-05-31 | add fast check loop for not filled tokens | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 5822016 | 2020-06-01 | cleanup, check literal != 0 before copying (performance) | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| d044920 | 2020-06-01 | add inline | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 07478dd | 2020-06-06 | improve safe compression speed, start frame format | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 46d0e1d | 2020-06-07 | avoid bounds check by casting to array first (as_u32_le) | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 1bf2784 | 2020-12-07 | copy 16bytes in fastloop | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| cff2c35 | 2020-12-08 | optimize  hot loop copy duplicate performance | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 45d1538 | 2020-12-12 | increase safe decompression speed about 50%, add cli | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 89c7441 | 2020-12-16 | improve compression ratio and speed (10%) | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 6e39a69 | 2021-01-17 | add backtrack for better compression ratio | UNSUPPORTED | EQUIV | aeneas-error |
| b06df70 | 2021-01-17 | Improve Compression Speed by ~5% | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 489d1c1 | 2021-01-18 | write 4byte blocks for match length | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 6362614 | 2021-01-21 | Use 16byte block wildcopy instead of 8bytes, up to +20% Decomp | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 7e23ed4 | 2021-03-27 | Pull backtrack_match bounds checking to outside of the loop | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 135ef44 | 2021-03-29 | agressive inline so performance is not dependent on LTO | UNSUPPORTED | EQUIV | aeneas-error |
| 9270dc0 | 2021-04-06 | no overallocation in safe mode | UNSUPPORTED | NOT_EQUIV | aeneas-error |
| e3884b1 | 2021-04-07 | Replace inline(always) with plain inline annotations | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| eb7b2ec | 2021-04-07 | Restore fast version of write_integer | UNSUPPORTED | NOT_EQUIV | aeneas-error |
| f46d8ba | 2021-04-07 | improve safe decomp performance up to 10% | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 3887b63 | 2021-04-10 | Use simple while loop for backtrack_match | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 81f95e6 | 2021-04-10 | Intentionally ignore trailling bytes for performance | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| ae7823d | 2021-04-10 | Use const generics to generate optimized (de)compressor functions | UNSUPPORTED | EQUIV | aeneas-error |
| 2e0de8a | 2021-04-11 | Use precise bounds checking for optimized copies | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| 69eb2fe | 2021-04-11 | Inline annotate wildcopy and remove dead code | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 3e4d780 | 2021-04-13 | Optimize safe decoder | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| 5514720 | 2021-04-18 | Relax hot-lop condition | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| b9fa440 | 2021-04-18 | Optimize safe decoder | UNSUPPORTED | NOT_EQUIV | missing-std-model |
| 97b0c32 | 2021-04-24 | Use inline always in safe duplicate_slice | EQUIV | EQUIV |  |
| c17c157 | 2021-04-24 | Add missing inline annotations | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| b222194 | 2021-04-25 | Don't zero fill buffers when unsafe is allowed | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| 0a15895 | 2021-04-26 | 8~12%+ increase in decompression of medium compressible input. | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 39bba71 | 2021-04-27 | 10% faster safe compressor | UNSUPPORTED | NOT_EQUIV | aeneas-error |
| 6b6348e | 2021-04-27 | 5~10% faster unsafe compressor | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 1a57451 | 2021-05-04 | Provide optimized read_to_string and read_to_end methods | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| 9777ea3 | 2021-05-04 | Adjust preallocation numbers | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| 110f6c9 | 2021-05-13 | Modify FrameEncoder/Decoder buffering to be lazy (or avoid) initializa | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| f5d96e1 | 2021-05-13 | Matches hashtable size should account for position size | UNSUPPORTED | NOT_EQUIV | aeneas-error |
| d197a09 | 2021-05-15 | Size dict according to input | UNSUPPORTED | UNSUPPORTED | missing-std-model |
| cb4eef3 | 2023-01-31 | perf: faster duplicate_overlapping | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 31b2d90 | 2023-02-01 | perf: simplify extend_from_within_overlapping | UNSUPPORTED | NOT_EQUIV | lean-model-typecheck-error |
| 370f22a | 2023-02-01 | refactor: remove VecSink | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| 7dd9275 | 2023-02-01 | perf: remove unnecessary assertions | UNSUPPORTED | UNKNOWN | lean-model-typecheck-error |
| 9ea7f65 | 2023-02-01 | perf: improve safe decompression performance 8-18% | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| ebbb561 | 2023-02-03 | perf: improve safe frame compression performance 7-15% | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| ff35a35 | 2023-02-03 | perf: switch to use only 3 kinds of hashtable | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| 517f1da | 2023-02-07 | readd unintentionally removed inline never | UNSUPPORTED | EQUIV | aeneas-error |
| 7b1d51d | 2023-02-08 | feat: autodetect frame blocksize | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| d11df17 | 2023-02-10 | perf: use input_prt instead of input_pos, improve checks | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 2dd38d7 | 2023-02-12 | increase unsafe compression speed by 3% | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 29914d4 | 2023-04-03 | Shrink vec after block compression | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 712d4be | 2023-04-30 | perf: use nightly feature to avoid loop unrolling | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |
| b8cdd97 | 2023-05-16 | optimize wildcopy | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 4d36f98 | 2023-05-27 | improve safe Decompression 3-28% | UNSUPPORTED | NOT_EQUIV | lean-model-typecheck-error |
| ab128d1 | 2023-05-27 | improve unsafe Decompression 0-8% | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 8ca5f9a | 2023-05-28 | reenable custom copy | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| e81e6e3 | 2023-05-28 | improve unsafe Decompression Performance ~4% | UNSUPPORTED | UNSUPPORTED | unsafe-raw-pointers |
| 1b30e04 | 2023-06-10 | use smaller Hashtable | UNSUPPORTED | UNSUPPORTED | aeneas-error |
| 23b05b0 | 2023-06-29 | Replace check with truncate | UNSUPPORTED | UNSUPPORTED | lean-model-typecheck-error |

## How the checks were run

* Worktrees `wt/lz4-<sha>-{old,new}` (`<sha>^` / `<sha>`); `charon cargo --preset=aeneas --start-from …` with the features each revision had (safe config `std,safe-encode,safe-decode,checked-decode` when available; an additional "unsafe" config `std[,checked-decode]` for changes that live in the unsafe (`cfg(not(feature = "safe-*"))`) code); Aeneas = the **patched** build `aeneas/repos/aeneas/src/_build/default/main.exe` for every run; `-backend lean -loops-to-rec`.
* Units per commit: `apic`/`apid` (= public `compress_into` / `decompress_into`, the api level), `apiuc`/`apiud` (same in the unsafe config), `hlpc`/`hlpd` (changed free helpers, raw level), `mod*` (whole `hashtable`/`sink`/`fastcpy` modules), plus ad-hoc units.
* Old and new Lean models live in different namespaces; `scripts/merge.py` mechanically emits Aeneas-generated std declarations and textually identical crate *type* declarations once (so that `Old.f = New.f` is well-typed and both sides share the same opaque std constants); function bodies are never edited.
* **Identical-translation check**: Charon LLBC is pretty-printed by Aeneas and normalised only by dropping source spans, comments and `#[inline]/#[cold]/#[optimize]` attribute lines (`scripts/llbcdiff.sh`, `scripts/llbcitems.py`). Identical LLBC is structural evidence, not counted as an Aeneas equivalence proof unless the generated models typecheck and a Lean `Old.f = New.f` theorem checks without `sorry` (`Proof*Rfl.lean`).
* Aeneas emits `sorry` bodies for functions it cannot translate; such units are never counted as translated (all `#print axioms` outputs were checked for `sorryAx`).
* Opaque std functions (e.g. `copy_within`, `RangeBounds`, `U32::to_be`, `next_power_of_two`) are Aeneas-generated axioms without semantics; proofs may only use them congruently. Their presence in `#print axioms` is listed per theorem.

## Recurring blockers (why most commits are UNSUPPORTED)

1. **Raw pointers** (2020 encoder/decoder, all `unsafe` variants 2021–2023): `&raw mut`, `cast_expose`, raw-pointer deref are rejected; `ptr::copy_nonoverlapping`/`Vec::set_len` become uninterpreted axioms.
2. **`compress_internal`** (every compressor revision since 2021): `continue` to an outer loop → "Continue to outer loops are not supported yet". So no compressor change is checkable at api level.
3. **Decoder loops** 2020–early 2021: "Early returns inside of loops are not supported yet".
4. **Safe decoder 2021**: translates and typechecks, but the fast paths use `slice::copy_within`, which has no model → missing-std-model when the change selects between copy_within and a byte loop.
5. **Safe decoder 2023**: Lean model does not typecheck — the `Sink` trait impl methods return an extra back-function (`Type mismatch`), and a local variable `sink` shadows the module prefix (`Invalid field SliceSink`).
6. **Hashtable module**: the 64-bit literal in `hash5` does not typecheck against Aeneas' platform-generic `Usize`.
7. **Frame format**: `io::Read/Write`/`io::Error` → "Dynamic trait types are not supported yet", and the encoder reaches `compress_internal`.
