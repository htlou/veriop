# RoaringBitmap (Java) held-out: two-sided `BitmapContainer.rank`, checked with KeY

Upstream: RoaringBitmap/RoaringBitmap @ `7f2b0a58f392d745035c06b15b6699ef05a1211a` (pinned in `benchmarks/targets.tsv`).
Worktrees: `wt/base` (upstream, clean) and `wt/cand` (upstream + `rank-two-sided.patch`, uncommitted).

## Result in one paragraph

`BitmapContainer.rank(char lowbits)` used to sum `Long.bitCount` over the words *below*
`lowbits`. On average that is 512 of the 1024 words. The new version does this only when the
target word index `end = (lowbits+1)>>>6` is at most 512, or when the cached cardinality is
invalid (`cardinality < 0`). Otherwise it starts from the cached `cardinality` and subtracts
the counts of words `end..1023`. Either way it scans at most about half the words. The
partial-word tail is the same in both versions. In 4 alternating rounds of the official
`jmh` `RankBenchmark` (DENSE, JDK 17, CPUs 168-169, 3 forks), rank lookups on
bitmap containers run **1.65x faster (1e5 values) and 1.88-1.92x faster (1e6 values)**. The
geomean over the 4 affected configurations is **1.77x**. The A/A noise was within about 2%.
**Verification verdict: NOT VERIFIED** under the strict criterion. KeY 3.0.0 closes and
replays a direct relational proof that old and new `rank` return the same value and have the
same heap effects for every argument. That proof assumes the class's cached-cardinality
invariant. The public constructor `BitmapContainer(long[], int)` can create states that break
the invariant, and on those states old and new differ (witness below). All
35,211 unit tests pass, and a base-vs-cand differential test of 13.1M rank calls found no
mismatch.

## Choosing the optimization (and why the inherited prototype was dropped)

The inherited prototype (`rejected/select-block8-prototype.patch`) skipped 8-word blocks in
`BitmapContainer.select`. The official benchmark for it is
`bitmapcontainer.SelectBenchmark.bitmapContainer_selectBothSides`. On a quiet machine I
measured it with a CPU-time harness that drives that benchmark body
(`rejected/variant-exploration/CpuH.java`):

| select variant | vc=100 | vc=5000 | vc=10000 (ops/ms, CPU-time median) |
|---|---|---|---|
| base | 122.6 | 1.83 | 0.896 |
| block-8 prototype | 82.5 (0.67x) | 2.02 (1.11x) | 0.897 (1.00x) |
| branch-free word loop | 110.9 | 2.20 | 1.13 |
| 4-word blocks | 100.6 | 2.28 (1.25x) | 1.17 (1.30x) |

On HotSpot C2, `select` cannot reach 1.5x this way. The serial `leftover` chain, the mispredicts
in `Util.select` and the loop-exit mispredict dominate the cost. The prototype is even a
regression on sparse containers, so I discarded it.

`rank` has no data-dependent early exit. Its cost is about one word per cycle over the scanned
prefix, so halving the scan length should give close to 2x. A microbenchmark gave 133 ns to
67 ns per rank. Wider unrolling with several accumulators was *slower* on C2, so the patch
keeps the plain loops, which also keeps the proof simple. `cardinalityInRange` in the same
class already uses this "cached cardinality minus the other side" idea.

## The patch (`rank-two-sided.patch`)

```java
    int leftover = (lowbits + 1) & 63;
    int end = (lowbits + 1) >>> 6;
    int answer;
    if (end > 512 && cardinality >= 0) {
      answer = cardinality;                       // cached popcount of all words
      for (int k = end; k < bitmap.length; ++k) answer -= Long.bitCount(bitmap[k]);
    } else {
      answer = 0;                                 // original forward scan
      for (int k = 0; k < end; ++k) answer += Long.bitCount(bitmap[k]);
    }
    if (leftover != 0) answer += Long.bitCount(bitmap[(lowbits + 1) >>> 6] << (64 - leftover));  // unchanged
```
The `lowbits == Character.MAX_VALUE` early return is unchanged. Nothing else in the repository changes (`gen_key.py` asserts that
the rest of `BitmapContainer.java` is byte-identical). `MappeableBitmapContainer.rank` has the
same old loop and could get the same change; I did not touch it.

## Official JMH results

