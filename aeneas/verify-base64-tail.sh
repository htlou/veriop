#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"

# Refresh the baseline and the fast-loop proof reused by the remainder proof.
bash verify-base64-step.sh > logs/base64-tail-step-replay.log 2>&1
model=Base64TailOpt
mkdir -p "proof/$model"
(cd repos/base64-pairs-tail && charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' \
  --dest-file "$AENEAS_WORK/results/$model.llbc" \
  --start-from '{impl base64::engine::Engine for base64::engine::general_purpose::GeneralPurpose}::internal_encode' \
  --opaque base64::engine::general_purpose::decode \
  --opaque base64::engine::general_purpose::decode_suffix \
  -- --lib --no-default-features --features std) > logs/base64-tail-charon.log 2>&1
repos/aeneas/src/_build/default/main.exe -backend lean -loops-no-rec -no-progress-bar \
  -namespace "$model" -dest "proof/$model" "results/$model.llbc" \
  > logs/base64-tail-aeneas.log 2>&1
if rg -n 'Generated the partial file' logs/base64-tail-aeneas.log; then exit 1; fi
if rg -n '\b(sorry|axiom|admit|native_decide|bv_decide|implemented_by)\b' \
  proof/Base64TailOpt proof/Base64TailProof.lean proof/TailPairProof.lean; then exit 1; fi
(cd proof && lake build Base64FastStepProof TailPairProof Base64TailOpt \
  && lake env lean Base64TailProof.lean) > logs/base64-tail-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/base64-tail-verification.log; then exit 1; fi
cat logs/base64-tail-verification.log
python3 - <<'PY'
import hashlib
import json
from pathlib import Path
import subprocess

def sha(data):
    return hashlib.sha256(data).hexdigest()

report = json.loads(Path('results/base64-step-proof-provenance.json').read_text())
for path, digest in report['files_sha256'].items():
    assert sha(Path(path).read_bytes()) == digest, path
manifest = json.loads(Path('results/pairs-tail/build.json').read_text())
for repo in ['rust-base64', 'base64-pairs-tail']:
    def git(*args):
        return subprocess.check_output(['git', *args], cwd=Path('repos') / repo)
    entry = {'commit': git('rev-parse', 'HEAD').decode().strip(),
             'tracked_diff_sha256': sha(git('diff', 'HEAD'))}
    assert entry['commit'] == manifest[repo]['commit']
    assert entry['tracked_diff_sha256'] == manifest[repo]['patch_sha256']
    binary = Path('..') / manifest[repo]['binary']
    assert sha(binary.read_bytes()) == manifest[repo]['binary_sha256']
    entry['matches_measured_source'] = True
    entry['matches_measured_binary'] = True
    report[repo] = entry
paths = ['proof/Base64TailOpt/Base64TailOpt.lean', 'proof/Base64TailProof.lean',
         'proof/TailPairProof.lean', 'results/Base64TailOpt.llbc', 'verify-base64-tail.sh',
         'results/pairs-tail/build.json']
report['files_sha256'].update({p: sha(Path(p).read_bytes()) for p in paths})
report['scope'] = ('Equality of complete extracted internal_encode functions for matching encoding '
                   'tables and all input/output slices, baseline versus measured pairs-tail candidate. '
                   'Includes changed fast and three-byte remainder loops and modeled failure/divergence. '
                   'Public encode_slice and native compilation are not certified.')
Path('results/base64-tail-proof-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: complete extracted internal_encode equality for the measured pairs-tail candidate. Public encode_slice is checked separately by verify-base64-public.sh.'
