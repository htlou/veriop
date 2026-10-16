# s2n-bignum `bignum_normalize` (x86-64): verified O(k log k) rewrite

**Result: `bignum_normalize` is 5.58x faster on the official s2n-bignum benchmark entry `bignum_normalize (32 -> 32)`. The median of 9 alternating rounds went from 599.5 ns to 107.7 ns (per-round ratios 5.50-5.89). The A/A control gave a median of 1.000 (range 0.964-1.070). The new code is proved in HOL Light against the same specification as the original.** All five `BIGNUM_NORMALIZE_*CORRECT` theorems have the same statement as at the pin, except for the code-size and exit-offset numerals in `BIGNUM_NORMALIZE_CORRECT`. s2n-bignum's own tests pass (374/374). Traces of the routine's instruction and data addresses are identical across very different inputs.

- Pin: awslabs/s2n-bignum `4d1356a7470663c752660a59375dc3a9ef548428`. HOL Light is `benchmarks/tools/hol-light` at `233b83c3`, run with OCaml 5.3.0 from `aeneas/env/opam/5.3.0`. The compiler is gcc 11.4.0.
- Host: AMD EPYC 9654. Benchmarks were pinned with `taskset -c 160`, and SMT sibling 352 was left idle. `numactl` is not installed. The shared host was busy: load average 27-58 during the runs (see `raw/*.uptime_*`).
- Worktrees: `history-eq/wt/s2n-asmhol-base` (pristine pin) and `history-eq/wt/s2n-asmhol-new` (the pin plus [`bignum_normalize.patch`](bignum_normalize.patch)).

## Why this routine

I ran the full official benchmark on the baseline first ([`raw/baseline-full.txt`](raw/baseline-full.txt), 406 entries). `bignum_normalize (32 -> 32)` stood out: about 600-640 ns to normalize 32 limbs. That is more than `bignum_mul` 8x8 (57 ns) and about 50x `bignum_clz (32)` (12 ns).

The cause is its constant-time "digit normalization". It conditionally shifts the whole array up by one limb, k-1 times, which is O(k^2): for k = 32 that is 992 load/cmov/store iterations. The original source already says so: *"With careful binary striding this could be O(k*log(k)) instead of O(k^2) while still retaining the constant-time style."*

The routine is generic (no BMI2/ADX), has a short proof (385 lines for the main theorem), and has a single official benchmark entry. I screened other candidates first (see "Other candidates"); none offered a comparable gain at moderate proof cost.

## The optimization ([`src/bignum_normalize.new.S`](src/bignum_normalize.new.S), [patch](bignum_normalize.patch))

The k = 0 and k = 1 paths and the final bit-level part (`bsr`, `shld` loop) are unchanged. Only the limb-level part is replaced:

1. **`scanloop`**: one pass over limbs 1..k-1 computes p, the index of the highest nonzero limb (0 if there is none), using `test` and `cmovnz`. It then sets l = k-1-p, the number of limbs to shift.
2. **Binary-strided shift**: for s = 1, 2, 4, ... while s < k, two loops run:
   - `shiftloop` sets z[j] := (l AND s) ? z[j-s] : z[j] for j = k-1 down to s.
   - `zeroloop` sets z[j] := (l AND s) ? 0 : z[j] for j = s-1 down to 0.

   Both use `cmovnz`, and they always load and store every limb.
3. Reload the top limb into `rcx` and fall through to the original bit-level code.

Total limb-level work is k * ceil(log2 k) + k iterations instead of k(k-1). The code uses only the registers the original was allowed to change (RAX, RCX, RDX, R8-R10), so the `MAYCHANGE` sets are unchanged. Code size grows from 131 to 196 bytes.

For k = 32, valgrind/lackey counts the dynamic instructions inside the routine dropping from 7,495 to 1,711. Loads drop from 1,026 to 355 and stores from 1,024 to 192 ([`ct/ct_trace_results.txt`](ct/ct_trace_results.txt)).

## Proof status: complete

[`src/bignum_normalize.new.ml`](src/bignum_normalize.new.ml) proves these theorems for the new object code:

- `BIGNUM_NORMALIZE_CORRECT`
- `BIGNUM_NORMALIZE_NOIBT_SUBROUTINE_CORRECT`
- `BIGNUM_NORMALIZE_SUBROUTINE_CORRECT`
- `BIGNUM_NORMALIZE_NOIBT_WINDOWS_SUBROUTINE_CORRECT`
- `BIGNUM_NORMALIZE_WINDOWS_SUBROUTINE_CORRECT`