Benchmarks: `org.roaringbitmap.RankBenchmark.{roaringBitmapRankLookupHit,fastRankLookupHit}`,
`-p distribution=DENSE`, all 4 sizes. Each run used JDK 17.0.20.1 (`-jar benchmarks.jar`),
`taskset -c 168,169`, `-f 3 -wi 5 -w 1s -i 5 -r 1s`, and the `RankBenchmark` setup unchanged.
There were 4 rounds. Each round ran base, cand and a second base run (A/A) in a rotated order
(`scripts/jmh_rounds.sh`). Speedup is the base score divided by the cand score per round
(avgt, us/op), summarized as median [min, max]. Raw JSON and text are in `jmh/rank-main/`, and
`jmh/rank-main/summary.txt` comes from `scripts/analyze.py`.

| benchmark (DENSE) | base us/op | cand us/op | speedup | A/A |
|---|---|---|---|---|
| fastRankLookupHit size=1e6 | 145.59 | 75.76 | **1.921** [1.916, 1.975] | 0.999 [0.973, 1.003] |
| fastRankLookupHit size=1e5 | 119.62 | 72.23 | **1.651** [1.631, 1.662] | 0.992 [0.975, 1.006] |
| fastRankLookupHit size=1e4 | 24.68 | 25.11 | 0.979 [0.964, 1.007] | 0.991 [0.940, 0.997] |
| fastRankLookupHit size=1e3 | 18.65 | 18.99 | 0.988 [0.908, 1.033] | 1.004 [0.968, 1.021] |
| roaringBitmapRankLookupHit size=1e6 | 147.25 | 78.91 | **1.882** [1.809, 1.904] | 0.998 [0.983, 1.026] |
| roaringBitmapRankLookupHit size=1e5 | 118.57 | 71.62 | **1.654** [1.609, 1.660] | 0.986 [0.953, 1.001] |
| roaringBitmapRankLookupHit size=1e4 | 28.47 | 27.29 | 1.035 [1.006, 1.084] | 0.984 [0.973, 1.025] |
| roaringBitmapRankLookupHit size=1e3 | 15.99 | 16.18 | 0.987 [0.983, 0.993] | 0.981 [0.965, 1.005] |

* Geomean over the 4 affected configurations (sizes 1e5 and 1e6): **1.773x** (A/A 0.994).
* Geomean over all 8 DENSE hit configurations: 1.329x (A/A 0.992).
* Size 1e3 uses an ArrayContainer, so the patch does not reach it. At size 1e4 every value is
  below 10,000, so `end <= 157` and the old forward path runs. Both sizes are unchanged within
  noise, as expected.
* Load: this is a shared 384-thread EPYC 9654 machine. During the main rounds the 1-minute
  load average ranged from 53.7 to 122.2 (`jmh/rank-main/meta.log` records `uptime` before
  and after every run). Other users' processes also ran on CPUs 168/169 and their SMT
  siblings, which we could not prevent. The A/A spread (at most about 6%) shows the noise
  level. Every per-round speedup for the affected configurations is at least 1.60x.
* No-regression check on other code paths (2 rounds, `jmh/regression-other/`): see the
  section at the end.

## Verdict: **NOT VERIFIED** (strict criterion)

KeY closes a direct relational proof that old `rank(x)` and new `rank(x)` return the same
value and have the same heap effects, for every `x`. All 11 obligations close and replay
headlessly. The theorem holds only under the precondition INV, the cached-cardinality
invariant `cardinality < 0 || cardinality == Σ bitCount(words)`. INV is not established on
every state where `rank` can be called through the public API. The public constructor
`BitmapContainer(long[] newBitmap, int newCardinality)` stores any `newCardinality`. On such a
state the old and new code really do differ (`difftest/InvariantWitness.java`,
`difftest/invariant-witness.log`):

```
new BitmapContainer(<1024 words of all ones>, 5000).rank((char) 60000)
old rank(60000) = 60001   validate() = false
new rank(60000) = -535    validate() = false
```

The strict criterion asks for one of two things. Either INV is proved to be established by
every constructor and mutator, or `rank` is shown to be called only in INV states. The first is
false because of that constructor. The second fails because users can call
`BitmapContainer.rank` directly. So the result is NOT VERIFIED. A KeY proof of INV for the
other mutators would not change this. It is also impossible under the uninterpreted `bitCount`
model, because mutators like `add` update `cardinality` with bit tricks rather than `bitCount`.

