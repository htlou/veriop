# xxHash performance commits before 2020-01-01 vs Alive2

Slice: `git log --no-merges --before=2020-01-01` over `xxhash.h xxhash.c xxh3.h xxh_x86dispatch.c xxh_x86dispatch.h` (the dispatch files do not exist yet). Full data: `results/xxHash-pre2020.json`; every run lives in `c/xxHash/<commit>/<unit>/` (wrapper.c, cmd.txt, old.ll, new.ll, fwd.log, bwd.log, result.json, calls.txt, ir_diff.txt).

## Funnel

| step | count |
|---|---|
| commits_touching_scope | 319 |
| keyword_candidates | 67 |
| keyword_rejected | 38 |
| manual_scan_additions | 7 |
| perf_commits | 36 |

scope files xxhash.h xxhash.c xxh3.h xxh_x86dispatch.c xxh_x86dispatch.h (the last two do not exist before 2020); git log --no-merges --before=2020-01-01. 29 of the 67 keyword candidates were confirmed as perf commits; 7 commits added by manual scan of the remaining 252 subjects (+ diffs of ~25 plausible ones). The rejected list contains all 38 rejected keyword candidates plus 21 manually inspected non-keyword commits.

## Commit verdicts

| verdict | commits |
|---|---|
| EQUIV | 2 |
| EQUIV_BOUNDED | 8 |
| NOT_EQUIV | 11 (ub-domain-change: 2, other: 4, intended-output-change: 4, bug: 1) |
| UNKNOWN | 9 |
| UNSUPPORTED | 6 (inline-asm: 3, non-x86-target-intrinsics: 3) |

## Per commit

