# Held-out C/Alive2 trial: verified optimizations of library code

**Main result (fully verified):** libdivide's signed branchfull division
(`libdivide_s32_do_raw` / `libdivide_s64_do_raw`) replaces the per-divisor
`LIBDIVIDE_ADD_MARKER` branch with a conditional select of the addend. Alive2
proves the old and new LLVM functions equivalent in both directions, with no
loops, bounds or timeouts. On the official `test/benchmark_branchfree.cpp`
(`s32 s64 branchfull`), the **default upstream CMake build** gets **1.77× (s32)
and 1.95× (s64), geomean 1.86×** (3 rounds). A plain patched-header build
with the trial's flags gets 1.72×/2.00× over 10 rounds, and the build linked
from the checked IR gets 2.25×/2.12×. The full default suites show no regression beyond A/A noise.

**Secondary result (verified with Alive2 for the linked IR, see section 3):** a fast path for fast_float
`from_chars<uint16_t>`, giving **1.98×** on the official `bench_uint16` with
the default build and 1.58× when the exact checked IR is linked in. The
earlier V2 Alive2 step never finished; the wrap-up in
[section 3](#3-final-verification-fast_float) found why (the old body's lookup
tables were modelled as arbitrary) and completed the proof of the linked IR
with a finer case split and a stricter, patched alive-tv.

All measurements: AMD EPYC 9654, `taskset -c 176` (sibling 368 left idle),
clang 20.1.8, alive-tv at Alive2 commit c0f5434 with Z3 4.15. The shared
machine was loaded (load 20–110, recorded per run in the raw files), and CPU
frequency was not locked. Speedup is old/new time, taken as the **median of
per-round ratios** over alternating-order rounds.

## 1. libdivide signed branchfull (main result)

Pinned at `ea0fb1ad79a116cd561595c930bcaf33147b3e6c`. The patch is
[ld/libdivide-signed-select.patch](ld/libdivide-signed-select.patch) and
changes 2×6 lines:

```c
-        if (more & LIBDIVIDE_ADD_MARKER) {
-            int32_t sign = (int8_t)more >> 7;
-            uq += ((uint32_t)numer ^ sign) - sign;
-        }
+        int32_t sign = (int8_t)more >> 7;
+        uq += (more & LIBDIVIDE_ADD_MARKER) ? ((uint32_t)numer ^ sign) - sign : 0;
```

(The 64-bit version is the same.) **Why it is faster:** the benchmark sweeps
every prime divisor, so the add-marker bit changes unpredictably from one
divider to the next. In the stock hot loop it compiles to `testb $64; je`, and
in the patched loop to `testb $64; cmove`
([asm audit](results/asm-audit/)). This is the signed counterpart of the earlier
unsigned u32/u64 trial. The power-of-two (`!magic`) branch is unchanged.

### Alive2

