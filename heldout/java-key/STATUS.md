# STATUS (restart agent)

- 2026-10-14 20:50 — restarted. Inherited wt/base, wt/cand @7f2b0a58; cand has block-of-8 select prototype.
- Official benchmark exercising BitmapContainer.select: jmh `org.roaringbitmap.bitmapcontainer.SelectBenchmark.bitmapContainer_selectBothSides` (valuesCount 100/5000/10000).
- Pilot JMH (noisy): block-8 prototype shows NO gain vs base. Machine ~91% busy (63% sys), CPUs 168/169 ~90% busy from other users.
- Builds: `JAVA_HOME=benchmarks/tools/java17/jdk-17.0.20.1+1 ./gradlew --max-workers=16 :jmh:shadowJar -x test` (~50 s, needs network; --offline fails on release plugin).
- Current: exploring select variants (branch-free word loop, 4-word blocks) before choosing.

## 21:15 update
- REJECTED block-8 select prototype: on quiet CPU-time harness it is 0.67x at valuesCount=100, ~1.0x at 10000; best select variant (branch-free / 4-blocks) only ~1.2-1.27x. Saved in rejected/.
- CHOSEN: BitmapContainer.rank(char) two-sided scan: if end word > 512 and cardinality cached (>=0), answer = cardinality - sum(bitCount(words end..1023)) instead of summing words 0..end-1. Patch: rank-two-sided.patch (applied in wt/cand).
- Official benchmark: jmh RankBenchmark.{roaringBitmapRankLookupHit,fastRankLookupHit} DENSE. Round 1: 1M 148.8->80.9 us (1.84x), 100k 122->74 (1.65x); 1000/10000 unaffected (as expected).
- JMH 4 alternating rounds (+A/A) running in background: jmh/rank-main/ (scripts/jmh_rounds.sh).
- KeY: key/rank/ (gen_key.py extracts real method bodies; PopCount stub = uninterpreted pc with 0..64 bound). intRules:javaSemantics needed (CheckingOF cannot interpret >>>; KeY lacks long[] element range axiom -> explicit inLong typing precondition). Driver key/tool/KeyRun.java prints open goals. In progress.

## 21:50 update
- JMH main rounds DONE (4 rounds, base/cand/A-A): jmh/rank-main/summary.txt. DENSE 1e6: 1.92x (fastRank) / 1.88x (roaring); 1e5: 1.65x / 1.65x; 1e3,1e4 ~1.0 (unaffected); A/A within ~2%.
- KeY: all 5 contract POs CLOSED (computeCardinality, rankOld x2 behaviours, rankNew x2) with intRules:javaSemantics; relational sameRank POs + off-by-one mutant negative control running.
- Tests: 8 targeted classes, 715 tests pass on cand; differential test base-vs-cand 13.1M rank checks OK; full :roaringbitmap:test running in background.
- Secondary no-regression JMH (SPARSE/RANDOM + ContainsRange.containsViaRank) running: jmh/regression-other.

## 22:00 update
- KeY final (key/run_all.sh -> key/result.json): 5/5 contract POs closed; direct relational POs open (documented); mutant negative control open (expected).
- Full test suite on cand: 35,211 tests, 0 failures. README.md written.
- Remaining: secondary regression JMH (jmh/regression-other, ETA ~22:40) -> add to README.

## 22:30 — DONE
- Regression JMH done (geomean 0.993 vs A/A 1.004; RANDOM 1e6 fails in upstream @Setup for both). README complete.

## 2026-10-15 10:28 — coordinator follow-up: full JMH check
- Launched scripts/full_check.sh -> jmh/full-check/: whole RankBenchmark (96 cfgs), whole range.ContainsRange (24), controls (RealData And/Or/Xor/Iterate/Contains on census1881+weather_sept_85 roaring mutable; SerializationBenchmark; ContainsBenchmark). -f 3 -wi 3x1s -i 3x1s, 2 rotated rounds base/cand/A-A, CPUs 168-169. ETA ~4-5 h.
- Static reachability of BitmapContainer.rank: RoaringBitmap.rank/rankLong/rangeCardinality, FastRankRoaringBitmap.rankLong, SuccinctRank (non-bitmap containers only), Roaring64Bitmap.rankLong, Roaring64NavigableMap.rankLong. JMH users: RankBenchmark, ContainsRange.containsViaRank only.

## 2026-10-15 ~12:00 — coordinator: binary VERIFIED/NOT VERIFIED
- Public-API witness (difftest/InvariantWitness.java): new BitmapContainer(all-ones words, 5000).rank(60000): old 60001, new -535 (validate()==false). So the optimization is NOT equivalent on states reachable through the public constructor -> strict verdict NOT VERIFIED regardless of KeY.
- key/relational/ (package rel): direct two-container product POs. sameMax (x==65535) CLOSED; same (x!=65535) open with contracts (anon({}) heap of combined contract blocks bsum equality); trying method-expansion with long timeout. validate()==true => cardinality==Σ part of INV: CLOSED.
- rank contracts for non-MAX behaviour changed to assignable \strictly_nothing (re-proved closed).
- JMH full-check still running (round 1 cand).

## ~12:20
- key/relational: ALL 11 POs closed + replayed headlessly (result.json all_closed_and_replayed=true). Direct relational theorem old==new & same heap effects for all x under INV.
- Verdict NOT VERIFIED (strict): INV breakable via public constructor; witness old 60001 vs new -535. README updated.
- Waiting for jmh/full-check rounds (r1 aa, r2 x3).

## ~15:45 — full-check written up; INV-free attempt (coordinator 3h box, started ~14:50)
- full-check: affected geomean 1.703; all rank-reaching 1.029; controls 1.055; 2 flags in createFastRankBitmap cleared by 6-round recheck.
- INV-free exploration: JDK17 C2 does NOT vectorize baseline popcount loop (-UseSuperWord same speed); JDK21 DOES (r0 136->74 ns). Multi-accumulator rank: needs counted-loop shape (lim=end&~1) -> 1.42x scan on JDK17 but slower than vectorized baseline on JDK21; e2e < 1.5x.
- select (INV-free: cardinality only picks the side, identical in old/new): 4-word block skip `t4` quick official JMH: 100: ~1.26x, 5000: ~1.55x, 10000: ~1.52x. Protocol rounds running (jmh/explore-select-t4). Proof would need pc(0)=0 axiom + first-index quantified invariants + exception paths; not attempted to completion in box.

## ~16:20 — DONE (final)
- INV-free attempt: select t4 official JMH 4 rounds: 1.218/1.551/1.507, geomean 1.418 (<1.5); no KeY proof. rank multi-acc 1.42x scan only. Verdict for INV-free goal: NOT VERIFIED.
- Overall verdict: NOT VERIFIED (two-sided rank relies on cached-cardinality invariant breakable via public constructor; witness in difftest/).
