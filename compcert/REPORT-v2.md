# CompCert block layout: results and verification

The frozen local-insertion heuristic removes 12 of 672 Linear unconditional
jumps on Embench and 128 of 6,776 on the held-out MiBench executables. No
function has more Linear jumps and no evaluated executable has a larger
`.text`. PolyBench is unchanged. All existing semantic proofs and validators
remain unchanged, and both clean compiler/proof builds pass kernel checking.

**The task's complete acceptance gate is still open.** Eleven of twelve
MiBench executables pass functional checks. The original `bf` driver fails for
both compilers and contains undefined behavior. It remains in every compilation
and structural result. Its separate `bftest` passes the upstream known-answer
tests. MiBench comparisons are explicitly diagnostic until the user resolves
the conflict between unchanged sources and requiring this baseline failure to
pass. These results do not claim all correctness gates have passed.

## Patch and proof boundary

Baseline: official CompCert `v3.18`, commit
`14d616046360a0b2611ebdfc2f98368af402e1f7`. The upstream tag's `VERSION` file
still says 3.17; the exact source commit establishes the release identity.

The [final patch](patches/local-adjacency-v2.patch) changes only
`backend/Linearizeaux.ml`. The final source SHA-256 is
`05fb1deff67c2c851e54563a115e2ad797dd2016d44d29a900fa2e370df408a1`.
The final candidate and all four ablations were frozen before MiBench layout
results were collected; see [the freeze](results/frozen/final-candidate.json).
The later holdout results did not change this source.

All 253 existing `.v` files match the
[pre-build source manifest](results/baseline-proof-source-sha256.json).
No semantic definition, extraction mapping, validator, axiom, theorem or proof
was changed. The final tracked diff contains exactly the one ML file. The
heuristic returns a node ordering and uses no unsafe representation bypass.

Both builds started without `.vo` files and ran `make -j16 all`,
`make check-admitted`, and `make check-proof`. The latter kernel-checked the
`Complements` theorem dependency closure and printed
`Modules were successfully checked`. Evidence:

- [Baseline build](results/baseline-build.json), [complete log](logs/build-baseline.log).
- [Final candidate build](results/candidate-v2-build.json), [complete log](logs/build-candidate-v2.log).
- `Linearize.vo`, `Linearizeproof.vo`, `Compiler.vo`, and `Complements.vo`
  are byte-identical between the two independently built trees.

The existing `Linearize.enumerate` calls `nodeset_of_list` and
`check_reachable` after invoking the untrusted ordering function. An invalid
list still fails compilation. All frozen-subset native benchmark compilations succeeded;
every recorded Linear observation also passed this original checker.
Two [negative controls](results/validator-negative-control/summary.json)
replace only the untrusted ordering result in a separate diagnostic compiler:
an empty enumeration is rejected with `Linearize: wrong enumeration`, and a
duplicated entry is rejected with `Linearize: duplicates in enumeration`.
The final candidate compiles the same positive-control program successfully.

The retained pass theorem is `Linearizeproof.transf_program_correct`, a
forward simulation from LTL to Linear. The retained whole-compiler theorem is
`Compiler.transf_c_program_correct`:

```coq
forall p tp,
  transf_c_program p = OK tp ->
  backward_simulation (Csem.semantics p) (Asm.semantics tp).
```

This connects each successful compilation to its source semantics. It is not
an assembly-equality or direct baseline/candidate bisimulation theorem. The
usual extraction, OCaml, assembler/linker, external-library and execution
environment assumptions remain. In particular, the theorem does not give a
well-defined intended meaning to the defective MiBench `bf` source.

## Evaluation protocol and coverage

The machine and software environment are recorded in
[machine.json](results/machine.json), [pins.json](pins.json), and the build
logs. This is x86-64 Linux on an AMD EPYC 9654 host. Structural metrics are
the primary outcomes. Single functional-run timings are retained only as
diagnostics; no statistically supported wall-clock or hardware-counter
speedup is claimed.

Baseline support was frozen before optimization:

