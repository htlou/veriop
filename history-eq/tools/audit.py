#!/usr/bin/env python3
"""Fail closed until every selected historical commit has reviewable evidence."""
import json
import sys
from pathlib import Path

H = Path(__file__).resolve().parents[1]
REPORTS = ('libdivide.json', 'xxHash-pre2020.json', 'xxHash-2020on.json',
           'rust-base64.json', 'lz4_flex.json')
VERDICTS = {'EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'EQUIV_PARTIAL', 'REFINES',
            'NOT_EQUIV', 'UNKNOWN', 'UNSUPPORTED'}
PENDING = {'RUNNING/MISSING', 'NEEDS_UNROLL'}


def selected():
    sys.path.insert(0, str(H / 'rust/rust-base64/scripts'))
    import meta
    return {
        'libdivide.json': {line.split('|')[0] for line in
                           (H / 'c/libdivide/_screen/perf_meta.txt').read_text().splitlines()},
        'xxHash-pre2020.json': set((H / 'c/xxHash/_tools/mycommits.txt').read_text().split()),
        'xxHash-2020on.json': {line.split()[0] for line in
                               (H / 'c/xxHash/_work2020/perf.txt').read_text().splitlines()},
        'rust-base64.json': set(meta.COMMITS),
        'lz4_flex.json': set((H / 'rust/lz4_flex/perf_commits.txt').read_text().split()),
    }


def has_forward_counterexample(unit):
    if any(run.get('fwd') == 'incorrect' for run in unit.get('runs', [])):
        return True
    artifact = unit.get('artifact_dir')
    result = H / artifact / 'result.json' if artifact else None
    if result and result.exists():
        return any(f.get('fwd') == 'incorrect' for f in
                   json.loads(result.read_text()).get('functions', {}).values())
    return False


def alive2_counts(output, correct):
    lines = set(output.splitlines())
    return all(line in lines for line in (
        f'  {correct} correct transformations', '  0 incorrect transformations',
        '  0 failed-to-prove transformations', '  0 Alive2 errors'))


def xxhash_public_ub_verified(repo, commit):
    if (repo, commit) != ('xxHash', '0bced63'):
        return False
    case = H / 'c/xxHash/0bced63'
    witness = json.loads((case / 'public-ub-result.json').read_text())
    raw = json.loads((case / 'r_raw_sse2/result.json').read_text())
    return (witness['commit'].startswith(commit) and
            witness['public_api'] == 'XXH3_64bits_withSeed' and
            witness['seed'] == '0x8000000000000000' and witness['input_length'] == 256 and
            witness['sides']['old']['exit_code'] == 0 and
            not witness['sides']['old']['ubsan_signed_overflow'] and
            witness['sides']['new']['exit_code'] != 0 and
            witness['sides']['new']['ubsan_signed_overflow'] and
            raw['functions']['target_initsec']['fwd'] == 'incorrect' and
            raw['functions']['target_initsec']['bwd'] == 'correct' and
            'negation of -9223372036854775808' in (case / 'public-new-ubsan.log').read_text())


def partial_unit_verified(repo, commit, unit):
    if unit['verdict'] != 'EQUIV_PARTIAL':
        return False
    if (repo, commit) == ('xxHash', 'a4ecded'):
        case = H / 'c/xxHash/a4ecded/body-proof'
        return all(alive2_counts((case / f'{function}.{direction}.log').read_text(), 1)
                   for function in ('target_64sec192_len256', 'XXH_INLINE_XXH3_64bits_withSecret',
                                    'XXH3_hashLong_64b_withSecret')
                   for direction in ('fwd', 'bwd'))
    if (repo, commit) == ('rust-base64', '87d62a9'):
        return (H / 'rust/rust-base64/87d62a9/chunk-proof/z3.log').read_text().splitlines() == [
            'unsat', 'unsat', 'sat']
    return False


def audit_aggregate(repo, commit, artifact, unit, result):
    """Check the newer per-direction archive replacing old 0e5dab9 run files."""
    if (repo, commit, artifact) not in {
        ('xxHash', '0e5dab9', 'c/xxHash/0e5dab9/short_range'),
        ('xxHash', '0e5dab9', 'c/xxHash/0e5dab9/valid_blocks'),
        ('xxHash', '0e5dab9', 'c/xxHash/0e5dab9/tail_lemma'),
    }:
        return None
    data = json.loads(result.read_text())
    errors = []
    if not data.get('commit', '').startswith(commit) or data.get('verdict') != unit['verdict']:
        errors.append(f'{repo}/{commit}: aggregate commit or verdict mismatch ({artifact})')
    tail = artifact.endswith('tail_lemma')
    def key(run, direction):
        tag = run['unit']
        if tail:
            mode, rem = tag.split('_tail_rem')
            return mode, int(rem), direction
        return int(tag.rsplit('len', 1)[1]), direction
    expected = {key(run, direction) for run in unit['runs']
                for direction in ('forward', 'backward')}
    actual = set()
    for check in data.get('checks', []):
        current = ((check.get('mode'), check.get('remainder'), check.get('direction')) if tail
                   else (check.get('length'), check.get('direction')))
        if current in actual:
            errors.append(f'{repo}/{commit}: duplicate aggregate check {current}')
        actual.add(current)
        output = check.get('output', '')
        if not alive2_counts(output, 1):
            errors.append(f'{repo}/{commit}: aggregate check did not pass {current}')
    if actual != expected:
        errors.append(f'{repo}/{commit}: aggregate check coverage mismatch ({artifact})')
    return errors


