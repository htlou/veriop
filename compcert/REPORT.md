# CompCert C1 layout and C2 cloning: results and proof boundary

C1 expands the search from fixed baseline groups to individual LTL nodes. The selected unweighted policy reduces actual Linear `Lgoto` counts by **2.68% on Embench** and **2.74% on MiBench**, retaining CompCert's original checker and semantic-preservation proofs. C2 clones shared terminal blocks and removes another **23.39% of Embench jumps relative to C1**, with code growth and an **unproved original-to-cloned LTL transformation**.

The result supports two research cases: modest measured improvement inside an already permissive verified layout interface, and greater structural improvement from a CFG-changing transformation requiring an additional proof. Layout tuning has stopped under the agreed stopping rule.

The later [frozen-policy wall-clock evaluation](PERFORMANCE.md) adds runtime
evidence: 5,280 pinned-core measurements show no resolved per-program C1
speedup and several regressions. Thus the structural gains below should not
be read as runtime gains. The policy and original correctness proofs remain
unchanged; C2 is excluded from those timings.

The custom wall-clock aggregates are diagnostic, not official suite scores.
The [official scoring protocol](performance/OFFICIAL.md) now governs
performance evaluation and C3 acceptance.

[All numerical tables](RESULTS.md), [reproduction commands](README.md), [acceptance audit](results/completion-audit.json), and [follow-up protocol](C1-C2.md) accompany this report. The [v2 report](REPORT-v2.md) preserves the previous result and its historical acceptance status; this report supersedes that status.

## C1 implementation and selection

The baseline is official CompCert `v3.18`, commit `14d616046360a0b2611ebdfc2f98368af402e1f7`. Its upstream version banner says 3.17; the commit and release tag identify the input. Other source pins are in [pins.json](pins.json).

Each C1 policy changes only `backend/Linearizeaux.ml` and adds `backend/LayoutSearch.ml`:

| Policy | Search and objective | Patch |
|---|---|---|
| Greedy | Follow best unused eligible successors, then start another trace; standalone diagnostic without a baseline cost guard | [greedy](patches/c1-greedy.patch) |
| Global unweighted, primary | Node moves, swaps, trace-subsequence moves, bounded directed reversals, neutral moves and three starts; retain lowest modeled actual Linear jump count | [global](patches/c1-global.patch) |
| Loop-weighted | Same search; maximize static weighted fall-through with a per-function baseline jump ceiling | [weighted](patches/c1-weighted.patch) |

Baseline groups supply only a flat initial order; they do not constrain moves. The starts are baseline, greedy and reversed baseline. Each receives 12 sweeps; subsequences are bounded to 65 nodes and reversals to 17. A private deterministic random state selects proposals and neutral moves. Negative adjacency-score moves are rejected; neutral moves can connect improving trajectories. The final incumbent is selected from initial and sweep-end orders using an exact model of Linear's label-prefix and entry-jump behavior. Intermediate adjacency scores are a search surrogate. This is bounded multistart local search, not an exhaustive global optimizer.

The weighted policy assigns weight 8 to eligible edges within one strongly connected component and 1 otherwise. This is a static cyclic-region proxy, without measured execution frequencies or nested-loop depth. Conditional arms can exchange fall-through status without reducing total jumps. Entry jumps remain part of the jump ceiling. No benchmark name, source filename, known output or profile enters the policy.

The [freeze manifest](results/frozen/c1-candidates.json) records source, patch and compiler hashes. C1-global was selected using Embench before this round's MiBench collection. MiBench had already been observed during v2, so these are confirmation results on a previously observed suite, not a fresh unseen holdout. All three policies remained unchanged after confirmation.

## C1 proof evidence

All **253 existing Rocq source files** are unchanged. Each C1 build began without `.vo` files and completed `make -j16 all`, `make check-admitted` and `make check-proof`. The kernel check includes the whole-compiler theorem dependency closure. Independently built `Linearize.vo`, `Linearizeproof.vo`, `Compiler.vo` and `Complements.vo` match the baseline byte for byte.

