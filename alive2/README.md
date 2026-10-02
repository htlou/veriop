# Alive2 feasibility and performance experiment

The latest verified libdivide LLVM rewrite reaches **2.46× u32 / 2.47× u64** on the unchanged upstream varying-divisor benchmark in five paired runs. A separate five-pair comparison with the previous hybrid measures median gains of **24% / 19%**, with every pair faster; fixed-divisor results remain mixed. [LLVM rewrite evidence](results/search/libdivide_poisoncount/status.json). The [hybrid](results/search/libdivide_hybrid/status.json) remains the separately verified C header patch. For xxHash, the retained lookup remapping measures **1.34–1.36× one-byte throughput** in the official CLI confirmation and **1.73× one-byte latency** in the custom driver; its full CLI sweep has median **1.006×**. The **2× xxHash objective remains unmet**. [xxHash evidence](results/search/xxhash_lookup_remap/status.json). Earlier results and rejected experiments are preserved below.

This experiment follows `../docs/project_doc.md`, the accompanying paper, and the supplied libdivide/xxHash proposal. Everything needed to rerun it lives here. The original repositories remain clean at the commits in [repos.lock.json](repos.lock.json).

## Results

Measurements use an AMD EPYC 9654, CPU 24, scalar `x86-64-v3` code, and five paired runs with alternating old/new order. Speedup is the **median of within-pair old/new ratios**; the two ns/op columns are independently computed medians. The machine is shared and CPU frequency is not locked.

| Workload | Old median ns/op | New median ns/op | Median paired speedup | Paired range |
| --- | ---: | ---: | ---: | ---: |
| libdivide u32, varying divisors | 3.262 | 1.668 | **2.061×** | 1.793–2.159× |
| libdivide u64, varying divisors | 3.046 | 1.402 | **2.207×** | 2.113–2.275× |

The varying-divisor workload is the unmodified `test/benchmark_branchfree.cpp`, run with `u32 u64 branchfull`. It evaluates the existing branchfull API across primes through 2²², with 3,000 iterations. Both old and new checked IR are linked into the benchmark's LLVM module before native compilation, allowing normal inlining. An [assembly audit](results/assembly-audit.json) confirms that the old hot loops match the directly compiled stock repository and that both optimized hot loops contain no calls. A separate run with `system` enabled [passes the repository's quotient-sum checks](results/tests/libdivide-repo-system.log).

The rewrite replaces the add-marker branch with conditional selection and retains the original shift semantics. The [source patch](patches/libdivide-select.patch) changes only the two unsigned raw helpers. It applies cleanly to the pinned repository and its compiled wrappers also passed [bidirectional checking](results/proofs/libdivide_patch.log).

Fixed-divisor results have a median speedup of **0.997× across 20 cases**. Divisors 1 and 2 improve, while some u32 cases regress by about 6–7%. The patch is a workload-specific candidate for review, not a universal replacement recommendation. The varying-divisor gains also appeared with separate native objects, at 2.01×/2.09×, and in an earlier inlined run, at 2.07×/2.22×.

For xxHash, the repository's `tests/bench/benchHash.c` measures fixed lengths 1–16 and random lengths 1–16, in throughput and dependency-chained latency modes. Each measurement uses its existing best-round timer, with 100 ms total and 50 ms rounds. Both implementations use the default secret and zero seed for timing; the proof permits arbitrary secrets and seeds. Reordering the dispatch gives median speedups across workloads of **0.887× throughput and 1.006× latency**; retain the original for performance. A second candidate specializing one-byte inputs [timed out](results/proofs/xxhash_specialize.log) at 30 seconds per SMT query and was excluded from native benchmarking.

Authoritative measurements: [libdivide](results/final-libdivide/summary.json), [xxHash](results/final-xxhash/summary.json), and their adjacent `raw.json` files and process outputs. Each final raw record includes the measured binary's SHA-256. The [build manifest](results/benchmark-build.json) records commands and binary hashes; the [proof manifest](results/proofs/summary.json) records source, IR and object hashes. An early fixed-divisor series under `results/benchmarks/` is invalid and explicitly marked: upstream `timer.hpp` scales the microsecond component by 1,000,000 instead of 1,000. The final finite divisor sweep reuses the upstream input generator and division loop with `steady_clock` and checks results against hardware division.

## Proof scope

| Target | Check | Result |
| --- | --- | --- |
| `libdivide_u32_do_raw`, `libdivide_u64_do_raw` | Original vs conditional-selection rewrite, both directions | 2 equivalent functions |
| `XXH3_len_1to3_64b` | Original C → IR identity, SMT forced | Pass |
| `XXH3_len_4to8_64b` | Original C → IR identity, SMT forced | Pass |
| `XXH3_len_9to16_64b` | Original C → IR identity, SMT forced | Pass |
| `XXH3_len_0to16_64b` | Identity and nontrivial dispatch rewrite, both directions | Pass |

`check.py` uses `--bidirectional --always-verify --fail-src-ub`, requires the exact expected function count and equivalence messages, and rejects errors, timeouts and omitted functions. Native object generation happens only after acceptance. Benchmark builds verify the repository pins and source/IR/object hashes before using them.

Libdivide checks arbitrary numerators, magic values and metadata with the original C/LLVM definedness rules. It does not assume the values came from the divider generator. Some raw triples have undefined shifts, so these are not total functions on all bit patterns. The candidate preserves that domain instead of masking every shift and silently broadening it.

xxHash wrappers explicitly restrict length to each helper's advertised range. Memory contents, pointer aliasing, alignment and seed remain symbolic; valid accesses are determined by the original program. The full dispatcher includes length zero. Pointer loads, shifts, multiply-high, byte swaps and rotates are represented in the actual Clang IR. All checked targets are loop-free: no loop-unrolling bound is used. This is SMT-checked equivalence of the scoped LLVM functions (Tier 2 for these targets), with Alive2/Z3 and Clang's frontend and subsequent native compilation trusted. It covers the short-input helpers, not arbitrary-length XXH3.

The first xxHash attempt exposed unsupported TBAA metadata. Both sides now compile with `-fno-strict-aliasing`, including the benchmark pipeline. IR is never hand-stripped or replaced with an arithmetic model. The [original failure log](results/xxhash_identity.log) is retained.

[Runnable controls](test_pipeline.py) demonstrate rejection of deliberate wrong-output mutations in both libraries, check 28,162 defined libdivide triples and 10,000 xxHash inputs against the original native objects, and exercise lengths 0–16 at an inaccessible-page boundary. These supplement the equivalence check. [Results](results/tests/summary.json).

## Continued optimization search (2026-10-02)

The 2× objective remains incomplete for xxHash. New experiments retain the same
reference implementations, compiler flags, and upstream benchmark engine.

* `libdivide_countmask` passes direct bidirectional checking and reaches 2.479×
  u32 / 2.188× u64 on three paired varying-divisor runs. Its fixed-divisor u64
  regressions (ratios as low as 0.712×) prevent treating it as a general improvement.
  [Proof and hashes](results/search/libdivide_countmask/trial.json),
  [varying results](results/search/libdivide_countmask/bench/summary.json),
  [fixed results](results/search/libdivide_countmask/bench-fixed/summary.json).
* `xxhash_loadwide` reduces loads for lengths 1–3 and combines the two 32-bit
  loads for length 8. Three paired runs show 1.220× / 1.217× throughput at lengths
  2 / 3 and 1.099× for random lengths 1–16. Median speedup across all measured
  workloads is 1.002× throughput and 1.008× latency. These are measurements of the
  full runtime-length dispatcher, using matched linking of checked old/new IR.
  **An assembly audit subsequently showed that the dispatcher remained out of
  line in both versions. These gains do not survive the fully inlined comparison
  described below.**
  [Results](results/search/loadwide-asserts/bench/summary.json),
  [raw timings and binary hashes](results/search/loadwide-asserts/bench/raw.json),
  [build commands](results/search/loadwide-asserts/bench/build.json).
* `xxhash_switch_shared` passes the exhaustive checks below, but median throughput
  is 0.646×; retain the original dispatch. The fully specialized `xxhash_switch`
  remains unaccepted because two cases time out.
  [Accepted switch proof](results/search/xxhash_switch_shared/length-proof/summary.json),
  [measurements](results/search/xxhash_switch_shared/bench/summary.json).
* Combining the load rewrite with short-input-first dispatch (`loadfirst-inline`)
  passes all 25 checks and improves lengths 1–3 by 1.21–1.23×, but regresses
  throughput at lengths 9–16 to approximately 0.89–0.90×. Its median throughput
  ratio is 0.923×, so it does not replace the load-only candidate. Explicit helper
  inlining keeps the entire implementation visible to the verifier.
  [Proof](results/search/loadfirst-inline/length-proof/summary.json),
  [measurements](results/search/loadfirst-inline/bench/summary.json).

The load rewrite's original whole-range SMT queries timed out. The new
[`check-lengths.py`](check-lengths.py) discharges **every possible length**, with
all other inputs still symbolic: 3 cases for `target_1to3`, 5 for `target_4to8`,
and 17 for `target_0to16`. It substitutes a length literal into each original and
candidate LLVM function body without optimizing or replacing any other instruction.
The original and candidate must have identical unconditional entry assumptions
for the length range; outside it both are undefined. This covers the entire
advertised domain rather than sampling lengths or input contents. The unmodified
Alive2 v20 checker accepts all **25 bidirectional checks**, with zero incorrect
transformations, timeouts, or errors.
[Proof log](results/search/loadwide-asserts/length-proof/proof.log),
[manifest and input IR hashes](results/search/loadwide-asserts/length-proof/summary.json).
The partition-generation script is an additional trusted component of this proof.
A deliberate wrong-output mutation also produces a concrete value-mismatch
counterexample under the partitioned check:
[negative-control log](results/search/length-negative-control/one-case.log),
[command and outcome](results/search/length-negative-control/control.json).

Only the untouched runtime-length candidate IR is emitted to native code and
benchmarked; the constant-length proof copies are never benchmark inputs.
`bench-candidate.py` checks the successful proof and artifact hashes before building.
An additional [native check](results/search/loadwide-asserts/native-check.py) passes
17,000 comparisons with arbitrary seeds, overlapping and unaligned pointers, plus
34 boundary cases covering lengths 0–16 with inaccessible memory immediately before
or after the input. [Native results](results/search/loadwide-asserts/native-check.json).

To reproduce this candidate in a fresh trial directory:

```bash
source alive2/env.sh
python alive2/try-candidate.py xxhash_loadwide --label loadwide-rerun --timeout 5
python alive2/check-lengths.py alive2/results/search/loadwide-rerun --timeout 15
python alive2/bench-candidate.py alive2/results/search/loadwide-rerun --repeats 3
```

The lookup-table candidate remains rejected: it introduces undefined behavior
when branching on poison loaded from the secret. Its experimental checker used
a saved one-line change to model a larger constant initializer; none of the
accepted results above depend on that checker.
[Counterexamples](results/search/bytetable-precise/proof.log),
[checker patch](results/search/alive2-constants.patch).

