#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
case "${1:-}" in
  '') bash extract-base64-public.sh unroll8 ;;
  --existing-models) ;;
  *) echo 'Usage: verify-base64-unroll8-public.sh [--existing-models]' >&2; exit 2 ;;
esac
bash verify-base64-unroll8-group.sh
(cd proof && taskset -c 64-79 lake build Base64Unroll8Proof Base64CapacityProof Base64Unroll8PublicRef Base64Unroll8PublicOpt \
  && taskset -c 64-79 lake env lean Base64Unroll8PublicProof.lean) > logs/base64-unroll8-public-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/base64-unroll8-public-verification.log; then exit 1; fi
python3 - <<'PY'
from pathlib import Path
import hashlib, json, math, re, statistics, subprocess
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = json.loads(Path('results/base64-unroll8-group-provenance.json').read_text())
for p, digest in report['files_sha256'].items():
    assert sha(Path(p)) == digest, f'Stale internal proof dependency: {p}'
manifest = json.loads(Path('results/pairs-unroll8-exact/build.json').read_text())
benchmark_files = []
for repo in ['rust-base64', 'base64-pairs-unroll8-exact']:
    source = Path('repos') / repo
    assert subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=source).decode().strip() == manifest[repo]['commit']
    patch = subprocess.check_output(['git', 'diff', 'HEAD'], cwd=source)
    assert hashlib.sha256(patch).hexdigest() == manifest[repo]['patch_sha256']
    assert sha(Path('..') / manifest[repo]['binary']) == manifest[repo]['binary_sha256']
    for name in ['Cargo.toml', 'benches/benchmarks.rs']:
        assert (source / name).read_bytes() == subprocess.check_output(
            ['git', 'show', f'HEAD:{name}'], cwd=source), f'Changed official benchmark: {repo}/{name}'
        benchmark_files.append(source / name)
performance = json.loads(Path('results/pairs-unroll8-exact/performance.json').read_text())
assert performance['rounds'] == 4 and len(performance['workloads']) == 8
medians_checked = 0
for row in performance['workloads']:
    for repo, key in [('rust-base64', 'baseline_round_ns'), ('base64-pairs-unroll8-exact', 'candidate_round_ns')]:
        assert len(row[key]) == 4
        for round_index, recorded in enumerate(row[key], 1):
            directory = Path('results/pairs-unroll8-exact/criterion') / repo / row['workload'] / f'round-{round_index}'
            estimate = json.loads((directory / 'estimates.json').read_text())['median']['point_estimate']
            sample = json.loads((directory / 'sample.json').read_text())
            assert len(sample['times']) == len(sample['iters']) and len(sample['times']) > 1
            raw = statistics.median(t / n for t, n in zip(sample['times'], sample['iters'], strict=True))
            assert math.isclose(raw, estimate, rel_tol=1e-12)
            assert math.isclose(estimate, recorded, rel_tol=1e-12)
            assert json.loads((directory / 'benchmark.json').read_text())['full_id'] == row['workload']
            benchmark_files += [directory / name for name in ['estimates.json', 'sample.json', 'benchmark.json']]
            medians_checked += 1
    speedup = statistics.median(row['baseline_round_ns']) / statistics.median(row['candidate_round_ns'])
    assert math.isclose(speedup, row['speedup'], rel_tol=1e-12)
aggregate = statistics.geometric_mean(row['speedup'] for row in performance['workloads'])
assert math.isclose(aggregate, performance['encode_speedup'], rel_tol=1e-12)
allowed = {'engine.general_purpose.decode.' + x for x in [
    'GeneralPurposeEstimate', 'GeneralPurposeEstimate.new',
    'GeneralPurposeEstimate.Insts.Base64EngineDecodeEstimate.decoded_len_estimate', 'decode_helper']}