- [Baseline build record](results/baseline-build.json) and [complete log](logs/build-baseline.log).
- [Three C1 proof-build records](results/c1-proof-builds.json).
- [Primary full proof log](logs/build-c1-global.log), ending in `Modules were successfully checked`.
- [Original proof source hashes](results/baseline-proof-source-sha256.json) and [final audit](results/completion-audit.json).
- [Node-search check](c1/TestLayout.ml): 300 random CFGs, independent SCC reachability checks and 39,600 permutation/score observations; [log](logs/c1-layout-self-check.log).

The unchanged [enumeration checker](repos/c1-global/backend/Linearize.v) rejects duplicate IDs and checks coverage of reachable nodes. Its precise contract is slightly more permissive than “exactly a permutation of reachable nodes”: extra distinct IDs can pass coverage; IDs absent from `fn_code` emit no block. Every native C1 benchmark compiles through this checker, and every recorded Linear observation passes it. Existing [negative controls](results/validator-negative-control/summary.json) reject an empty enumeration and a repeated entry node.

The retained pass theorem is [Linearizeproof.transf_program_correct](repos/c1-global/backend/Linearizeproof.v). The retained whole-compiler theorem is [Compiler.transf_c_program_correct](repos/c1-global/driver/Compiler.v):

```coq
forall p tp,
  transf_c_program p = OK tp ->
  backward_simulation (Csem.semantics p) (Asm.semantics tp).
```

Each successful compilation remains connected to the same source semantics. For well-defined deterministic observable source behavior, this supports the intended before/after preservation claim. It is not assembly equality or a direct baseline/candidate bisimulation theorem. CompCert's usual extraction, OCaml, assembler/linker, external-library and execution-environment assumptions remain. This task uses CompCert/Rocq proofs, not Aeneas or Alive2.

## Benchmark protocol and acceptance

The measurements use unchanged upstream sources with a local recorded CompCert-compatible harness. They are structural evaluations, not official benchmark speed scores. [Machine data](results/machine.json) records the x86-64 AMD EPYC 9654 environment. Runtime checks are integration evidence; single-run timings do not establish a speedup.

| Suite | Input / functional oracle | Compiled per C1 policy | Functional-valid cases |
|---|---|---:|---:|
| CompCert test/c | Pinned upstream tests and expected stdout | 24/24 | 24/24 pass |
| Embench 1.0 | Upstream native support/main, CPU_MHZ=1, WARMUP_HEAT=1, verify_benchmark | 19/19 | 19/19 pass |
| MiBench | Pinned original-source mirror, upstream small inputs, JPEG/GSM fixtures, bftest KAT | 12/12 | 11/11 pass; bf diagnostic FAIL |
| PolyBench/C 4.2.1-beta | MINI_DATASET; complete live-out dumps compared with baseline | 30/30 | 30/30 pass |

Support sets were frozen before optimization. MiBench discovery tested 24 project recipes with 31 targets; ten projects supplied twelve accepted executables. The compiler flag adapter, actual commands and source hashes are recorded. GCC runs host configure probes; CompCert builds accepted benchmark objects. `SOURCE_DATE_EPOCH=0` controls Lout's embedded build time. Only bitcount timing/ranking fields and the Lout CreationDate header are normalized in functional comparisons; raw outputs are retained.

Under the user's revised acceptance rule, the [baseline-only oracle manifest](results/frozen/mibench-functional-oracles.json) requires twelve compilations and eleven baseline-valid functional checks. `bf` remains in all structural tables with raw baseline and candidate failures. Its original driver has an undersized key buffer, uninitialized state and exit status 1; no source repair was made. Separate `bftest` known-answer tests pass and remain mandatory. The inherited defect no longer blocks the agreed gate. Runtime agreement for other programs does not prove each source program's definedness.

All native C1 policies, their observed builds, and five component ablations pass the applicable gates. The primary also passes the broader [upstream CompCert regression run](logs/c1-global-regression-test.log); unsupported ABI modes retained by the upstream runner remain skips.

## Measurement and performance

The [observer](measurement/README.md) replays unchanged Tunneling and checked Linearize at the existing LTL print hook. It records actual Linear constructors and the CFG without changing normal compilation. [340 native/observed executable comparisons](results/observer-transparency-c1.json) match every loadable section. The only permitted full-ELF differences are temporary object names in the non-loaded string table.