The exact theorem statements are in [`proof/theorems-new.txt`](proof/theorems-new.txt) (old: [`proof/theorems-old.txt`](proof/theorems-old.txt)). The main one, for the new code:

```
|- forall k z n pc.
     nonoverlapping (word pc,192) (z,8 * val k)
     ==> ensures x86
          (\s. bytes_loaded s (word pc) (BUTLAST bignum_normalize_tmc) /\
               read RIP s = word pc /\ C_ARGUMENTS [k; z] s /\
               bignum_from_memory (z,val k) s = n)
          (\s. read RIP s = word (pc + 191) /\
               bignum_from_memory (z,val k) s = 2 EXP (64 * val k - bitsize n) * n /\
               C_RETURN s = word (64 * val k - bitsize n))
          (MAYCHANGE [RIP; RAX; RCX; RDX; R8; R9; R10] ,,
           MAYCHANGE [memory :> bytes (z,8 * val k)] ,,
           MAYCHANGE SOME_FLAGS ,, MAYCHANGE [events])
```

The old statement is identical except for `(word pc,127)` and `word (pc + 126)`. The four SUBROUTINE and WINDOWS_SUBROUTINE statements are textually identical. They refer to `LENGTH bignum_normalize_(t)mc` and `bignum_normalize_mc`, whose definitions are the assembled byte lists. [`proof/compare_theorems.py`](proof/compare_theorems.py) checks this and writes [`proof/theorem-comparison.json`](proof/theorem-comparison.json).

So at the System V and Windows ABI boundaries the new routine guarantees the same postcondition (result value, return value, return address/stack, and the same `MAYCHANGE` footprint) under the same preconditions as the original.

**Proof structure.** I used an `ENSURES_SEQUENCE_TAC` to the original "bitpart" label with exactly the intermediate assertion the original proof used there. The original proof of the bit-level tail is therefore reused verbatim, with only the pc offsets changed. The new part (about 350 lines for k >= 2, replacing about 165 lines for the old O(k^2) loops) covers:

- the scan loop invariant: RAX = `(bitsize(lowdigits n i) - 1) DIV 64`;
- the outer loop over `b < bitsize(k-1)`: memory = `2 EXP (64 * (l MOD 2 EXP b)) * n`;
- the two inner `PDOWN` loops: low part untouched and high part = `highdigits r`, with r the conditionally shifted value.

It also adds five small lemmas (59 lines), prefixed `NORMALIZE_`.

**Proof runs.** Both were run on cores 100-115, never 160 or 352:

- **Native `make generic/bignum_normalize.correct`** using the repository's own `build-proof.sh` and `run-proof.sh`. The log has no `error:` or `exception:` lines and `check_axioms` passes. The new side took 129 s of proof time (3m35s including compilation); the old side took 83 s. Logs: [`proof/native-new-bignum_normalize.correct`](proof/native-new-bignum_normalize.correct) and [`proof/native-old-bignum_normalize.correct`](proof/native-old-bignum_normalize.correct).
- **Independent toplevel replay** of both sides, which prints all five theorems: [`proof/replay-{old,new}.log.gz`](proof/), produced from [`proof/replay-{old,new}.ml`](proof/).

`define_assert_from_elf` checks the proof's byte literal against the assembled `.o`. [`check_provenance.py`](check_provenance.py) then checks that the literal equals the `.o` `.text`, and that the `bignum_normalize` symbol in each benchmarked binary contains exactly those bytes. Hashes are in [`provenance.json`](provenance.json).

## Official benchmark

These runs use the official `benchmarks/benchmark.c`, built with the benchmarks `Makefile` (`cc -O3`) against each tree's `libs2nbignum.a`, unmodified. Each run invokes `taskset -c 160 ./benchmark bignum_normalize`, the official harness filtered to the entry, with the default 5 x 65 x 10000 repetitions. Rounds alternate order (AB, BA, ...). Scripts: [`bench/run_bench.sh`](bench/run_bench.sh) and [`bench/summarize.py`](bench/summarize.py).

| run | rounds | A median (ns) | B median (ns) | median A/B | min | max |
|---|---|---|---|---|---|---|
| A/A (baseline vs identical copy) | 7 | 605.5 | 604.3 | 1.000 | 0.964 | 1.070 |
| **A/B (baseline vs optimized)** | 9 | 599.5 | **107.7** | **5.58x** | 5.50 | 5.89 |

Raw data: [`raw/aa_normalize.tsv`](raw/aa_normalize.tsv) and [`raw/ab_normalize.tsv`](raw/ab_normalize.tsv), with `uptime` before and after each run. Only one official entry measures the changed routine, so the per-routine geomean over affected entries equals this ratio: **5.58x**.