What *is* machine-checked: the two versions are equivalent on every container that the
library's own validator accepts (`validate() == true`). They are also equivalent on the lazily
invalidated `cardinality = -1` state. The details follow.

## KeY proofs (`key/`)

**Model.** `key/rank/gen_key.py` extracts the real method bodies from `wt/base` and `wt/cand`:
old and new `rank`, the unchanged `computeCardinality`, and (in `key/relational/gen_rel.py`)
the unchanged `validate`. It writes them into a model class with the fields `long[] bitmap` and
`int cardinality`. All textual edits are listed in `provenance.json`, along with source hashes:
- `Long.bitCount(` becomes `PopCount.bitCount(`. KeY's JavaRedux has no `Long.bitCount`.
- `Character.MAX_VALUE` becomes `65535`. It is the same value, but KeY's `Character` stub lacks
  the constant, and KeY 3.0.0 mis-parses the literal `'\uffff'` as 92.
- In `validate`, `ArrayContainer.DEFAULT_MAX_SIZE` becomes `4096` and the return type `Boolean`
  becomes `boolean`, since KeY does not model boxing.
- JML loop invariants are inserted as comments.

**`Long.bitCount` assumption (`PopCount.java`).** `bitCount` is a pure, deterministic,
side-effect-free function `pc` of its argument, with result in `[0, 64]`. `pc` is otherwise
uninterpreted. This is sound: real popcount is one such function. No other popcount fact is
used.

**Other preconditions.** `bitmap != null` and `1024 <= bitmap.length <= 2^20`. The real length is
1024. A symbolic range is needed because KeY unrolls sums with literal bounds. Every
`bitmap[i]` is in `long` range, a typing fact that KeY's heap model lacks. INV is the
precondition above, plus `cardinality <= 65536`, which holds in real states with 1024 words.

**Settings** (`key/rank/settings.key.txt`):
- `intRules:javaSemantics`, which models Java two's-complement overflow.
- `runtimeExceptions:ban`, so any AIOOBE or NPE fails the proof.
- Modular JavaDL Strategy with `METHOD_CONTRACT`, `LOOP_SCOPE_INV_TACLET` and `NON_LIN_ARITH_DEF_OPS`.
- 200k steps and 300 s per obligation.

The headless driver is `key/tool/KeyRun.java`. With `--replay` it reloads a saved `.proof` without
running auto mode and reports whether it is closed. KeY ran on CPUs 100-107.

**Direct relational theorem** (`key/relational/`, run by `run_all.sh` and recorded in
`result.json` with `all_closed_and_replayed: true`). It is a product program over two distinct
containers `a` and `b` in identical pre-states. They share the word array, which neither method
writes, and have equal `cardinality`. The obligation runs `ra = a.rankOld(x); rb = b.rankNew(x)`.

```
requires a != b, a.bitmap == b.bitmap, a.cardinality == b.cardinality, INV(a), length/typing
ensures  ra == rb  &&  a.cardinality == b.cardinality
assignable a.cardinality, b.cardinality        // nothing else is written
```

The theorem is split by `x`:
- `same` covers `x != 65535` and is proved in package `relnm`.
- `sameMax` covers `x == 65535` and is proved in package `rel`.

`relnm` is the same generated model, except that `rankOld` and `rankNew` carry only their
`x != 65535` contract. KeY combines all of a method's contracts when it applies one, and the
combined frame anonymises the heap with an empty location set. That blocks the comparison of
the two sums, so `same` stayed open in package `rel` (24 open goals). Inlining both bodies instead
did not finish within 300 s (9 goals open).

| obligation (all: 0 open goals, saved proof replayed closed) | nodes | branches | auto time |
|---|---|---|---|
| `relnm.same`: old == new, same final state, `x != 65535` | 5,365 | 17 | 31.8 s |
| `rel.sameMax`: old == new, same final state, `x == 65535` | 41,566 | 1,434 | 38.1 s |
| `rankOld` contract, `x != 65535` (`assignable \strictly_nothing`), in rel and relnm | 6,903 | 25 | 21.6 / 19.9 s |
| `rankNew` contract, `x != 65535` (`assignable \strictly_nothing`), in rel and relnm | 16,090 | 56 | 29.5 / 32.6 s |
| `rankOld` contract, `x == 65535` (`assignable cardinality`) | 488 | 8 | 5.8 s |
| `rankNew` contract, `x == 65535` | 488 | 8 | 7.6 s |
| `computeCardinality` contract (`cardinality == Σ`), in rel and relnm | 1,491 | 12 | 12.8 / 13.1 s |
| `validate()` contract: `\result <==> cardinality > 4096 && cardinality == Σ` | 1,401 | 10 | 12.0 s |

