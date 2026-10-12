#!/usr/bin/env python3
"""[xxHash-pre2020 copy] Identical to tools/alive_check.py except for the extra option
--alive-func NAME, which is passed through to alive-tv as --func=NAME so that only the
target_* function pair is verified (the non-static library functions compiled into the same
TU are skipped; one of them crashes this Alive2 pin with a Z3 sort error).

Uniform Alive2 old/new check for historical C commits.

Usage:
  alive_check.py --out DIR --old-inc OLD_DIR --new-inc NEW_DIR --wrapper wrap.c
                 [--func target_x ...] [--unroll K] [--smt-to MS] [--cflags "..."]
                 [--target TRIPLE] [--timeout SEC]

The same wrapper C file is compiled twice, once against the old sources
(-I OLD_DIR) and once against the new sources (-I NEW_DIR). Both IR files are
normalized identically, then alive-tv is run separately in each direction:

  fwd: old.ll -> new.ll   (does new refine old?)
  bwd: new.ll -> old.ll   (does old refine new?)

Per function verdicts (only functions whose name starts with "target_",
unless --func is given):
  EQUIV          both directions correct
  REFINES        only fwd correct (new is more defined than old)
  NOT_EQUIV      fwd incorrect (counterexample: new is not a refinement of old)
  UNKNOWN        timeout / failed-to-prove / memory-out in a needed direction
  UNSUPPORTED    Alive2 could not translate the function (reason recorded)
"BOUNDED" is set when the normalized IR contains loops; then correctness only
holds up to the given unroll factor.
"""
import argparse, json, os, re, subprocess, time, hashlib
from pathlib import Path

ROOT = Path('/srv/home/hantaolou/code/veriop/alive2')
ALIVE = ROOT / 'build/alive2/alive-tv'
ENV = dict(os.environ)
ENV['PATH'] = f"{ROOT}/toolchain/usr/lib/llvm-20/bin:{ROOT}/toolchain/usr/bin:" + ENV['PATH']
ENV['LD_LIBRARY_PATH'] = (f"{ROOT}/toolchain/usr/lib/x86_64-linux-gnu:"
                          f"{ROOT}/.venv/lib/python3.10/site-packages/z3/lib:" + ENV.get('LD_LIBRARY_PATH', ''))
DEFAULT_CFLAGS = "-O3 -march=x86-64-v3 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize -w"


def sh(cmd, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, env=ENV, **kw)


def normalize(text):
    # Attributes / metadata that this Alive2 pin cannot parse. Removing them on
    # both sides only weakens assumptions; it never invents an equivalence.
    text = re.sub(r' nocapture\b', '', text)
    text = re.sub(r', !llvm\.loop ![0-9]+', '', text)
    text = re.sub(r', !srcloc ![0-9]+', '', text)
    return text


def has_loops(ll):
    p = sh(['opt', '-disable-output', '-passes=print<loops>', str(ll)])
    return 'Loop at depth' in (p.stdout + p.stderr)


def parse(out):
    """Return {fn: 'correct'|'incorrect'|'failed'|'error:<msg>'}."""
    res = {}
    cur = None
    for line in out.splitlines():
        m = re.match(r'^define .*?@([\w.$]+)\(', line)
        if m:
            cur = m.group(1)
            continue
        m = re.match(r"^ERROR: Could not translate '([\w.$]+)' to Alive IR", line)
        if m:
            res[m.group(1)] = 'error:' + res.get('_pending_err', 'translate')
            continue
        m = re.match(r'^ERROR: (Unsupported .*|.*not supported.*)$', line)
        if m:
            res['_pending_err'] = m.group(1)
            continue
        if cur is None:
            continue
        if line.startswith('Transformation seems to be correct'):
            res[cur] = 'correct'
        elif line.startswith("Transformation doesn't verify"):
            res[cur] = 'incorrect'
        elif re.search(r'(Timeout|timeout|Out of memory|failed-to-prove|Couldn.t prove|approximat)', line) \
                and res.get(cur) not in ('incorrect',):
            res.setdefault(cur, 'failed:' + line.strip()[:160])
        elif line.startswith('ERROR:') and cur not in res:
            res[cur] = 'error:' + line[7:].strip()[:160]
    res.pop('_pending_err', None)
    return res