### Audited inlining and benchmark overhead

Linking LLVM modules alone did not make Clang inline `target_0to16` into the hash
callback. Earlier xxHash `bench/` runs therefore retained a jump to a generic
helper, including runtime secret loads. `bench-candidate.py --inline` now
internalizes the helpers before native optimization, on **both** sides. The
upstream benchmark engine remains compiled separately, so the timing loop still
executes every callback. The audited original callback's normalized assembly is
identical to a directly compiled stock `XXH3_64bits` callback with the same
length-0–16 precondition. Both candidate and original contain the full hash body.
[Assembly audit and stock build command](results/search/loadwide-asserts/bench-inline/assembly-audit.json).

With actual inlining, the load rewrite's median ratios across the 17 workloads are
**0.985× throughput and 1.000× latency**. Lengths 2–3 show about 1.10× latency,
but no material throughput gain. Restoring the upstream dispatch likelihood hints
(`xxhash_loadlikely`) passes all 25 length checks and measures 1.004× median
throughput / 1.001× median latency, with regressions on some lengths. Neither
candidate meets the 2× objective.
[Load rewrite measurements](results/search/loadwide-asserts/bench-inline/summary.json),
[likelihood-hint proof](results/search/xxhash_loadlikely/length-proof/summary.json),
[likelihood-hint measurements](results/search/xxhash_loadlikely/bench-inline/summary.json).

A separate diagnostic replaces the callback with `return 0`, without changing the
upstream timing engine. It is **not an equivalent hash and is never scored as an
optimization**. Three paired runs measure median throughput times of 1.970 ns for
the original and 1.632 ns for the empty callback; median original/floor ratio is
1.209×. The analogous latency ratio is 1.597×. This indicates substantial harness
overhead; it is an empirical diagnostic, not a mathematical speedup bound.
[Diagnostic results](results/search/xxhash-callback-floor/summary.json),
[reproduction script](results/search/xxhash-callback-floor/measure.py).

`bench-xxhsum.py` additionally connects checked IR to unchanged upstream CLI
sources. It runs official tests 5 and 6 (aligned and unaligned XXH3-64), with
`-i1` and every `-B` length 1–16, alternating old/new order over three pairs.
Both builds restore the original helper's forced-inline policy. This retains the
CLI's own timer, calibration, and hash loop. Commands, CLI source hashes, output,
and measured binary hashes are saved under each trial's `bench-cli/` directory.
For `xxhash_loadlikely`, the completed 96 process runs yield **0.968× median
throughput across 32 cases**: 0.957× aligned and 0.970× unaligned. The checked
original's CLI callback instruction sequence, including relative branch targets,
matches the stock build. All invocations also pass the CLI's unmodified startup
sanity checks. These results support retaining the original implementation.
[CLI results](results/search/xxhash_loadlikely/bench-cli/summary.json),
[raw results](results/search/xxhash_loadlikely/bench-cli/raw.json),
[stock comparison](results/search/xxhash_loadlikely/bench-cli/assembly-audit.json),
[build commands and unchanged CLI source hashes](results/search/xxhash_loadlikely/bench-cli/build.json).

The follow-up `xxhash_packshort` changes only the 1–3-byte packing and preserves
the original 4–16-byte paths and dispatch hints. It passes **20 exhaustive
bidirectional length checks**, 17,000 native comparisons, and 34 boundary checks.
The short timing series is noisy, including large swings on unchanged paths;
its isolated peak ratios are not treated as gains. The longer official CLI
series (96 invocations, three pairs over all 32 cases) gives **0.990× median
throughput**. Length 1 is approximately 1.04×, but lengths 2 and 3 regress to
approximately 0.80× and 0.84×. The extra selection needed to avoid the final byte
load does not improve the measured implementation. Retain the original.
[Source](experiments/xxhash_packshort.c),
[proof](results/search/xxhash_packshort/length-proof/proof.log),
[native checks](results/search/xxhash_packshort/native-check.json),
[CLI measurements](results/search/xxhash_packshort/bench-cli/summary.json),
[stock baseline and inlining audit](results/search/xxhash_packshort/bench-cli/assembly-audit.json).

```bash
source alive2/env.sh
python alive2/bench-candidate.py alive2/results/search/loadwide-rerun --inline --repeats 3
python alive2/bench-xxhsum.py alive2/results/search/loadwide-rerun --repeats 3
```

### Lookup-table experiments

`xxhash_vectable_split` preserves poison behavior with value selection and two
constant vectors. It passes all 20 exhaustive length checks using the unmodified
checker. Native checks cover 17,000 random cases, all 256 byte values on both the
lookup and fallback paths (512 cases), and 34 page-boundary cases. Its actual
inlined benchmark is slower: median throughput ratio 0.966×, with 0.141× at length
one. Native code copies the vectors into a 2 KiB stack area.
[Proof](results/search/xxhash_vectable_split/length-proof/proof.log),
[native checks](results/search/xxhash_vectable_split/native-check.json),
[timings](results/search/xxhash_vectable_split/bench-inline/summary.json).

A single 256-element vector exposed an index-width bug in the pinned verifier:
its bounds comparison truncates 256 to zero for an 8-bit index. A minimal
all-seven vector therefore gets a false counterexample, whereas LLVM folds its
extraction to seven. The split-vector proof avoids that representation; the
original verifier remains unchanged.
[Minimal control](results/search/vector-index-control/control.ll),
[verifier output](results/search/vector-index-control/proof.log),
[LLVM simplification](results/search/vector-index-control/instcombine.ll).

Replacing vector extraction with a frozen-index memory load and a poison marker
is insufficient: the generic reverse check fails on `undef`. Retaining the
original extraction when the unfrozen and frozen indices differ passes the
small bidirectional controls and compiles to a direct table load. The 128-entry
control passes when its table is split into 16-entry globals. These local
controls do not establish equivalence of a complete hash candidate.
[Rejected marker-only control](results/search/vector-lowering-control/proof.log),
[accepted fallback control](results/search/vector-lowering-fallback-control/proof16.log),
[accepted chunked control](results/search/vector-lowering-fallback-control/proof128chunks.log),
[chunked assembly](results/search/vector-lowering-fallback-control/control128chunks.s).

The complete `xxhash_vectable_chunkload` and `xxhash_vectable32_chunkload`
transformations time out with the original checker and have no native benchmark.
The former's direct length-partition attempt was stopped after repeated timeouts
and no equivalences. The intermediate `xxhash_vectable32` C implementation
passes all 20 length checks but still has the 2 KiB stack copies.
[Chunked attempt status](results/search/xxhash_vectable_chunkload/status.json),
[32-entry vector proof](results/search/xxhash_vectable32/length-proof/proof.log),
[32-entry lowering attempt](results/search/xxhash_vectable32_chunkload/trial.json).

An isolated verifier experiment enables three Z3 rewriting options to expand
constant-array reads and simplify bit-vector selections. It changes no LLVM
semantics, assumptions, or initializer cutoff, and preserves the original checker
binary. The previously stalled poison query is unsatisfiable in 0.18 seconds
with these options; this is one query, not a complete proof. Controls accept the
valid lookup and reject a changed table entry and the missing-`undef`-fallback
rewrite. Build commands, linked-input hashes, checker hash, and the exact patch
are retained.
[Query diagnostic](results/search/xxhash_vectable32_chunkload/smt-diagnostic/global-params.json),
[checker patch](results/search/alive2-array-tactics/solver.patch),
[build manifest](results/search/alive2-array-tactics/build.json),
[controls](results/search/alive2-array-tactics/controls.json).

Isolating `blast_select_store` reduces that poison query to 0.13 seconds; the
other two options alone still time out. With this option confined to the SMT
tactic, the full check reaches a **reverse counterexample**: the candidate's
new constant globals can alias the symbolic input or secret. Their initialized
bytes make the candidate more defined than the original in that case, including
on the otherwise unchanged nine-byte path. The direct length-partition check
also finds a reverse poison mismatch. Both attempts are rejected, and neither
emits native code or runs a benchmark. The first directional success and the
summary's "correct transformations" count must not be read as bidirectional
equivalence; the gate additionally requires the explicit equivalence messages.
[Option isolation](results/search/xxhash_vectable32_chunkload/smt-diagnostic/isolated-options.json),
[tactic-only checker patch](results/search/alive2-array-expand/solver.patch),
[checker controls](results/search/alive2-array-expand/controls.json),
[whole-function counterexample](results/search/xxhash_vectable_arrayexpand/proof.log),
[direct partition counterexample](results/search/xxhash_vectable_arrayexpand/length-proof/proof.log),
[rejection status](results/search/xxhash_vectable_arrayexpand/status.json).

A local-array control avoids introducing those globals and passes bidirectional
verification, but Clang still copies its constants onto the stack. It supplies
no new speedup. The experimental composition gate binds a second proof's input
to the exact output of an already accepted trial; a runnable control accepts a
valid chain and rejects a changed intermediate and a mismatched proof input.
No lowered hash candidate currently passes that gate.
[Local-array proof](results/search/vector-local-table-control/proof.log),
[local-array assembly](results/search/vector-local-table-control/control.s),
[composition-gate control](results/search/composition-control/check.py),
[control results](results/search/composition-control/controls.json).

### Shared mixing across length classes

`xxhash_sharedmix_seed` computes the 4–8-byte and 9–16-byte preliminary mixes,
then selects their common final multiply/shift stage. Guarded input offsets keep
all reads inside the original path's read set; secret reads remain conditional.
This removes the native branch between those two classes without lookup globals.
The unmodified checker accepts **all 17 exhaustive bidirectional length checks**,
and native checks pass 17,000 randomized comparisons plus 34 boundary cases.
[Source](results/search/xxhash_sharedmix_seed/xxhash_sharedmix_seed.c),
[proof](results/search/xxhash_sharedmix_seed/length-proof/proof.log),
[proof manifest](results/search/xxhash_sharedmix_seed/length-proof/summary.json),
[native checks](results/search/xxhash_sharedmix_seed/native-check.json).

The speculative byte-swap needs care: an unguarded call introduces immediate UB
for poison on the short path, while using zero on the inactive path lets Clang
drop its `noundef` return attribute and broadens definedness on the long path.
Using the defined seed as the inactive operand preserves the original domain.
The rejected predecessors and their counterexamples are retained. In particular,
the guarded predecessor's summary reports 17 correct forward transformations,
but eight reverse checks fail; the explicit equivalence-message gate rejects it.
[Unguarded counterexample](results/search/xxhash_sharedmix/proof.log),
[reverse failures](results/search/xxhash_sharedmix_guard/length-proof/proof.log).