| Check | Scope | Result |
|---|---|---|
| `target_s32` and `target_s64` (wrappers around the header's `do_raw`), compiled from the stock header and from the patched header | `--bidirectional --always-verify --fail-src-ub`; all `numer`/`magic`/`more` values; loop-free, so no unroll bound; 3.7 s | **2 correct, 0 incorrect, 0 failed, 0 errors** ([log](results/alive2/libdivide_s_select.log), [hashes](results/alive2/libdivide_summary.json)) |
| Negative control: the s32 addend's sign handling deliberately dropped | same | s32 gives **Value mismatch** and is rejected; the untouched s64 is still equivalent ([log](results/alive2/libdivide_s_mutant_negative_control.log)) |

The IR is compiled with the previous trial's flags (`-O3 -march=x86-64-v3
-fno-strict-aliasing -fno-vectorize -fno-slp-vectorize`). The objects linked
into the "checked-IR" benchmarks are generated from these exact `.ll` files by
codegen only (`-disable-llvm-optzns`), via [ld/build.sh](ld/build.sh).

### Official benchmark: `test/benchmark_branchfree s32 s64 branchfull`

10 alternating rounds in a quiet period (load ~25). Source:
[results/bench/ld_main_quiet/](results/bench/ld_main_quiet/summary.json).

| Build | s32 | s64 | geomean |
|---|---|---|---|
| **Default upstream CMake build, patched header** (Release, `-march=native`, AVX2/AVX512 on; 3 rounds, [full-suite](results/full-suite/summary.json)) | **1.767×** [1.761–1.780] | **1.950×** [1.947–1.966] | **1.856×** |
| Plain patched header, the trial's flags (`-march=x86-64-v3 -fno-vectorize ...`; 10 rounds) | 1.716× [1.708–1.756] | 1.998× [1.989–2.020] | 1.852× |
| Checked IR linked as a separate object | 2.249× [2.20–2.27] | 2.121× [2.11–2.16] | 2.182× |
| Checked IR llvm-linked into the benchmark module (inlined) | 1.723× | 2.151× | 1.925× |

- **A/A noise:** median deviation ≤0.4%; single runs ranged 0.84–1.05×
  ([ld_aa](results/bench/ld_aa/summary.json),
  [ld_aa_quiet](results/bench/ld_aa_quiet/summary.json)).
- **Loaded run:** an earlier 10-round run at load ~75–110 gave the same
  numbers ([ld_main](results/bench/ld_main/summary.json)).
- **Run counts:** the CMake row comes from the full-suite campaign
  (3 rounds). The other rows are 10-round paired runs.

### Full official suites (default upstream CMake builds, coordinator request)

[scripts/full_suite.py](scripts/full_suite.py) did 2 A/A rounds, then 3
alternating rounds of stock vs patched on CPU 176. The candidate build
included both patches. Results:
[summary](results/full-suite/summary.json) and the raw files there. Each entry
was flagged as a regression if its median fell below 1 by more than the widest
A/A deviation in its group (minimum 1%).

| Suite (default args) | Entries | Result |
|---|---|---|
| libdivide `benchmark_branchfree` (u16, s16, u32, s32, u64, s64 × system/branchfree/branchfull) | 18 | s32/branchfull **1.767×**, s64/branchfull **1.950×**. The other 16 entries are within A/A noise (0.975–1.008). |
| libdivide `benchmark` (default is u64; also run with `s32` and `s64`), first 100 divisors × 6 columns | 1,794 | Column geomeans 0.992–1.013. **0 flagged.** |
| fast_float `bench_uint16`, `bench_ip`, `realbenchmark` (canada and mesh) | 12 | `parse_uint16_fastfloat` **1.988×**. `bench_ip` 1.000/1.007, `realbenchmark` 0.995–1.002: all within noise. |

- **Geomeans:** the affected entries (s32/s64 branchfull) reach **1.856×**.
  All 1,824 entries together give 1.002×, and all entries except the affected
  ones give 1.0015×.
- **Regressions flagged: none.** Three things are close and are disclosed:
  - **u64/branchfull 0.975×** (range 0.975–0.979, A/A band ±2.9%). The u64
    loop's instructions are byte-for-byte identical in both binaries; only its
    address moves by 0x10, so this is an alignment effect
    ([u64 loop dumps](results/full-suite/)).
  - **libdivide `benchmark s32`, `scalar` column** (branchfull with a fixed,
    predictable divisor): geomean 0.992×. Four of 100 divisors fall below
    0.97×; the worst is 0.963× at d = −22. In A/A, one divisor falls below
    0.97×. The select may cost about 1% when the branch would have been
    predictable; the previous unsigned trial saw a similar effect.
  - **libdivide `benchmark` timings:** upstream `test/timer.hpp` scales
    `tv_usec` by 1e6, so the absolute units are wrong. Because both builds use
    the same timer, the ratios are still meaningful, but A/A noise for u64 is
    large.

### Tests

All pass for the patched header ([summary](results/tests-libdivide/summary.txt)):
- `tester s32 s64` (stock and patched)
- `test_c99`
- `benchmark_branchfree ... system`, which compares every quotient sum against
  hardware division, for the obj, LTO and plain builds.

## 2. fast_float `from_chars<uint16_t>` (secondary result; see section 3 for the final verification)

Pinned at `54571f86e3a8124c39bc4765ff64d766b4e25efc`; counters v2.2.0 (`baf65a7`).
The patch is [patches/u16-fastpath.patch](patches/u16-fastpath.patch). It adds
`try_parse_u16_fast`, which does one 8-byte load and handles exactly the 5-digit
and 4-digit shapes, each followed by a non-digit, returning a constant pointer
offset. When the fast path does not apply, `from_chars_int_advanced<uint16_t,char>`
tail-calls a never-inline `from_chars_int_advanced_slow`, which is the original
body. Tag dispatch keeps every other type byte-identical: the stock and patched
`bench_ip` binaries have the same SHA-256.

A rejected version is kept in
[patches/rejected-v2-split-all-types.patch](patches/rejected-v2-split-all-types.patch).
It split all types and slowed `bench_ip` to 0.535×.

**Official `bench_uint16`, 10 alternating rounds, quiet period**
([ff_main_quiet](results/bench/ff_main_quiet/summary.json)):

| Build | `parse_uint16_fastfloat` |
|---|---|
| Default build (official flags, header-only, inlined) | **1.976×** [1.924–1.994], 6.62 → 3.35 ns/ip |
| Checked IR linked as a separate object (the benchmark object is identical on both sides) | 1.579× [1.576–1.582], 6.62 → 4.20 ns/ip |
| `bench_ip` (any fast_float entry) | 1.000× (bit-identical binary) |

A/A was 0.997–1.003. The unchanged libstdc++ `std::from_chars` control line
moves by +5% in the default build because of code layout, and by ±1.5% in the
linked build.

**Verification status**, from [scripts/verify.py](scripts/verify.py) and
[results/alive2/](results/alive2/). The proof is split into regions; all
wrappers only add preconditions and are inlined with
`opt -passes=always-inline`.

| Check | Result |
|---|---|
| V3: the new `_slow` function vs the old `from_chars_int_advanced`, whole function | **PASS** (syntactically equal; the bodies differ only in the `noinline` attribute) |
| V1a: len < 8 | **PASS**: the new entry behaves exactly like calling `_slow` |
| V1b: len ≥ 8, not fast shape or base ≠ 10 | **PASS** |
| V2: fast shape, base 10 — fast result vs old body | **NOT PROVED** here; superseded by section 3 (99/99 sub-cases proved) |

Details for each check:
- **V1a / V1b scope:** bidirectional, with `_slow` left uninterpreted.
- **Preconditions (stated explicitly):**
  - `[first, last)` is a valid range: the first 8 bytes are dereferenceable
    and initialized, and `0 ≤ len ≤ PTRDIFF_MAX`.
  - The options fields are initialized (`noundef`).
- **What V2 tried:**
  - It was split by shape, by number of leading zeros, and by format bits.
  - Every attempt either hit Z3 memout (Alive2 hard-codes a 2 GB watermark;
    the LD_PRELOAD shim [tools/z3mem_shim.c](tools/z3mem_shim.c) raises only
    that limit) or timed out at 600–3600 s per query. This includes the
    simplest case (5 digits, no leading zero, unroll 1–3).
  - An unsigned length bound produced a **spurious counterexample** at
    len ≥ 2⁶³, i.e. a negative ptrdiff
    ([explore/e5](results/alive2/explore/)). It was fixed to a signed bound.
    The rerun did not finish within the time limit.
  - All attempts are preserved under `results/alive2/{noshim,old-precondition,explore}`.

**Native evidence (not a proof):**
- A differential test of the exact linked objects, old vs new, with a guard
  page right after `last`: **253,107,735 cases pass**. They include all
  strings over a 9-character alphabet up to length 8 with tails, every value
  0–99,999 with 0–3 leading zeros × all following bytes, and 30M random
  buffers with random base and format ([log](results/difftest.log)).
- An off-by-one mutant is caught.
- The fast_float ctest suite passes 15/15.
- `fast_int` and a compile check (including C++20 `constexpr`) pass under
  clang 20 and g++ 11 for C++11–23 ([matrix](results/tests-std-matrix.log)).

## 3. Final verification (fast_float)

**Verdict: VERIFIED** for the IR linked into the checked-IR benchmark build:
Alive2 proves old ⇒ new and new ⇒ old for every input class (all lengths, all
byte values, leading zeros, every base/option/format word), with a proved-exhaustive
case split, a proved-sufficient unroll bound in every run, and no timeouts in the
accepted runs. The qualifications that Alive2 does not check are listed under
"Open items" below. All files are in [final-verification/](final-verification/);
the per-case table is [final-verification/summary.md](final-verification/summary.md)
(machine-readable: `summary.json`, raw records `results.jsonl`, one log per run in `logs/`).

### Why the earlier V2 attempts never finished

1. **The obligation was wrong, not just hard.** `llvm-extract --func` left the four
   lookup tables of the old body (`space_lut`, `chdigit`, `maxdigits_u64`,
   `min_safe_u64`) as *external declarations*, so their contents were arbitrary.
   In addition, stock Alive2 silently drops every constant initializer larger
   than 128 bytes ("Large constant initializer removed"), and all four tables
   are 256–280 bytes. With arbitrary tables the old body really differs from the
   new one (e.g. a digit can look like white space), so Z3 was searching for
   counterexamples in a false/approximated problem. Fix: extract the tables with
   their initializers (`--glob`) and raise Alive2's limit to 1024 bytes.
2. **Sanity queries, not refinement queries, were the slow ones.** Alive2's
   vacuity checks ("is the source always UB?", "does it never return?") are
   model-finding queries over the old body's whole domain and took >10 min each;
   the refinement queries themselves took seconds.
3. **A non-local input pointer** made every query slow (>10 min even with all
   digits concrete). Modelling the input as a fresh object (a local or a global
   of exactly the input size) brings a case to seconds or minutes.
4. **Unrolling.** One global unroll factor of 6–8 made formulas huge; each case
   now uses the smallest factor that the sink check (below) accepts.

### Tool changes (all in [final-verification/alive2-sinkcheck.patch](final-verification/alive2-sinkcheck.patch))

alive-tv was rebuilt from the same Alive2 commit (c0f5434, same LLVM 20 / Z3 4.15)
in `final-verification/alive2-sinkcheck/`, with:
- **sink check (new query, makes Alive2 stricter):** Alive2 sends every execution
  that exceeds the unroll factor to a `#sink` block and then ignores it (unsound
  if the bound is too small). The patch adds a query proving that *no*
  well-defined execution of src or tgt satisfying the precondition reaches
  `#sink`; anything but UNSAT is an error. A run is accepted only with
  `[sink-check] UNSAT`. Negative control: case `s5 z5 L12` with unroll 4 instead
  of 5 is rejected in 0.5 s.