Each contract states the result and the final heap exactly. In the non-MAX case that is
`\result == Σ_{i<(x+1)/64} pc(bitmap[i]) + tail`, where `tail` is the exact Java term of the
unchanged last statement. The `validate` obligation shows that every container the library
considers valid satisfies the cardinality part of INV.

**Single-version contracts and negative control** (`key/rank/`, `key/run_all.sh`,
`key/result.json`). The same five contracts are also closed on the model without the relational
methods. The negative control is an off-by-one mutant of the new rank whose suffix loop skips
word `end` (`key/rank-negative/make_mutant.py`). It does **not** prove: 2 open goals.

**Not covered by KeY:** INV for states created through the public constructor (it can be
violated; see the verdict); `Long.bitCount` itself, beyond the model; JIT and hardware; and
`MappeableBitmapContainer`, which is unchanged.

## Full official-JMH check of every benchmark that can reach the change (`jmh/full-check/`)

**Static reachability.** In library code, `BitmapContainer.rank` is called only from:
- `RoaringBitmap.rankLong`, `rank` and `rangeCardinality`;
- `FastRankRoaringBitmap.rankLong`;
- `Roaring64Bitmap.rankLong`, and `Roaring64NavigableMap.rankLong` through `RoaringBitmap.rankLong`;
- `SuccinctRank`, but only for non-bitmap containers, because it answers bitmap containers from
  its own cumulative table.

A search of the `jmh` sources finds only two benchmark classes that call any of these:
`RankBenchmark` and `range.ContainsRange` (method `containsViaRank`).
`bitmapcontainer.SelectBenchmark` and `cardinality64.Cardinality64Benchmark` call `select`, which
does not reach `rank`. `MappeableBitmapContainer` is unchanged.

**Run** (`scripts/full_check.sh`, regex in `jmh/full-check/regex.txt`). Setup: JDK 17, `taskset -c
168,169`, `-f 3 -wi 3 -w 1s -i 3 -r 1s` on both sides, 2 rotated rounds of base, cand and A/A, with
`uptime` logged per run. The 1-minute load ranged from 24 to 173. It covered:
1. The whole `RankBenchmark`: 8 methods × 3 distributions × 4 sizes = 96 configurations.
   `RANDOM, size=1000000` fails in the benchmark's own `@Setup` for all 8 methods, on both base
   and cand (`IllegalArgumentException: bound must be positive`), leaving 88 scored configurations.
2. The whole `range.ContainsRange`: `contains` and `containsViaRank` × 12 parameter sets = 24.
3. Controls: `realdata.RealDataBenchmark{And,Or,Xor,Iterate,Contains}` on `census1881` and
   `weather_sept_85` (`type=roaring, immutable=false`), the whole `serialization.SerializationBenchmark`,
   and `contains.ContainsBenchmark`, 17 configurations in all.

The analysis is `scripts/full_analyze.py`, written to `jmh/full-check/summary.txt`. The noise band
is the 2.5–97.5 percentile range of all 258 per-round A/A ratios, **[0.903, 1.131]**. A
configuration is flagged only when its speedup falls outside that band in *both* rounds.

| group | configs | geomean speedup | A/A geomean |
|---|---|---|---|
| affected (`roaringBitmap/fastRank LookupHit`, DENSE, size 1e5 and 1e6) | 4 | **1.703** | 0.979 |
| all rank-reaching (affected + other `roaringBitmap/fastRank` lookups + `containsViaRank`) | 56 | 1.029 | 1.004 |
| rank-reaching, excluding the affected 4 | 52 | 0.990 | 1.006 |
| same classes, not reaching `BitmapContainer.rank` (`succinct*`, `create*`, `ContainsRange.contains`) | 56 | 0.980 | 0.991 |
| controls | 17 | 1.055 | 1.042 |
| all | 129 | 1.011 | 1.003 |

