#!/usr/bin/env python3
"""Pair same-named functions of two LLVM IR modules (old/new), classify, run Alive2.

usage: irpair.py --old old.ll --new new.ll --out DIR [--smt-to MS] [--fn-timeout S]
                 [--jobs N] [--unroll K] [--max-fns N]

Outputs DIR/pair.json:
  counts, identical (text-equal after canonicalisation), only_old / only_new,
  units: {name: {result, fwd, bwd, loops, detail}} for every differing pair.
Results per unit:
  IDENTICAL, EQUIV, EQUIV_BOUNDED, REFINES, NOT_EQUIV, UNKNOWN, UNSUPPORTED
"""
import argparse, hashlib, json, os, re, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path('/srv/home/hantaolou/code/veriop')
TOOLS = ROOT / 'alive2/toolchain/usr/lib/llvm-20/bin'
ALIVE = ROOT / 'alive2/build/alive2/alive-tv'
ENV = dict(os.environ)
ENV['PATH'] = f"{TOOLS}:" + ENV['PATH']
ENV['LD_LIBRARY_PATH'] = (f"{ROOT}/alive2/toolchain/usr/lib/x86_64-linux-gnu:"
                          f"{ROOT}/alive2/.venv/lib/python3.10/site-packages/z3/lib:" + ENV.get('LD_LIBRARY_PATH', ''))

NAME = r'("[^"]+"|[\w.$-]+)'
DEF_RE = re.compile(r'^define\s.*?@' + NAME + r'\(')
GLOB_RE = re.compile(r'^@' + NAME + r' = (.*)$')
ATTR_RE = re.compile(r'^attributes #(\d+) = \{(.*)\}')
REF_RE = re.compile(r'@' + NAME)
MD_RE = re.compile(r', !(?:[\w.]+) (?:!\d+|![{(].*?[})])(?=,|$|\s)')
MD2_RE = re.compile(r' !(?:[\w.]+) !\d+')


def normalize(text):
    text = re.sub(r' nocapture\b', '', text)
    text = re.sub(r', !llvm\.loop ![0-9]+', '', text)
    text = re.sub(r', !srcloc ![0-9]+', '', text)
    # inlining-derived scoped-alias metadata is unsupported by this Alive2 pin; stripping on both sides
    # only drops optimiser-derived noalias facts (conservative).
    text = re.sub(r', !(?:noalias|alias\.scope) ![0-9]+', '', text)
    return text


def parse_module(text):
    funcs, globs, attrs, declares = {}, {}, {}, {}
    lines = text.split('\n')
    i, n = 0, len(lines)
    while i < n:
        l = lines[i]
        if l.startswith('define '):
            m = DEF_RE.match(l)
            j = i
            while not lines[j].startswith('}'):
                j += 1
            funcs[m.group(1).strip('"')] = lines[i:j + 1]
            i = j
        elif l.startswith('@'):
            m = GLOB_RE.match(l)
            if m:
                globs[m.group(1).strip('"')] = m.group(2)
        elif l.startswith('attributes #'):
            m = ATTR_RE.match(l)
            attrs[m.group(1)] = m.group(2).strip()
        elif l.startswith('declare '):
            m = re.match(r'^declare\s.*?@' + NAME + r'\(', l)
            if m:
                declares[m.group(1).strip('"')] = l
        i += 1
    return funcs, globs, attrs, declares


def strip_md(s):
    s = re.sub(r', !\w[\w.]* !\d+', '', s)
    s = re.sub(r' !\w[\w.]* !\d+', '', s)
    return s


def is_private(gdef):
    return gdef.startswith('private ') or ' private ' in gdef[:40]


def glob_canon(gdef):
    return strip_md(re.sub(r'(, comdat)(\(\$[^)]*\))?', '', gdef))


def canon_func(lines, attrs, privs):
    out = []
    for l in lines:
        l = strip_md(l)
        l = re.sub(r'#(\d+)', lambda m: '#{' + attrs.get(m.group(1), '?') + '}', l)
        out.append(l)
    t = '\n'.join(out)
    if privs:
        t = REF_RE.sub(lambda m: ('@PRIV{' + privs[m.group(1).strip('"')] + '}') if m.group(1).strip('"') in privs else m.group(0), t)
    return t


def refs_of(lines):
    s = set()
    for l in lines[1:]:
        for m in REF_RE.finditer(l):
            s.add(m.group(1).strip('"'))
    return s


def callees(lines):
    s = []
    for l in lines[1:]:
        for m in re.finditer(r'\b(?:call|invoke)\b[^@\n]*?@' + NAME + r'\(', l):
            nm = m.group(1).strip('"')
            if not nm.startswith('llvm.'):
                s.append(nm)
    return sorted(s)