- **initializer limit 128 → 1024 bytes**, so the tables are modelled exactly.
- **`VERIOP_SKIP_SANITY` / `VERIOP_SKIP_RETURN`** skip only the vacuity sanity
  queries. Each case is run as two separate refinement checks: old⇒new with
  `VERIOP_SKIP_SANITY`, and new⇒old with `VERIOP_SKIP_RETURN` and
  `--fail-src-ub`, whose "source always UB?" query still runs and shows that the
  precondition admits a well-defined (loop-free, hence returning) execution of
  the new function. Neither switch can turn a failed refinement into a pass.
- `VERIOP_DIAG_NO_SINKCHECK` (diagnostics only; never set in a recorded run).
The Z3 memory shim (`tools/z3mem_shim.c`) is used as before (resource limit only).

### Decomposition

E = new `from_chars_int_advanced<uint16_t,char>` (fast path, else tail call to G),
G = new `from_chars_int_advanced_slow`, F = old `from_chars_int_advanced`.
All modules are built by [gen.py](final-verification/gen.py) from the exact files
`build/ir/{stock,cand}/u16_impl.ll` (SHA-256 `51c68cf7…`, `1ab3d5b7…`) that
`scripts/build-linked.sh` compiles (codegen only) into the linked benchmark.
A wrapper `@ver` adds only preconditions (stores of the input bytes, `llvm.assume`)
and calls the checked function, which is inlined with `opt -passes=always-inline`
(no other pass); src and tgt use byte-identical wrappers.

