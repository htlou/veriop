#!/usr/bin/env python3
"""Run Alive2 sub-checks in parallel and record verdicts.

usage: runall.py [--jobs N] [--cpus 80-95] [--to MS] case[:unroll] ...

Each case is built by gen.py (modules/<case>_{src,tgt}.ll; src = old, tgt = new)
and checked with the patched alive-tv (alive2-sinkcheck/, alive2-sinkcheck.patch)
in two separate runs, one per refinement direction:
  fwd: old => new   VERIOP_SKIP_SANITY=1 (skips only the vacuity sanity queries)
  rev: new => old   VERIOP_SKIP_RETURN=1; the 'src always UB' query runs, with --fail-src-ub
both with --func=ver --always-verify --src-unroll=K --tgt-unroll=K.
A direction is accepted only if its log shows
  [sink-check] UNSAT  (no well-defined execution of src or tgt reaches the unroll cut-off)
  Transformation seems to be correct!
  1 correct, 0 incorrect, 0 failed-to-prove, 0 Alive2 errors; exit status 0,
no ERROR line and no approximation note.  A case is accepted iff both directions are.
"""
import argparse, hashlib, json, os, subprocess, time, threading, queue
from pathlib import Path
HERE = Path(__file__).resolve().parent
ALIVE = HERE / 'alive2-sinkcheck/build/alive-tv'
SHIM = HERE.parent / 'tools/z3mem_shim.so'
sha = lambda p: hashlib.sha256(Path(p).read_bytes()).hexdigest()
WALL = 0  # per-direction wall-clock limit in seconds (0 = none); set by --wall


def cpulist(s):
    out = []
    for part in s.split(','):
        a, _, b = part.partition('-')
        out += list(range(int(a), int(b or a) + 1))
    bad = set(range(160, 192)) | set(range(352, 384))
    assert not bad & set(out), 'CPUs 160-191/352-383 are reserved'
    return out


def accept(log, rc):
    return (rc == 0 and log.count('[sink-check] UNSAT') == 1
            and log.count('Transformation seems to be correct!') == 1
            and '1 correct transformations' in log and '0 incorrect transformations' in log
            and '0 failed-to-prove transformations' in log and '0 Alive2 errors' in log
            and 'approximat' not in log.lower() and 'NOT PROVED' not in log and 'ERROR' not in log)


def run1(case, unroll, cpu, to, extra, logdir, direction, moddir):
    old, new = moddir / f'{case}_src.ll', moddir / f'{case}_tgt.ll'
    src, tgt = (old, new) if direction == 'fwd' else (new, old)
    cmd = ['taskset', '-c', str(cpu), str(ALIVE), '--func=ver', '--always-verify', '--fail-src-ub',
           f'--smt-to={to}', '--time-verify', f'--src-unroll={unroll}', f'--tgt-unroll={unroll}',
           *extra, str(src), str(tgt)]
    env = dict(os.environ, LD_PRELOAD=str(SHIM), Z3MEM_BYTES=str(24 << 30))
    env.pop('VERIOP_SKIP_SANITY', None); env.pop('VERIOP_SKIP_RETURN', None)
    flag = 'VERIOP_SKIP_SANITY' if direction == 'fwd' else 'VERIOP_SKIP_RETURN'
    env[flag] = '1'
    t = time.monotonic()
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, env=env, timeout=WALL or None)
        log, rc = p.stdout + p.stderr, p.returncode
    except subprocess.TimeoutExpired as e:
        log = (e.stdout or b'').decode(errors='replace') + (e.stderr or b'').decode(errors='replace')
        log += f'\nERROR: wall-clock limit of {WALL} s reached (run abandoned)\n'
        rc = -9
    dt = round(time.monotonic() - t, 1)
    (logdir / f'{case}_u{unroll}_{direction}.log').write_text(
        f'{flag}=1 ' + ' '.join(cmd) + '\n\n' + log)
    ok = accept(log, rc)
    reason = '' if ok else next((l for l in log.splitlines() if l.startswith('ERROR') or 'NOT PROVED' in l),
                                f'rc={rc}')
    return ok, dt, reason, cmd[3:]


def run(case, unroll, cpu, to, extra, logdir, moddir):
    rec = dict(case=case, unroll=unroll)
    for d in ('fwd', 'rev'):
        ok, dt, reason, cmd = run1(case, unroll, cpu, to, extra, logdir, d, moddir)
        rec[d] = dict(accepted=ok, seconds=dt, reason=reason, cmd=cmd)
        if not ok:
            break
    rec['accepted'] = all(rec.get(d, {}).get('accepted') for d in ('fwd', 'rev'))
    rec['seconds'] = round(sum(rec[d]['seconds'] for d in ('fwd', 'rev') if d in rec), 1)
    rec['reason'] = '; '.join(f"{d}: {rec[d]['reason']}" for d in ('fwd', 'rev') if d in rec and rec[d]['reason'])
    rec.update(src_sha256=sha(moddir / f'{case}_src.ll'), tgt_sha256=sha(moddir / f'{case}_tgt.ll'),
               alive_sha256=sha(ALIVE))
    return rec


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('cases', nargs='+')
    ap.add_argument('--jobs', type=int, default=16)
    ap.add_argument('--cpus', default='80-95')
    ap.add_argument('--to', type=int, default=3600000)
    ap.add_argument('--extra', default='')
    ap.add_argument('--moddir', default=str(HERE / 'modules'))
    ap.add_argument('--logdir', default=str(HERE / 'logs'))
    ap.add_argument('--results', default=str(HERE / 'results.jsonl'))
    ap.add_argument('--global-cap', type=int, default=0)
    ap.add_argument('--wall', type=int, default=0)
    a = ap.parse_args()
    WALL = a.wall
    logdir = Path(a.logdir); logdir.mkdir(parents=True, exist_ok=True)
    cpus = cpulist(a.cpus)
    q = queue.Queue()
    for c in a.cases:
        case, _, u = c.partition(':')
        q.put((case, int(u or 0)))
    free = queue.Queue()
    for c in cpus[:a.jobs]:
        free.put(c)
    lock = threading.Lock()
    launching = []

    def worker():
        while True:
            try:
                case, u = q.get_nowait()
            except queue.Empty:
                return
            cpu = free.get()
            if a.global_cap:
                # never run more than global_cap alive-tv processes of this directory at once
                while True:
                    with lock:
                        n = subprocess.run(['pgrep', '-fc', str(ALIVE)], capture_output=True, text=True).stdout.strip()
                        if int(n or 0) < a.global_cap:
                            launching.append(1)
                            break
                    time.sleep(5)
            if a.global_cap:
                # hold the lock until the new process is visible to pgrep
                lock.acquire()
                threading.Thread(target=lambda: (time.sleep(3), lock.release()), daemon=True).start()
            try:
                r = run(case, u, cpu, a.to, a.extra.split(), logdir, Path(a.moddir))
            finally:
                free.put(cpu)
            with lock:
                with open(a.results, 'a') as f:
                    f.write(json.dumps(r) + '\n')
                print(f"{r['case']} u{u} {'PASS' if r['accepted'] else 'FAIL'} {r['seconds']}s {r['reason']}", flush=True)

    th = [threading.Thread(target=worker) for _ in range(min(a.jobs, len(cpus)))]
    for t in th: t.start()
    for t in th: t.join()
