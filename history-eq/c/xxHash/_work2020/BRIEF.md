# Brief for xxHash-2020on Alive2 workers

Root: /srv/home/hantaolou/code/veriop/history-eq/  (all paths below relative to it)
Protocol: METHOD.md (read it fully; verdict vocabulary + schema are binding).
Worked example of raw vs api: proto/libdivide-2422199/.

NEVER modify repos/xxHash, ../alive2, tools/alive_check.py, or other agents' dirs
(c/xxHash/* dirs that are not in your assigned list belong to other agents). Work only in
c/xxHash/<your shas>/.

## Already prepared
* Each assigned commit has `c/xxHash/<sha7>/old/` (files at <sha>^) and `new/` (files at <sha>), containing
  every library file that existed then (xxhash.h, xxhash.c, xxh3.h, xxh_x86dispatch.{c,h}).
  `git -C repos/xxHash show <sha>` for message/diff.
* Runner: `python3 c/xxHash/_work2020/xx_alive.py` — same CLI as tools/alive_check.py, plus:
  - rewrites EMPTY inline-asm optimization barriers (XXH_COMPILER_GUARD, XXH_COMPILER_GUARD_W, ...:
    `%r = call T asm "", "=r,0"(T %v)`) into `%r = freeze T %v` on BOTH sides (modeling assumption:
    the empty asm is an opaque identity). Non-empty asm (umaddl, vmulouw, ...) is untouched.
  - drops llvm.experimental.noalias.scope.decl / !alias.scope / !noalias (Alive2 can't parse them).
  - writes `<out>/xx_notes.json`: number of asm rewrites per side; for every target_*:
    `ir: identical|differs`, `*_residual_calls` (non-intrinsic calls left in the target = harness NOT
    fully inlined -> the verdict is meaningless, fix the harness), `*_residual_asm`.
  ALWAYS read xx_notes.json after a run.
* Harness helper header: `c/xxHash/_work2020/inc/xxh_harness.h` (add `--old-inc c/xxHash/_work2020/inc
  --new-inc c/xxHash/_work2020/inc` after the old/new dirs). Provides `U8ARGS(p)` (8 x uint64 noundef args)
  and `U8FILL(buf, off, p)` to copy them into a local buffer.
* Cross-target freestanding header shims (string.h/stdlib.h/assert.h/stdio.h): `c/xxHash/_work2020/cross_sysinc`.

## Standard harness recipe (learned on this repo)
Wrapper skeleton (keep IDENTICAL for old and new; if an API name differs, `#if` on a feature macro and say so):
```c
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"          /* early-2020 xxhash.h #includes xxh3.h itself */
uint64_t target_api_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
```
Default extra flags (x86-64):
`--extra-cflags "-DXXH_NO_INLINE_HINTS=1 -mllvm -inline-threshold=100000"`
(XXH_NO_INLINE_HINTS exists since b8dfa44 (Feb 2020); it turns XXH_FORCE_INLINE/XXH_NO_INLINE into plain
`static`, and the high threshold then inlines everything. Without it, XXH_NO_INLINE functions such as
XXH3_len_129to240_64b / hashLong stay out of line, Alive2 cannot translate their `noalias` params, and the
target only compares two calls to an unknown function — a FAKE "correct". xx_notes.json flags this.)
For commits whose perf change IS an inline hint, also run with default flags and explain; if the only
difference is inlining attributes, semantics are identical (show IR identical under neutralised hints → EQUIV).

Lessons:
1. Raw-level internal functions that take buffers (acc/input/secret): pass contents as scalar args
   (U8ARGS) and copy into fresh local arrays (`_Alignas(64) uint64_t acc[8]`), then memcpy result to an
   out pointer. Passing raw pointers lets Alive2 choose aliasing acc/secret or poison bytes in memory,
   producing spurious counterexamples (seen on f534e5b scrambleAcc: bwd "Mismatch in memory" with poison +
   overlapping acc/secret). API-level with a single `const uint8_t* p` input pointer is usually fine; if
   a counterexample involves poison bytes / aliasing, switch to value args and say so.
2. Loops depend on len. Prefer: (a) symbolic content + FIXED lengths (one target per length, e.g. XXH32 len
   0..15, XXH3 len 129/160/200/240) — clang fully unrolls, Alive2 gets loop-free code, fast; (b) symbolic
   len with a bound `if (len < A || len > B) return 0;` + `--unroll K` (K >= max trip count) — often
   times out. Report fixed-length coverage as EQUIV_BOUNDED and list the lengths in `evidence`/`notes`
   (because other lengths are not covered), unless the code is loop-free for the whole symbolic range
   checked (e.g. XXH3 len 0..16 or 17..128 symbolic, no loops) → EQUIV for that class.
3. Preconditions: newer xxhash.h turns XXH_ASSERT into XXH_ASSUME (UB when false) — the wrapper must respect
   every documented precondition (len class, secretSize >= 136, non-NULL, etc.), or you get spurious
   ub-domain NOT_EQUIVs.
4. Timeouts: first `--smt-to 60000`; retry promising ones with `--smt-to 600000 --timeout 3600`. The machine
   is shared and loaded (load avg ~200+); run at most ~12 alive checks in parallel yourself (background
   jobs `( ... > x.out 2>&1 &)` and poll), do not exceed.
5. x86 SIMD: `--extra-cflags "-mavx2 -DXXH_VECTOR=XXH_AVX2 ..."` (XXH_SSE2=1, XXH_AVX2=2, XXH_AVX512=3;
   older versions use the same numeric values — check the enum in the file). At -O3 most _mm intrinsics
   become generic vector IR; any leftover `llvm.x86.*` may or may not be supported by Alive2 — record.
   Vector 32x32->64 multiplies can make SMT slow; raw per-stripe targets (accumulate_512, scrambleAcc,
   initCustomSecret) are the right granularity. Also consider SIMD-vs-scalar only as a secondary check.
6. Non-x86: you may try e.g.
   `--target aarch64-linux-gnu --cflags "-O3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w -ffreestanding -nostdlibinc -isystem c/xxHash/_work2020/cross_sysinc"`
   plus `-DXXH_VECTOR=XXH_NEON` (or the arch macro) and -march flags (`-march=armv8-a+sve`,
   `--target riscv64-linux-gnu -march=rv64gcv`, `--target loongarch64-linux-gnu -mlsx/-mlasx`,
   `--target powerpc64le-linux-gnu -mcpu=power8`, `--target s390x-linux-gnu -march=z13`,
   `--target wasm32 -msimd128`, `--target armv7a-linux-gnueabihf -mfpu=neon`, MSVC via
   `--target aarch64-pc-windows-msvc -fms-extensions`).
   Observed on 620facc (NEON accumulate_512, aarch64): Alive2 proved EQUIV treating
   `llvm.aarch64.neon.umull.v2i64` as an UNINTERPRETED deterministic function: this is a real proof modulo
   the intrinsic only because both sides call it on provably-equal args (say so in notes). If Alive2
   errors on an intrinsic/type (e.g. scalable vectors for SVE/RVV) → UNSUPPORTED(non-x86-target-intrinsics)
   with the exact error line. Record honestly what you tried.
7. Real inline asm that IS the change (e.g. umaddl asm, vzip asm, cpuid) → UNSUPPORTED(inline-asm)
   (or global-state-or-dispatch for cpuid/function-pointer dispatch). An asm-GUARD-only change (adding/removing
   XXH_COMPILER_GUARD) is semantically a no-op; after the freeze rewrite the IR may become identical:
   report the guard itself as UNSUPPORTED(inline-asm) for the unit "asm barrier placement" if that is the
   whole perf change, and the C-semantics check (guards modeled as identity) as a separate unit; explain.
   Commit verdict follows METHOD §3 aggregation.
8. Pure config/pragma/attribute commits: compile the configuration(s) where the change bites (e.g.
   `-DXXH_SIZE_OPT=2`, `-DXXH3_STREAM_USE_STACK=1`, target/compiler macros) and check. If IR is identical
   under every buildable configuration -> EQUIV with note "IR identical"; if the change is only visible
   to another compiler (GCC-only pragma, MSVC-only) and clang IR cannot be made to differ ->
   EQUIV (IR identical) + coverage partial + note, or UNSUPPORTED(compile-time-or-build-only) if nothing
   meaningful can be compiled. Explain.
9. XXH3 output was frozen at v0.8.0 (2020-07-27). Earlier commits may deliberately change hash values:
   expect NOT_EQUIV(intended-output-change); make sure the counterexample is in fwd.log.
10. Sanity: for every EQUIV / EQUIV_BOUNDED, xx_notes.json must show `ir: differs` for at least one target
   that reaches the change, or you must explain why IR is identical (e.g. change only affects another
   compiler / configuration). Check no residual calls. Optionally compile old/new natively
   (`clang -O2 wrap.c main.c`) on random inputs to confirm the right path runs.

Clang/LLVM: tools/alive_check.py prepends ../alive2/toolchain (clang 20) to PATH; `alive-tv` is
../alive2/build/alive2/alive-tv. To compile by hand use the same PATH:
`export PATH=/srv/home/hantaolou/code/veriop/alive2/toolchain/usr/lib/llvm-20/bin:$PATH`.

## Output per commit (REQUIRED)
Write `c/xxHash/<sha7>/entry.json`: ONE JSON object with exactly the commit fields of METHOD §6:
```json
{"commit":"abc1234","date":"YYYY-MM-DD","subject":"...","selected_by":"keyword|manual-scan",
 "perf_evidence":"...","change_summary":"...",
 "units":[{"name":"...","level":"raw|api|precond","verdict":"...","bounded":false,"unroll":0,
           "precondition":null,"unsupported_reason":null,"not_equiv_kind":null,
           "artifact_dir":"c/xxHash/abc1234/r_api","evidence":"one line"}],
 "commit_verdict":"...","raw_verdict":"...","coverage":"full|partial",
 "unsupported_reason":null,"not_equiv_kind":null,"notes":"..."}
```
(`date` = author date `git log -1 --format=%ad --date=short`; selected_by given in your list.)
Every unit with a verdict other than UNSUPPORTED-without-run must point to an artifact_dir that contains
result.json, fwd.log, bwd.log, xx_notes.json (the runner writes them) and the wrapper used (keep wrappers
in the commit dir, e.g. c/xxHash/<sha>/wrap_api.c). For UNSUPPORTED, still keep the attempt's dir
(result.json with the compile error / Alive2 error) whenever you made an attempt.
Notes must state modeling assumptions (asm-guard freeze rewrite, value-arg inputs, flags, bounds/lengths,
uninterpreted intrinsics, configuration macros used).

Final message to your caller: a compact table `sha | commit_verdict | coverage | one-line reason`, plus a
list of commits where you are unsure and why.