| Sub-check | Inputs covered | What Alive2 proves | Result |
|---|---|---|---|
| P (partition) | all `len ≥ 0`, base, bytes 0–5 | the V1a/V1b/V2 preconditions, written exactly as in the wrappers, hold for exactly one sub-check (count = 1), both directions | PASS, 0.4 s; dropping a case or overlapping V1a/V1b is rejected |
| V1a | `0 ≤ len < 8` (any pointer, incl. null for len 0) | E ≡ `call G` (G uninterpreted), both directions | PASS, 0.4 s |
| V1b | `len ≥ 8` and not (base 10 and 4/5-digit shape) | E ≡ `call G`, both directions | PASS, 0.7 s |
| V3 | everything | G's body ≡ F's body (syntactically equal; same tables, byte-identical initializers in both IR files) | PASS |
| V2 (99 cases) | base 10, shape s ∈ {4,5}, exactly z ∈ 0..s leading `'0'`, len class L ∈ {8,…,15, ≥16}; all digit/terminator/tail byte values, all other option and format bits symbolic | E ⊑ F and F ⊑ E, unroll u(s,z), sink check | **99/99 PASS**, per case (both directions, summed over splits) min 12 s, median 205 s, max 738 s; 5.6 CPU-h in total |
| V2G (99 cases) | same cases; input bytes in a global (any address, final contents compared), `value` a local | same | **99/99 PASS**, min 14 s, median 200 s, max 669 s; 5.5 CPU-h |

