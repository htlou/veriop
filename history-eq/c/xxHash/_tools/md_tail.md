## How the checks were run

* Tool: `tools/alive_check.py` semantics, through a local copy `c/xxHash/_tools/alive_check_f.py` that only adds
  `--alive-func NAME` (passed to alive-tv as `--func=NAME`) so that only the `target_*` pair is verified. The
  wrappers compile the whole library into the TU; one of the non-static library functions (XXH32_reset with
  memset) crashes this Alive2 pin with a Z3 sort error, which aborted whole runs before the targets were reached.
  Driver: `c/xxHash/_tools/xx.sh`; job lists `c/xxHash/_tools/jobs*.txt`; wrappers `wrapA13.c` (2013 API),
  `wrapA.c` (XXH32/XXH64 2014-2019), `wrapB.c` (XXH3/XXH128), `wrapC.c` (raw XXH3_accumulate),
  `wrapR.c` (raw mul128/fold64, accumulate_512, scrambleAcc).
* Uniform flags (both sides): default `-O3 -march=x86-64-v3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w`
  plus `-DNDEBUG -Drestrict= -D__restrict= -mllvm -inline-threshold=100000`. Removing `restrict` is needed because this
  Alive2 pin rejects `noalias` parameters and `!alias.scope` metadata (it only removes assumptions). The inline
  threshold (and `#define noinline` for XXH_NO_INLINE helpers) makes sure no library call survives inside a
  `target_*` function (Alive2 would otherwise treat the callee as an uninterpreted function); `calls.txt` in every
  run directory lists remaining calls. For 128-bit results returned through `sret` on i386/s390x/armv7/windows,
  `-mllvm -enable-noalias-to-md-conversion=false` avoids `!noalias` metadata.
* Lengths: hash loops depend on the length, so api units use fixed lengths (content and seed symbolic) or a
  symbolic length in a small range, i.e. they are `EQUIV_BOUNDED` with the length set given in the JSON. When clang
  could not fully unroll a loop (pointer-comparison loops of XXH32/XXH64), Alive2 ran with `--unroll 8` (16/20 for
  some reruns), chosen above the maximal trip count for the lengths used.
* `NOWRAP` (`_nw` units): for the XXH32/XXH64-era wrappers Alive2 produced counterexamples in which `input+len`
  wraps around the 64-bit address space (both C programs are UB there; only the IR lowering of `p < bEnd` differs).
  All such units were re-run with the wrapper check `(uintptr_t)p + len >= (uintptr_t)p` (C object model) and the
  re-run replaces the original in the JSON.
* Cross targets (`--target armv5te/armv6/armv7a/aarch64/i386/powerpc64(le)/s390x/wasm32-emscripten/x86_64-w64-mingw32/
  *-windows-msvc`) use stub libc headers (`_tools/sysinc`, declarations only) and no `-march`.
* Intended output changes of the then-experimental XXH3/XXH128 were confirmed with a concrete-input wrapper
  (`-DCONCRETE`: fixed 2 KiB buffer, fixed seed); both sides constant-fold and Alive2 reports the mismatch in
  seconds, while the symbolic versions mostly time out.
* Sanity: `ir_diff.txt` in every run (IDENTICAL_IR / IR_DIFFERS); identical-IR results are reported as such.
  `native_checks.txt` compiles a sample of wrappers natively (old/new) and compares outputs on random, partly
  misaligned inputs (same outputs for the EQUIV / UB-only cases, different outputs for the output-change cases).

## Most interesting cases

* **288f7dc (XXH_REROLL) — real bug found.** The rerolled XXH64_finalize uses `if (len > 4)` instead of `>= 4`;
  for `len % 8 == 4` the 4-byte step is skipped. XXH_REROLL_XXH64 is switched on automatically for 32-bit targets,
  so `XXH64()` on i386/ARM32 returned wrong hashes by default. Alive2 value-mismatch counterexamples on i386
  (len 4, 12, 20, 28) and with `-DXXH_REROLL=1` on x86-64; confirmed natively; upstream fix ff9d808 two months later.