files = benchmark_files
copies = {}
for side, repo in [('Ref', 'rust-base64'), ('Opt', 'base64-pairs-unroll8-exact')]:
    source = Path('repos') / repo
    dest = Path('tool-tests') / f'base64-unroll8-public-local-{side.lower()}'
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
    model = Path(f'proof/Base64Unroll8Public{side}/Base64Unroll8Public{side}.lean')
    text = model.read_text()
    assert set(re.findall(r'^axiom\s+(\S+)', text, re.M)) == allowed
    assert not re.search(r'\b(sorry|admit|native_decide|bv_decide|implemented_by)\b', text)
    files += [model, Path(f'results/Base64Unroll8Public{side}.llbc'),
              Path(f'proof/.lake/build/lib/lean/Base64Unroll8Public{side}/Base64Unroll8Public{side}.olean')]
    files += [Path(f'logs/base64-unroll8-public-{side}-{stage}.log')
              for stage in ['charon', 'aeneas', 'check']]
files += [Path('proof/Base64CapacityProof.lean'), Path('proof/.lake/build/lib/lean/Base64CapacityProof.olean')]
proof = Path('proof/Base64Unroll8PublicProof.lean')
assert not re.search(r'\b(sorry|admit|axiom|native_decide|bv_decide|implemented_by)\b', proof.read_text())
log = Path('logs/base64-unroll8-public-verification.log').read_text()
audits = dict(re.findall(r"'Base64Unroll8PublicProof\.(\w+)' depends on axioms: \[(.*?)\]", log, re.S))
assert {'internal_encode_equiv', 'with_padding_equiv', 'encode_slice_equiv', 'encode_slice_generic_equiv'} <= audits.keys()
dependencies = {x.strip() for x in audits['encode_slice_generic_equiv'].split(',')}
allowed_dependencies = {'propext', 'Classical.choice', 'Quot.sound', 'core.fmt.Formatter'}
allowed_dependencies |= {f'Base64Unroll8Public{side}.{name}' for side in ['Ref', 'Opt'] for name in allowed}
assert dependencies <= allowed_dependencies, dependencies - allowed_dependencies
files += [proof, Path('extract-base64-public.sh'), Path('verify-base64-unroll8-public.sh'),
          Path('tool-tests/trait-helper-default.lean'),
          Path('repos/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean'),
          Path('env/aeneas/backends/lean/Aeneas/Tactic/Elab/TraitDefault/Init.lean'),
          Path('logs/base64-unroll8-public-verification.log')]
report['files_sha256'].update({str(p): sha(p) for p in files})
report['scope'] = ('Concrete public encode_slice equality, baseline versus measured pairs-unroll8-exact candidate, '
                   'for all inputs with the same arbitrary AsRef callback, all output slices, '
                   'and engines with equal encoding tables, padding symbols, '
                   'and padding flags. Preserves returned byte count, sole API error, full returned buffer, '
                   'and modeled failure/divergence. Error constructor names are translated losslessly. '
                   'Native compilation, panic payloads, and state after caught Rust unwinding are not certified.')
report['complete_candidate_equivalence'] = True
report['benchmark_evidence'] = {'official_sources_unchanged': ['Cargo.toml', 'benches/benchmarks.rs'],
    'raw_sample_medians_checked': medians_checked, 'workloads': 8, 'rounds': 4,
    'aggregate_speedup': aggregate,
    'scope': 'Eight selected official encode_slice workloads; aggregate speedup is not a 2x gain on every workload. Recorded runs are audited; this verifier does not run new timings.'}
report['theorems'] += ['Base64CapacityProof.encoded_len_spec']
report['theorems'] += ['Base64Unroll8PublicProof.' + name for name in audits]
report['remaining'] = 'Native compilation is not certified; LZ4 optimization and full block equivalence remain separate unfinished work.'
report['extraction'] = 'Concrete public models extracted with extract-base64-public.sh unroll8; this verifier can reuse existing models after checking source-copy identity. LLBC, model, source-copy and proof hashes are recorded.'
report['extraction_copies'] = copies
report['proof_dependencies'] = sorted(dependencies)
report['unused_decoder_declarations'] = sorted(allowed)
report['decoder_note'] = ('Opaque decoder declarations occur in the concrete Engine record and therefore '
                          'in Lean dependency reports; no equality or behavioral hypothesis about decoding is used.')
Path('results/base64-unroll8-public-proof-provenance.json').write_text(json.dumps(report, indent=2) + '\n')
PY
echo 'PASS: concrete extracted public encode_slice equivalence for measured pairs-unroll8-exact candidate.'
