#!/usr/bin/env bash
# End-to-end check of the held-out decode result:
#  1. source provenance (pinned baseline, candidate = baseline + patches/base64-decode-pairs.patch,
#     unchanged official benchmark and Cargo.toml),
#  2. fresh extraction (Charon -> Aeneas -> Lean) of the combined crate,
#  3. Lean proof build with axiom audit,
#  4. baseline-faithfulness cross-check, negative control, translator regression fixture,
#  5. provenance manifest results/provenance.json (hashes of everything involved).
set -euo pipefail
source "$(dirname "$0")/env.sh"
H=$HELDOUT
cd "$H"
log=logs/verify.log
: > "$log"
say() { echo "$*" | tee -a "$log"; }
REF=repos/base64-ref; CAND=repos/base64-decode-pairs
[ "$(git -C $REF rev-parse HEAD)" = 5b98ee180cc7c2a64af6cb12c724b1721550e0d0 ]
[ -z "$(git -C $REF status --porcelain --untracked-files=no)" ]
[ "$(git -C $CAND rev-parse HEAD)" = 5b98ee180cc7c2a64af6cb12c724b1721550e0d0 ]
cmp <(git -C $CAND diff) patches/base64-decode-pairs.patch
for f in Cargo.toml Cargo.lock benches/benchmarks.rs; do
  cmp <(git -C $REF show HEAD:$f) $REF/$f; cmp <(git -C $CAND show HEAD:$f) $CAND/$f
done
say "source provenance OK (baseline 5b98ee18 clean; candidate = baseline + patch; official bench/Cargo files unchanged)"
bash scripts/extract.sh base64-decode-pairs DecodeModel >> "$log" 2>&1
say "fresh extraction OK"
(cd proof && taskset -c 64-79 lake build DecodeProof) > logs/verify-lean.log 2>&1
grep -E "depends on axioms" -A12 logs/verify-lean.log | tee -a "$log" > /dev/null
if grep -nE '\b(sorry|admit|native_decide|bv_decide|implemented_by)\b|^axiom' proof/DecodeProof.lean; then
  say "FAIL: forbidden construct in proof"; exit 1; fi
if grep -nE '\bsorry\b' proof/DecodeModel/DecodeModel.lean; then say "FAIL: sorry in model"; exit 1; fi
if grep -nE 'sorryAx|Lean.ofReduceBool|Lean.trustCompiler' logs/verify-lean.log; then say "FAIL: axiom audit"; exit 1; fi
python3 - <<'PY'
import re
from pathlib import Path
log = Path('logs/verify-lean.log').read_text()
audits = {m.group(1): {x.strip() for x in m.group(2).split(',')}
          for m in re.finditer(r"'DecodeProof\.(\w+)' depends on axioms: \[(.*?)\]", log, re.S)}
std = {'propext', 'Classical.choice', 'Quot.sound'}
allowed = std | {'core.fmt.Formatter', 'engine.general_purpose.decode_suffix.decode_suffix',
                 'engine.general_purpose.encode_helper', 'Shared0T.Insts.CoreConvertAsRef.as_ref',
                 'Slice.Insts.CoreConvertAsRefSlice.as_ref', 'core.result.Result.map'}
assert audits['pairs_spec'] <= std, audits['pairs_spec']
for k in ['chunk8_pairs_eq', 'chunk4_pairs_eq', 'decode_complete_quads_equiv']:
    assert audits[k] <= std | {'core.fmt.Formatter'}, (k, audits[k])
assert audits['decode_slice_equiv'] <= allowed, audits['decode_slice_equiv'] - allowed
print('axiom audit OK')
PY
say "proof build + axiom audit OK"
bash scripts/check-faithful.sh > logs/faithful-check.log 2>&1 || { say "FAIL: faithfulness check"; exit 1; }
say "baseline faithfulness cross-check OK"
bash scripts/check-negative.sh > logs/negative-control.log 2>&1 || { say "FAIL: negative control"; exit 1; }
say "negative control OK (mutated candidate rejected)"
(cd tool-tests/nested-exit && bash check.sh) > logs/nested-exit-regression.log 2>&1 || { say "FAIL: translator regression fixture"; exit 1; }
say "translator regression fixture OK"
bash final-verification/verify-final.sh > logs/verify-final-steps.log 2>&1 || { say "FAIL: final verification (logs/verify-final-steps.log)"; exit 1; }
say "final verification OK: public Engine::decode and Engine::decode_vec equivalence (final-verification/logs/verify-final.log)"
python3 - <<'PY'
import hashlib, json, subprocess
from pathlib import Path
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()
files = []
files += ['patches/base64-decode-pairs.patch', 'patches/aeneas-heldout-decode.patch',
          'patches/charon-self-clause-substitution.patch', 'harness/ref_engine.rs',
          'scripts/extract.sh', 'scripts/verify.sh', 'scripts/check-faithful.sh', 'scripts/check-negative.sh',
          'scripts/bench.sh', 'scripts/summarize.py', 'scripts/gen/make_candidate.py', 'scripts/env.sh']