| Tier | Source and harness | Baseline / candidate compiled | Functional result |
|---|---|---:|---|
| CompCert test/c | Pinned upstream tests; original expected stdout | 24 / 24 | 24 / 24 pass |
| Embench | Stable embench-1.0; native support/main.c; CPU_MHZ=1, WARMUP_HEAT=1 | 19 / 19 | 19 / 19 verify_benchmark checks pass |
| MiBench | Pinned original-source mirror; upstream build recipes and small inputs | 12 / 12 | 11 pass; bf fails in both |
| PolyBench | Official 4.2.1-beta; MINI_DATASET and complete live-out dumps | 30 / 30 | 30 candidate dumps match baseline |

The [GSM fixture audit](results/gsm-upstream-fixtures.json) additionally checks
both saved GSM encode/decode outputs against upstream `correct_small.au.gsm`
and `correct_small.au.run`: all 16 comparisons pass across the native baseline,
native candidate, their observed builds, and four ablations. This closes an
audit gap in the original runtime harness, which had checked GSM against the
baseline output only. The runtime harness now performs these upstream-reference
checks directly; original run logs are preserved.

The broader upstream CompCert `make test` also passes for both compilers:
C, compression, raytracer, SPASS, regression, ABI, and PIC tests. Unsupported
cross-compiler ABI modes that the upstream runner skips remain recorded as
skips. PolyBench dump agreement is an integration check, not an independent
mathematical reference implementation or a proof of each benchmark's
definedness.

MiBench discovery tested 24 project recipes with 31 named executable targets.
Ten projects yielded the frozen twelve executables. The same compiler flag
adapter is used throughout: `-O -fall`, dynamic linking, strict floating-point
semantics, and fixed CompCert C dialect. Removed GCC-specific driver options
and all actual commands are logged. Source texts are unchanged and hashes are
checked against the discovery inputs. Host GCC is used for configure probes;
accepted benchmark objects are built by CompCert.

MiBench uses `SOURCE_DATE_EPOCH=0` identically for both compilers because Lout
embeds `__TIME__`. This controls a build input; it does not alter benchmark
source. Earlier clock-uncontrolled builds and the failed wrapper-symlink
attempt are retained as diagnostic records, not used for the final numbers.

## Measurement and reproducibility

The [separate observer](measurement/PrintLayout.ml) runs at the existing LTL
printer hook. It replays the unchanged extracted Tunneling and checked
Linearize transformations on the same immutable input, counts actual Linear
constructors, and records raw control events. The real compiler then follows
its normal checked path. No proof or extraction mapping is changed for
measurement. See [the method](measurement/README.md).

For each function, eligible edges are one outgoing arm for each Lbranch and
two for each Lcond. Jump-table arms are reported separately because their
individual transfers cannot become fall-through in this IR. Each branch or
conditional provides at most one fall-through slot. Fall-through count is
slots minus body Lgoto instructions; entry Lgoto is reported separately and
included in the total Lgoto count. Raw constructor lists allow independent
recounting. The report includes per-function data and explicitly derived
per-function fall-through rates, not only aggregates. Rates are null when a
function has no eligible edges. Adding these rate fields left every saved
per-program result and suite aggregate unchanged; see the
[rate audit](results/function-rate-audit.json).

MiBench's actual linker maps determine which direct objects and static-archive
members contribute to each executable. Archive members are matched to the
exact compiled object bytes. Runtime/system objects are fixed and excluded
from Linear counts; executable `.text` is measured with `size -A` and includes
the normally linked code. Shared JPEG functions are counted in each executable
that contains them, as they are in executable-size measurements.

[Observer transparency](results/observer-transparency-final.json) passes for
170 baseline/candidate native-versus-observed executable pairs: all loadable
sections match exactly. Six full ELF files differ only in random temporary
object names in the non-loaded string table. Thus the structural measurements
also correspond to the uninstrumented verified compilers. The second builds
reproduce the generated executable sections under the same settings.