def audit_structured(repo, commit, artifact, result):
    """Validate newer xxHash proof summaries that do not have `functions`."""
    cases = {
        '268fde4': ('c/xxHash/268fde4/helper-check',
                    {f'{bits}-{direction}.log': 1 for bits in (64, 128)
                     for direction in ('forward', 'reverse')}),
        '44bb94e': ('c/xxHash/44bb94e/subset-recheck',
                    {f't{target}-{direction}.log': 1 for target in (2, 5, 7)
                     for direction in ('forward', 'reverse')}),
        '91788f1': ('c/xxHash/91788f1/api-recheck',
                    {f'{vector}-{direction}.log': 5
                     for vector in ('scalar', 'sse2', 'avx2', 'avx512')
                     for direction in ('forward', 'reverse')}),
        'd14b293': ('c/xxHash/d14b2934',
                    {f'hash{length}-{direction}.log': 1 for length in (16, 32, 64)
                     for direction in ('forward', 'backward')}),
        '665424e': ('c/xxHash/665424e/secret-bridge',
                    {f'{target}.{direction}.log': count
                     for target, count in (('secret_pair', 1), ('zero_words', 24))
                     for direction in ('fwd', 'bwd')}),
    }
    if repo != 'xxHash' or commit not in cases or artifact != cases[commit][0]:
        return None
    data = json.loads(result.read_text())
    errors = []
    if not data.get('commit', '').startswith(commit):
        errors.append(f'{repo}/{commit}: structured commit mismatch ({artifact})')
    for name, count in cases[commit][1].items():
        path = result.parent / name
        output = path.read_text() if path.exists() else ''
        if not alive2_counts(output, count):
            errors.append(f'{repo}/{commit}: structured check missing or failed ({name})')
    if commit == '268fde4' and data.get('alive2') != {
            f'{bits}_{direction}': 'proved' for bits in (64, 128)
            for direction in ('forward', 'reverse')}:
        errors.append(f'{repo}/{commit}: structured summary mismatch')
    if commit == '44bb94e' and data.get('alive2') != {
            f't{target}_{direction}': 'proved' for target in (2, 5, 7)
            for direction in ('forward', 'reverse')}:
        errors.append(f'{repo}/{commit}: structured summary mismatch')
    if commit == '91788f1' and data.get('checks') != {
            f'{vector}_{direction}': 5 for vector in ('scalar', 'sse2', 'avx2', 'avx512')
            for direction in ('forward', 'reverse')}:
        errors.append(f'{repo}/{commit}: structured summary mismatch')
    if commit == 'd14b293' and set(data.get('proof_logs', [])) != set(cases[commit][1]):
        errors.append(f'{repo}/{commit}: structured summary mismatch')
    if commit == '665424e' and not (
            data.get('arbitrary_seed_secret_buffer') == {
                'bytes': 192, 'forward': 'correct', 'backward': 'correct'} and
            data.get('zero_seed_default_secret') == {
                'words': 24, 'forward_correct': 24, 'backward_correct': 24} and
            data.get('common_long_core', {}).get('old_new_ir_byte_identical') is True):
        errors.append(f'{repo}/{commit}: structured summary mismatch')
    return errors