The accepted implementation is **slower**. Three paired runs with the upstream
benchmark engine give median ratios across its 17 workloads of 0.489× throughput
and 0.831× latency. Random-length throughput is 0.605×. The unchanged official
CLI confirms the regression on a representative subset: lengths 4, 9, and 16,
aligned and unaligned, three pairs (18 invocations), give ratios 0.461–0.467×.
These CLI figures cover six cases, not the full 32-case suite. Both baseline
callbacks match the stock instruction sequences; checked helpers are inlined,
and source and measured-binary hashes were rechecked. Retain the original.
[Engine results](results/search/xxhash_sharedmix_seed/bench-inline/summary.json),
[engine assembly audit](results/search/xxhash_sharedmix_seed/bench-inline/assembly-audit.json),
[official CLI results](results/search/xxhash_sharedmix_seed/bench-cli/summary.json),
[CLI raw measurements and commands](results/search/xxhash_sharedmix_seed/bench-cli/raw.json),
[CLI stock comparison](results/search/xxhash_sharedmix_seed/bench-cli/assembly-audit.json),
[CLI build commands and source hashes](results/search/xxhash_sharedmix_seed/bench-cli/build.json).

```bash
source alive2/env.sh
python alive2/try-candidate.py xxhash_sharedmix_seed --label sharedmix-rerun --timeout 15
python alive2/check-lengths.py alive2/results/search/sharedmix-rerun --timeout 15
python alive2/bench-candidate.py alive2/results/search/sharedmix-rerun --inline --repeats 3
python alive2/bench-xxhsum.py alive2/results/search/sharedmix-rerun --lengths 4 9 16 --repeats 3
```

### Instruction analysis and algebraic rewrites