Ratios are `R_jump=(1+baseline_jumps)/(1+optimized_jumps)` and
`R_size=baseline_text/optimized_text`. A ratio above one is an improvement.
`.text` optimized/baseline is also reported per program. Suites are never
combined into a single score. MiBench's twelve-executable aggregate is shown
alongside the predeclared eleven-workload aggregate without the companion
`bftest`; neither view removes `bf` or its failed runtime gate.

## Mechanism and limits

The baseline forms chains through non-join, non-conditional CFG nodes and then
orders the groups by decreasing minimum node number. That numbering-based
ordering can place a return group or other continuation away from a predecessor
even when moving it would preserve the other useful adjacencies.

The candidate starts from that exact baseline order. It considers moving a
successor group after a predecessor and moving a predecessor before a successor.
A doubly linked list makes each move local. It accepts only moves that increase
the number of eligible adjacent transfers, including the synthetic entry edge,
and repeats until no move improves that score. Every accepted move increases
an integer bounded by the number of group boundaries, so the iteration
terminates. It preserves each group and only changes group order.

A final modeled Lgoto-cost comparison accounts for consecutive labels and entry
branches. It chooses the candidate only if its total is strictly lower than
baseline; otherwise it returns baseline. This quality guard is not a semantic
validator. Semantic validity still comes from the unchanged Rocq checker.
Neither estimated branch likelihood nor benchmark identity enters the code.

A concrete held-out example is JPEG `emit_message` in `jerror.c`. Its baseline
Linear sequence ends a path with `Lgoto 1`, places the other conditional path
next, and emits label 1's return last. Moving that return group immediately
after the first path turns `Lgoto 1` into fall-through while preserving the
other conditional and tailcall path. Its count changes from one Lgoto to zero,
and fall-through transfers rise from 13 to 14. The raw records are in
`results/{measured-baseline,measured-candidate-v2}/mibench-evaluation/consumer-jpeg-cjpeg/018.linear.json`.
The same function is linked into djpeg too.

Benefits appear in irregular control flow and displaced continuations: linked
list/tree helpers, regex code, JPEG, LAME, and Lout. Regular PolyBench kernels
have no beneficial local moves under this rule. Zero-jump functions cannot
improve this metric. Keeping the original groups indivisible and accepting only
strictly beneficial single-group moves can miss improvements that require
neutral intermediate moves, splitting groups, or moving multiple groups together.
This is a local optimum, not an optimal layout solver. Worst-case repeated
scanning is quadratic in group count; the benchmark runs completed without
heuristic timeouts. Compilation-time optimization is not claimed.

Linear jump elimination is target-independent at this pass. Native size gains
are much smaller: later cleanup may remove some remaining branches, and x86
alignment and branch encodings can absorb a few saved instructions. Runtime
effects can depend on branch prediction and instruction-cache behavior and
were not established here.

## Attempts, ablations, and failure classification

| Attempt / issue | Feature and expected effect | Existing verification support | Result / classification |
|---|---|---|---|
| Successor-chain v1 | Rebuild traces from successors; expose fall-through | Node ordering already supported | All 19 Embench checks pass; 672 jumps unchanged. Optimization-quality failure; no checker/proof limitation |
| Local insertion v2 | Preserve baseline adjacency, improve it with local moves | Same unchanged enumeration interface | 660 Embench and 6,648 MiBench jumps; unchanged proof boundary |
| PolyBench no change | Regular numerical CFGs | Fully supported | No improving local insertion; optimization-quality limitation, not rejected code |
| Jump-table fall-through | Remove an individual table-arm transfer | Linear table semantics retain table dispatch | Outside this ordering-only metric/interface; would need a different lowering and verification argument |
| MiBench implicit-int sources | Old C syntax used by SUSAN, ispell, stringsearch, CRC32, ADPCM and Ghostscript generator | Baseline parser does not accept it under this harness | Language-feature limitation; excluded by baseline freeze before optimization |
| MiBench dijkstra / rijndael | Conflicting malloc signature / arithmetic on modern fpos_t struct | Baseline rejects source typing/signature | Language/host-interface limitation |
| MiBench patricia / TIFF | Missing rpc/rpc.h / unavailable u_long | No source repair allowed | Host-header compatibility limitation |
| MiBench mad / rsynth / sphinx / PGP | Old autotools or host detection / 32-bit assembly on x86-64 | Failure precedes candidate layout | Build/platform limitation |
| MiBench bf runtime | Uninitialized ivec/num, key buffer overflow, nominal exit 1 | Preservation theorem does not repair source undefined behavior | Inherited source-definedness and functional-gate failure; retained, not excluded |

