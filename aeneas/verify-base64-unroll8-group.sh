#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
python3 - <<'PY'
from pathlib import Path
import hashlib, json, subprocess
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
model = json.loads(Path('results/pairs-unroll8-exact/model-check.json').read_text())
for name, digest in model['files_sha256'].items():
    assert sha(Path(name)) == digest, name
assert Path('proof/Base64Unroll8Opt/Base64Unroll8Opt.lean').read_bytes() == Path(
    'results/Base64Unroll8Opt/Base64Unroll8Opt.lean').read_bytes()
for experiment in ['pairs-unroll8-exact', 'pairs-callchain']:
    build = json.loads(Path(f'results/{experiment}/build.json').read_text())
    for name, info in build.items():
        repo = Path('repos') / name
        assert subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=repo).decode().strip() == info['commit']
        diff = subprocess.check_output(['git', 'diff', 'HEAD'], cwd=repo)
        assert hashlib.sha256(diff).hexdigest() == info['patch_sha256'], name
        assert sha(Path('..') / info['binary']) == info['binary_sha256'], name
step = json.loads(Path('results/base64-step-proof-provenance.json').read_text())
for name, digest in step['files_sha256'].items():
    if name.startswith(('proof/Base64StepRef/', 'proof/Base64StepOpt/', 'proof/Base64PairsValue/')):
        assert sha(Path(name)) == digest, name
PY
(cd proof && taskset -c 64-79 lake build Base64Unroll8Proof) > logs/base64-unroll8-group-verification.log 2>&1
python3 - <<'PY'
from pathlib import Path
import datetime, hashlib, json, re
log = Path('logs/base64-unroll8-group-verification.log').read_text()
assert 'Build completed successfully' in log
assert not re.search(r'sorryAx|Lean\.ofReduceBool|Lean\.trustCompiler|error:', log)
required = ['Base64GroupProof.' + name for name in ['scalar4_body_spec', 'scalar8_body_spec', 'scalar8_two_scalar4', 'pairs8_two_scalar4', 'word_indices']]
required += ['Base64LoopGroupProof.scalar_fast_loops_equiv', 'Base64LoopGroupProof.fast_loops_equiv_if']
required += ['Base64RemainderProof.' + name for name in [
    'word_nat_indices', 'triple_body_spec', 'wordAt_bytes', 'emitWord_at',
    'finish4_absorbed_active', 'finish4_absorbed', 'scalar_fast_loop_spec',
    'scalar_fast_tail_equiv', 'tail_loop_equiv', 'fast_tail_equiv', 'fast4_small_eq_finish4']]
required += ['Base64Unroll8Proof.scalar_tail_equiv', 'Base64Unroll8Proof.internal_encode_equiv']
for name in required:
    match = re.search(r"'" + re.escape(name) + r"' depends on axioms:\s*\[(.*?)\]", log, re.S)
    assert match, name
    assert {x.strip() for x in match[1].split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound', 'core.fmt.Formatter'}, name
files = [
    'proof/Base64GroupProof.lean', 'proof/Base64Unroll8StepProof.lean',
    'proof/Base64LoopGroupProof.lean',
    'proof/Base64RemainderProof.lean', 'proof/Base64TailProof.lean', 'proof/TailPairProof.lean',
    'proof/Base64Unroll8Proof.lean',
    'proof/Base64TailOpt/Base64TailOpt.lean',
    'proof/Base64FastStepProof.lean', 'proof/PairEmissionProof.lean', 'proof/PairTableInit.lean',
    'proof/Base64StepRef/Base64StepRef.lean', 'proof/Base64StepOpt/Base64StepOpt.lean',
    'proof/Base64PairsValue/Base64PairsValue.lean', 'proof/Base64Unroll8Opt/Base64Unroll8Opt.lean',
    'proof/lakefile.toml', 'proof/lean-toolchain', 'results/Base64Unroll8Opt.llbc',
    'results/pairs-unroll8-exact/build.json', 'results/pairs-unroll8-exact/model-check.json',
    'results/pairs-unroll8-exact/performance.json',
    'verify-base64-unroll8-group.sh', 'logs/base64-unroll8-group-verification.log',
    'proof/.lake/build/lib/lean/Base64GroupProof.olean',
    'proof/.lake/build/lib/lean/Base64LoopGroupProof.olean',
    'proof/.lake/build/lib/lean/Base64RemainderProof.olean',
    'proof/.lake/build/lib/lean/Base64Unroll8Proof.olean',
    'proof/.lake/build/lib/lean/Base64TailProof.olean',
    'proof/.lake/build/lib/lean/Base64Unroll8StepProof.olean',
]
report = {
    'checked_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'scope': 'Complete extracted scalar encoder equality for valid starting input indices and output space for all complete three-byte groups; complete extracted internal_encode equality when output.length >= 4 * floor(input.length / 3). Covers every input length, all encoding tables, scalar and pair-table paths, outer dispatch, fast loops, three-byte remainder, final one/two bytes, complete returned buffers, and modeled results/effects. The public API capacity check and padding composition are checked by the separate public verifier.',
    'complete_candidate_equivalence': False,
    'remaining': 'Public API equivalence is checked separately by verify-base64-unroll8-public.sh.',
    'extraction': 'Checks the archived generated model and its recorded source identity; does not perform a fresh Rust extraction.',
    'theorems': required,
    'files_sha256': {f: hashlib.sha256(Path(f).read_bytes()).hexdigest() for f in files},
}
Path('results/base64-unroll8-group-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: complete extracted internal encoder equivalence under the output-capacity precondition; public API verification is separate.'
