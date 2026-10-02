#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
bash extract-base64-public.sh
(cd proof && lake build Base64TailProof Base64PublicRef Base64PublicOpt \
  && lake env lean Base64PublicProof.lean) > logs/base64-public-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/base64-public-verification.log; then exit 1; fi
python3 - <<'PY'
from pathlib import Path
import hashlib, json, re, subprocess
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = json.loads(Path('results/base64-tail-proof-provenance.json').read_text())
for p, digest in report['files_sha256'].items():
    assert sha(Path(p)) == digest, f'Stale internal proof dependency: {p}'
manifest = json.loads(Path('results/pairs-tail/build.json').read_text())
for repo in ['rust-base64', 'base64-pairs-tail']:
    source = Path('repos') / repo
    assert subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=source).decode().strip() == manifest[repo]['commit']
    patch = subprocess.check_output(['git', 'diff', 'HEAD'], cwd=source)
    assert hashlib.sha256(patch).hexdigest() == manifest[repo]['patch_sha256']
    assert sha(Path('..') / manifest[repo]['binary']) == manifest[repo]['binary_sha256']
allowed = {'engine.general_purpose.decode.' + x for x in [
    'GeneralPurposeEstimate', 'GeneralPurposeEstimate.new',
    'GeneralPurposeEstimate.Insts.Base64EngineDecodeEstimate.decoded_len_estimate', 'decode_helper']}
files = []
copies = {}
for side, repo in [('Ref', 'rust-base64'), ('Opt', 'base64-pairs-tail')]:
    source = Path('repos') / repo
    dest = Path('tool-tests') / f'base64-public-local-{side.lower()}'
    originals = {p.relative_to(source) for p in (source / 'src').rglob('*') if p.is_file()}
    copied = {p.relative_to(dest) for p in (dest / 'src').rglob('*') if p.is_file()}
    assert originals == copied
    for p in originals - {Path('src/lib.rs')}:
        assert (source / p).read_bytes() == (dest / p).read_bytes(), p
    original = (source / 'src/lib.rs').read_bytes()
    extended = (dest / 'src/lib.rs').read_bytes()
    assert extended.startswith(original)
    suffix = extended[len(original):].decode()
    assert ' '.join(suffix.split()) == ' '.join('''
/// Extraction entry point: calls the existing public API without changing it.
pub fn __veriop_encode_slice_probe(
    codec: &engine::general_purpose::GeneralPurpose,
    input: &[u8], output: &mut [u8],
) -> Result<usize, EncodeSliceError> {
    Engine::encode_slice(codec, input, output)
}
'''.split())
    assert (source / 'Cargo.toml').read_bytes() == (dest / 'Cargo.toml').read_bytes()
    copies[side] = {'source_files_checked': len(originals), 'only_change': suffix,
                   'source_lib_sha256': sha(source / 'src/lib.rs'),
                   'extraction_lib_sha256': sha(dest / 'src/lib.rs')}
    files += sorted(dest / p for p in originals) + [dest / 'Cargo.toml']
    model = Path(f'proof/Base64Public{side}/Base64Public{side}.lean')
    text = model.read_text()
    assert set(re.findall(r'^axiom\s+(\S+)', text, re.M)) == allowed
    assert not re.search(r'\b(sorry|admit|native_decide|bv_decide|implemented_by)\b', text)
    files += [model, Path(f'results/Base64Public{side}.llbc')]
proof = Path('proof/Base64PublicProof.lean')
assert not re.search(r'\b(sorry|admit|axiom|native_decide|bv_decide|implemented_by)\b', proof.read_text())
log = Path('logs/base64-public-verification.log').read_text()
audits = dict(re.findall(r"'Base64PublicProof\.(\w+)' depends on axioms: \[(.*?)\]", log, re.S))
assert {'internal_encode_equiv', 'with_padding_equiv', 'encode_slice_equiv', 'encode_slice_generic_equiv'} <= audits.keys()
dependencies = {x.strip() for x in audits['encode_slice_generic_equiv'].split(',')}
allowed_dependencies = {'propext', 'Classical.choice', 'Quot.sound', 'core.fmt.Formatter'}
allowed_dependencies |= {f'Base64Public{side}.{name}' for side in ['Ref', 'Opt'] for name in allowed}
assert dependencies <= allowed_dependencies, dependencies - allowed_dependencies
files += [proof, Path('extract-base64-public.sh'), Path('verify-base64-public.sh'),
          Path('tool-tests/trait-helper-default.lean'),
          Path('repos/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean'),
          Path('env/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean'),
          Path('logs/base64-public-verification.log')]
report['files_sha256'].update({str(p): sha(p) for p in files})
report['scope'] = ('Concrete public encode_slice equality, baseline versus measured pairs-tail candidate, '
                   'for all inputs with the same arbitrary AsRef callback, all output slices, '
                   'and engines with equal encoding tables, padding symbols, '
                   'and padding flags. Preserves returned byte count, sole API error, full returned buffer, '
                   'and modeled failure/divergence. Error constructor names are translated losslessly. '
                   'Native compilation, panic payloads, and state after caught Rust unwinding are not certified.')
report['extraction_copies'] = copies
report['proof_dependencies'] = sorted(dependencies)
report['unused_decoder_declarations'] = sorted(allowed)
report['decoder_note'] = ('Opaque decoder declarations occur in the concrete Engine record and therefore '
                          'in Lean dependency reports; no equality or behavioral hypothesis about decoding is used.')
Path('results/base64-public-proof-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: concrete extracted public encode_slice equivalence for measured pairs-tail candidate.'