Eligible edges count Lbranch arms and both Lcond arms; each terminator offers at most one fall-through slot. Individual jump-table arms cannot fall through under ordering alone and are reported separately. Entry jumps count in total Lgoto but are excluded from body-slot fall-through calculations. Raw CFGs and Linear events support independent reconstruction of the weighted rate. MiBench linker maps select actual object/archive contributions. Executable `.text` includes normally linked runtime code.

| Policy | test/c Lgoto | Embench Lgoto | MiBench Lgoto | PolyBench Lgoto |
|---|---:|---:|---:|---:|
| Official baseline | 197 | 672 | 6776 | 68 |
| Previous v2 | 190 | 660 | 6648 | 68 |
| C1 greedy | 189 | 665 | 6677 | 68 |
| **C1 global, primary** | **183** | **654** | **6590** | **68** |
| C1 loop-weighted | 185 | 658 | 6603 | 68 |

The primary removes six additional Embench jumps and 58 additional MiBench jumps beyond v2. No primary function regresses in jump count. Geometric mean `baseline_text/candidate_text` is 1.000100 on Embench and 0.999747 on MiBench: almost unchanged code size, including a small MiBench mean growth. The largest primary text increases are picojpeg +0.222% on Embench and diagnostic `bf` +0.201% on MiBench. Primary PolyBench jumps and text are unchanged.

Loop-weighting raises static weighted fall-through from 0.895755 to 0.900027 on Embench and 0.870113 to 0.876219 on MiBench. Unweighted search reaches 0.896565 and 0.871283. Weighted search improves its proxy while yielding fewer jump removals and a larger maximum MiBench text increase (+0.935% for GSM). Profile-guided quality and runtime effects remain unmeasured.

The [numerical appendix](RESULTS.md) includes all primary program rows, every policy/ablation aggregate, fall-through rates, jump/text ratios and links to per-function data. `R_jump=(1+B_jumps)/(1+C_jumps)` and `R_size=B_text/C_text`; geometric means are separate per suite. MiBench structural totals include all twelve executables, including `bf`.

## Mechanism and ablations

| Component removed from primary | test/c | Embench | MiBench | PolyBench |
|---|---:|---:|---:|---:|
| None | 183 | 654 | 6590 | 68 |
| Neutral acceptance | 191 | 659 | 6620 | 68 |
| Swaps | 183 | 654 | 6590 | 68 |
| Subsequence moves | 187 | 656 | 6634 | 68 |
| Reversals | 183 | 654 | 6591 | 68 |
| Alternative starts, keeping three baseline starts | 183 | 654 | 6590 | 68 |

Mechanical removals were frozen before inspecting this round's MiBench comparison numbers; the [manifest](results/frozen/c1-ablations.json) records this chronology. These builds reuse verified proof artifacts rather than claiming five additional clean proof builds. Neutral acceptance and subsequence moves account for the largest measured differences. Effects are nonadditive because removals change later trajectories. Swaps and alternative starts add no jump-count benefit here, though some text sizes differ. The primary was not simplified or retuned after confirmation.

A [chain-edge audit](results/c1-chain-splitting.json) refines the indivisible-group hypothesis. It examines baseline-adjacent unconditional edges into sole-predecessor non-entry nodes. The selected unweighted result breaks **zero** of 19,918 such Embench edges and **zero** of 134,984 MiBench edges. The weighted result breaks one MiBench edge in LAME's `do_layer3`. Thus the implementation permits splitting, but its measured unweighted gain occurs without splitting these internal edges. The evidence points to strict local-move restrictions as the measured bottleneck; it does not establish that preserving groups is globally lossless.

Real improvements include picojpeg `processMarkers` 20→18 and `pjpeg_decode_mcu` 51→49, plus Lout `AttachGalley` 140→128 and `FixAndPrintObject` 224→212. Layout reconnects eligible edges across trace boundaries. Ten of thirty PolyBench executables already have zero Linear jumps; these searches find no total-jump reduction on the remainder. PolyBench is a useful negative control for this intervention. These results neither bound the remaining global optimum nor prove that layout can never limit numerical workloads.

## C2: fresh-ID terminal-tail cloning