### Whole-suite run (secondary)

I ran the whole official suite (406 entries) for 2 alternating rounds, about 15 minutes per run ([`raw/ab_full.tsv`](raw/ab_full.tsv), [`bench/summarize_full.py`](bench/summarize_full.py), [`bench/full_suite_summary.json`](bench/full_suite_summary.json)).

| round | order | official GEOMEAN, baseline / new (ns) | ratio, all 406 | ratio, 405 unchanged entries (noise) | `bignum_normalize (32 -> 32)` |
|---|---|---|---|---|---|
| 1 | AB | 41.27 / 42.31 | 0.975 | 0.971 (p05-p95 0.82-1.02) | 597.6 -> 107.6 ns (5.55x) |
| 2 | BA | 41.66 / 41.53 | 1.003 | 0.999 (p05-p95 0.94-1.06) | 690.7 -> 108.2 ns (6.38x) |

Changing one entry by 5.6x moves the 406-entry geomean by only 5.6^(1/406), about +0.4%. On this shared host that is below the run-to-run noise of the other 405 unchanged entries (about ±3% in geomean). The whole-suite geomean therefore carries no signal, and the per-routine figure above is the meaningful one.

### Layout sensitivity (same official `benchmark.c`, re-linked)

The routine is `.balign 32`, so it can start at 0 or 32 (mod 64). In the official binaries it starts at 0 (mod 64), both old and new at the same address `0xf4980`. There, the old `shufloop` (bytes 0x2e-0x45 of the object) crosses a 64-byte boundary, which costs it about 40%.

I re-linked the official `benchmark.c` with a 32-byte padding object in front of the library ([`bench/layout/pad32.s`](bench/layout/pad32.s)); both routines then start at 32 (mod 64). In 7 alternating rounds ([`raw/ab_normalize_pad32.tsv`](raw/ab_normalize_pad32.tsv)) the baseline drops to 415.3 ns, the new code is 112.2 ns, and the speedup is **3.69x** (3.60-3.80). This is still well above 1.5x. The 5.58x official-layout figure includes the old code's unlucky alignment.

### Size sweep (supplementary, not the official harness)

[`bench/sweep_normalize.c`](bench/sweep_normalize.c) uses the same `clock()`, repeated-call and bit-density style as the official harness, with the routine at 32 (mod 64). It ran for 3 alternating rounds on CPU 160; the table shows medians ([`raw/sweep/`](raw/sweep/), [`bench/sweep_summary.tsv`](bench/sweep_summary.tsv)).

| k | 1 | 2 | 3 | 4 | 5 | 6 | 8 | 12 | 16 | 24 | 32 | 48 | 64 | 128 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| old (ns) | 1.9 | 4.8 | 7.8 | 13.4 | 15.7 | 19.7 | 29.9 | 62.0 | 104.1 | 230.5 | 427.0 | 907.8 | 1572 | 6661 |
| new (ns) | 1.9 | 5.3 | 11.1 | 12.7 | 19.7 | 20.4 | 26.2 | 43.4 | 50.1 | 79.9 | 112.1 | 193.1 | 264.2 | 602.9 |
| speedup | 1.00 | 0.92 | **0.70** | 1.05 | **0.80** | 0.96 | 1.14 | 1.43 | 2.08 | 2.88 | 3.81 | 4.70 | 5.95 | 11.05 |

For k <= 6 the extra scan pass and the per-stride loop setup cost more than they save. A hybrid that keeps the old loop for small k would remove this, at extra proof cost; I did not do it.

## Tests

- **`tests/` `make`** (builds `test` and runs `ctCheck`): OK. Log: [`test/logs/new-tests-make.log`](test/logs/new-tests-make.log).
- **Full `./test`** on the new library: "All 374 tests run, all passed". Log: [`test/logs/new-test-full-default.log`](test/logs/new-test-full-default.log).
- **`./test -10000 bignum_normalize`**: All OK. The exit code is 1 by design whenever other tests are skipped. Log: [`test/logs/new-test-normalize-10000.log`](test/logs/new-test-normalize-10000.log).
- **Extra stress harness** [`test/stress_normalize.c`](test/stress_normalize.c): k = 0..70, every possible number of leading zero limbs, varied top-limb bit patterns, and a guard word after `z[k-1]` that must stay untouched. 511,200 cases pass on both the old and new libraries.

## Constant-time argument

The new code has no data-dependent branches or memory addresses:

- **Branches.** Every conditional branch tests a loop counter that depends only on k: `r9` from 1 to k, `r8` = 1, 2, 4, ... < k, and `r9`/`r10` counting down from k and k-s. The k = 0 and k = 1 early exits test k. The original code had the same kind of k-dependent loop branches.
- **Data flow.** The data-dependent values are p, l and limb contents. They reach only `cmovnz`/`cmove` selections, stored values, and the original `bsr`/`shld` code, all of which the original already used.
- **Memory traffic.** The shift passes load and store every limb whether or not the stride bit is set.
- **Addresses.** Every address is `z + 8*(counter)`.

Instructions used: `mov`, `xor`, `sub`, `add`, `not`, `test`, `cmp`, `inc`, `dec`, `cmovne`, `cmove`, `bsr`, `shl`, `shld`, and `jb`/`je`/`jne` on counters. Run through the repository's `x86/allowed_asm` filter, these flag only the conditional jumps, exactly as for the original routine.

Empirically, valgrind `lackey --trace-mem=yes` was run with the trace filtered to the routine's address range ([`ct/`](ct/)). For k in {1, 2, 3, 5, 8, 13, 32}, the full instruction-address and data-address trace is bit-identical across six input patterns: zero, all-ones, single low bit, half-filled, top-limb-only shift, and pseudo-random. This holds for both the old and new code.

## Other candidates considered (not pursued)

- **`word_popcount` -> `POPCNT`**, and **`word_clz`/`word_ctz` -> `LZCNT`/`TZCNT`.** The HOL Light x86 model decodes these instructions and the proofs would be trivial. But they need the POPCNT/ABM/BMI1 extensions, while s2n-bignum's generic routines are otherwise baseline x86-64 and benchmarked as "all". Swapping them in silently changes the library's CPU requirements. The gain is also limited by call overhead (about 1-2 ns entries).
- **`bignum_amontmul`/`bignum_montmul`/`bignum_mul` generic inner loops.** These run at about 2.7-3.5 cycles per 64x64 multiply. The fast route (MULX/ADX dual carry chains) again needs BMI2/ADX in a "generic" routine. Restructuring them (fused CIOS) means rewriting nested-loop proofs of about 1,000 lines.
- **Unrolling `bignum_iszero`/`bignum_digit`/`bignum_of_word`/`bignum_pow2`.** These are at about 1-2 cycles per limb with 10-30 ns totals, so at most about 1.5-2x per entry. Each needs remainder handling for generic k, which changes the loop invariants.

## Open issues / limitations

- The improvement is algorithmic, so it is largest for larger k. For very small k (2, 3, 5) the new code is 8-30% slower (see the size sweep). It applies to the x86 version only; `arm/generic/bignum_normalize.S` is still O(k^2).
- The headline 5.58x includes about 1.5x from the old code's inner loop straddling a 64-byte line in the official binary. With the alternative alignment it is 3.69x.
- s2n-bignum has no machine-checked constant-time (`*_SAFE`) theorem for generic-size routines like this one at this pin, and none is added here. The constant-time claim rests on the code argument and the trace experiment above.
- Code size grows by 65 bytes. The proof file grows from 547 to 815 lines.
- No upstream PR or GitHub push was made, as instructed.
- The host was shared and loaded. A/A noise is about ±7% per round, which is negligible next to a 5.6x effect.

## Reproduce

```
# 1. trees
git -C benchmarks/repos/s2n-bignum worktree add --detach $PWD/history-eq/wt/s2n-asmhol-new 4d1356a7
git -C history-eq/wt/s2n-asmhol-new apply $PWD/heldout/asm-hol/bignum_normalize.patch
# 2. proof (OCaml 5.3 toolchain env; any cores except 160/352)
. heldout/asm-hol/env.sh
cd history-eq/wt/s2n-asmhol-new/x86 && taskset -c 100-107 make HOLDIR=$HOLDIR generic/bignum_normalize.correct
heldout/asm-hol/proof/run_replay.sh new 104-107; python3 -B heldout/asm-hol/proof/compare_theorems.py
# 3. library, tests, official benchmark
make -C history-eq/wt/s2n-asmhol-new/x86 libs2nbignum.a && make -C history-eq/wt/s2n-asmhol-new/tests
make -C history-eq/wt/s2n-asmhol-new/benchmarks benchmark
heldout/asm-hol/bench/run_bench.sh ab_normalize <base benchmark> <new benchmark> 9 bignum_normalize heldout/asm-hol/raw
python3 -B heldout/asm-hol/check_provenance.py
```
