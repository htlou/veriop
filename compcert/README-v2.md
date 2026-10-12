# CompCert 3.18 block-layout experiment

The [report](REPORT.md) contains proof evidence, all program-level results,
per-function data links, mechanism analysis, ablations, and failed attempts.
The [task specification](TASK.md) and [pinned inputs](pins.json) preserve scope.

The final [one-file patch](patches/local-adjacency-v2.patch) reduces Linear
jumps from 672 to 660 on Embench and 6,776 to 6,648 on held-out MiBench, with
no measured jump or executable-size regressions. All 253 proof sources and
existing validators are unchanged; clean full builds and kernel checks pass.

**Full acceptance remains open:** MiBench's original `bf` driver fails the
functional gate in baseline and candidate. Eleven other accepted executables,
including Blowfish's separate known-answer self-tests, pass. The defective
program remains in all compilation and structural results. No benchmark source
was repaired or dropped. The task owner has been asked how to resolve this
inherited failure under the requirement to keep benchmark sources unchanged.

## Evidence entry points

- [Baseline clean proof build](results/baseline-build.json) and
  [candidate clean proof build](results/candidate-v2-build.json).
- [Frozen final heuristic and ablations](results/frozen/final-candidate.json).
- [Embench comparison](results/measured-candidate-v2/embench-comparison.json).
- [MiBench diagnostic comparison](results/measured-candidate-v2/mibench-evaluation-diagnostic.json).
- [PolyBench comparison](results/measured-candidate-v2/polybench-comparison.json).
- [Regression C comparison](results/measured-candidate-v2/regression-c-comparison.json).
- [170 executable transparency checks](results/observer-transparency-final.json).
- [Original validator negative controls](results/validator-negative-control/summary.json).
- [GSM upstream fixture comparisons](results/gsm-upstream-fixtures.json).
- [Requirement-by-requirement acceptance audit](results/completion-audit.json).

## Reproduction

Run from this directory on x86-64 Linux with GCC, GNU binutils, make, git,
Python 3, curl, tar, dpkg-deb, patch, and rg installed. The bootstrap downloads
pinned opam and GMP development inputs; opam installs OCaml 4.14.2, Coq 8.20.1
and Menhir 20250912. This experiment uses the pinned official v3.18 commit,
whose upstream version banner still says 3.17.

Use a **fresh experiment directory** containing these scripts, `pins.json`,
`env.sh`, `harness/`, `measurement/`, and `patches/`; do not copy generated
`repos/`, `env/`, `build/`, or `results/`. Commands intentionally refuse to
replace completed builds, frozen manifests, or results. Downloaded sources and
compiled environments are large. No network publication is required.

### 1. Build pristine baseline and freeze support before optimization

```bash
python3 bootstrap.py
bash setup-toolchain.sh > logs/setup-toolchain.log 2>&1
bash build-compiler.sh baseline > logs/build-baseline.log 2>&1
source env.sh
make -C repos/baseline/test -j16 all > logs/regression-baseline-build.log 2>&1
make -C repos/baseline/test test > logs/regression-baseline-test.log 2>&1
python3 evaluate-direct.py regression-c --freeze
python3 evaluate-direct.py embench --freeze
python3 evaluate-direct.py polybench --freeze
python3 discover-mibench.py > logs/discover-baseline-mibench.log 2>&1
python3 build-observer.py baseline
for suite in regression-c embench polybench; do
  python3 evaluate-direct.py "$suite" --variant measured-baseline || break
done
```

`build-compiler.sh` runs the full Rocq build, `make check-admitted`, and
`make check-proof`, including the compiler theorem dependency closure. It
rejects pre-existing `.vo` artifacts. MiBench discovery only determines support;
it collects no held-out layout scores. The current discovery script contains
the corrected host-configure/build recipe; the older failed discovery attempts
need not be repeated.

### 2. Apply final patch, build proofs, test, and freeze ablations