def audit():
    errors = []
    manifests = selected()
    seen = set()
    total = 0
    for name in REPORTS:
        path = H / 'results' / name
        if not path.exists():
            errors.append(f'{name}: report missing')
            continue
        data = json.loads(path.read_text())
        commits = data['commits']
        ids = [item['commit'] for item in commits]
        total += len(ids)
        if len(ids) != len(set(ids)):
            errors.append(f'{name}: duplicate commit')
        if name in manifests and set(ids) != manifests[name]:
            errors.append(f'{name}: selected/report IDs differ: '
                          f'{len(manifests[name] - set(ids))} missing, '
                          f'{len(set(ids) - manifests[name])} extra')
        if data['funnel']['perf_commits'] != len(ids):
            errors.append(f'{name}: funnel count differs from report')
        repo = data['repo']
        for item in commits:
            commit = item['commit']
            key = (repo, commit)
            if key in seen:
                errors.append(f'{repo}/{commit}: present in multiple report parts')
            seen.add(key)
            if item['commit_verdict'] not in VERDICTS:
                errors.append(f'{repo}/{commit}: invalid commit verdict')
            if item['commit_verdict'] == 'UNSUPPORTED' and not item.get('unsupported_reason'):
                errors.append(f'{repo}/{commit}: unsupported reason missing')
            primary = [u for u in item['units'] if u.get('primary', True) and
                       u['level'] == 'api' and not u['name'].startswith('(info)')]
            if not primary:
                primary = [u for u in item['units'] if u.get('primary', True) and u['level'] == 'raw']
            if not primary:
                errors.append(f'{repo}/{commit}: no primary unit')
            proved = {'EQUIV', 'EQUIV_BOUNDED', 'EQUIV_UNDER_PRECOND', 'REFINES'}
            verdict = item['commit_verdict']
            if verdict == 'EQUIV_PARTIAL' and (item.get('coverage') != 'partial' or
                    not any(u['verdict'] in proved or partial_unit_verified(repo, commit, u)
                            for u in item['units'])):
                errors.append(f'{repo}/{commit}: partial equivalence lacks proved unit or partial coverage')
            if verdict in proved and any(u['verdict'] not in proved for u in primary):
                errors.append(f'{repo}/{commit}: commit claims proof with unresolved primary unit')
            if verdict == 'EQUIV' and any(u['verdict'] != 'EQUIV' for u in primary):
                errors.append(f'{repo}/{commit}: unbounded equivalence claim exceeds primary evidence')
            if verdict == 'EQUIV_BOUNDED' and any(
                    u['verdict'] not in {'EQUIV', 'EQUIV_BOUNDED'} for u in primary):
                errors.append(f'{repo}/{commit}: bounded equivalence claim exceeds primary evidence')
            if verdict == 'NOT_EQUIV' and not any(u['verdict'] == 'NOT_EQUIV' for u in primary):
                errors.append(f'{repo}/{commit}: commit claims semantic change without primary counterexample')
            if verdict == 'NOT_EQUIV' and data['tool'] == 'Alive2' and not any(
                    has_forward_counterexample(unit) for unit in primary) and not xxhash_public_ub_verified(repo, commit):
                errors.append(f'{repo}/{commit}: Alive2 forward counterexample missing')
            for unit in item['units']:
                if unit['verdict'] not in VERDICTS or 'TODO' in unit.get('evidence', ''):
                    errors.append(f'{repo}/{commit}: unfinished unit {unit["name"]}')
                if unit.get('provisional'):
                    errors.append(f'{repo}/{commit}: provisional unit {unit["name"]}')
                artifact = unit.get('artifact_dir')
                aggregate = None
                if data['tool'] == 'Alive2' and artifact and '{' not in artifact:
                    directory = (H.parent / artifact if artifact.startswith('history-eq/')
                                 else H / artifact)
                    if not directory.exists():
                        errors.append(f'{repo}/{commit}: artifact directory missing ({artifact})')
                    else:
                        result = directory / 'result.json'
                        if (artifact == 'c/xxHash/0bced63' and unit['verdict'] == 'NOT_EQUIV'
                                and xxhash_public_ub_verified(repo, commit)):
                            pass
                        elif not result.exists() and unit['verdict'] in proved | {'NOT_EQUIV'}:
                            errors.append(f'{repo}/{commit}: proof artifact missing ({artifact})')
                        elif result.exists():
                            aggregate = audit_aggregate(repo, commit, artifact, unit, result)
                            if aggregate is not None:
                                errors.extend(aggregate)
                            else:
                                structured = audit_structured(repo, commit, artifact, result)
                                if structured is not None:
                                    errors.extend(structured)
                                elif unit['verdict'] in proved | {'NOT_EQUIV'}:
                                    functions = json.loads(result.read_text()).get('functions', {}).values()
                                    expected = ((lambda f: f.get('fwd') == 'incorrect') if unit['verdict'] == 'NOT_EQUIV'
                                                else (lambda f: f.get('fwd') == 'correct' and f.get('bwd') == 'incorrect')
                                                if unit['verdict'] == 'REFINES' else
                                                (lambda f: f.get('fwd') == f.get('bwd') == 'correct'))
                                    if not any(expected(f) for f in functions):
                                        errors.append(f'{repo}/{commit}: claimed direction absent in {artifact}')
                for run in unit.get('runs', []):
                    tag, verdict = run['unit'], run['verdict']
                    if verdict in PENDING:
                        errors.append(f'{repo}/{commit}/{tag}: run pending ({verdict})')
                    if aggregate is not None:
                        continue
                    result = H / 'c' / repo / commit / tag / 'result.json'
                    if not result.exists():
                        errors.append(f'{repo}/{commit}/{tag}: result.json missing')
                    pair = (run.get('fwd'), run.get('bwd'))
                    if verdict == 'NOT_EQUIV' and pair[0] != 'incorrect':
                        errors.append(f'{repo}/{commit}/{tag}: missing forward counterexample')
                    if verdict == 'REFINES' and pair != ('correct', 'incorrect'):
                        errors.append(f'{repo}/{commit}/{tag}: refinement directions wrong')
                    if verdict in ('EQUIV', 'EQUIV_BOUNDED') and pair != ('correct', 'correct'):
                        errors.append(f'{repo}/{commit}/{tag}: two proofs missing')
    return total, errors


if __name__ == '__main__':
    count, issues = audit()
    print(f'{count} reported commits; {len(issues)} audit issues')
    for issue in issues[:30]:
        print('-', issue)
    if len(issues) > 30:
        print(f'- ... {len(issues) - 30} more')
    raise SystemExit(bool(issues))
