# CompCert: verified node layout and experimental CFG cloning

C1's [primary patch](patches/c1-global.patch) reduces Linear jumps from **672→654** on Embench and **6776→6590** on MiBench. All 253 existing proof sources and the original checker are unchanged; independent clean proof builds and kernel checks pass. Compilation coverage is **85/85**, with **84/84 baseline-valid functional checks passing**. MiBench `bf` remains a failing diagnostic, under the user's approved baseline-only acceptance rule.

C2's [tail-cloning prototype](c2/TailClone.ml) further reduces Embench jumps **654→501**, with 73/73 functional checks across three suites. **C2 has no original-to-cloned LTL semantic-preservation proof**, and maximum measured text growth is 15.86%. It is an isolated proof-boundary experiment.

The subsequent [frozen C1 wall-clock evaluation](PERFORMANCE.md) contains
5,280 pinned-core measurements. It finds no resolved per-program speedup and
several regressions despite fewer jumps. This custom study is diagnostic;
current performance scoring follows the [upstream harness protocol](performance/OFFICIAL.md).
Hardware counters are deferred
under the user's approved wall-clock-first scope; C2 was not timed.

- [Report and research conclusions](REPORT.md), [complete numerical tables](RESULTS.md), [acceptance audit](results/completion-audit.json).
- [Original task](TASK.md), [follow-up protocol](C1-C2.md), [source pins](pins.json).
- [C1 proof-build evidence](results/c1-proof-builds.json), [primary complete proof log](logs/build-c1-global.log).
- [Frozen C1 sources/compiler hashes](results/frozen/c1-candidates.json), [ablations](results/frozen/c1-ablations.json).
- [C2 exhaustive boundary controls](results/c2-checked-boundary-controls.json), [test source](c2/BoundaryControl.ml).
- [Observer method](measurement/README.md), [340 executable transparency checks](results/observer-transparency-c1.json).
- [Historical v2 report](REPORT-v2.md) and [historical instructions](README-v2.md); their old blocked status is superseded.

## Reproduce in a fresh directory

Use x86-64 Linux with GCC, GNU binutils, make, git, Python 3, curl, tar, dpkg-deb, patch and rg. Copy experiment scripts, `pins.json`, `env.sh`, `harness/`, `measurement/`, `patches/`, `c1/`, and `c2/`. Do not copy generated `repos/`, `env/`, `build/`, or `results/`. Remove copied generated symlinks in `harness/mibench-bin/` if present. Commands preserve completed results and refuse to overwrite them.

The toolchain installs OCaml 4.14.2, Coq 8.20.1 and Menhir 20250912. Downloads/builds are large. The pinned v3.18 release's upstream banner still reads 3.17. Run commands below from the experiment directory with `set -e` so a failed gate stops the sequence.

### Baseline and supported sets

```bash
set -e
python3 bootstrap.py
bash setup-toolchain.sh > logs/setup-toolchain.log 2>&1
bash build-compiler.sh baseline > logs/build-baseline.log 2>&1
source env.sh
make -C repos/baseline/test -j16 all > logs/regression-baseline-build.log 2>&1
make -C repos/baseline/test test > logs/regression-baseline-test.log 2>&1
for suite in regression-c embench polybench; do
  python3 evaluate-direct.py "$suite" --freeze
done
python3 discover-mibench.py > logs/discover-baseline-mibench.log 2>&1
python3 build-observer.py baseline
python3 build-mibench.py measured-baseline
python3 check-mibench.py measured-baseline
python3 acceptance.py
python3 collect-mibench.py measured-baseline
python3 build-observer.py baseline --output measured-c1-baseline
for suite in regression-c embench polybench; do
  python3 evaluate-direct.py "$suite" --variant measured-c1-baseline
done
for variant in baseline measured-c1-baseline; do
  python3 build-mibench.py "$variant"
  python3 check-mibench.py "$variant"
done
python3 collect-mibench.py measured-c1-baseline
```

`check-mibench.py measured-baseline` first saves raw checks, then freezes the baseline-only functional manifest. It leaves `bf.functional_pass=false` while requiring all eleven valid cases. No candidate result enters this selection. Baseline comparison metrics here do not create a new unseen holdout; the published C1 confirmation follows previously observed MiBench work.

### C1 builds, development and source freeze