def run_dir(args, src, tgt, tag, out):
    cmd = [str(ALIVE), '--smt-to=%d' % args.smt_to, '--fail-src-ub' if args.fail_src_ub else '--always-verify']
    if args.alive_func:
        cmd += ['--func=' + f for f in args.alive_func]
    if args.unroll:
        cmd += ['--src-unroll=%d' % args.unroll, '--tgt-unroll=%d' % args.unroll]
    cmd += [str(src), str(tgt)]
    t = time.monotonic()
    try:
        p = sh(cmd, timeout=args.timeout)
        text = p.stdout + p.stderr
    except subprocess.TimeoutExpired as e:
        text = (e.stdout or b'').decode(errors='replace') if isinstance(e.stdout, bytes) else (e.stdout or '')
        text += '\nGLOBAL TIMEOUT\n'
    (out / f'{tag}.log').write_text(' '.join(cmd) + '\n' + text)
    return parse(text), time.monotonic() - t, cmd, text


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--out', required=True)
    ap.add_argument('--old-inc', required=True, action='append')
    ap.add_argument('--new-inc', required=True, action='append')
    ap.add_argument('--wrapper', required=True)
    ap.add_argument('--func', action='append')
    ap.add_argument('--unroll', type=int, default=0)
    ap.add_argument('--smt-to', type=int, default=60000)
    ap.add_argument('--timeout', type=int, default=1800)
    ap.add_argument('--cflags', default=DEFAULT_CFLAGS)
    ap.add_argument('--extra-cflags', default='')
    ap.add_argument('--target')
    ap.add_argument('--fail-src-ub', action='store_true')
    ap.add_argument('--alive-func', action='append')
    args = ap.parse_args()
    out = Path(args.out); out.mkdir(parents=True, exist_ok=True)
    wrapper = Path(args.wrapper).resolve()
    report = {'wrapper': str(wrapper), 'cflags': args.cflags + ' ' + args.extra_cflags,
              'target': args.target, 'unroll': args.unroll, 'smt_to_ms': args.smt_to}
    for side, incs in (('old', args.old_inc), ('new', args.new_inc)):
        ll = out / f'{side}.ll'
        cmd = ['clang', *args.cflags.split(), *args.extra_cflags.split()]
        if args.target:
            cmd += ['--target=' + args.target]
        for i in incs:
            cmd += ['-I', str(Path(i).resolve())]
        cmd += ['-S', '-emit-llvm', str(wrapper), '-o', str(ll)]
        p = sh(cmd)
        if p.returncode != 0:
            report.update(verdict='UNSUPPORTED', reason=f'{side} side does not compile with clang',
                          compile_cmd=cmd, stderr=p.stderr[-4000:])
            (out / 'result.json').write_text(json.dumps(report, indent=2))
            print(json.dumps({'verdict': report['verdict'], 'reason': report['reason']}))
            return
        ll.write_text(normalize(ll.read_text()))
        report[f'{side}_ll_sha256'] = hashlib.sha256(ll.read_bytes()).hexdigest()
        report[f'{side}_compile'] = cmd
        report[f'{side}_loops'] = has_loops(ll)
    report['bounded'] = report['old_loops'] or report['new_loops']
    fwd, tf, cf, txt_f = run_dir(args, out / 'old.ll', out / 'new.ll', 'fwd', out)
    bwd, tb, cb, txt_b = run_dir(args, out / 'new.ll', out / 'old.ll', 'bwd', out)
    report.update(fwd_cmd=cf, bwd_cmd=cb, fwd_seconds=tf, bwd_seconds=tb)
    names = args.func or sorted({n for n in list(fwd) + list(bwd) if n.startswith('target_')})
    per = {}
    for n in names:
        f, b = fwd.get(n, 'missing'), bwd.get(n, 'missing')
        if f.startswith('error') or b.startswith('error') or f == 'missing':
            v = 'UNSUPPORTED'
        elif f == 'incorrect':
            v = 'NOT_EQUIV'
        elif f == 'correct' and b == 'correct':
            v = 'EQUIV'
        elif f == 'correct' and b == 'incorrect':
            v = 'REFINES'
        else:
            v = 'UNKNOWN'
        per[n] = {'verdict': v, 'fwd': f, 'bwd': b}
    report['functions'] = per
    order = ['NOT_EQUIV', 'UNSUPPORTED', 'UNKNOWN', 'REFINES', 'EQUIV']
    vs = [p['verdict'] for p in per.values()] or ['UNSUPPORTED']
    report['verdict'] = next(v for v in order if v in vs)
    if 'GLOBAL TIMEOUT' in txt_f + txt_b and report['verdict'] in ('EQUIV', 'REFINES'):
        report['verdict'] = 'UNKNOWN'
    (out / 'result.json').write_text(json.dumps(report, indent=2))
    print(json.dumps({'verdict': report['verdict'], 'bounded': report['bounded'], 'unroll': args.unroll,
                      'functions': per}, indent=1))


if __name__ == '__main__':
    main()