An `llvm-mca` analysis of the audited original callback estimates isolated block
throughputs of 4.2, 3.8, and 5.3 cycles for lengths 1–3, 4–8, and 9–16. It excludes
dispatch, calls, returns, and the benchmark harness. These are model estimates,
not timings or speedup bounds. For example, its one-cycle throughput estimate
for a 64-bit immediate move differs from the 0.33-cycle loop and 0.62-cycle
unrolled measurements published by [uops.info](https://uops.info/html-instr/MOV_R64_I64.html#ZEN4).
[LLVM documents the model's accuracy limits](https://llvm.org/docs/CommandGuide/llvm-mca.html).
[Reproduction and extracted blocks](results/search/xxhash-instruction-analysis/analyze.py),
[model results](results/search/xxhash-instruction-analysis/summary.json).

Swapping the unsigned multiply operands (`xxhash_mulorder`) passes two complete
bidirectional checks, but generates identical raw-helper and dispatcher
instruction sequences. It was not benchmarked as a new implementation.
[Proof](results/search/xxhash_mulorder/proof.log),
[helper audit](results/search/xxhash_mulorder/raw-helper-audit.json),
[dispatcher audit](results/search/xxhash_mulorder/dispatcher-audit.json).

Factoring the rotate/XOR expression (`xxhash_rotatefactor`) also passes two
complete bidirectional checks, 17,000 native comparisons, and 34 boundary checks.
It introduces dependent rotates without reducing the instruction count. Three
paired engine runs give median ratios of 1.001× throughput and 0.984× latency.
Official CLI tests at lengths 4, 8, and 16 (aligned/unaligned, three pairs) give a
six-case median of **0.960×**. Three of the four affected cases regress; aligned
length 4 measures 1.042×. This supplies no consistent gain and does not meet 2×.
The original CLI callback matches stock; source and measured-binary hashes match.
[Source](results/search/xxhash_rotatefactor/xxhash_rotatefactor.c),
[proof](results/search/xxhash_rotatefactor/proof.log),
[native checks](results/search/xxhash_rotatefactor/native-check.json),
[engine results](results/search/xxhash_rotatefactor/bench-inline/summary.json),
[engine assembly](results/search/xxhash_rotatefactor/bench-inline/assembly-audit.json),
[official CLI results](results/search/xxhash_rotatefactor/bench-cli/summary.json),
[CLI commands and raw timings](results/search/xxhash_rotatefactor/bench-cli/raw.json),
[CLI stock audit](results/search/xxhash_rotatefactor/bench-cli/assembly-audit.json).

### SIMD packing experiments

Packing the two 32-bit input words with SIMD (`xxhash_vecpack`) passes two
complete bidirectional checks, 17,000 native comparisons, and 34 page-boundary
checks. The emitted code uses `vmovd`, `vpinsrd`, and `vmovq` instead of scalar
loads, shift, and OR. The actual inlined upstream engine measures 1.020–1.033×
throughput at lengths 4–8, but dependency-chained latency regresses to
0.820–0.825×. The official CLI subset (lengths 4, 8, 16; aligned and unaligned;
three paired runs) has a median of **1.001×** across six cases, with a
0.994–1.015× range. This does not meet the 2× objective.

Both original callbacks match the previously audited stock assembly. All 16
copied CLI files match the pinned upstream repository, and every measured
binary hash matches the recorded executable. The CLI retains its own timer
and hash loop; only the helper adapter connects the checked IR.
[Proof](results/search/xxhash_vecpack/proof.log),
[native checks](results/search/xxhash_vecpack/native-check.json),
[engine results](results/search/xxhash_vecpack/bench-inline/summary.json),
[engine assembly audit](results/search/xxhash_vecpack/bench-inline/assembly-audit.json),
[official CLI results](results/search/xxhash_vecpack/bench-cli/summary.json),
[CLI raw measurements](results/search/xxhash_vecpack/bench-cli/raw.json),
[CLI assembly audit](results/search/xxhash_vecpack/bench-cli/assembly-audit.json),
[status](results/search/xxhash_vecpack/status.json).

The 1–3-byte SIMD packing experiment (`xxhash_vecbytes_ir`) passes **20 exhaustive
bidirectional length checks** with the unmodified verifier: three for the raw
helper and 17 for the complete dispatcher. It also passes 17,000 native
comparisons and 34 page-boundary checks. This candidate is an explicit IR
transformation of the immutable original, generated by
[`pack-short-vector.py`](pack-short-vector.py); it preserves the original loads,
assumptions, and arithmetic around the packing operation. The native benchmark
uses the unchanged runtime-length candidate IR, not the length-specialized proof
copies. As with other partitioned proofs, the partition generator is trusted.

The actual inlined engine measures 0.977–1.041× throughput and 0.749–0.766×
dependency-chained latency at the three affected lengths. The official CLI
subset (lengths 1, 2, 3, aligned and unaligned, three pairs) measures **1.010×**
median across six cases, with a 0.962–1.056× range. Both old callbacks match the
audited stock assembly; all 16 copied CLI files and measured binary hashes were
checked. These results do not support adopting the rewrite.
[Proof and hashes](results/search/xxhash_vecbytes_ir/length-proof/summary.json),
[proof log](results/search/xxhash_vecbytes_ir/length-proof/proof.log),
[native checks](results/search/xxhash_vecbytes_ir/native-check.json),
[engine results](results/search/xxhash_vecbytes_ir/bench-inline/summary.json),
[engine assembly audit](results/search/xxhash_vecbytes_ir/bench-inline/assembly-audit.json),
[official CLI results](results/search/xxhash_vecbytes_ir/bench-cli/summary.json),
[CLI raw measurements](results/search/xxhash_vecbytes_ir/bench-cli/raw.json),
[CLI assembly audit](results/search/xxhash_vecbytes_ir/bench-cli/assembly-audit.json),
[status](results/search/xxhash_vecbytes_ir/status.json).

The direct C variants `xxhash_vecbytes`, `xxhash_vecbytes_len`, and
`xxhash_vecbytes_xor` remain unaccepted due to SMT timeouts, and were not emitted
as native candidates or benchmarked. The first C variant's exhaustive check
passed 14 unchanged-path cases and timed out on six affected cases. The direct
IR rewrite's whole-function check also timed out before all 20 length checks
passed. Its acceptance does not establish equivalence of those C variants.

### Switch-based one-byte lookup

`xxhash_vectable_switch` replaces the verified constant-vector lookups with
switches whose cases return constants. Freezing the branch index and retaining
the original vector expression as a fallback preserves poison and undef
behavior. The checked IR introduces no globals. After verification, normal
native optimization turns the switches into two 128-entry read-only tables,
eliminating the previous vector implementation's 2 KiB stack copies.

The whole-function composition check proves the raw helper but times out on the
dispatcher's reverse direction, including a 90-second retry. Acceptance instead
comes from **20 exhaustive bidirectional length checks directly against the
immutable original IR**, using the unmodified verifier. All other inputs remain
symbolic. Native checks pass 17,000 comparisons, 512 exhaustive byte/key-fallback
cases, and 34 page-boundary cases.

The inlined upstream engine measures **1.169× throughput and 1.494× latency** for
one-byte inputs, with throughput regressions at other lengths. The complete
official CLI sweep (lengths 1–16, aligned and unaligned, three paired runs,
96 invocations) measures **0.872× median across 32 cases**. Its one-byte ratios
are **1.014× aligned / 1.061× unaligned**. This is not a general performance
improvement and does not achieve 2×. Both old callbacks match the stock assembly;
all 16 copied CLI files and recorded binary hashes pass the saved audit.
[Transformation](lower-vector-switch.py),
[proof manifest](results/search/xxhash_vectable_switch/length-proof/summary.json),
[complete proof log](results/search/xxhash_vectable_switch/length-proof/proof.log),
[native checks](results/search/xxhash_vectable_switch/native-check.json),
[engine measurements](results/search/xxhash_vectable_switch/bench-inline/summary.json),
[official CLI measurements](results/search/xxhash_vectable_switch/bench-cli/summary.json),
[CLI commands and raw results](results/search/xxhash_vectable_switch/bench-cli/raw.json),
[runnable audit](results/search/xxhash_vectable_switch/audit.py),
[status](results/search/xxhash_vectable_switch/status.json).

A four-entry control proves the switch/fallback construction and compiles to a
table load. Deliberately changing an entry or removing the fallback produces
counterexamples; a generic 128-entry control times out. These controls do not
substitute for the complete hash proofs above.
[Controls](results/search/vector-switch-control/controls.json),
[control script](results/search/vector-switch-control/check.py).
The alternate `xxhash_vectable32_switch` composition also times out in reverse
for the dispatcher and remains unaccepted and unbenchmarked.

Combining the two switches into one 256-case lookup
(`xxhash_vectable_fusedswitch120`) passes all **20 exhaustive bidirectional
length checks** directly against the immutable original with a 120-second SMT
timeout. The earlier 30-second run proved 19 cases but timed out on the
dispatcher's length-one reverse check; its misleading "20 correct
transformations" summary was rejected by the explicit equivalence-message gate.
The accepted retry uses byte-identical candidate IR and preserves the earlier
logs. Native checking again passes 17,000 random comparisons, all 512 byte/key
cases, and 34 boundary checks. Native code uses one 2 KiB read-only table.

The full official CLI sweep now measures **1.328× for one-byte inputs** in both
aligned and unaligned modes. Its median across all 32 cases is **1.000×**, with
ratios from 0.871× to 1.328×; lengths 2 and 3 still regress. This is a measured
one-byte improvement, not the requested general 2× result. The engine records
1.388× one-byte throughput and 1.478× latency, but the old throughput varies
from 2.20 to 4.95 ns across the three pairs, so the engine throughput median
requires caution. Every CLI source file, recorded binary hash, and stock
callback comparison passes the audit.
[Proof and hashes](results/search/xxhash_vectable_fusedswitch120/length-proof/summary.json),
[proof log](results/search/xxhash_vectable_fusedswitch120/length-proof/proof.log),
[native checks](results/search/xxhash_vectable_fusedswitch120/native-check.json),
[engine results](results/search/xxhash_vectable_fusedswitch120/bench-inline/summary.json),
[engine variability](results/search/xxhash_vectable_fusedswitch120/bench-inline/length-one-variability.json),
[official CLI results](results/search/xxhash_vectable_fusedswitch120/bench-cli/summary.json),
[CLI commands and raw results](results/search/xxhash_vectable_fusedswitch120/bench-cli/raw.json),
[runnable audit](results/search/xxhash_vectable_fusedswitch120/audit.py),
[status](results/search/xxhash_vectable_fusedswitch120/status.json).

### Lookup dispatch experiments

Moving the one-byte lookup ahead of the original dispatch (`xxhash_lookup_early`)
passes 20 exhaustive bidirectional length checks, 17,000 random native
comparisons, 512 byte/key-fallback cases, and 34 page-boundary checks. The new
[`try-lookup-dispatch.py`](try-lookup-dispatch.py) compiles a C dispatcher, links
the previously checked lookup helper, explicitly inlines it, and checks the
complete resulting IR against the immutable original. No native object is
emitted until a complete proof passes.

The inlined engine measures **1.342× throughput and 1.600× latency** for one-byte
inputs. The official CLI subset (lengths 1, 2, 3, 8, 16, aligned and unaligned,
three pairs, 30 invocations) measures **1.333–1.335×** at length one but a
**0.926× median across ten cases**. Lengths 2–3 measure about 0.889×, length 8
about 0.924–0.928×, and length 16 about 0.987–0.989×. The extra early branch does
not yield a general improvement. The stock callbacks, all 16 copied CLI files,
and every recorded binary hash pass the audit.
[C dispatcher](experiments/xxhash_lookup_early.c),
[proof](results/search/xxhash_lookup_early/length-proof/proof.log),
[proof manifest](results/search/xxhash_lookup_early/length-proof/summary.json),
[native checks](results/search/xxhash_lookup_early/native-check.json),
[engine results](results/search/xxhash_lookup_early/bench-inline/summary.json),
[official CLI results](results/search/xxhash_lookup_early/bench-cli/summary.json),
[CLI commands and raw measurements](results/search/xxhash_lookup_early/bench-cli/raw.json),
[runnable audit](results/search/xxhash_lookup_early/audit.py),
[status](results/search/xxhash_lookup_early/status.json).

The follow-up dispatch (`xxhash_lookup_tail_ir`) handles lengths 2–3 before
checking the one-byte lookup. This retains the original branch count for
lengths 2–16 and lets Clang merge the first two byte loads into one unaligned
16-bit load. The direct C candidate `xxhash_lookup_tail` passes 18 of 20 length
checks but times out on the two- and three-byte cases. Its IR follow-up restores
the original ordering of the first avalanche XOR/shift expression while
retaining the changed dispatch and loads. The complete resulting functions
pass **all 20 bidirectional length checks directly against the immutable
original**, with the unmodified verifier. The C candidate remains unaccepted
and unbenchmarked; the accepted artifact is the transformed LLVM IR.

The complete official CLI sweep (32 cases, three pairs, 96 invocations) measures:

| Input length | Aligned speedup | Unaligned speedup |
| --- | ---: | ---: |
| 1 | 1.333× | 1.324× |
| 2 | 1.147× | 1.143× |
| 3 | 1.143× | 1.143× |

Lengths 4–16 range from **0.998× to 1.002×**. The median across all 32 cases is
**1.000×**, so this is an improvement for short inputs, not the requested 2×
overall result. The inlined engine measures one-byte latency at 1.632× and
two-/three-byte latency at 1.117×. Its first 44 callback instructions, covering
lengths 4–16, match the original. The native tests pass 17,000 random comparisons,
512 exhaustive byte/key-fallback cases, and 34 page-boundary cases. Stock
callbacks, all 16 copied CLI files, and every measured binary hash pass the
saved audit.
[C dispatcher input](experiments/xxhash_lookup_tail.c),
[IR transformation](restore-lookup-avalanche.py),
[proof manifest](results/search/xxhash_lookup_tail_ir/length-proof/summary.json),
[complete proof log](results/search/xxhash_lookup_tail_ir/length-proof/proof.log),
[native checks](results/search/xxhash_lookup_tail_ir/native-check.json),
[engine results](results/search/xxhash_lookup_tail_ir/bench-inline/summary.json),
[unchanged long-input instructions](results/search/xxhash_lookup_tail_ir/bench-inline/unchanged-long-path.json),
[official CLI results](results/search/xxhash_lookup_tail_ir/bench-cli/summary.json),
[CLI commands and raw measurements](results/search/xxhash_lookup_tail_ir/bench-cli/raw.json),
[runnable audit](results/search/xxhash_lookup_tail_ir/audit.py),
[status](results/search/xxhash_lookup_tail_ir/status.json).

## Vector load/XOR at sixteen bytes

`xxhash_vecxor16` replaces the two keyed scalar loads with a single unaligned
16-byte vector load/XOR only when the length is exactly sixteen. The other
lengths retain their scalar loads. All **25 exhaustive bidirectional length
checks** pass with the unmodified verifier, along with 17,000 random native
comparisons and 34 page-boundary cases. The whole-range attempt timed out;
acceptance comes from the complete length partition.

The generated sixteen-byte path uses `vmovdqu`, `vpxor`, `vmovq`, and `vpextrq`
before the original integer multiply and avalanche. The upstream timing engine
measures **0.891× throughput and 0.804× latency** at sixteen bytes. The official
CLI subset (lengths 9, 12, 16; aligned and unaligned; three pairs, 18 invocations)
confirms regressions in all six cases: **0.801–0.939×**, median **0.823×**.
The extra length branch and vector-to-integer transfers are possible costs;
these measurements do not isolate their individual effects. Reject this
candidate for performance. The audit confirms stock original callbacks,
inlined helpers, all 16 unchanged CLI files, and every recorded binary hash.
[Source](experiments/xxhash_vecxor16.c),
[proof manifest](results/search/xxhash_vecxor16/length-proof/summary.json),
[proof log](results/search/xxhash_vecxor16/length-proof/proof.log),
[native checks](results/search/xxhash_vecxor16/native-check.json),
[engine measurements](results/search/xxhash_vecxor16/bench-inline/summary.json),
[official CLI measurements](results/search/xxhash_vecxor16/bench-cli/summary.json),
[audit](results/search/xxhash_vecxor16/bench-cli/assembly-audit.json),
[status](results/search/xxhash_vecxor16/status.json).

An earlier overflow-select multiplication candidate, `xxhash_mulcarry`, timed
out in both complete function checks and was never emitted as native code or
benchmarked. Published Zen 4 measurements give both `MUL r64` and `MULX r64`
three-cycle low-result latency, four-cycle high-result latency, and one-cycle
reciprocal throughput, so changing the opcode alone has no clear latency
advantage. Register constraints can still differ. This is an instruction-level
observation, not a bound on achievable hash performance.
[Candidate and rejection](results/search/xxhash_mulcarry/status.json),
[saved research](results/search/xxhash_mulcarry/instruction-research.json),
[MUL measurements](https://www.uops.info/html-instr/MUL_R64.html#ZEN4),
[MULX measurements](https://uops.info/html-instr/MULX_R64_R64_R64.html#ZEN4).

## Moving the four-to-eight-byte key through the linear mixing stage

`xxhash_keymix` distributes the initial rotate/XOR stage over the input and
key separately. With the benchmark's default secret and zero seed, the key's
contribution can be precomputed. This aims to change the dependency chain
before the two multiplications. It adds operations for arbitrary runtime keys;
no performance gain is established.

Both complete function queries time out at 30 seconds. Exhaustive partitioning
passes the 12 unchanged dispatcher lengths but times out on all ten affected
checks: lengths 4–8 in both the raw helper and dispatcher. Pairing corresponding
rotated input/key terms directly in IR (`xxhash_keymix_ir`) also times out in
both whole-function queries.

A default-key branch (`xxhash_keymix_fixed`) is rejected with counterexamples:
branching on a poison key introduces undefined behavior where the original
returns poison. A subsequent IR variant (`xxhash_keymix_select`) selects the
mixed value without branching on the key. It has no reported counterexample,
but its whole-function and all ten affected length queries time out. Neither
variant is accepted, emitted as native code, or benchmarked.

`xxhash_keybias` instead XORs the keyed input with a constant before the linear
stage and XORs that constant's mixed value afterward. The two contributions
cancel algebraically, and the default key cancels before the rotates. This
avoids a key-dependent branch and separate runtime key rotations. Its two
whole-function checks time out at 30 seconds; length partitioning again passes
12 unchanged cases and times out on all ten affected cases at ten seconds.
It remains unaccepted and unbenchmarked.
[Source](experiments/xxhash_keybias.c),
[proof coverage and hashes](results/search/xxhash_keybias/length-proof/summary.json),
[status](results/search/xxhash_keybias/status.json).

The isolated `xxhash_keybias120` retry preserves the same C source and LLVM
function bodies, allowing 120 seconds per SMT query. Both complete checks still
time out (240.6 seconds total); no native object is emitted. On the unrestricted
linear control, solver seeds 1–4 also time out at five seconds per query. The
checker binary and input domain remain unchanged. These failures do not show
that the rewrite is incorrect, but they leave it unverified and unbenchmarked.
[Longer-run commands and hashes](results/search/xxhash_keybias120/trial.json),
[longer-run log](results/search/xxhash_keybias120/proof.log),
[seed trials](results/search/keymix-linear-control/seeds/summary.json).

The isolated rotate/XOR control passes with `noundef` integer arguments; changing
one rotation produces a value-mismatch counterexample. The unrestricted control
times out. These controls identify a definedness-related verification difficulty,
not an accepted hash optimization. The actual reference and candidate checks
retain the original input domain and unmodified verifier.
[C rewrite](experiments/xxhash_keymix.c),
[whole-function log](results/search/xxhash_keymix/proof.log),
[length-partition log](results/search/xxhash_keymix/length-proof/proof.log),
[IR variants](pair-keymix-xors.py),
[branch counterexamples](results/search/xxhash_keymix_fixed/proof.log),
[value-select partition](results/search/xxhash_keymix_select/length-proof/summary.json),
[runnable controls](results/search/keymix-linear-control/check.py),
[control results](results/search/keymix-linear-control/summary.json).

## Narrowing the middle mixing addition

`xxhash_mix32` computes `(h >> 35) + len` with a 32-bit addition in the
four-to-eight-byte helper. Both complete functions pass direct bidirectional
verification, followed by 17,000 random native comparisons and 34 boundary
checks. The full inlined benchmark callback has exactly the same instructions
as the original and the stock reference. The compiler widens the operation
again during optimization.

Three paired runs of the custom driver using the upstream timing engine have
an overall median ratio of **1.0025×**. With identical callback instructions,
this does not establish an optimization gain. No official CLI run was added
for this unchanged native implementation.
[Source](experiments/xxhash_mix32.c),
[complete equivalence log](results/search/xxhash_mix32/proof.log),
[native checks](results/search/xxhash_mix32/native-check.json),
[measurements](results/search/xxhash_mix32/bench-inline/summary.json),
[runnable assembly audit](results/search/xxhash_mix32/audit.py),
[audit output](results/search/xxhash_mix32/bench-inline/assembly-audit.json),
[status](results/search/xxhash_mix32/status.json).

## Eight-byte dispatch specialization

The upstream documentation emphasizes inlining for short inputs; the audited
baseline already uses it. `xxhash_eight_tail` instead changes where the existing
safe eight-byte load specialization is dispatched: after the `len > 8` check,
it handles `len == 8` directly, then handles lengths 4–7 and 0–3. The eight-byte
path therefore retains two comparisons and uses a single memory `rorx` to load
and exchange the input halves. The 9–16-byte core path remains unchanged.
[Research notes](results/search/xxhash_eight_tail/research.json).

The whole-function checks time out, but all **22 exhaustive bidirectional
length checks** pass with the original verifier. Native tests pass 17,000 random
comparisons and 34 page-boundary cases. The custom driver using the upstream
timing engine measures **1.050× throughput / 1.003× latency** at eight bytes,
with throughput regressions at lengths 1–7.

The official CLI subset covers lengths 1, 4, 7, 8, 9, and 16, aligned and
unaligned, with three paired runs and 36 invocations. Its eight-byte ratios are
only **1.008–1.010×**, while the tested shorter cases measure **0.791–0.897×**.
The median across these twelve cases is **0.938×**. Reject this candidate as a
general improvement. The stock baseline callbacks, all 16 copied CLI files,
and all 36 timed binary hashes pass the audit.
[Source](experiments/xxhash_eight_tail.c),
[proof manifest](results/search/xxhash_eight_tail/length-proof/summary.json),
[complete proof log](results/search/xxhash_eight_tail/length-proof/proof.log),
[native checks](results/search/xxhash_eight_tail/native-check.json),
[engine measurements](results/search/xxhash_eight_tail/bench-inline/summary.json),
[official CLI measurements](results/search/xxhash_eight_tail/bench-cli/summary.json),
[CLI audit](results/search/xxhash_eight_tail/bench-cli/assembly-audit.json),
[status](results/search/xxhash_eight_tail/status.json).

The follow-up `xxhash_eight_shared` shares the entire four-to-eight-byte mixing
stage after selecting the loaded input. All **17 exhaustive bidirectional
dispatcher checks** pass, together with 17,000 random native comparisons and
34 boundary cases. It removes duplicated arithmetic from the callback, but
the 4–7-byte path now jumps into the shared mixer. The custom engine measures
1.028× throughput / 1.018× latency at eight bytes and larger throughput
regressions at lengths 4–7.

The same official CLI subset (twelve cases, three pairs, 36 invocations) measures
**0.983–0.997× at eight bytes**, **0.780–0.881× at the tested shorter lengths**,
and an overall median of **0.904×**. Reject this variant too. Both candidates'
first 21 core callback instructions, covering the complete 9–16-byte path,
are identical to the original. Their audits verify the stock original callbacks,
all 16 copied CLI files, and every timed binary hash. Neither replaces the
best accepted lookup/dispatch candidate or meets the 2× goal.
[Shared source](experiments/xxhash_eight_shared.c),
[proof manifest](results/search/xxhash_eight_shared/length-proof/summary.json),
[complete proof log](results/search/xxhash_eight_shared/length-proof/proof.log),
[native checks](results/search/xxhash_eight_shared/native-check.json),
[engine measurements](results/search/xxhash_eight_shared/bench-inline/summary.json),
[official CLI measurements](results/search/xxhash_eight_shared/bench-cli/summary.json),
[CLI audit](results/search/xxhash_eight_shared/bench-cli/assembly-audit.json),
[unchanged long path](results/search/xxhash_eight_shared/bench-inline/unchanged-long-path.json),
[status](results/search/xxhash_eight_shared/status.json).

## Removing the byte-lookup index adjustment

`xxhash_lookup_remap` starts from the accepted `xxhash_lookup_tail_ir` candidate.
It XORs the frozen switch index with 128 and remaps every explicit case by the
same permutation. The existing default case and poison/undef fallback remain
part of the checked program. Native lowering then emits the table in unsigned
byte order, removing `add $0x80,%al` and `movzbl %al,%eax` from the one-byte path.
The first 44 core callback instructions, covering lengths 4–16, are unchanged.

The complete parent-to-candidate attempt passes the raw helper but times out
in the reverse dispatcher check. Acceptance instead comes from **all 20
exhaustive bidirectional length checks directly against the immutable original**.
The unmodified checker reports zero failed proofs or errors for that partition.
Native checks pass 17,000 random cases, 512 exhaustive table/fallback cases, and
34 page-boundary cases.

The custom driver with the upstream timing engine measures **1.340× one-byte
throughput and 1.732× one-byte latency** against the original. A separate five-pair
comparison against the previous accepted lookup implementation, using identical
harness IR, measures **1.042× latency** and **1.002× throughput** at one byte.
All five latency ratios exceed one; the individual ratios are retained rather
than treating the largest one as the result.

The full official CLI sweep has 32 cases, three pairs, and 96 invocations. Its
median ratio is **1.006×**. One-byte ratios are **1.361× aligned / 1.186× unaligned**;
lengths 2–3 measure **1.117–1.164×**. The unchanged 4–16-byte paths have measured
ratios from **0.915× to 1.047×**, so these timings do not establish uniform
performance preservation. The full run is retained, and the changed one-byte
case and unchanged eleven-byte control are repeated separately with the same
binaries. The five-pair confirmation measures **1.341× aligned / 1.355× unaligned**
at one byte and **0.994–0.996×** for the unchanged eleven-byte control. This
supports retaining the small latency improvement, while throughput remains
essentially unchanged relative to the prior lookup implementation. The original
full sweep is not replaced by the confirmation. The 2× objective remains unmet.
[IR transformation](remap-lookup-switch.py),
[proof manifest](results/search/xxhash_lookup_remap/length-proof/summary.json),
[complete proof log](results/search/xxhash_lookup_remap/length-proof/proof.log),
[native checks](results/search/xxhash_lookup_remap/native-check.json),
[instruction audit](results/search/xxhash_lookup_remap/bench-inline/index-removal-audit.json),
[core measurements](results/search/xxhash_lookup_remap/bench-inline/summary.json),
[comparison with previous candidate](results/search/xxhash_lookup_remap/bench-vs-parent/summary.json),
[full CLI measurements](results/search/xxhash_lookup_remap/bench-cli/summary.json),
[CLI source/binary audit](results/search/xxhash_lookup_remap/bench-cli/assembly-audit.json),
[CLI confirmation](results/search/xxhash_lookup_remap/bench-cli-confirm/summary.json),
[confirmation commands and raw data](results/search/xxhash_lookup_remap/bench-cli-confirm/raw.json),
[status](results/search/xxhash_lookup_remap/status.json).

The benchmark builder now supports `--build-only`: it retains the same proof
gate and saves binaries/build commands without creating timing records. The
remapping experiment checks this behavior and verifies that the inspected
binary is identical to the subsequently timed binary. An unaccepted bias trial
is also rejected with `--build-only`, before a benchmark directory is created.
[Build-only check](results/search/xxhash_lookup_remap/bench-inline/build-only-check.json).

A separate `xxhash_keybias_bit2` preflight attempts only one bit of the earlier
four-to-eight-byte bias rewrite. Both complete queries time out at 30 seconds;
partitioning passes the twelve unaffected cases but times out on all ten
affected cases at ten seconds. It does not provide the first accepted edge for
an incremental proof chain, and no native code or benchmark is produced.
[Source](experiments/xxhash_keybias_bit2.c),
[proof manifest](results/search/xxhash_keybias_bit2/length-proof/summary.json),
[status](results/search/xxhash_keybias_bit2/status.json).

## Early dispatch with the remapped lookup

`xxhash_remap_early` tests the one-byte case before the remaining dispatcher,
retaining the accepted remapped lookup and two/three-byte packing. All 20
exhaustive bidirectional length checks pass directly against the immutable
original. Native validation passes 17,000 random cases, 512 table/fallback
cases, and 34 page-boundary cases. The unpartitioned dispatcher query timed
out; acceptance relies on the complete partition, not that partial result.

The custom driver measures one-byte throughput at **1.624×** and latency at
**1.878×** versus the original. The unchanged upstream CLI's full 32-case,
three-pair sweep measures **1.338× aligned / 1.345× unaligned** one-byte
throughput, but **0.901–0.932×** for lengths 4–8. The median across all CLI
cases is **0.991×**. This candidate does not replace `xxhash_lookup_remap`:
the early dispatch trades longer-input throughput for one-byte latency and
does not satisfy the 2× objective. All 16 CLI source files, stock callbacks,
full inlining, and all 102 core/CLI binary records pass the audit.

[Source](experiments/xxhash_remap_early.c),
[proof and command](results/search/xxhash_remap_early/length-proof/summary.json),
[proof log](results/search/xxhash_remap_early/length-proof/proof.log),
[native validation](results/search/xxhash_remap_early/native-check.json),
[core measurements](results/search/xxhash_remap_early/bench-inline/summary.json),
[full CLI measurements](results/search/xxhash_remap_early/bench-cli/summary.json),
[raw CLI commands and hashes](results/search/xxhash_remap_early/bench-cli/raw.json),
[runnable audit](results/search/xxhash_remap_early/audit.py),
[status](results/search/xxhash_remap_early/status.json).

## Combining the best libdivide paths

`libdivide_hybrid` combines the existing countmask u32 expression with the
select u64 expression. A fresh complete bidirectional proof accepts both
functions, and 28,162 native differential cases pass. The upstream-applicable
header patch receives a separate bidirectional proof through the original
wrappers. Its generated component assembly matches the previously verified
implementations exactly.

Five paired runs of unchanged upstream `test/benchmark_branchfree.cpp`
(`u32 u64 branchfull`) measure **2.487× u32 / 2.229× u64**. The original hot
loops match a stock build, both optimized hot loops have no calls, and all
20 varying/fixed benchmark binary hashes pass the audit.

The adapted fixed-divisor sweep, also five pairs, measures **0.990–1.022×**
for ordinary u64 divisors, avoiding countmask's earlier **0.712–0.770×**
regressions. U32 ordinary-divisor ratios remain **0.947–1.002×**, including
roughly 5% regressions. Divisors 1 and 2 measure **1.93–1.97×** across the
two widths. This is a stronger varying-divisor candidate, not a claim of
2× across every workload; the xxHash objective remains open.

[Source](experiments/libdivide_hybrid.c),
[upstream patch](patches/libdivide-hybrid.patch),
[full proof](results/search/libdivide_hybrid/proof.log),
[patched-header proof and commands](results/search/libdivide_hybrid/patch-proof.json),
[native validation](results/search/libdivide_hybrid/native-check.json),
[official varying results](results/search/libdivide_hybrid/bench/summary.json),
[adapted fixed sweep](results/search/libdivide_hybrid/bench-fixed/summary.json),
[assembly and binary audit](results/search/libdivide_hybrid/assembly-audit.json),
[status](results/search/libdivide_hybrid/status.json).

## Vectorizing the four-to-eight-byte rotate stage

`xxhash_vecrotate` computes the two initial rotations in two 64-bit vector
lanes, XORs the lanes, and feeds the unchanged scalar multiplication stages.
This is a local experiment on the upstream `XXH3_rrmxmx` expression, using the
same x86-64-v3 flags. Both complete bidirectional function checks pass in
0.174 seconds with zero failures/errors; 17,000 native comparisons and 34
page-boundary cases also pass.

The emitted code uses register transfers, a broadcast, two variable vector
shifts, an OR, a lane shuffle and an XOR before returning to scalar arithmetic.
This is slower: the custom driver measures **0.905–0.926× throughput** and
**0.718–0.724× latency performance** on lengths 4–8. Three paired runs of the
unchanged upstream CLI on lengths **1, 4, 6, 8, 9, 16** (12 aligned/unaligned
cases, 36 processes) measure **0.745–0.829×** on the affected lengths; the
median across this subset is **0.813×**. This is a subset, not the full
1–16-byte benchmark. All 16 CLI files, stock baselines, full inlining and
42 core/CLI binary records pass the audit. Reject this candidate for
performance and retain `xxhash_lookup_remap`; the 2× objective remains open.

[Source](experiments/xxhash_vecrotate.c),
[complete proof](results/search/xxhash_vecrotate/proof.log),
[proof manifest](results/search/xxhash_vecrotate/trial.json),
[native validation](results/search/xxhash_vecrotate/native-check.json),
[core measurements](results/search/xxhash_vecrotate/bench-inline/summary.json),
[official CLI subset](results/search/xxhash_vecrotate/bench-cli/summary.json),
[CLI source and binary audit](results/search/xxhash_vecrotate/bench-cli/assembly-audit.json),
[status](results/search/xxhash_vecrotate/status.json).

## Matched x86-64-v4 vector experiments

The AMD EPYC 9654 host supports AVX-512. Two candidates use matched
**x86-64-v4** builds for old and new benchmarks; these are separate experiments
from the default x86-64-v3 results. Fresh stock core and CLI builds confirm
that both original callbacks match stock assembly. The existing compiler
flags otherwise remain unchanged. Each candidate passes two complete
bidirectional function proofs against the immutable original IR, plus 17,000
native comparisons and 34 page-boundary checks.

* `xxhash_vecrotate_v4` recompiles the prior vector-rotate source. It emits
  `vprolvq` instead of two vector shifts and OR. Its three-pair official CLI
  subset (lengths 1, 4, 6, 8, 9, 16; aligned/unaligned; 36 processes) has
  median **0.9998×**, with **0.986–1.003×** on affected lengths. Custom core
  latency performance remains **0.719–0.720×** for lengths 4–8.
* `xxhash_vecternary` keeps all three rotate-stage XOR operands in vector
  registers and emits `vpternlogq`. The same three-pair CLI subset has median
  **0.9974×**, with mixed **0.958–1.102×** affected-case ratios. Core latency
  performance is **0.712–0.744×**. The mixed throughput results do not support
  promotion given the consistent latency regression.
* `xxhash_vecmix` also writes the final multiplications and shifts as vector
  operations. Both full proofs and native checks pass, but the compiler
  scalarizes those stages: both complete core/CLI callbacks are
  instruction-identical to `xxhash_vecternary`. No additional timing is run.

All 16 CLI source files and 84 timing records across the two measured
candidates pass the stock/inlining/binary-hash audits. None replaces
`xxhash_lookup_remap`; the 2× objective remains unmet.

The trial and benchmark scripts now accept explicit `--march x86-64-v4`;
the default remains `x86-64-v3`. Benchmark scripts reject architecture
mismatches before building or running. Four negative checks cover both
mismatch directions and both benchmark scripts, verifying that existing
binaries remain unchanged. A separate 22-case length partition also passes
and emits an object identical to the direct-proof v4 object, checking that
the partition path preserves the selected architecture.
`bench-xxhsum.py --build-only` allows stock and
inlining audits before timings, matching the existing core option.

[Rotate-v4 results](results/search/xxhash_vecrotate_v4/status.json),
[rotate-v4 proof](results/search/xxhash_vecrotate_v4/proof.log),
[ternary results](results/search/xxhash_vecternary/status.json),
[ternary proof](results/search/xxhash_vecternary/proof.log),
[full-vector equivalence](results/search/xxhash_vecmix/proof.log),
[identical native callbacks](results/search/xxhash_vecmix/same-native-code.json),
[stock build script](results/search/xxhash_vecrotate_v4/build-stock.py),
[architecture gate checks](results/search/xxhash_vecrotate_v4/architecture-gate-check.json),
[CPU features](results/search/xxhash_vecrotate_v4/cpu.json),
[partition architecture check](results/search/xxhash_vecrotate_v4/partition-architecture-check.json).

## Packing inputs directly into the vector mixing stage

`xxhash_vecpackmix` combines two 32-bit input loads directly in vector
registers before the x86-64-v4 rotate/ternary-XOR stage. Two complete
bidirectional proofs pass in 1.078 seconds; native validation passes 17,000
comparisons and 34 page-boundary checks. The audited packing/initial-mixing
sequence falls from **10 to 8 instructions**, and the first 21 instructions
covering the long-input path are unchanged.

The instruction reduction does not establish a speedup. Three paired core
runs measure **0.996–1.074× throughput** and **0.747–0.805× latency
performance** at lengths 4–8. Three paired runs of the unchanged upstream CLI
on lengths **1, 4, 6, 8, 9, 16** (aligned and unaligned; 36 processes) measure
**0.942–1.086×** for the affected lengths, with median **0.986×** across the
12-case subset. Preserve the mixed results, including variation on the
unchanged paths; reject the candidate because it does not establish a useful
throughput gain and consistently regresses in latency. Both benchmark
baselines match stock v4 builds, all 16 CLI files are unchanged, and all 42
core/CLI binary records pass the audit.

A follow-up `xxhash_veckeymix` moves key mixing through the linear rotation
stage using vector expressions. Both complete function queries time out at
30 seconds, with zero incorrect transformations and zero accepted
transformations. This vector encoding does not resolve the previous scalar
key-mix proof difficulty. No native code or benchmarks are produced.

[Packed source](experiments/xxhash_vecpackmix.c),
[full proof](results/search/xxhash_vecpackmix/proof.log),
[native validation](results/search/xxhash_vecpackmix/native-check.json),
[instruction audit](results/search/xxhash_vecpackmix/packing-stage-audit.json),
[core results](results/search/xxhash_vecpackmix/bench-inline/summary.json),
[official CLI subset](results/search/xxhash_vecpackmix/bench-cli/summary.json),
[status](results/search/xxhash_vecpackmix/status.json),
[unaccepted key-mix proof](results/search/xxhash_veckeymix/proof.log),
[key-mix status](results/search/xxhash_veckeymix/status.json).

## Frozen-value guards for the key-mixing proof

`xxhash_keymix_freeze` attempts to make the key-mixing rewrite provable
without restricting input definedness. The candidate freezes the packed data
and key for the proposed separated linear mix, compares the original values
with their frozen versions, and selects the original mixing expression as a
fallback. The common multiplication stages and all original memory accesses
remain in the checked IR. This construction is an experiment, not an accepted
equivalence result.

Both complete function checks time out at 30 seconds per query. Exhaustive
length checking then passes the **12 unaffected cases** and times out on
**all 10 affected cases** at ten seconds per query. There are no reported
incorrect transformations or checker errors, but the candidate is unaccepted:
no native object or benchmark is produced.

An unrestricted scalar control for the guarded linear identity also times
out at ten seconds. A deliberately wrong rotation is rejected with a concrete
counterexample (`data=1`, `key=0`). These controls neither restrict undefined
inputs nor establish full hash equivalence.

`xxhash_keymix_freeze_identity` separately attempts the first step of a
compositional proof: add the guards/fallback while retaining the original
linear mixing formula in the frozen fast path. Both full-function checks
time out at 15 seconds. Because this first step is not accepted, no second
composition edge is attempted. It also produces no native object or timings.
The existing accepted candidate remains unchanged; the 2× objective is open.

[Reproducible builder](try-keymix-freeze.py),
[direct candidate proof](results/search/xxhash_keymix_freeze/proof.log),
[exhaustive length proof](results/search/xxhash_keymix_freeze/length-proof/proof.log),
[candidate status](results/search/xxhash_keymix_freeze/status.json),
[linear controls](results/search/keymix-freeze-control/summary.json),
[guard-only proof](results/search/xxhash_keymix_freeze_identity/proof.log),
[guard-only status](results/search/xxhash_keymix_freeze_identity/status.json).

## Separating libdivide shift validity from the machine count

`libdivide_poisoncount` transforms the accepted hybrid's LLVM IR. Each
variable shift becomes a low-bit-masked shift followed by a select that
returns LLVM poison exactly when the original count was invalid. The
validity condition uses the original count expression; no raw metadata
assumptions are added. The native compiler can discard the poison branch and
its count calculations. This is an **LLVM IR transformation**, not a new
upstream C header patch.

Both full bidirectional function checks pass in 6.213 seconds, directly
against the immutable original functions. Native validation passes 28,162
defined triples. A negative control removes the validity/poison select and
is rejected in reverse checking with two poison counterexamples and zero
explicit equivalence confirmations. The checker's misleading “2 correct
transformations” counter does not make that mutant acceptable.

Audited raw-helper instruction counts fall from **21 to 15 for u32** and
**20 to 14 for u64**. Five paired runs of unchanged upstream
`test/benchmark_branchfree.cpp` (`u32 u64 branchfull`) measure
**2.462× u32 / 2.470× u64** versus the original. A separate five-pair direct
comparison against `libdivide_hybrid`, using identical driver IR, measures
**1.242× u32 / 1.187× u64**, with all five pairs faster for each width.
Those individual ratios range **1.064–1.631×** and **1.131–1.275×**;
report the medians rather than the peaks, and do not compare absolute
nanoseconds across these different runs.

The adapted fixed-divisor sweep is mixed: its 20-case median is **0.992×**
versus the original, with ordinary-divisor ranges **0.933–1.054× u32** and
**0.923–1.041× u64**. A direct fixed-divisor comparison with the hybrid has
median **1.028×**, but substantial per-pair variability remains. Preserve
all measurements; this does not establish a universal speedup or resolve
all fixed-divisor regressions. Retain the new IR candidate for the
varying-divisor workload and keep the hybrid C patch separately identified.
The xxHash objective remains open.

Original varying-divisor hot loops match the stock build, optimized loops
have no calls, and all 40 original/parent comparison timing records match
their recorded binary hashes.

[Transformation builder](try-poisoncount.py),
[complete proof](results/search/libdivide_poisoncount/proof.log),
[proof command and hashes](results/search/libdivide_poisoncount/trial.json),
[native checks](results/search/libdivide_poisoncount/native-check.json),
[negative domain control](results/search/libdivide_poisoncount/negative-control.json),
[official varying benchmark](results/search/libdivide_poisoncount/bench/summary.json),
[adapted fixed sweep](results/search/libdivide_poisoncount/bench-fixed/summary.json),
[direct varying comparison](results/search/libdivide_poisoncount/bench-vs-parent/summary.json),
[direct fixed comparison](results/search/libdivide_poisoncount/bench-fixed-vs-parent/summary.json),
[assembly audit](results/search/libdivide_poisoncount/assembly-audit.json),
[comparison audit](results/search/libdivide_poisoncount/parent-comparison-audit.json),
[status](results/search/libdivide_poisoncount/status.json).

## Attempting an ordinary C form of the shift-validity rewrite

Two C formulations were checked with the unchanged Clang `-O3` frontend
and the same immutable reference IR:

* `libdivide_validcount` uses an explicit validity branch, selecting the
  masked count for valid metadata and the original shift otherwise. Clang
  replaces the invalid nonzero-magic branch's poison result with zero.
* `libdivide_splitshift` separates the low-bit right shift from an extra
  left shift. The latter is a zero shift for valid metadata and an invalid
  shift otherwise. Clang removes that extra shift, broadening the resulting
  LLVM function's definedness.

Both post-optimization candidates are rejected by bidirectional checking:
each has **two reverse poison counterexamples and zero explicit equivalence
confirmations**. The checker's “2 correct transformations” summary describes
successful forward checks and does not override the reverse failures. No
native objects or benchmark runs are produced. The proof boundary and input
domain are unchanged; neither candidate replaces the verified LLVM rewrite
or the separately verified hybrid C header patch.

[Validity-branch source](experiments/libdivide_validcount.c),
[validity-branch proof](results/search/libdivide_validcount/proof.log),
[validity-branch status](results/search/libdivide_validcount/status.json),
[split-shift source](experiments/libdivide_splitshift.c),
[split-shift proof](results/search/libdivide_splitshift/proof.log),
[split-shift status](results/search/libdivide_splitshift/status.json).

## Distributing the 9–16-byte byte swap

`xxhash_swapload` tests the local scheduling hypothesis
`bswap(input ^ key) == bswap(input) ^ bswap(key)` in the 9–16-byte path.
Clang recombines the C expression but drops the original byte-swap call's
`noundef` return attribute. Both reverse checks reject the broadened
definedness; there are zero explicit equivalence confirmations. No native
object or benchmark is produced.

`xxhash_swapload_ir` retains the original `noundef` call while exposing the
distributed expression. Both whole-function queries time out at 30 seconds.
At five seconds per query, exhaustive length partitioning produces **9 full
equivalences and 16 timeouts** across 25 cases. The summary's 12 correct
transformations does not establish 12 bidirectional equivalences. A separate
unrestricted scalar-prefix identity passes, and a one-bit wrong-result
control is rejected, but that does not establish full-function equivalence.

An IR-only canonicalization check finds that LLVM folds the distributed
swaps back into the original arithmetic, again losing the `noundef`
attribute. This removes the intended scheduling change. Neither candidate
is accepted or benchmarked, and existing performance claims are unchanged.

[C source](experiments/xxhash_swapload.c),
[C rejection](results/search/xxhash_swapload/proof.log),
[IR builder](try-swapload-ir.py),
[full proof attempts](results/search/xxhash_swapload_ir/proof.log),
[length proof attempts](results/search/xxhash_swapload_ir/length-proof/proof.log),
[prefix controls](results/search/xxhash_swapload_ir/prefix-control/summary.json),
[canonicalization check](results/search/xxhash_swapload_ir/canonical-check.json),
[status](results/search/xxhash_swapload_ir/status.json).

## Balanced dispatch with the retained one-byte lookup

`xxhash_remap_balanced` groups lengths 0–3 before splitting lengths 4–8
and 9–16. It uses the accepted remapped lookup dispatcher for the short
group, retaining its two-byte loads and all key/undefined-input fallbacks.
The native short paths skip one length comparison; the 9–16-byte path
adds one. Both original full-function queries time out at 30 seconds,
but **all 20 exhaustive bidirectional length checks pass** at the existing
120-second query limit. Native checks pass 17,000 random cases, 512
lookup/fallback cases, and 34 page-boundary cases.

Three paired runs of the unchanged upstream CLI cover all 32 aligned and
unaligned cases for lengths 1–16. Their median ratio is **0.897×**. Group
medians are **1.282× for lengths 1–3**, **0.927× for 4–8**, and **0.855×
for 9–16**. The custom driver using the upstream timing engine measures
one-byte latency at **1.808×**, random-size throughput at **0.926×**, and
random-size latency at **1.062×**.

This run has substantial timing variability: the three custom-driver
16-byte throughput ratios are **2.436×, 0.629×, and 0.948×**. During a
roughly one-minute sample of the CLI run, CPU24's sibling thread CPU216
was busy about 40% of the time. This records concurrent activity, not an
isolated explanation of the variance. Preserve all measurements and do
not promote this candidate or claim a broad improvement. The full 2×
objective remains unmet.

Both baseline callbacks match stock assembly; all 16 CLI source files
remain unchanged. The post-run audit checks all 102 recorded binary hashes.

[Source](experiments/xxhash_remap_balanced.c),
[complete length proof](results/search/xxhash_remap_balanced/length-proof/proof.log),
[proof manifest](results/search/xxhash_remap_balanced/length-proof/summary.json),
[native checks](results/search/xxhash_remap_balanced/native-check.json),
[official CLI results](results/search/xxhash_remap_balanced/bench-cli/summary.json),
[raw CLI measurements](results/search/xxhash_remap_balanced/bench-cli/raw.json),
[custom-driver results](results/search/xxhash_remap_balanced/bench-inline/summary.json),
[environment observations](results/search/xxhash_remap_balanced/measurement-environment.json),
[runnable audit](results/search/xxhash_remap_balanced/audit.py),
[status](results/search/xxhash_remap_balanced/status.json).

## Key-mixing arithmetic: proof completed, no measured improvement

`xxhash_keymix_qf` distributes the linear rotate/XOR mix over the input and
key in the 4–8-byte path. The original checker timed out on this arithmetic.
An isolated checker build changes only solver strategy: try normalized
`qfaufbv` for one second, then fall back to the original tactic pipeline if
undecided. LLVM semantics, query construction, input assumptions, and
acceptance gates remain unchanged. This is a modified-checker result;
the pinned original checker and its link inputs remain unchanged.

The raw 4–8-byte function passes bidirectional equivalence. The complete
dispatcher times out, but **all 22 exhaustive bidirectional length checks
pass**, covering helper lengths 4–8 and dispatcher lengths 0–16. Native
checks pass 17,000 random cases and 34 page-boundary cases. Five checker
controls accept known-valid transformations and reject wrong rotation,
changed poison domain, and missing undefined-input fallback. These controls
are regression evidence, not a formal verification of the checker itself.

Three paired official CLI runs cover 32 aligned/unaligned cases and 96
processes. The median of case speedups is **0.999×**, with **0.996×** for
the modified 4–8-byte group (range **0.900–1.108×**). The custom driver's
4–8-byte throughput ratios range **0.903–1.043×** and latency ratios
**0.942–0.985×**. Unchanged paths also fluctuate substantially on this shared
host. These measurements establish no consistent gain; this candidate is
not promoted, and the 2× xxHash objective remains open.

The audit verifies stock baseline callbacks, full helper inlining, all 16
unchanged upstream CLI files, all 102 recorded timing binary hashes, and
the isolated checker build and controls. Equivalence remains scoped to
the LLVM functions; the frontend and subsequent native compilation are
trusted.

[Source](experiments/xxhash_keymix.c),
[solver-only patch](results/search/alive2-keymix-portfolio/solver.patch),
[checker build and hashes](results/search/alive2-keymix-portfolio/build.json),
[checker controls](results/search/alive2-keymix-portfolio/controls-v2.json),
[complete length proof](results/search/xxhash_keymix_qf/length-proof/proof.log),
[proof command and hashes](results/search/xxhash_keymix_qf/length-proof/summary.json),
[native checks](results/search/xxhash_keymix_qf/native-check.json),
[official CLI results](results/search/xxhash_keymix_qf/bench-cli/summary.json),
[raw CLI measurements](results/search/xxhash_keymix_qf/bench-cli/raw.json),
[custom-driver results](results/search/xxhash_keymix_qf/bench-inline/summary.json),
[environment observations](results/search/xxhash_keymix_qf/measurement-environment.json),
[runnable audit](results/search/xxhash_keymix_qf/audit.py),
[status](results/search/xxhash_keymix_qf/status.json).

## Vector key mixing and lane-broadcast packing

The isolated solver strategy also completes the previously stalled vector
key-mixing proof. `xxhash_veckeymix_qf` uses the existing vector arithmetic
source with matched `x86-64-v4` builds. `xxhash_veckeypack_qf` changes only
the input construction: pack the two words into one lane, then broadcast
that lane instead of inserting both words twice.

For each candidate, the raw 4–8-byte function passes bidirectional checking,
the complete dispatcher times out, and **all 22 exhaustive bidirectional
length checks pass**. Each also passes 17,000 randomized native comparisons
and 34 page-boundary checks. These are modified-checker LLVM proofs with
the same solver-only patch and five controls described above; no input
assumptions were added.

Both official CLI runs cover lengths **1, 4, 5, 6, 7, 8, 16**, aligned and
unaligned, with three pairs (14 cases, 42 processes each). They are subset
measurements, not full short-input sweeps. The table reports medians across
the ten affected CLI cases or five affected custom-driver latency cases:

| Candidate | Packing/mixing instructions | Official CLI 4–8-byte ratio | Custom-driver 4–8-byte latency ratio |
| --- | ---: | ---: | ---: |
| Vector key mix | 12 (original: 10) | 0.679× | 0.712× |
| Lane-broadcast packing | 9 (original: 10) | 0.994× | 0.794× |

The broadcast removes redundant insertions, but neither candidate supplies
a consistent performance gain. Its official affected-case ratios range
0.944–1.151× and custom-driver latency ratios 0.776–0.798×. Timing variation
also affects unchanged paths on this heavily shared host; these separate
runs do not establish a direct speedup between the two candidates. Neither
is promoted. The retained lookup candidate and the unresolved 2× objective
remain unchanged.

For each run, the audit verifies matched-v4 stock callbacks, full inlining,
all 16 unchanged CLI files, 48 timing binary hashes, and the isolated
checker hashes and controls.

[Vector key-mix proof](results/search/xxhash_veckeymix_qf/length-proof/proof.log),
[proof manifest](results/search/xxhash_veckeymix_qf/length-proof/summary.json),
[official CLI results](results/search/xxhash_veckeymix_qf/bench-cli/summary.json),
[raw CLI measurements](results/search/xxhash_veckeymix_qf/bench-cli/raw.json),
[status](results/search/xxhash_veckeymix_qf/status.json),
[broadcast source](experiments/xxhash_veckeypack.c),
[broadcast proof](results/search/xxhash_veckeypack_qf/length-proof/proof.log),
[broadcast proof manifest](results/search/xxhash_veckeypack_qf/length-proof/summary.json),
[broadcast native checks](results/search/xxhash_veckeypack_qf/native-check.json),
[broadcast official CLI results](results/search/xxhash_veckeypack_qf/bench-cli/summary.json),
[broadcast raw CLI measurements](results/search/xxhash_veckeypack_qf/bench-cli/raw.json),
[broadcast custom-driver results](results/search/xxhash_veckeypack_qf/bench-inline/summary.json),
[packing assembly](results/search/xxhash_veckeypack_qf/packing-stage-audit.json),
[runnable audit](results/search/xxhash_veckeypack_qf/audit.py),
[broadcast status](results/search/xxhash_veckeypack_qf/status.json).

## Four-byte periodic scalar mixing

`xxhash_four_periodic` exploits the repeated 32-bit input word at length four:
the initial 64-bit rotate/XOR mix can be expressed as two 32-bit rotates,
word replication, and a separately mixed key. Other lengths retain their
original arithmetic. Both whole-function checks time out; length partitioning
passes 20 checks but times out on the two four-byte cases. That C trial remains
unaccepted and has no native benchmark.

Clang represents word replication as multiplication by `2^32 + 1`.
`expand-four-periodic.py` expands those two IR instructions to shift/OR without
changing the input domain. The resulting `xxhash_four_periodic_ir` passes
**all 22 exhaustive bidirectional checks directly against the immutable
original**, using the isolated solver-strategy checker. It also passes 17,000
random native comparisons and 34 page-boundary cases. The accepted artifact
is the transformed LLVM IR, not a newly verified C header patch.

The full official CLI sweep covers 32 aligned/unaligned cases, three pairs,
and 96 processes. The median case ratio is **0.978×**. Length four measures
**0.979× aligned / 0.911× unaligned**, and lengths 5–8 have median **0.774×**
(range **0.701–0.811×**). The custom driver measures four-byte throughput at
**0.950×**, latency at **0.985×**, and random-length throughput at **0.811×**.
No performance improvement is established; do not promote this candidate.

The native four-byte path uses one input load and 32-bit rotates, but adds
dispatch and a jump to the shared finalizer. The first 21 instructions on the
9–16-byte path are unchanged. That group's measured ratios still range
0.838–1.062× on this shared host; assembly observations do not isolate the
cause of timing variation. The audit verifies stock callbacks, full inlining,
all 16 unchanged CLI files, and all 102 timing binary hashes.

The upstream [small-input guidance](https://github.com/Cyan4973/xxHash) and
[author's performance discussion](https://fastcompression.blogspot.com/2019/03/presenting-xxh3.html)
emphasize inlining and branch behavior. Both implementations already receive
the same upstream inline policy; further specialization must justify its
branch cost in the measurements.

[C source](experiments/xxhash_four_periodic.c),
[retained C proof failures](results/search/xxhash_four_periodic/status.json),
[IR builder](expand-four-periodic.py),
[complete proof](results/search/xxhash_four_periodic_ir/length-proof/proof.log),
[proof command and hashes](results/search/xxhash_four_periodic_ir/length-proof/summary.json),
[native checks](results/search/xxhash_four_periodic_ir/native-check.json),
[official CLI results](results/search/xxhash_four_periodic_ir/bench-cli/summary.json),
[raw CLI measurements](results/search/xxhash_four_periodic_ir/bench-cli/raw.json),
[custom-driver results](results/search/xxhash_four_periodic_ir/bench-inline/summary.json),
[assembly observations](results/search/xxhash_four_periodic_ir/path-audit.json),
[runnable audit](results/search/xxhash_four_periodic_ir/audit.py),
[status](results/search/xxhash_four_periodic_ir/status.json).

## Length/key reassociation and measurement diagnostics

`xxhash_lookup_keylen` attempts to move the two-/three-byte length tag into
the key calculation, preserving the accepted one-byte lookup. Its two
whole-function checks time out, with zero explicit equivalence confirmations.
A matched, IR-only comparison of the default-key benchmark callback shows
that Clang folds the intended reassociation back into the packed-data OR
expression. Only the independent length shift moves earlier. This observation
does not prove full-function equivalence. The candidate is set aside without
native emission or a benchmark. The initial undeclared-helper compile error
is retained alongside the corrected source and failed proof.

Both benchmark runners now record whole-process wall/user/system time and
voluntary/involuntary context switches using Python's standard `resource`
module. Each run saves its runner source and hash. The `--label` option puts
repeat runs in fresh directories, and both runners reject attempts to rebuild
over existing raw measurements. Labels are validated before building.
**Diagnostics do not alter reported benchmark rates or speedups.**

An instrumented repeat of the existing verified `xxhash_lookup_remap` candidate
uses unchanged LLVM inputs and byte-identical callback instructions. The
custom-driver binaries are also byte-identical to the earlier run. The full
official CLI sweep again covers 32 cases, three pairs, and 96 processes; its
median case ratio is **1.025×**, with one-byte ratios **1.247× aligned /
1.317× unaligned**. Custom-driver one-byte throughput is **1.328×** and latency
**1.730×**. This remains below the 2× objective.

Core processes received **99.49–99.94% CPU time relative to wall time**, yet
unchanged-path throughput ratios still range **0.714–1.542×**. CLI process
CPU/wall ratios range **96.80–99.96%**. Time spent off-CPU does not account for
most of the core variation in aggregate. During a 30-second sample, CPU24's
sibling CPU216 was **93.55% busy**, and CPU24's reported frequency ranged
**2.70–2.95 GHz**. A separate 20-second survey found no quiet permitted pair:
even the least-busy pair was approximately 89% busy. These are concurrent
observations, not an isolated causal explanation or timing correction.

All 102 timing records pass binary/runner hash checks; stock callbacks and
all 16 unchanged CLI source files pass the audit. The existing proof remains
the 20 exhaustive bidirectional checks with the unmodified checker. Earlier
measurements remain intact; this is a repeat of the same optimization.

[Reassociation source](experiments/xxhash_lookup_keylen.c),
[IR comparison](results/search/xxhash_lookup_keylen/canonicalization/summary.json),
[candidate status](results/search/xxhash_lookup_keylen/status.json),
[overwrite-protection check](results/search/xxhash_lookup_keylen/measurement-preservation-check.json),
[label validation check](results/search/xxhash_lookup_remap/usage-label-check.json),
[official repeat results](results/search/xxhash_lookup_remap/bench-cli-usage/summary.json),
[raw CLI records and diagnostics](results/search/xxhash_lookup_remap/bench-cli-usage/raw.json),
[core diagnostics](results/search/xxhash_lookup_remap/bench-inline-usage/usage-audit.json),
[CLI diagnostics](results/search/xxhash_lookup_remap/bench-cli-usage/usage-audit.json),
[host sample](results/search/xxhash_lookup_remap/usage-host-sample.json),
[CPU survey](results/search/xxhash_lookup_remap/usage-cpu-survey.json),
[binary comparison](results/search/xxhash_lookup_remap/usage-binary-comparison.json),
[runnable audit](results/search/xxhash_lookup_remap/audit-usage.py),
[repeat status](results/search/xxhash_lookup_remap/usage-status.json).

## Retrying overflow-based multiplication with the solver portfolio

`xxhash_mulcarry_qf` retries the previously unaccepted 9–16-byte rewrite using
the isolated solver-strategy checker. It combines a multiply-with-overflow
low result with a separately computed high result, selecting zero when the
overflow flag is clear. Both complete functions still time out at 30 seconds,
with **zero explicit bidirectional equivalence confirmations**. No native
object or benchmark is produced.

Small isolated controls distinguish the arithmetic identity from its proof
under unrestricted LLVM values. At four bits, both unrestricted and `noundef`
versions pass bidirectionally. At eight bits, the `noundef` version passes,
while the unrestricted version times out at five seconds. A one-bit wrong-result
mutant is rejected at both widths. The `noundef` annotations belong only to
these controls; the hash candidate's input domain is unchanged. These controls
expose proof scaling, but neither prove nor refute full 64-bit hash equivalence.

The earlier instruction measurements also give MUL and MULX the same measured
Zen4 reciprocal throughput and low/high-result latencies. They supply no
independent reason to expect this encoding alone to deliver a speedup. Leave
the candidate unaccepted and retain the existing verified implementations.

[Candidate proof attempt](results/search/xxhash_mulcarry_qf/proof.log),
[command and hashes](results/search/xxhash_mulcarry_qf/trial.json),
[candidate status](results/search/xxhash_mulcarry_qf/status.json),
[eight-bit controls](results/search/mulcarry-control/summary.json),
[four-bit controls](results/search/mulcarry-control/four-bit.json),
[control assessment](results/search/mulcarry-control/status.json),
[saved instruction measurements](results/search/xxhash_mulcarry/instruction-research.json).

## Reproduction

The setup targets Ubuntu 22.04 x86-64 with Python 3.10, `uv`, Git, CMake, Ninja, GNU binutils, GCC 11 development files and the normal system C/C++ libraries. LLVM packages and Z3 are installed locally; root access is unnecessary. The first setup downloads about 130 MB of LLVM packages plus Z3. [Environment details](results/environment.json).

```bash
cd /srv/home/hantaolou/code/veriop
bash alive2/setup.sh
source alive2/env.sh
python alive2/check.py
python alive2/test_pipeline.py
python alive2/build-benches.py

# Run timing serially; change BENCH_CPU to an available CPU if needed.
BENCH_CPU=24 BENCH_LINK=lto BENCH_LABEL=rerun-libdivide \
  python alive2/benchmark.py libdivide:varying libdivide:fixed
BENCH_CPU=24 BENCH_LABEL=rerun-xxhash \
  python alive2/benchmark.py xxhash
```

Pinned toolchain: Clang/LLVM 20.1.8, Alive2 `v20.0` (`c0f5434f402ad91714ee0952f686cd0f524920ad`), Z3 4.15.3. LLVM and supporting Debian package URLs and hashes are in [packages.lock.json](toolchain/packages.lock.json). `setup.sh` was rerun successfully after installation.

The shared C compilation flags are:

```text
-O3 -march=x86-64-v3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize
```

`experiments/*_old.c` calls the pinned implementations directly. `libdivide_select.c` and `xxhash_dispatch.c` are the verified candidates. `xxhash_specialize.c` is a retained, unaccepted exploration. `build/ir/` contains the actual checked LLVM modules and their native objects. The build scripts also support separate-object timing (`BENCH_LINK=object`) so call overhead can be examined explicitly. No Lean translation is involved.
