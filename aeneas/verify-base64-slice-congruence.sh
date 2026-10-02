#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
dest=results/Base64SliceCongruence
for side in Ref Opt; do
  if [ "$side" = Ref ]; then repo=rust-base64; else repo=base64-pairs-tail; fi
  model="Base64Slice$side"
  mkdir -p "$dest/$side"
  (cd "repos/$repo" && charon cargo --preset=aeneas \
    --monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' \
    --dest-file "$AENEAS_WORK/$dest/$model.llbc" \
    --start-from 'base64::engine::Engine::encode_slice' \
    --opaque 'base64::engine::Engine::encode' \
    --opaque 'base64::engine::Engine::encode_string' \
    --opaque 'base64::engine::Engine::decode' \
    --opaque 'base64::engine::Engine::decode_vec' \
    --opaque 'base64::engine::Engine::decode_slice' \
    --opaque 'base64::engine::Engine::decode_slice_unchecked' \
    -- --lib --no-default-features --features std) \
    > "logs/base64-slice-$side-charon.log" 2>&1
  repos/aeneas/src/_build/default/main.exe -backend lean -loops-no-rec -no-progress-bar \
    -namespace Base64SliceClean -dest "$dest/$side" "$dest/$model.llbc" \
    > "logs/base64-slice-$side-aeneas.log" 2>&1
  if rg -n 'Generated the partial file' "logs/base64-slice-$side-aeneas.log"; then exit 1; fi
  (cd proof && lake env lean "../$dest/$side/$model.lean") \
    > "logs/base64-slice-$side-check.log" 2>&1
done
cat "$dest/Opt/Base64SliceOpt.lean" proof/Base64SliceCongruence.lean.inc > "$dest/Checked.lean"
(cd proof && lake env lean "../$dest/Checked.lean") > logs/base64-slice-congruence.log 2>&1
cat logs/base64-slice-congruence.log
python3 - <<'PY'
import hashlib
import json
from pathlib import Path
import re
import subprocess

def sha(data):
    return hashlib.sha256(data).hexdigest()

dest = Path('results/Base64SliceCongruence')
allowed = {'engine.Engine.' + name + '.default' for name in
           ['encode', 'encode_string', 'decode', 'decode_vec', 'decode_slice', 'decode_slice_unchecked']}
sources = []
files = []
for side in ['Ref', 'Opt']:
    model = dest / side / f'Base64Slice{side}.lean'
    source = model.read_text()
    assert set(re.findall(r'^axiom\s+(\S+)', source, re.M)) == allowed
    assert not re.search(r'\b(sorry|admit|native_decide|bv_decide|implemented_by)\b', source)
    # Generated source locations differ; declarations must otherwise match.
    normalized = re.sub(r'/\-.*?\-/', '', source, flags=re.S)
    normalized = re.sub(r'--[^\n]*', '', normalized)
    sources.append(' '.join(normalized.split()))
    files += [model, dest / f'Base64Slice{side}.llbc']
assert sources[0] == sources[1], 'Before/after generic wrapper declarations differ'
log = Path('logs/base64-slice-congruence.log').read_text()
audits = re.findall(r'depends on axioms: \[(.*?)\]', log, re.S)
assert len(audits) == 3
for axioms in audits:
    assert {x.strip() for x in axioms.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'}
report = {'scope': 'Conditional congruence of the actual generic encode_slice wrapper: equal internal encoders, padding modes, and padding symbols imply equal results for all inputs/output buffers. Concrete GeneralPurpose instantiation remains unproved.',
          'normalized_ref_opt_declarations_equal': True,
          'normalized_declarations_sha256': sha(sources[0].encode()),
          'unused_opaque_methods': sorted(allowed),
          'proof_dependencies': ['propext', 'Classical.choice', 'Quot.sound']}
manifest = json.loads(Path('results/pairs-tail/build.json').read_text())
for repo in ['rust-base64', 'base64-pairs-tail', 'aeneas']:
    def git(*args):
        return subprocess.check_output(['git', *args], cwd=Path('repos') / repo)
    entry = {'commit': git('rev-parse', 'HEAD').decode().strip(),
             'tracked_diff_sha256': sha(git('diff', 'HEAD'))}
    if repo in manifest:
        assert entry['commit'] == manifest[repo]['commit']
        assert entry['tracked_diff_sha256'] == manifest[repo]['patch_sha256']
    report[repo] = entry
files += [Path('proof/Base64SliceCongruence.lean.inc'), Path('verify-base64-slice-congruence.sh'),
          Path('repos/aeneas/src/_build/default/main.exe'),
          Path('env/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean')]
report['files_sha256'] = {str(p): sha(p.read_bytes()) for p in files}
Path('results/base64-slice-congruence-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: shared generic encode_slice wrapper congruence, with no dependency on the six unused opaque methods. Concrete GeneralPurpose instantiation remains unproved.'