Each rejected project retains its complete baseline build diagnostics under
`results/baseline/mibench/`. Initial MiBench discovery-v1 had configure/forced
rebuild harness defects; these were corrected and the final supported set was
frozen before any heuristic existed. The old discovery records remain.

All four component removals were frozen before holdout evaluation. Their
measurements use the same observer, flags, source inputs and support sets.
They were rebuilt from verified candidate artifacts with unchanged proof
sources; the baseline and final candidate, rather than each diagnostic
ablation, received independent clean full proof builds.

## Research answer

Useful but modest layout improvement fits entirely inside CompCert's existing
untrusted-enumeration/verified-linearization interface: this candidate removes
1.79% of Embench and 1.89% of held-out MiBench Linear jumps, with small positive
native-size changes and no measured structural regressions. The unchanged
checker/proofs accept these changes because node order is already an allowed
degree of freedom. The inherited MiBench functional failure remains an explicit
qualification on full task acceptance.

More advanced ordering policies—loop-aware layout, profile-weighted adjacency,
bounded global search—can use the same interface as long as they return a valid
permutation. The proof infrastructure permits them; their quality, termination,
resource usage, and applicability still need evaluation. Duplicating blocks,
eliminating computations, changing instruction scheduling, or replacing switch
lowering changes the CFG or instruction semantics and cannot be justified by
the enumeration checker alone. Those changes need another existing verified
pass, a stronger checked transformation interface, or new semantic-preservation
proof machinery. The present gap is optimization quality and input-definedness,
not a weakened correctness proof.

## Numerical results

The following tables are generated from the saved comparison JSON. Each linked
JSON also contains the per-function counts and validator observations.

### CompCert test/c

[Per-function and per-program data](results/measured-candidate-v2/regression-c-comparison.json).

Geometric means: R_jump **1.021158**, R_size **1.000231**. Total jumps **197 → 190**. Pooled eligible-edge fall-through rate **91.4883% → 91.6063%**.

| Program | Eligible edges | Fall-through B → C | Lgoto B → C | .text B → C (bytes) | C/B text | Runtime gate |
|---|---:|---:|---:|---:|---:|---|
| fib | 19 | 15 → 15 | 2 → 2 | 405 → 405 | 1.000000 | pass |
| integr | 25 | 21 → 21 | 2 → 2 | 514 → 514 | 1.000000 | pass |
| qsort | 96 | 73 → 74 | 9 → 8 | 805 → 805 | 1.000000 | pass |
| fft | 249 | 217 → 217 | 13 → 13 | 2022 → 2022 | 1.000000 | pass |
| fftsp | 255 | 221 → 221 | 14 → 14 | 2104 → 2104 | 1.000000 | pass |
| fftw | 115 | 110 → 110 | 1 → 1 | 1045 → 1045 | 1.000000 | pass |
| sha1 | 300 | 275 → 276 | 9 → 8 | 1879 → 1879 | 1.000000 | pass |
| sha3 | 515 | 503 → 503 | 3 → 3 | 2812 → 2812 | 1.000000 | pass |
| aes | 1320 | 1299 → 1299 | 10 → 10 | 6645 → 6645 | 1.000000 | pass |
| almabench | 428 | 416 → 416 | 1 → 1 | 3698 → 3698 | 1.000000 | pass |
| lists | 81 | 59 → 59 | 11 → 11 | 829 → 829 | 1.000000 | pass |
| binarytrees | 87 | 77 → 77 | 4 → 4 | 1043 → 1043 | 1.000000 | pass |
| fannkuch | 106 | 82 → 83 | 10 → 9 | 833 → 829 | 0.995198 | pass |
| knucleotide | 384 | 316 → 317 | 27 → 26 | 2702 → 2700 | 0.999260 | pass |
| mandelbrot | 83 | 72 → 72 | 4 → 4 | 833 → 833 | 1.000000 | pass |
| nbody | 227 | 210 → 210 | 8 → 8 | 1842 → 1842 | 1.000000 | pass |
| nsieve | 46 | 36 → 36 | 3 → 3 | 525 → 525 | 1.000000 | pass |
| nsievebits | 68 | 58 → 58 | 3 → 3 | 593 → 593 | 1.000000 | pass |
| spectral | 105 | 90 → 90 | 7 → 7 | 932 → 932 | 1.000000 | pass |
| vmach | 168 | 152 → 152 | 13 → 13 | 1156 → 1156 | 1.000000 | pass |
| bisect | 274 | 240 → 241 | 12 → 11 | 2314 → 2314 | 1.000000 | pass |
| chomp | 433 | 361 → 363 | 25 → 23 | 3216 → 3216 | 1.000000 | pass |
| perlin | 216 | 201 → 201 | 5 → 5 | 1946 → 1946 | 1.000000 | pass |
| siphash24 | 333 | 324 → 324 | 1 → 1 | 1652 → 1652 | 1.000000 | pass |