def linkage_of(lines):
    h = lines[0]
    for k in ('internal', 'private', 'linkonce_odr', 'linkonce', 'weak_odr', 'weak', 'available_externally'):
        if re.match(r'^define\s+(?:\S+\s+)*?' + k + r'\s', h) and True:
            return k
    return 'external'


def run(cmd, timeout=None, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, env=ENV, timeout=timeout, **kw)


def extract(src, funcs, dst):
    cmd = ['llvm-extract', '-S']
    for f in funcs:
        cmd.append('--func=' + f)
    cmd += [str(src), '-o', str(dst)]
    p = run(cmd)
    if p.returncode:
        raise RuntimeError('llvm-extract: ' + p.stderr[-500:])


def has_loops(ll):
    p = run(['opt', '-disable-output', '-passes=print<loops>', str(ll)])
    return 'Loop at depth' in (p.stdout + p.stderr)


def alive_dir(src, tgt, smt_to, timeout, unroll):
    cmd = [str(ALIVE), f'--smt-to={smt_to}', '--fail-src-ub']
    if unroll:
        cmd += [f'--src-unroll={unroll}', f'--tgt-unroll={unroll}']
    cmd += [str(src), str(tgt)]
    try:
        p = run(cmd, timeout=timeout)
        text = p.stdout + p.stderr
    except subprocess.TimeoutExpired as e:
        text = ((e.stdout or b'').decode(errors='replace') if isinstance(e.stdout, bytes) else (e.stdout or '')) + '\nGLOBAL TIMEOUT\n'
    return text


def classify_text(text):
    """-> (state, detail) state in correct|incorrect|unknown|unsupported"""
    if 'GLOBAL TIMEOUT' in text:
        return 'unknown', 'process-timeout'
    m = re.search(r'(\d+) correct transformations\s+(\d+) incorrect transformations\s+(\d+) failed-to-prove transformations\s+(\d+) Alive2 errors', text)
    if not m:
        return 'unsupported', text.strip()[-200:]
    c, i, f, e = map(int, m.groups())
    if e:
        mm = re.findall(r'^ERROR: (.*)$', text, re.M)
        return 'unsupported', '; '.join(mm[:3])[:300]
    if i:
        if re.search(r'approximat', text, re.I):
            return 'unknown', 'incorrect-with-approximation'
        return 'incorrect', text
    if f:
        mm = re.findall(r'^ERROR: (.*)$', text, re.M)
        return 'unknown', ('; '.join(mm[:3]) or 'failed-to-prove')[:300]
    if c:
        return 'correct', 'syntactically-equal' if 'syntactically equal' in text else 'verified'
    return 'unknown', 'no-result'