* **Faster outside the band:** the 4 affected configurations (1.59–1.87x) and
  `containsViaRank[keys=32,match=true,scenario=END]` at **3.68x** (0.696 to 0.189 us/op), which
  ranks in an upper-half bitmap container. One control, `RealDataBenchmarkOr.pairwiseOr[weather_sept_85]`,
  shows 1.165x against an A/A of 1.136, which is noise.
* **Flagged as regressions:** `RankBenchmark.createFastRankBitmap` at `DENSE,1000` (0.72x) and
  `SPARSE,100000` (0.82x). These never call `rank`; they build a bitmap with `add`. A dedicated
  6-round re-run of `createFastRankBitmap` at DENSE/SPARSE × 1000/100000
  (`scripts/recheck_flagged.sh`, `jmh/full-check-recheck/summary.txt`) gives medians of
  0.98–1.20 with an A/A band of [0.80, 1.31] and **no flagged regression**. The first run's flags
  were noise in a very noisy, allocation-heavy benchmark. No other configuration regressed
  outside the A/A band in both rounds.
* **Caveat:** in round 1 the cand run overlapped with my KeY runs on CPUs 100-107 (same NUMA
  node) and with a load spike, so some unaffected configurations read 5–15% low in that round
  only. Round 2 does not show this.
* **Not run:** every other `jmh` benchmark. No benchmark outside the classes above reaches the
  changed method, according to the static search above. The control sample was limited to the
  17 configurations listed.

## Time-boxed attempt at an invariant-free 1.5x result (`explore-inv-free/`, `jmh/explore-select-t4/`)

The goal was a change whose equivalence holds on **every** state the public API can reach, so no
assumption about the cached cardinality, with at least 1.5x on official JMH. **Result: NOT
VERIFIED.** No candidate reached 1.5x on all affected configurations, and I did not build a KeY
proof for the best one.

* **Is the baseline popcount loop already vectorized?** On JDK 17 (C2), no.
  `-XX:-UseSuperWord` gives the same time, 136 ns per rank. The disassembly (hex from
  `-XX:CompileCommand=print`, decoded with `objdump` via `explore-inv-free/dis.py`) shows a scalar
  loop unrolled 4x: `popcnt mem` and a single `add` chain, so about 1 word per cycle, bound by the
  add latency. On JDK 21 the same loop **is** vectorized (AVX-512 VPOPCNTDQ, which this CPU has):
  74 ns, against 136 ns with SuperWord off. So on JDK 21 there is little headroom in this loop.
* **`rank` with several accumulators (no cardinality used).** The first 4-accumulator version was
  *slower*. Its `k + 3 < end` bound stopped C2 from forming a counted loop, which left range
  checks and safepoint polls in the loop. Rewritten with `lim = end & ~1` / `~3`:
  - 2 accumulators: 136 to 96 ns (1.42x) on JDK 17.
  - 4 accumulators: 1.34x on JDK 17.
  - On JDK 21 the 4-accumulator version is slower (103 ns) than the vectorized baseline (74 ns).

  The scan is only part of `RoaringBitmap.rankLong`, so end to end this is below 1.5x. I dropped it.
* **`select` with 4-word block skipping (`t4`).** `select` only uses `cardinality` to choose the scan
  direction, and old and new choose identically, so its equivalence needs no invariant. The `t4`
  variant (`explore-inv-free/select-variants/t4.BitmapContainer.java`) sums `bitCount` over
  4-word blocks with a counted loop (`limit = length - 3` would keep it KeY-friendly). It then
  scans the found block word by word, and keeps the old loop verbatim for `j < 0`. Official
  `bitmapcontainer.SelectBenchmark.bitmapContainer_selectBothSides` ran 4 rotated rounds with
  A/A (`-f 3 -wi 3 -i 3`, CPUs 168-169, cand = base jar plus override classes, load 64–155):

  | valuesCount | base ops/ms | t4 ops/ms | speedup | A/A |
  |---|---|---|---|---|
  | 100 | 129.3 | 157.1 | 1.218 [1.204, 1.242] | 0.980 |
  | 5000 | 1.749 | 2.688 | 1.551 [1.516, 1.569] | 0.937 |
  | 10000 | 0.886 | 1.337 | 1.507 [1.458, 1.572] | 0.972 |

  The geomean is **1.418x**, below 1.5x, because the sparse case is limited by per-select fixed
  costs: direction and loop-exit mispredicts, and the branchy `Util.select`. Wider blocks (8, 16)
  and in-block branchless resolution did not help. The KeY proof for this variant was not
  attempted to completion. It would need the extra sound axiom `pc(0) == 0`, quantified
  first-index loop invariants over prefix sums, and relational handling of the
  `IllegalArgumentException` paths. Object allocation on those paths anonymises the heap, the
  same KeY obstacle met in the `rank` relational proof. It is unverified.