Shape is written per byte (`b-'0' <u 10`) independently of the SWAR code. Format
bits stay symbolic. 10 V2 and 14 V2G cases whose unsplit run was slow (>15 min)
were closed by splitting on the `skip_white_space` bit (w0/w1); where one half
was still slow it was split further on `allow_leading_plus` (f0/f1 or f2/f3).
These splits partition the format word exactly; the unsplit runs were abandoned
and are recorded as such in `results.jsonl`. `summarize.py` accepts a run only
if its record is accepted *and* both of its logs are on disk and pass the same
acceptance test (one accepted V2G run whose log a killed duplicate overwrote was
re-proved through splits).

**Composition.** For any input satisfying the contract, the partition check
shows exactly one of V1a, V1b, V2(s,z,L) applies. Under V1a/V1b, E behaves as
`call G`, and G's body is F's body (V3), so E ≡ F. Under V2(s,z,L), E ≡ F
directly. Every check is a two-direction refinement on the same wrapper, so the
union gives E ≡ F (refinement both ways) on every valid input.

**Loops and bounds.** In the V2 region the old body's loops run a bounded,
input-shape-determined number of times: the leading-zero loop z back edges, the
per-character loop r = s−z back edges when fewer than 4 digits follow the
zeros, the white-space, 8-byte and digit-run loops none. The unroll factor is
u(s,z) = max(z, r) (0,1,3,3,4,5 for s=5, z=0..5; 0,3,2,3,4 for s=4), and the
sink check proves for every run that no execution needs more. The new function
has no loops in the checked region; V1/V3/P need no unrolling.

### Input model and contract (what "all inputs" means here)

- `[first,last)` is a valid range: `len = last-first ∈ [0, PTRDIFF_MAX]`; bytes in
  it are initialized (noundef); options/format words are initialized. Leading
  zeros, all lengths, all byte values, any base for V1, any format bits are covered.
- V2 input buffer: a fresh object of exactly L bytes (L ≥ 16: 16 bytes and a
  symbolic `len ≥ 16`). Reading outside it is UB, and new⇒old forbids UB in the
  old function where the new one has none, so both functions are proved to read
  only the first min(len,16) bytes; a larger real object cannot change the result.
- V2 places the buffer in a local alloca (Alive2 gives allocas 16-aligned
  addresses) with `value` a pointer argument (any 2-aligned address); V2G puts
  the buffer in a global with `align 1` (any address; its final contents are also
  compared) and `value` in a local. The two functions use `value` only as the
  address of `store i16` (old: 5 stores, new: 2; no other stores, checked on the IR),
  so the result cannot depend on the combination of the two addresses.