files += ['extract/DecodeModel.llbc', 'proof/DecodeModel/DecodeModel.lean', 'proof/DecodeProof.lean',
          'proof/lakefile.toml', 'proof/lean-toolchain', 'proof/lake-manifest.json',
          'proof/.lake/build/lib/lean/DecodeProof.olean',
          'proof/.lake/build/lib/lean/DecodeModel/DecodeModel.olean',
          'extract/BaselineCheck.llbc', 'extract/BaselineCheck/BaselineCheck.lean',
          'tool-validation/trees/aeneas-final/src/_build/default/main.exe', 'patches/aeneas-final-from-upstream.patch', 'tools/charon-bin/charon', 'tools/charon-bin/charon-driver',
          'logs/verify-lean.log', 'logs/faithful-check.log', 'logs/negative-control.log', 'logs/negative-proof.log']
files += ['patches/aeneas-lean-tostr-kernel-proof.patch',
          'tool-validation/trees/aeneas-final/backends/lean/Aeneas/Std/String.lean',
          'final-verification/extract-api.sh', 'final-verification/verify-final.sh',
          'final-verification/check-negative-api.sh', 'final-verification/run-lean-tests-tostr.sh',
          'final-verification/probe-decode-stream.sh', 'proof/lakefile.toml',
          'extract/DecodeApiModel.llbc', 'final-verification/lean/DecodeApiModel/DecodeApiModel.lean',
          'final-verification/lean/DecodeApiBase.lean', 'final-verification/lean/DecodeApiProof.lean',
          'proof/.lake/build/lib/lean/DecodeApiProof.olean', 'proof/.lake/build/lib/lean/DecodeApiBase.olean',
          'final-verification/logs/verify-final.log', 'final-verification/logs/verify-api-lean.log',
          'final-verification/logs/negative-control-api.log',
          'final-verification/logs/lean-tests-aeneas-final-tostr.log',
          'final-verification/logs/extract-lean-std-tostr.log',
          'final-verification/logs/probe-decode-stream-aeneas.log']
for repo in ['repos/base64-ref', 'repos/base64-decode-pairs']:
    for p in sorted(Path(repo, 'src').rglob('*.rs')): files.append(str(p))
    files += [f'{repo}/Cargo.toml', f'{repo}/Cargo.lock', f'{repo}/benches/benchmarks.rs']
bins = {}
for repo in ['base64-ref', 'base64-decode-pairs']:
    b = sorted(Path(f'repos/{repo}/target/release/deps').glob('benchmarks-*'))
    b = [x for x in b if x.suffix == '' and x.stat().st_mode & 0o111]
    assert len(b) == 1
    bins[repo] = {'path': str(b[0]), 'sha256': sha(b[0])}
setup = Path('results/main/setup.txt').read_text()
for repo, v in bins.items():
    assert v['sha256'] in setup, f'benchmark binary changed since the measurement: {repo}'
manifest = {
  'baseline_commit': '5b98ee180cc7c2a64af6cb12c724b1721550e0d0',
  'candidate': 'baseline + patches/base64-decode-pairs.patch',
  'benchmark_binaries': bins,
  'files_sha256': {f: sha(f) for f in files},
  'theorem': 'DecodeProof.decode_slice_equiv',
  'theorems_final_verification': ['DecodeApiProof.decode_equiv', 'DecodeApiProof.decode_vec_equiv'],
  'not_verified': {'decode_stream': 'read::DecoderReader / std::io::Read::read_to_end not extractable (final-verification/README.md)'},
  'aeneas_lean_library_change': 'patches/aeneas-lean-tostr-kernel-proof.patch (validated: final-verification/logs/lean-tests-aeneas-final-tostr.log)',
  'aeneas_base': 'upstream Aeneas 557eff83 + patches/aeneas-final-from-upstream.patch (validated: tool-validation/)',
  'charon_base': 'upstream Charon c8f15d7d + patches/charon-self-clause-substitution.patch (validated: tool-validation/)',
}
Path('results/provenance.json').write_text(json.dumps(manifest, indent=2) + '\n')
print('provenance manifest written')
PY
say "PASS: verified decode-pairs candidate (complete public decode_slice, decode and decode_vec equivalence; decode_stream not verified)"