### Embench

[Per-function and per-program data](results/measured-candidate-v2/embench-comparison.json).

Geometric means: R_jump **1.013663**, R_size **1.000343**. Total jumps **672 → 660**. Pooled eligible-edge fall-through rate **89.1150% → 89.1619%**.

| Program | Eligible edges | Fall-through B → C | Lgoto B → C | .text B → C (bytes) | C/B text | Runtime gate |
|---|---:|---:|---:|---:|---:|---|
| aha-mont64 | 226 | 209 → 209 | 5 → 5 | 2114 → 2114 | 1.000000 | pass |
| crc32 | 97 | 85 → 85 | 3 → 3 | 1234 → 1234 | 1.000000 | pass |
| cubic | 327 | 300 → 300 | 9 → 9 | 3250 → 3250 | 1.000000 | pass |
| edn | 1681 | 1651 → 1651 | 6 → 6 | 10946 → 10946 | 1.000000 | pass |
| huffbench | 426 | 370 → 371 | 19 → 18 | 2898 → 2898 | 1.000000 | pass |
| matmult-int | 988 | 970 → 970 | 3 → 3 | 6914 → 6914 | 1.000000 | pass |
| minver | 389 | 331 → 331 | 19 → 19 | 2946 → 2946 | 1.000000 | pass |
| nbody | 235 | 204 → 204 | 11 → 11 | 2034 → 2034 | 1.000000 | pass |
| nettle-aes | 878 | 830 → 830 | 15 → 15 | 5426 → 5426 | 1.000000 | pass |
| nettle-sha256 | 1243 | 1212 → 1213 | 8 → 7 | 7346 → 7346 | 1.000000 | pass |
| nsichneu | 5594 | 4943 → 4943 | 7 → 7 | 26130 → 26130 | 1.000000 | pass |
| picojpeg | 2533 | 2118 → 2120 | 154 → 152 | 14386 → 14370 | 0.998888 | pass |
| qrduino | 2163 | 1956 → 1956 | 63 → 63 | 11186 → 11186 | 1.000000 | pass |
| sglib-combined | 2170 | 1697 → 1703 | 144 → 138 | 12450 → 12418 | 0.997430 | pass |
| slre | 843 | 649 → 650 | 67 → 66 | 5666 → 5650 | 0.997176 | pass |
| st | 218 | 200 → 200 | 4 → 4 | 2226 → 2226 | 1.000000 | pass |
| statemate | 2219 | 1923 → 1923 | 70 → 70 | 11050 → 11050 | 1.000000 | pass |
| ud | 341 | 308 → 308 | 12 → 12 | 2370 → 2370 | 1.000000 | pass |
| wikisort | 2987 | 2820 → 2821 | 53 → 52 | 20898 → 20898 | 1.000000 | pass |