- `value` overlapping the input bytes is not modelled. In C++ this cannot
  happen in a defined program: a `uint16_t` object placed in the storage of
  the `char` array ends the lifetime of the chars it overlaps (`char` arrays do
  not provide storage), and a `char const*` walk over `unsigned char`/`std::byte`
  storage is undefined pointer arithmetic ([expr.add]).
- Trusted: the patched alive-tv/Z3, `llvm-extract`, `opt -passes=always-inline`
  (plain inlining), and the attribute edit that makes the extracted function
  `alwaysinline` (removes `noinline`).

**Scope.** The proof is about the IR linked into the "checked IR" benchmark
build (`build/linked/`, 1.58×). The default upstream build (1.98×) compiles the
same source change header-only with different inlining; it is covered by the
tests, not by this proof.

**Negative controls.** The 65535→65536 mutant (input `65536x`) is rejected
("Source is more defined than target"); the unroll-4 control above is rejected by
the sink check; the partition check rejects a missing and an overlapping case.

### Open items

None of the following is an Alive2 obligation that failed; they are the parts
of the argument that Alive2 does not check:
- **`value` overlapping the input bytes** is not modelled (see the contract
  argument above). Two models that allow it (value as an unrestricted pointer
  into a global buffer, `_g`; a padded alloca with a symbolic offset, `_a`) were
  tried; they did not finish typical general-path cases within 10–20 min and
  were dropped.
- **Buffer and `value` both at addresses that are not 16-aligned** is covered by
  combining V2 and V2G with the syntactic fact that `value` is only used as the
  address of `store i16` (checked with grep, not by Alive2).
- **Trusted components:** the patched alive-tv build and Z3, `llvm-extract`,
  `opt -passes=always-inline`, and the `alwaysinline` attribute edit.
- **Scope:** the default upstream build (1.98×) is not the checked IR; only the
  linked checked-IR build (1.58×) is covered by the proof.

## Layout

- **libdivide:**
  - patch and checked unit: `ld/`
  - IR: `ld/ir/`
  - benchmark builds: `ld/build/`
- **fast_float:**
  - source trees: `src/{stock,cand}`
  - harness: `harness/`
  - IR: `build/ir/`
  - linked and plain builds: `build/linked/`, `build/plain-*`
  - verification modules: `build/verify/` (earlier attempts)
  - final verification: `final-verification/` (`gen.py`, `gen_partition.py`,
    `cases.py`, `runall.py`, `splitter.sh`, `summarize.py`, patched Alive2 in
    `alive2-sinkcheck/` + `alive2-sinkcheck.patch`, `modules/`, `logs/`,
    `results.jsonl`, `summary.{md,json}`, console output of each campaign in `runs/`)
- **Full suites:**
  - upstream source copies and CMake builds: `full-suite/`
  - results: `results/full-suite/`
- **Scripts:** `scripts/`
  - `build-bench.sh`, `build-linked.sh`, `verify.py`, `bench.py`,
    `full_suite.py`, `run-tests.sh`, `build-full-suite.sh`
  - libdivide: `ld/build.sh`, `ld/bench.py`
- **Raw timings:** every `results/bench/*/raw.json` stores the stdout of each
  run, binary SHA-256 hashes, and `uptime` before and after.
- **Prior agent's partial work:** saved as
  `patches/prior-agent-proto-u16.patch`. The repo was reset to its pin, and
  all repos are clean.

## Open issues

- fast_float: V2 is now proved (section 3); the remaining qualifications are
  listed under "Open items" there.
- libdivide fixed-divisor s32 branchfull may lose about 1% (one benchmark
  column). The u64/branchfull 0.975× looks like alignment.
- CPU frequency was not locked and the machine is shared. A/A bands are
  reported for every suite.
- The checked IR uses `-fno-strict-aliasing`, because Alive2 rejects TBAA
  metadata. This applies to the fast_float impl TU and the libdivide units;
  the benchmark TUs use the official flags.