* **0117f18 / 3584844 (SSE2 detection for MSVC)** — emulating cl.exe (windows-msvc target, `__SSE2__` undefined) the
  old build takes the scalar accumulator and the new one the SSE2 intrinsics path; Alive2 proves the scalar and the
  SSE2 XXH3_64bits equal on 256/300-byte inputs.
* **9b6fa10, c94e68d, 7558f18 (multiply/accumulator rewrites)** — the rewritten scalar accumulate_512 (lane swap via
  `i^1`) is proved equivalent for both accumulator widths (with the library-guaranteed non-aliasing of `acc`); the new
  grade-school 64x64->128 multiply of c94e68d and the 32-bit-product multiply of 7558f18 are proved equal to the code
  they replace on i386 (unbounded). The ARM versions are inline asm (`umull/umaal`) -> UNSUPPORTED.
* **Unaligned access commits (5176062, 87ef054, a1da6e2; reverse direction in 681ea2a, c94e68d)** — switching between
  memcpy/packed reads and plain `*(U32*)p` loads changes LLVM-level definedness for misaligned inputs, which xxHash
  documents as valid. Alive2 reports these as NOT_EQUIV (kind `other`: C-level UB that is benign on x86 but is the
  construct that later produced ldm/ldrd bus errors on ARM) or REFINES when the commit removes the direct loads.
* **NULL input (70e65c9, 56314ee)** — old streaming update returned XXH_ERROR for `input == NULL`; new code
  dereferences it. NOT_EQUIV(`ub-domain-change`), equivalent under `input != NULL`.
* **11ded56** — the scalar accumulator now reads the key with 8-byte loads: raw unit NOT_EQUIV (requires 8-byte
  aligned key), EQUIV under the precondition that holds for every key the library passes; api level EQUIV.
* **Pragmas / inlining hints (c5953f1, e6433e8, 60c7cc7, d5e42a6, 1e4aca9, 0e47911, d2df04e, 9231e6d, a39b22e)** — at
  fixed lengths the stripe loop is fully unrolled anyway (often identical IR); symbolic-`nbStripes` raw units exercise
  the unroll pragma (IR differs) and are EQUIV for `nbStripes <= 4`. 0e47911, 9231e6d and a39b22e produce byte-identical
  IR in every configuration tried (verdict EQUIV, noted as identical IR).
* **Intended output changes (155f560, bf16b4e, ac897be, 0ab31bc)** — deliberate XXH3/XXH128 formula / constant / secret
  offset changes in the experimental phase; concrete counterexamples on disk.

## Unsure / caveats

* 7558f18: classified NOT_EQUIV(`other`). The scalar scrambler change makes the scalar path agree with the SSE2/AVX2
  path (a scalar bug fix), the XXH128 4-8 change truncates a product of the explicitly unfinished XXH128; neither is
  a bug introduced by the commit, but neither was announced as an output change.
* c94e68d, 11ded56: commit verdict UNSUPPORTED(inline-asm) follows the METHOD rule (one perf unit is ARM inline asm);
  all checkable x86/i386 units are EQUIV(-BOUNDED) or REFINES.
* 5176062 / 87ef054 / a1da6e2: NOT_EQUIV only because of misaligned typed loads (LLVM alignment UB); hashes on
  real x86 hardware are unchanged (native check). Whether this should count as "not equivalent" is a policy question.
* 3bb5bb6 / 0e5dab9: streaming digest variants beyond the first 16/32-byte block are partly inconclusive (Z3 "tactic
  failed"/timeouts); the one-shot variants cover all tail lengths.
* EQUIV_BOUNDED verdicts hold for the listed lengths / nbStripes bounds only; runs that timed out are listed in the
  unit evidence and are not counted as proved.
* 028c0fd and 8719a6a have borderline perf intent (endianness detection fix; WIP s390x port of the vector path).