```bash
git clone --shared repos/baseline repos/candidate-v2
git -C repos/candidate-v2 apply ../../patches/local-adjacency-v2.patch
bash build-compiler.sh candidate-v2 > logs/build-candidate-v2.log 2>&1
git -C repos/candidate-v2 submodule update --init --depth 1
make -C repos/candidate-v2/test -j16 all > logs/regression-candidate-v2-build.log 2>&1
make -C repos/candidate-v2/test test > logs/regression-candidate-v2-test.log 2>&1
python3 build-observer.py candidate-v2
for suite in regression-c embench polybench; do
  python3 evaluate-direct.py "$suite" --variant candidate-v2 || break
  python3 evaluate-direct.py "$suite" --variant measured-candidate-v2 || break
  python3 compare-direct.py "$suite" --variant measured-candidate-v2 || break
done
python3 prepare-ablations.py > logs/prepare-ablations.log 2>&1
python3 check-validator.py > logs/check-validator.log 2>&1
```

`prepare-ablations.py` records source hashes before building the four component
removals. It reuses already verified proof artifacts for these diagnostic
variants; it does not claim an independent clean Rocq build for each ablation.
The final candidate itself has a separate clean full build above.

### 3. Evaluate the complete MiBench holdout and all ablations

```bash
for variant in baseline candidate-v2 measured-baseline measured-candidate-v2 \
  ablation-no-successor-move ablation-no-predecessor-move \
  ablation-one-pass ablation-no-cost-guard; do
  python3 build-mibench.py "$variant" || break
done

# Establish runtime reference first. This exits 1 for the inherited bf failure.
python3 check-mibench.py measured-baseline

for variant in baseline candidate-v2 measured-candidate-v2 \
  ablation-no-successor-move ablation-no-predecessor-move \
  ablation-one-pass ablation-no-cost-guard; do
  python3 check-mibench.py "$variant"
done

for variant in measured-baseline measured-candidate-v2 \
  ablation-no-successor-move ablation-no-predecessor-move \
  ablation-one-pass ablation-no-cost-guard; do
  python3 collect-mibench.py "$variant" || break
done

for variant in measured-candidate-v2 ablation-no-successor-move \
  ablation-no-predecessor-move ablation-one-pass ablation-no-cost-guard; do
  python3 compare-direct.py mibench-evaluation --variant "$variant" --diagnostic || break
done

for variant in ablation-no-successor-move ablation-no-predecessor-move \
  ablation-one-pass ablation-no-cost-guard; do
  for suite in regression-c embench polybench; do
    python3 evaluate-direct.py "$suite" --variant "$variant" || break
    python3 compare-direct.py "$suite" --variant "$variant" || break
  done
done
python3 check-transparency.py
python3 check-saved-gsm-fixtures.py
```

The `check-mibench.py` failures are real, intentionally retained failures;
do not interpret them as passing acceptance checks. Every current run should
report only `security-blowfish-bf` as failing. `--diagnostic` allows structural
analysis while explicitly retaining `correctness_gate_pass: false`. The
normal comparison mode refuses failed functional gates.

`build-mibench.py` retains the frozen compiler-flag adapter, checks source
hashes, rebuilds all accepted objects, fixes `SOURCE_DATE_EPOCH=0` for both
compilers, and records link maps. `collect-mibench.py` checks archive-member
identity and records the actual linked translation units for each executable.
Runtime commands follow upstream small-input scripts; JPEG and GSM fixtures
and Blowfish self-tests add independent expected-output checks. The README and
report explain the limited normalization of runtime-only output fields.

### Optional: replay the failed first optimization idea

```bash
git clone --shared repos/baseline repos/candidate
git -C repos/candidate apply ../../patches/successor-chain-v1.patch
bash build-compiler.sh candidate > logs/build-candidate.log 2>&1
python3 build-observer.py candidate
python3 evaluate-direct.py embench --variant measured-candidate
python3 compare-direct.py embench --variant measured-candidate
```

This attempt passed correctness checks but left all Embench structural metrics
unchanged. It did not guide tuning on MiBench.