| commit | date | subject | sel | verdict | kind/reason | coverage | units (verdict) |
|---|---|---|---|---|---|---|---|
| 70e65c9 | 2013-04-17 | re-enabled fast version of XXH32() | keyword | **NOT_EQUIV** | ub-domain-change | full | XXH32(p,len,seed) one-shot, x86-64: **NOT_EQUIV**; XXH32 one-shot, precondition input != NULL: **NOT_EQUIV**; XXH32 one-shot, precondition input != NULL and 8-byte aligne: **UNKNOWN** |
| 56314ee | 2013-05-11 | New functions XXH32_sizeofState() and XXH32_resetState(), fo | keyword | **NOT_EQUIV** | ub-domain-change | full | streaming XXH32_init/XXH32_update(p,len)/XXH32_digest, x86-6: **NOT_EQUIV**; streaming, precondition input != NULL (single update and two: **UNKNOWN**; (info) one-shot XXH32 (reformatted, unchanged): **EQUIV_BOUNDED** |
| 681ea2a | 2013-06-04 | Support non-aligned input on strict-align CPU systems, as re | keyword | **UNKNOWN** |  | partial | XXH32 one-shot on x86_64-w64-mingw32 (_rotl -> shift/or rota: **UNKNOWN**; XXH32 one-shot x86-64 linux: **EQUIV_BOUNDED**; XXH32 one-shot on armv5te (strict alignment: packed reads + : **UNKNOWN** |
| 5176062 | 2014-09-25 | xxh32sum & xxh64sum enabled short latency versions | keyword | **NOT_EQUIV** | other | full | XXH32(p,len,seed), x86-64: **NOT_EQUIV**; XXH64(p,len,seed), x86-64: **NOT_EQUIV**; XXH32 with 8-byte-aligned input (NOT library-guaranteed prec: **UNKNOWN**; XXH64 with 8-byte-aligned input (NOT library-guaranteed prec: **NOT_EQUIV** |
| 87ef054 | 2015-08-12 | CPU unaligned load : Better detection for ARM cpus | manual-scan | **NOT_EQUIV** | other | full | XXH32 one-shot, armv7-a (direct loads): **NOT_EQUIV**; XXH64 one-shot, armv7-a: **NOT_EQUIV**; XXH32 one-shot x86-64: **EQUIV**; XXH64 one-shot x86-64: **EQUIV**; XXH32 one-shot armv5te (no unaligned support: unchanged path: **EQUIV**; armv7-a with 8-byte-aligned input (NOT library-guaranteed pr: **EQUIV_BOUNDED** |
| 7ad2406 | 2016-03-24 | xxhash: rename XXH_USELESS_ALIGN_BRANCH to XXH_FORCE_ALIGN_C | keyword | **UNKNOWN** |  | partial | XXH32/XXH64 one-shot x86-64 (default config): **EQUIV**; XXH32 one-shot aarch64 / armv5te (default config): **EQUIV**; XXH32/XXH64 one-shot with opt-in XXH_FORCE_ALIGN_CHECK=0 on : **UNKNOWN** |
| 0e47911 | 2016-08-10 | removed date for reproducibility minor `__inline` | keyword | **EQUIV** |  | full | XXH32/XXH64/streaming XXH32 with XXH_PRIVATE_API, forced ful: **EQUIV**; same, clang default -O3 inlining (no inline-threshold overri: **EQUIV** |
| d2df04e | 2016-09-02 | c++ can use inline keyword | keyword | **EQUIV_BOUNDED** |  | full | XXH32/XXH64/streaming, compiled as C++, forced full inlining: **EQUIV_BOUNDED**; same, clang default -O3 inlining: **EQUIV_BOUNDED** |
| 3bb5bb6 | 2018-02-19 | changed XXH32 finalization to use switch()/case strategy | keyword | **UNKNOWN** |  | partial | XXH32(p,len,seed) one-shot: **UNKNOWN**; streaming XXH32_reset/update/digest: **UNKNOWN** |
| 0e5dab9 | 2018-02-20 | converted XXH64 finalization to switch()/case | manual-scan | **UNKNOWN** |  | partial | XXH64(p,len,seed) one-shot: **UNKNOWN**; streaming XXH64_reset/update/digest: **UNKNOWN** |
| 9231e6d | 2018-03-13 | added build macro XXH_INLINE_ALL | keyword | **EQUIV_BOUNDED** |  | partial | XXH32/XXH64/streaming with XXH_PRIVATE_API (forced inlining : **EQUIV**; default build (library compiled into the TU): **EQUIV_BOUNDED**; new XXH_INLINE_ALL mode vs old XXH_PRIVATE_API mode: **EQUIV** |
| 8d34547 | 2019-02-28 | xxh3: add NEON support | manual-scan | **UNSUPPORTED** | non-x86-target-intrinsics | full | XXH3_64b on aarch64 with NEON: **UNSUPPORTED**; (info) x86-64 unchanged: **EQUIV** |
| 7558f18 | 2019-03-07 | Add improved 128-bit multiply routine for 32-bit  and use in | keyword | **NOT_EQUIV** | other | partial | raw XXH3_mul128(a,b) on i386 (portable 32-bit path old vs ne: **EQUIV**; raw XXH3_mul128(a,b) on x86-64 (int128 old vs portable new): **UNKNOWN**; raw XXH3_mul128 on armv7-a (new = inline asm umull/umaal): **UNSUPPORTED**; raw scalar XXH3_scrambleAcc (acc local copy): **NOT_EQUIV**; XXH3_64b long input, concrete witness (scalar / AVX2): **NOT_EQUIV**; XXH3_64b len 256/300 symbolic (scalar, AVX2): **UNKNOWN**; XXH3_64b short inputs 1-3, 4-8, 9-16 symbolic length: **UNKNOWN**; XXH128 len 4-8 (symbolic) and concrete len 6: **NOT_EQUIV** |
| 97952e9 | 2019-03-07 | Workaround for Clang vectorization bug | keyword | **UNSUPPORTED** | inline-asm | full | XXH32 one-shot with SSE4.1 (asm present): **UNSUPPORTED**; (info) XXH32 one-shot without SSE4.1: **EQUIV** |
| c5953f1 | 2019-03-08 | Add unroll pragma for Clang in XXH3_accumulate. | keyword | **UNKNOWN** |  | partial | raw XXH3_accumulate(acc,data,key,nbStripes), nbStripes<=4 sy: **EQUIV_BOUNDED**; XXH3_64b long inputs: **UNKNOWN** |
| e6433e8 | 2019-03-12 | restored clang #pragma unroll statement | keyword | **UNKNOWN** |  | partial | raw XXH3_accumulate, nbStripes<=4 symbolic: **UNKNOWN**; XXH3_64bits long inputs: **UNKNOWN** |
| 155f560 | 2019-03-17 | minor change to [4-8] hash | keyword | **NOT_EQUIV** | intended-output-change | full | XXH3_64bits len 4..8 (symbolic length) and fixed 4/5/8: **NOT_EQUIV**; XXH3_64bits concrete witness len 6: **NOT_EQUIV**; (info) other length classes 0-3, 9-16 and XXH128 4-8: **EQUIV** |
| 11ded56 | 2019-04-25 | ARM and scalar improvements/fixes | keyword | **UNSUPPORTED** | inline-asm | partial | raw scalar XXH3_accumulate_512 (acc local copy): **NOT_EQUIV**; raw scalar XXH3_accumulate_512, key 8-byte aligned: **EQUIV**; raw XXH3_accumulate nbStripes<=4 (x86 scalar, aarch64 scalar: **EQUIV_BOUNDED**; XXH3_64bits long inputs, scalar (x86-64 and aarch64; aarch64: **EQUIV_BOUNDED**; XXH128 long inputs, scalar: **UNKNOWN**; NEON path armv7 (vzip inline asm) / aarch64: **UNSUPPORTED** |
| 021668b | 2019-04-26 | Port over the VSX version | manual-scan | **UNSUPPORTED** | non-x86-target-intrinsics | full | XXH3_64bits on ppc64le -mcpu=power8 (VSX path): **UNSUPPORTED**; (info) x86-64 unchanged: **EQUIV** |
| bf16b4e | 2019-05-06 | xxh128: changed mix2 shuffle | keyword | **NOT_EQUIV** | intended-output-change | full | XXH3_128bits long input, concrete witness (scalar/SSE2/AVX2): **NOT_EQUIV**; XXH3_128bits len 256/300 symbolic: **UNKNOWN**; (info) XXH3_64bits long input unchanged: **EQUIV** |
| 288f7dc | 2019-05-17 | Add configuration to reroll most loops. | keyword | **NOT_EQUIV** | bug | full | XXH64 one-shot on i386 (default config: XXH_REROLL_XXH64 aut: **NOT_EQUIV**; XXH64 one-shot with -DXXH_REROLL=1 (x86-64): **NOT_EQUIV**; XXH32 one-shot/stream with -DXXH_REROLL=1: **UNKNOWN**; XXH3 17-128 with -DXXH_REROLL=1 (64/128-bit): **UNKNOWN**; default config x86-64 (XXH_REROLL=0) all entry points: **EQUIV_BOUNDED** |
| a39b22e | 2019-06-07 | tiny change improving llvm's autovectorization | keyword | **EQUIV** |  | full | XXH3_64bits long inputs (scalar/AVX2, vectorizer off and on): **EQUIV**; raw XXH3_accumulate nbStripes<=4 (vectorizer off/on): **EQUIV** |
| 0117f18 | 2019-06-07 | improved SSE2 detection macro for Visual | keyword | **UNKNOWN** |  | partial | XXH3_64bits/XXH3_128bits long input as MSVC x64 (old: scalar: **UNKNOWN**; (info) Linux x86-64 unchanged: **EQUIV** |
| 3584844 | 2019-06-10 | Detect SSE2 on MSVC 32 bit as well | manual-scan | **UNKNOWN** |  | partial | XXH3 64/128 long input as MSVC x86 (old scalar, new SSE2): **UNKNOWN** |
| 0ab31bc | 2019-06-12 | fixed performance regression for XXH3_64bits() | keyword | **NOT_EQUIV** | intended-output-change | partial | XXH3_64bits / _withSeed long input, concrete witness (AVX2): **NOT_EQUIV**; XXH3_64bits long input symbolic (AVX2): **UNKNOWN**; (info) short/mid inputs and XXH128 unchanged: **EQUIV**; scalar configuration: **UNSUPPORTED** |
| ac897be | 2019-06-13 | alignment hint for auto-vectorizer | keyword | **NOT_EQUIV** | intended-output-change | full | XXH3_64bits(_withSeed) len 300, concrete witness (scalar/AVX: **NOT_EQUIV**; XXH3_64bits len 300/1100 symbolic: **UNKNOWN**; alignment-hint part: raw scalar accumulate_512 / scrambleAcc: **EQUIV**; (info) len 16 and len 256 (multiple of the stripe: no last s: **EQUIV** |
| 1e4aca9 | 2019-06-13 | favor SSE2 auto-vectorization | keyword | **EQUIV_BOUNDED** |  | full | XXH3 64/128 long inputs (AVX2, scalar with vectorizers on fo: **EQUIV_BOUNDED** |
| d5e42a6 | 2019-06-14 | improved performance for most compilers | keyword | **EQUIV_BOUNDED** |  | full | XXH3 64/128 long inputs (AVX2, scalar with vectorizers on): **EQUIV_BOUNDED** |
| 60c7cc7 | 2019-06-17 | disable clang unroll statement on emscripten | keyword | **EQUIV_BOUNDED** |  | full | raw XXH3_accumulate nbStripes<=4 on wasm32-emscripten: **EQUIV_BOUNDED**; XXH3_64bits long inputs on wasm32 and x86-64: **EQUIV_BOUNDED** |
| 8293860 | 2019-08-09 | Use __builtin_rotate on Clang | manual-scan | **EQUIV_BOUNDED** |  | full | XXH32/XXH64 one-shot: **EQUIV_BOUNDED**; XXH3 64/128: **EQUIV** |
| c94e68d | 2019-09-16 | Better 128-bit multiply, multiple bugfixes. | keyword | **UNSUPPORTED** | inline-asm | partial | raw XXH3_mul128_fold64 on i386 (portable path old vs new): **EQUIV**; raw XXH3_mul128_fold64 on x86-64 (int128 path): **EQUIV**; raw XXH3_mul128_fold64 on armv7-a (old = umull/umaal inline : **UNSUPPORTED**; XXH3 on i386 (uses the portable multiply): XXH128 4-8 / 9-16: **UNKNOWN**; XXH3 x86-64 long inputs (pragma removal), scalar/AVX2: **UNKNOWN**; raw XXH3_accumulate nbStripes<=4 (pragma removal): **EQUIV_BOUNDED**; XXH32/XXH64 on armv7-a / armv6 (memory-access mode removed): **REFINES** |
| a1da6e2 | 2019-09-16 | Revert XXH_FORCE_DIRECT_MEMORY_ACCESS but exclude clang. | manual-scan | **NOT_EQUIV** | other | full | XXH32/XXH64/XXH3 on armv6 with -munaligned-access (method 2 : **NOT_EQUIV**; armv7-a (method 1 packed) and armv6 without unaligned suppor: **EQUIV**; x86-64: **EQUIV_BOUNDED** |
| 9b6fa10 | 2019-10-03 | [SCALAR] Improve scalar XXH3_accumulate_512 loop | keyword | **EQUIV_BOUNDED** |  | full | raw scalar XXH3_accumulate_512 (64- and 128-bit accWidth), a: **EQUIV**; raw scalar XXH3_accumulate_512 with caller-provided (possibl: **UNKNOWN**; XXH3_64bits / XXH3_128bits long inputs, scalar: **EQUIV_BOUNDED**; (info) AVX2 build unchanged: **EQUIV** |
| 028c0fd | 2019-10-04 | Fix endianness detection on GCC, avoid XXH_cpuIsLittleEndian | keyword | **EQUIV_BOUNDED** |  | full | XXH32/XXH64 one-shot x86-64: **EQUIV_BOUNDED**; XXH32/XXH64 one-shot powerpc64 (big endian): **EQUIV_BOUNDED**; XXH3 64/128 x86-64 and ppc64be: **EQUIV** |
| 1cc9634 | 2019-10-08 | improve speed for large inputs | keyword | **UNKNOWN** |  | partial | XXH3 64/128 long inputs (scalar/AVX2): **UNKNOWN**; raw XXH3_accumulate nbStripes<=4 scalar: **EQUIV_BOUNDED** |
| 8719a6a | 2019-12-14 | [WIP] Start porting VSX code to s390x | keyword | **UNSUPPORTED** | non-x86-target-intrinsics | full | XXH3 64/128 on s390x -march=z14 -mzvector: **UNSUPPORTED**; (info) x86-64 and ppc64le unchanged: **UNKNOWN** |

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
