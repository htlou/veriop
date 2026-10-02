#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
# Re-extract both actual Rust worktrees before generating the loop-body models.
bash verify-base64-api.sh > logs/base64-step-api-replay.log 2>&1
for side in Ref Opt; do
  model="Base64Step$side"
  mkdir -p "proof/$model"
  cp "results/Base64ApiPartial$side.llbc" "results/$model.llbc"
  repos/aeneas/src/_build/default/main.exe -backend lean -loops-no-rec -no-progress-bar \
    -namespace "$model" -dest "proof/$model" "results/$model.llbc" \
    > "logs/base64-step-$side-generation.log" 2>&1
  if rg -n 'Generated the partial file' "logs/base64-step-$side-generation.log"; then exit 1; fi
done
if rg -n '\b(sorry|axiom|admit|native_decide|bv_decide|implemented_by)\b' \
    proof/Base64StepRef proof/Base64StepOpt proof/Base64FastStepProof.lean; then exit 1; fi
(cd proof && lake build Base64StepRef Base64StepOpt PairEmissionProof \
  && lake env lean Base64FastStepProof.lean) > logs/base64-step-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/base64-step-verification.log; then exit 1; fi
cat logs/base64-step-verification.log
python3 - <<'PY'
import hashlib
import json
from pathlib import Path
import subprocess

def sha(data):
    return hashlib.sha256(data).hexdigest()

manifest = json.loads(Path('results/pairs-callchain/build.json').read_text())
report = {}
for repo in ['rust-base64', 'base64-pairs-callchain', 'aeneas', 'charon']:
    def git(*args):
        return subprocess.check_output(['git', *args], cwd=Path('repos') / repo)
    entry = {'commit': git('rev-parse', 'HEAD').decode().strip(),
             'tracked_diff_sha256': sha(git('diff', 'HEAD'))}
    if repo in manifest:
        assert entry['commit'] == manifest[repo]['commit']
        assert entry['tracked_diff_sha256'] == manifest[repo]['patch_sha256']
        entry['matches_measured_source'] = True
    report[repo] = entry
paths = ['proof/Base64FastStepProof.lean', 'proof/PairEmissionProof.lean',
         'proof/PairTableInit.lean', 'proof/Base64PairsValue/Base64PairsValue.lean',
         'proof/lakefile.toml', 'verify-base64-step.sh', 'verify-base64-api.sh',
         'repos/aeneas/src/_build/default/main.exe',
         'env/aeneas/backends/lean/Aeneas/Data/Discriminant.lean',
         'env/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean']
for side in ['Ref', 'Opt']:
    paths += [f'results/Base64Step{side}.llbc',
              f'proof/Base64Step{side}/Base64Step{side}.lean']
report['files_sha256'] = {p: sha(Path(p).read_bytes()) for p in paths}
report['scope'] = ('Equality of complete extracted internal_encode functions for matching encoding '
                   'tables and all input/output slices; scalar-tail and both fast-loop branches, '
                   'including failure/divergence, are covered. Public encode_slice and native '
                   'compilation are not certified by this theorem.')
Path('results/base64-step-proof-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: complete extracted internal_encode equality for matching encoding tables and all input/output slices. Public encode_slice equivalence is not yet proved.'