## Tests

* `wt/cand` `:roaringbitmap:test` (full suite, JDK 17): **100 classes, 35,211 tests, 0
  failures, 0 errors** (7 skipped upstream). See `tests/full/` and `tests/summary.txt`.
  Targeted classes (`TestBitmapContainer`, `TestRoaringBitmap`, `TestRoaringBitmap_FastRank`,
  `TestSuccinctRank`, `TestRankIterator`, `TestRankIteratorsOfContainers`, `TestContainer`,
  `TestVeryLargeBitmap`): 715 tests pass (`tests/targeted/`).
* Differential test `difftest/RankDiff.java`: base and cand jars in separate class loaders,
  `rank(c)` compared for all 65,536 `c` on 200 random containers. These include densities from
  0 to 1, upper-half-only and structured patterns, and every fifth container with
  `cardinality = -1`. Result: 13,107,200 checks with no mismatch (`difftest/rankdiff.log`).

## Files

* `rank-two-sided.patch`: the optimization. `wt/cand` has it applied.
* `scripts/build.sh`, `scripts/jmh_rounds.sh`, `scripts/analyze.py`: build, alternating-round
  JMH runs and analysis. The build needs network access because Gradle `--offline` cannot
  resolve the release plugin.
* `jmh/rank-main/`: main rounds (raw JSON/TXT, `meta.log` with uptime and jar hashes, `summary.txt`).
* `jmh/regression-other/`: secondary no-regression rounds.
* `key/rank/`: `gen_key.py`, `BitmapRank.template.java`, generated `BitmapRank.java`,
  `PopCount.java`, `settings.key.txt`, `po_*.key`, logs `drv_*.txt`, closed proofs `*.closed.proof`.
* `key/relational/`: the direct relational theorem. `gen_rel.py` builds packages `rel` and `relnm`; `run_all.sh` proves and replays everything; `result.json`, `po_*.key`, `po_*.closed.proof`, `drv_*.txt` and `replay_*.txt` hold the outputs.
* `key/rank-negative/`: mutant negative control (`make_mutant.py`). `key/tool/`: headless KeY driver (`KeyRun.java`, `keyrun.sh`).
* `difftest/`: base-vs-cand differential test and the public-API invariant witness.
* `jmh/full-check/`, `jmh/full-check-recheck/`: full rank-reachability JMH check and the re-run of the flagged configurations (`scripts/full_check.sh`, `scripts/recheck_flagged.sh`, `scripts/full_analyze.py`).
* `explore-inv-free/`, `jmh/explore-select-t4/`: the invariant-free attempt (microbenchmark, disassembly helper, select variants, override classes, `scripts/jmh_rounds_override.sh`).
* `rejected/`: the inherited block-8 `select` prototype and the variant exploration harnesses.
* `PROVENANCE.txt`: upstream SHA, hashes of the patch, jars, sources and KeY jar, and JDK versions.
* `STATUS.md`: running log.

## No-regression check on other code paths (`jmh/regression-other/`)

Two alternating rounds (base, cand, A/A) with the same flags covered
`RankBenchmark.roaringBitmapRankLookupHit` with SPARSE and RANDOM data (ArrayContainers, so
the patch is not reached) and `range.ContainsRange.containsViaRank` with `keys=8192`, which
calls `RoaringBitmap.rank`. Over 11 configurations the geomean ratio is **0.993** (A/A
1.004). Per-configuration medians range from 0.957 to 1.018, and the A/A medians range from
0.962 to 1.036, so no change is visible beyond noise (`jmh/regression-other/summary.txt`).
`RANDOM size=1000000` fails in the upstream benchmark's own `@Setup` for both base and cand
(`IllegalArgumentException: bound must be positive` in `generateMissingValues`), so it has no
score.