The isolated [prototype](c2/TailClone.ml) redirects an unconditional predecessor to a fresh copy of a shared terminal tail. A copied tail has at most four LTL instructions and ends in return or tail call. Limits are 32 attempted and 16 accepted clones per function, with a copied-instruction budget `max(1, original_instructions/10)`. A change is retained only if checked Linear jump count falls under C1-global.

Original/cloned CFGs, origin maps, Linear events and assembly are saved. The harness assembles the **extra C2 assembly** and runs those executables; normal compiler output is retained separately as `.original.o`. All existing Rocq files remain unchanged, but this new transformation is outside their composed source-to-output proof.

The proposed native certificate checks signature/stack size, entry mapping, block equality after mapping clone labels to original labels, and existence of candidate entry/successor blocks. Wrong clone instructions and dangling targets are rejected. This checker has **no Rocq soundness proof**. Its closure-strengthened revision produces the same 73 executable hashes as the earlier prototype.

The [runnable boundary control](c2/BoundaryControl.ml) uses actual extracted CompCert constructors, checker and Linear translation. Its four-node diamond assigns different return values on two paths before a shared return block:

| Test | Actual result |
|---|---|
| All 24 original CFG orders | Checker passes; minimum Lgoto **1** |
| Duplicate an original node ID | Original checker rejects |
| Append fresh ID without block body | Checker accepts; emitted Linear code unchanged |
| Fresh-ID return clone and redirected edge; all 120 orders | Checker passes on new CFG; minimum Lgoto **0** |
| Clone computes the wrong return value | Enumeration checker still passes; native proposed certificate rejects |
| Remove a targeted clone body | Native proposed certificate rejects |

[Executed evidence](results/c2-checked-boundary-controls.json) records every control. Finite enumeration establishes an ordering-only lower bound for this particular graph. Validating an order of the new CFG alone does not establish a relation to the old CFG.

| Suite | Compiled / functional pass | C1→C2 Lgoto | GM C1_text/C2_text |
|---|---:|---:|---:|
| test/c | 24/24 | 183→161 | 0.989106 |
| Embench | 19/19 | 654→501 | 0.987427 |
| PolyBench | 30/30 | 68→68 | 1.000000 |

Embench uses 153 accepted clones. SLRE improves from 66 to 30 jumps but grows from 5650 to 6546 text bytes, **+15.86%**. An LTL instruction budget inadequately bounds machine-code growth from duplicated epilogues and layout effects. C2 is a proof-boundary experiment, not an accepted verified optimization. C2 was evaluated on these 73 programs; MiBench C2 and dynamic performance were not evaluated.

A verified extension needs a many-to-one candidate-PC to source-PC map and a sound checker or transformation theorem relating LTL states. Obligations include entry/successor correspondence, instruction semantics under the map, signature/stack layout, continuations/call stacks, locations, memory, traces and preserved global-environment structure. An LTL-to-LTL simulation could then compose with unchanged Linearize and later proofs. That theorem and compiler integration remain the explicit **open C2 proof obligation**.

## Optimization / verification map

| Mechanism | Existing boundary | Outcome / remaining gap |
|---|---|---|
| Successor-chain v1 | Enumeration checker sufficient | No Embench gain; baseline already forms useful chains |
| Fixed-group insertion v2 | Sufficient | 1.79% / 1.89% Embench / MiBench jump reduction; narrow strict-move search |
| C1 greedy | Sufficient | Small jump reduction; some function jump and text regressions |
| C1 broader unweighted | Sufficient | 2.68% / 2.74%; neutral/subsequence moves contribute; modest text effects |
| C1 static loop weighting | Sufficient | Improved weighted proxy; no measured profile/runtime result |
| C2 fresh-ID cloning | Enumeration checks only resulting CFG | Larger structural change and text cost; missing LTL-to-LTL proof |
| Switch-arm fall-through | Ordering cannot change lowering | Different lowering and corresponding preservation proof needed; not implemented |
| Scheduling / loop transforms | Instructions or CFG change | Pass-specific proof/checker needed; not implemented |
| Unsupported source features / invalid bf | Language or source-definedness issue | Separate from node-order freedom |

C1 establishes useful but modest empirical gains inside the existing interface. C2 supplies a concrete graph where cloning beats every original ordering and a real-program structural benefit with code-size cost. Its gap is in the existing pass interface and proof composition, not an inability of Rocq or CompCert semantics to express cloning.