### MiBench — diagnostic; bf runtime gate fails

[Per-function and per-program data](results/measured-candidate-v2/mibench-evaluation-diagnostic.json).

Geometric means: R_jump **1.031675**, R_size **1.000215**. Total jumps **6776 → 6648**. Pooled eligible-edge fall-through rate **88.0701% → 88.1416%**.

| Program | Eligible edges | Fall-through B → C | Lgoto B → C | .text B → C (bytes) | C/B text | Runtime gate |
|---|---:|---:|---:|---:|---:|---|
| automotive-basicmath-basicmath_small | 331 | 304 → 304 | 12 → 12 | 3042 → 3042 | 1.000000 | pass |
| automotive-bitcount-bitcnts | 341 | 312 → 313 | 7 → 6 | 2380 → 2380 | 1.000000 | pass |
| automotive-qsort-qsort_small | 50 | 42 → 42 | 3 → 3 | 561 → 561 | 1.000000 | pass |
| consumer-jpeg-cjpeg | 12144 | 10594 → 10604 | 430 → 420 | 67906 → 67874 | 0.999529 | pass |
| consumer-jpeg-djpeg | 14180 | 12256 → 12275 | 600 → 581 | 78418 → 78402 | 0.999796 | pass |
| consumer-lame-lame | 20750 | 18623 → 18635 | 644 → 632 | 122890 → 122842 | 0.999609 | pass |
| consumer-typeset-lout | 122034 | 107216 → 107299 | 4818 → 4735 | 598893 → 598573 | 0.999466 | pass |
| security-blowfish-bf | 929 | 890 → 891 | 11 → 10 | 5480 → 5475 | 0.999088 | FAIL (both) |
| security-blowfish-bftest | 2156 | 2080 → 2081 | 17 → 16 | 11465 → 11465 | 1.000000 | pass |
| security-sha-sha | 268 | 250 → 250 | 5 → 5 | 1785 → 1785 | 1.000000 | pass |
| telecomm-FFT-fft | 364 | 320 → 320 | 19 → 19 | 2692 → 2692 | 1.000000 | pass |
| telecomm-gsm-toast | 5466 | 4770 → 4771 | 210 → 209 | 28891 → 28889 | 0.999931 | pass |

The predeclared eleven-workload view (excluding only the companion bftest) has R_jump **1.029242**, R_size **1.000235**, and jumps **6759 → 6632**. It retains the failing bf workload.

### PolyBench MINI

[Per-function and per-program data](results/measured-candidate-v2/polybench-comparison.json).

Geometric means: R_jump **1.000000**, R_size **1.000000**. Total jumps **68 → 68**. Pooled eligible-edge fall-through rate **92.5603% → 92.5603%**.

