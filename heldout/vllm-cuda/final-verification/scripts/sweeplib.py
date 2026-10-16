"""Shared driver for the per-CTA sweeps: resumable TSV records, <= WORKERS concurrent Volta processes,
CPU affinity 0-159 + 192-351 (inherited by every child), pause while the 1-minute load average exceeds
LOAD_MAX. CPU only; no GPU is touched."""
import os, subprocess, threading, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

H = Path(__file__).resolve().parents[2]
VOLTA = H / 'volta-final/target/release/volta'
WORKERS, LOAD_MAX = 96, 300.0
CPUS = set(range(0, 160)) | set(range(192, 352))


def pin():
    os.sched_setaffinity(0, CPUS)


def run_volta(args):
    p = subprocess.run([str(VOLTA), '--no-log-file', *map(str, args)], capture_output=True, text=True)
    return p.returncode, p.stdout + p.stderr


def sweep(tsv: Path, header, keys, work, keep_log=None, log_dir=None):
    """Run work(key) -> (row_fields, passed, output) for every key not yet recorded in tsv.
    Rows are appended (and flushed) as they finish, so an interrupted sweep resumes."""
    done = set()
    if tsv.exists():
        for line in tsv.read_text().splitlines()[1:]:
            done.add(line.split('\t')[0])
    else:
        tsv.write_text('\t'.join(header) + '\n')
    todo = [k for k in keys if str(k) not in done]
    lock = threading.Lock()
    fh = open(tsv, 'a')
    nfail = [0]

    def job(k):
        while os.getloadavg()[0] > LOAD_MAX:
            time.sleep(10)
        fields, ok, out = work(k)
        if log_dir is not None and (not ok or (keep_log and keep_log(k))):
            log_dir.mkdir(parents=True, exist_ok=True)
            (log_dir / f'{tsv.stem}-{k}.log').write_text(out)
        with lock:
            fh.write('\t'.join(map(str, [k, *fields, int(ok)])) + '\n')
            fh.flush()
            nfail[0] += (not ok)
        return ok

    t0 = time.time()
    with ThreadPoolExecutor(WORKERS) as ex:
        list(ex.map(job, todo))
    fh.close()
    return len(todo), nfail[0], time.time() - t0


def read_tsv(tsv: Path):
    lines = tsv.read_text().splitlines()
    hdr = lines[0].split('\t')
    rows = {}
    for line in lines[1:]:
        r = dict(zip(hdr, line.split('\t')))
        rows[r[hdr[0]]] = r  # last record wins
    return hdr, rows