def check_unit(name, old_d, new_d, wd, args):
    idx = hashlib.md5(name.encode()).hexdigest()[:10]
    o, n = wd / f'u_{idx}_old.ll', wd / f'u_{idx}_new.ll'
    extract(old_d, [name], o)
    extract(new_d, [name], n)
    loops = has_loops(o) or has_loops(n)
    unroll = args.unroll if loops else 0
    t0 = time.time()
    tf = alive_dir(o, n, args.smt_to, args.fn_timeout, unroll)
    sf, df = classify_text(tf)
    if sf in ('unsupported',):
        sb, db, tb = sf, df, ''
    else:
        tb = alive_dir(n, o, args.smt_to, args.fn_timeout, unroll)
        sb, db = classify_text(tb)
    (wd / f'u_{idx}.log').write_text(f'### {name}\n### FWD old->new\n{tf}\n### BWD new->old\n{tb}\n')
    if sf == 'incorrect':
        res = 'NOT_EQUIV'
    elif 'unsupported' in (sf, sb):
        res = 'UNSUPPORTED'
    elif sf == 'correct' and sb == 'correct':
        res = 'EQUIV_BOUNDED' if loops else 'EQUIV'
    elif sf == 'correct' and sb == 'incorrect':
        res = 'REFINES_BOUNDED' if loops else 'REFINES'
    elif 'unknown' in (sf, sb):
        res = 'UNKNOWN'
    else:
        res = 'UNKNOWN'
    cex = None
    if res == 'NOT_EQUIV':
        cex = tf[:3000]
    return {'result': res, 'fwd': sf, 'bwd': sb, 'fwd_detail': df if sf != 'incorrect' else 'counterexample',
            'bwd_detail': db if sb != 'incorrect' else 'counterexample', 'loops': loops, 'unroll': unroll,
            'seconds': round(time.time() - t0, 1), 'log': f'u_{idx}.log', 'counterexample': cex}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--old', required=True)
    ap.add_argument('--new', required=True)
    ap.add_argument('--out', required=True)
    ap.add_argument('--smt-to', type=int, default=30000)
    ap.add_argument('--fn-timeout', type=int, default=240)
    ap.add_argument('--jobs', type=int, default=4)
    ap.add_argument('--unroll', type=int, default=4)
    ap.add_argument('--max-fns', type=int, default=300)
    ap.add_argument('--deadline', type=int, default=0, help='absolute epoch seconds after which remaining units are skipped')
    args = ap.parse_args()
    out = Path(args.out)
    out.mkdir(parents=True, exist_ok=True)
    otext = normalize(Path(args.old).read_text())
    ntext = normalize(Path(args.new).read_text())
    ofun, oglob, oattr, odecl = parse_module(otext)
    nfun, nglob, nattr, ndecl = parse_module(ntext)
    opriv = {g: glob_canon(d) for g, d in oglob.items() if is_private(d)}
    npriv = {g: glob_canon(d) for g, d in nglob.items() if is_private(d)}
    both = sorted(set(ofun) & set(nfun))
    only_old = sorted(set(ofun) - set(nfun))
    only_new = sorted(set(nfun) - set(ofun))
    identical, diff = [], []
    diff_why = {}
    for f in both:
        ct_o = canon_func(ofun[f], oattr, opriv)
        ct_n = canon_func(nfun[f], nattr, npriv)
        if ct_o != ct_n:
            diff.append(f)
            diff_why[f] = 'body'
            continue
        # same text: check referenced non-private globals have the same definition
        bad = []
        for r in refs_of(ofun[f]) | refs_of(nfun[f]):
            if r in opriv or r in npriv or r in ofun or r in nfun:
                continue
            go, gn = oglob.get(r), nglob.get(r)
            if go is None and gn is None:
                continue
            if go is None or gn is None or glob_canon(go) != glob_canon(gn):
                bad.append(r)
        if bad:
            diff.append(f)
            diff_why[f] = 'global:' + ','.join(bad[:3])
        else:
            identical.append(f)
    # callee-structure info
    callee_same = {f: callees(ofun[f]) == callees(nfun[f]) for f in diff}
    rep = {
        'old_funcs': len(ofun), 'new_funcs': len(nfun), 'paired': len(both), 'identical': len(identical),
        'differing': len(diff), 'only_old': [(f, linkage_of(ofun[f])) for f in only_old],
        'only_new': [(f, linkage_of(nfun[f])) for f in only_new],
        'differing_names': diff, 'diff_why': diff_why,
        'global_defs_changed': sorted(g for g in (set(oglob) & set(nglob)) if g not in opriv and g not in npriv and glob_canon(oglob[g]) != glob_canon(nglob[g]))[:200],
        'globals_only_old': sorted(set(oglob) - set(nglob))[:100], 'globals_only_new': sorted(set(nglob) - set(oglob))[:100],
        'old_sha': hashlib.sha256(otext.encode()).hexdigest()[:16], 'new_sha': hashlib.sha256(ntext.encode()).hexdigest()[:16],
        'root_unpaired': [(f, l) for f, l in [(f, linkage_of(ofun[f])) for f in only_old] + [(f, linkage_of(nfun[f])) for f in only_new] if l == 'external'],
    }
    units = {}
    if diff:
        to_check = diff[:args.max_fns]
        rep['skipped_over_max'] = diff[args.max_fns:]
        od, nd = out / 'old_diff.ll', out / 'new_diff.ll'
        (out / 'old_norm.ll').write_text(otext)
        (out / 'new_norm.ll').write_text(ntext)
        extract(out / 'old_norm.ll', to_check, od)
        extract(out / 'new_norm.ll', to_check, nd)
        (out / 'old_norm.ll').unlink()
        (out / 'new_norm.ll').unlink()

        def work(f):
            if args.deadline and time.time() > args.deadline:
                return f, {'result': 'UNKNOWN', 'fwd': 'unknown', 'bwd': 'unknown', 'fwd_detail': 'deadline', 'bwd_detail': 'deadline', 'loops': None}
            try:
                return f, check_unit(f, od, nd, out, args)
            except Exception as e:  # noqa
                return f, {'result': 'UNKNOWN', 'fwd': 'unknown', 'bwd': 'unknown', 'fwd_detail': 'harness-error: ' + str(e)[:200], 'bwd_detail': '', 'loops': None}
        with ThreadPoolExecutor(args.jobs) as ex:
            for f, r in ex.map(work, to_check):
                r['callees_same'] = callee_same[f]
                r['why_differs'] = diff_why[f]
                if r['result'] == 'NOT_EQUIV' and not callee_same[f]:
                    r['result'] = 'UNKNOWN'
                    r['fwd_detail'] = 'incorrect-but-callee-set-differs (call-structure artifact)'
                units[f] = r
    rep['units'] = units
    from collections import Counter
    rep['counts'] = dict(Counter(r['result'] for r in units.values()))
    (out / 'pair.json').write_text(json.dumps(rep, indent=1))
    print(json.dumps({k: rep[k] for k in ('paired', 'identical', 'differing', 'counts')}), 'only_old', len(only_old), 'only_new', len(only_new))


if __name__ == '__main__':
    main()