| Program | Eligible edges | Fall-through B → C | Lgoto B → C | .text B → C (bytes) | C/B text | Runtime gate |
|---|---:|---:|---:|---:|---:|---|
| correlation | 278 | 257 → 257 | 2 → 2 | 1985 → 1985 | 1.000000 | pass |
| covariance | 222 | 205 → 205 | 1 → 1 | 1633 → 1633 | 1.000000 | pass |
| 2mm | 312 | 291 → 291 | 0 → 0 | 2081 → 2081 | 1.000000 | pass |
| 3mm | 346 | 322 → 322 | 0 → 0 | 2225 → 2225 | 1.000000 | pass |
| atax | 191 | 178 → 178 | 0 → 0 | 1505 → 1505 | 1.000000 | pass |
| bicg | 231 | 217 → 217 | 0 → 0 | 1729 → 1729 | 1.000000 | pass |
| doitgen | 249 | 226 → 226 | 5 → 5 | 1873 → 1873 | 1.000000 | pass |
| mvt | 239 | 225 → 225 | 0 → 0 | 1777 → 1777 | 1.000000 | pass |
| gemm | 226 | 209 → 209 | 0 → 0 | 1681 → 1681 | 1.000000 | pass |
| gemver | 271 | 256 → 256 | 0 → 0 | 2017 → 2017 | 1.000000 | pass |
| gesummv | 195 | 185 → 185 | 0 → 0 | 1601 → 1601 | 1.000000 | pass |
| symm | 259 | 241 → 241 | 3 → 3 | 1889 → 1889 | 1.000000 | pass |
| syr2k | 227 | 210 → 210 | 2 → 2 | 1713 → 1713 | 1.000000 | pass |
| syrk | 211 | 194 → 194 | 2 → 2 | 1585 → 1585 | 1.000000 | pass |
| trmm | 201 | 186 → 186 | 2 → 2 | 1569 → 1569 | 1.000000 | pass |
| cholesky | 303 | 276 → 276 | 6 → 6 | 1953 → 1953 | 1.000000 | pass |
| durbin | 177 | 163 → 163 | 3 → 3 | 1425 → 1425 | 1.000000 | pass |
| gramschmidt | 290 | 269 → 269 | 1 → 1 | 1985 → 1985 | 1.000000 | pass |
| lu | 299 | 271 → 271 | 6 → 6 | 1921 → 1921 | 1.000000 | pass |
| ludcmp | 379 | 345 → 345 | 8 → 8 | 2353 → 2353 | 1.000000 | pass |
| trisolv | 176 | 164 → 164 | 2 → 2 | 1425 → 1425 | 1.000000 | pass |
| deriche | 351 | 330 → 330 | 0 → 0 | 2465 → 2465 | 1.000000 | pass |
| floyd-warshall | 200 | 184 → 184 | 0 → 0 | 1473 → 1473 | 1.000000 | pass |
| nussinov | 262 | 235 → 235 | 4 → 4 | 1761 → 1761 | 1.000000 | pass |
| adi | 342 | 322 → 322 | 4 → 4 | 2353 → 2353 | 1.000000 | pass |
| fdtd-2d | 348 | 322 → 322 | 2 → 2 | 2321 → 2321 | 1.000000 | pass |
| heat-3d | 309 | 285 → 285 | 6 → 6 | 2097 → 2097 | 1.000000 | pass |
| jacobi-1d | 162 | 150 → 150 | 2 → 2 | 1361 → 1361 | 1.000000 | pass |
| jacobi-2d | 226 | 208 → 208 | 4 → 4 | 1697 → 1697 | 1.000000 | pass |
| seidel-2d | 193 | 178 → 178 | 3 → 3 | 1489 → 1489 | 1.000000 | pass |

### Component ablations

| Variant | Embench jumps | MiBench jumps | MiBench R_jump GM | MiBench R_size GM |
|---|---:|---:|---:|---:|
| Baseline | 672 | 6776 | 1.000000 | 1.000000 |
| [measured-candidate-v2](results/measured-candidate-v2/mibench-evaluation-diagnostic.json) | 660 | 6648 | 1.031675 | 1.000215 |
| [ablation-no-successor-move](results/ablation-no-successor-move/mibench-evaluation-diagnostic.json) | 660 | 6658 | 1.030551 | 1.000201 |
| [ablation-no-predecessor-move](results/ablation-no-predecessor-move/mibench-evaluation-diagnostic.json) | 663 | 6677 | 1.029332 | 1.000176 |
| [ablation-one-pass](results/ablation-one-pass/mibench-evaluation-diagnostic.json) | 660 | 6648 | 1.031675 | 1.000215 |
| [ablation-no-cost-guard](results/ablation-no-cost-guard/mibench-evaluation-diagnostic.json) | 660 | 6648 | 1.031675 | 1.000215 |

Removing successor relocation loses 10 held-out jump eliminations; removing predecessor relocation loses 29. Both directions contribute. One pass and removing the modeled-cost guard happen to give the same measured outputs as the final version on these suites. That establishes no measured benefit for those two components here; it does not prove they are redundant for all CFGs. The final frozen version was not simplified after observing the holdout. Every ablation retains the same inherited bf runtime failure.