```bash
python3 c1/prepare.py
for variant in c1-greedy c1-global c1-weighted; do
  bash build-compiler.sh "$variant" > "logs/build-$variant.log" 2>&1
  python3 build-observer.py "$variant"
  for suite in regression-c embench; do
    python3 evaluate-direct.py "$suite" --variant "$variant"
    python3 evaluate-direct.py "$suite" --variant "measured-$variant"
    python3 compare-direct.py "$suite" --variant "measured-$variant" --baseline measured-c1-baseline
  done
done
(cd c1 && ocamlc -o test-layout LayoutSearch.ml TestLayout.ml && ./test-layout) > logs/c1-layout-self-check.log
python3 c1/freeze.py
git -C repos/c1-global submodule update --init --depth 1
make -C repos/c1-global/test -j16 all > logs/c1-global-regression-build.log 2>&1
make -C repos/c1-global/test test > logs/c1-global-regression-test.log 2>&1
```

`build-compiler.sh` rejects pre-existing `.vo` files, checks the allowed source diff and runs full Rocq compilation, `check-admitted`, and `check-proof`. The freeze validates the supplied patch hashes and records built compiler hashes. C1-global is the Embench-selected primary. No C1 source tuning follows the freeze.

### Confirmation, numerical control, ablations and transparency

```bash
python3 c1/prepare-ablations.py > logs/c1-prepare-ablations.log 2>&1
for variant in c1-greedy c1-global c1-weighted; do
  for build in "$variant" "measured-$variant"; do
    python3 evaluate-direct.py polybench --variant "$build"
    python3 build-mibench.py "$build"
    python3 check-mibench.py "$build"
  done
  python3 collect-mibench.py "measured-$variant"
  for suite in polybench mibench-evaluation; do
    python3 compare-direct.py "$suite" --variant "measured-$variant" --baseline measured-c1-baseline
  done
done
for component in no-neutral no-swap no-subsequence no-reversal baseline-seeds; do
  variant="c1-ablation-$component"
  for suite in regression-c embench polybench; do
    python3 evaluate-direct.py "$suite" --variant "$variant"
    python3 compare-direct.py "$suite" --variant "$variant" --baseline measured-c1-baseline
  done
  python3 build-mibench.py "$variant"
  python3 check-mibench.py "$variant"
  python3 collect-mibench.py "$variant"
  python3 compare-direct.py mibench-evaluation --variant "$variant" --baseline measured-c1-baseline
done
python3 check-transparency.py --c1
python3 c1/chain-splitting.py
```

Ablations are prepared before reading confirmation output and reuse verified proof artifacts. All primary and diagnostic data remain separate; there is no aggregate mixing the four suites. Re-running `compare-direct.py` only recomputes tables from saved actual Linear events and sizes.

### C2 boundary experiment

```bash
python3 c2/prepare.py > logs/c2-checked-prepare.log 2>&1
for suite in regression-c embench polybench; do
  python3 c2/evaluate.py "$suite" > "logs/c2-checked-$suite.log" 2>&1
done
cp c2/BoundaryControl.ml repos/c2-checked-prototype/backend/BoundaryControl.ml
make -C repos/c2-checked-prototype -f Makefile.extr depend > logs/c2-checked-boundary-build.log 2>&1
make -C repos/c2-checked-prototype -f Makefile.extr -f ../../c2/boundary.mk boundary-control >> logs/c2-checked-boundary-build.log 2>&1
repos/c2-checked-prototype/boundary-control > results/c2-checked-boundary-controls.json
python3 report-results.py
python3 audit-c1-c2.py
```

C2 reuses C1 proof artifacts to build the experimental native hook; this is not a clean formal proof of the new transformation. Each evaluated executable comes from the extra emitted C2 assembly, with original objects separately retained. The boundary control exhaustively checks all 24 original and 120 cloned graph orderings and rejects malformed certificates. `certificate_proved_in_Rocq` and `formal_C_to_output_proof` remain false in saved C2 results.

The current workspace's `python3 audit-c1-c2.py` rechecks frozen hashes, untouched proofs/sources, coverage, comparison gates, proof logs, C2 controls and the saved 340-pair transparency evidence. It also compares historical C2 executable hashes when those earlier runs are present. Numerical tables are regenerated by `python3 report-results.py`.
