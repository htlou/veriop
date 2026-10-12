#!/usr/bin/env python3
"""Rerun the pre-2020 units whose saved --cflags invocation never started."""
import json
import shlex
import subprocess
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
BASE = '-DNDEBUG -Drestrict= -D__restrict= -mllvm -inline-threshold=100000'


def repair(row):
    directory = TOOLS.parent / row['commit'] / row['unit']
    if (directory / 'result.json').exists():
        return row['commit'], row['unit'], 'already finished'
    saved = (directory / 'cmd.txt').read_text().strip()
    head, marker, tail = saved.partition(' ARGS=')
    assert marker and head.startswith('NOINL= EXTRA=')
    extra = head.removeprefix('NOINL= EXTRA=')
    args = shlex.split(tail)
    pos = args.index('--cflags')
    end = next((i for i in range(pos + 1, len(args)) if args[i].startswith('--')), len(args))
    assert end > pos + 1
    args[pos:end] = ['--cflags=' + ' '.join(args[pos + 1:end])]
    cmd = ['python3', str(TOOLS / 'alive_check_f.py'),
           '--out', str(directory), '--old-inc', str(directory.parent / 'old'),
           '--new-inc', str(directory.parent / 'new'),
           '--wrapper', str(directory / 'wrapper.c'),
           '--extra-cflags=' + BASE + ' ' + extra, *args]
    with (directory / 'summary.txt').open('w') as log:
        proc = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT)
    with (directory / 'calls.txt').open('w') as log:
        subprocess.run(['python3', str(TOOLS / 'calls.py'), str(directory / 'old.ll'),
                        str(directory / 'new.ll')], stdout=log, stderr=subprocess.STDOUT)
    with (directory / 'calls.txt').open('a') as log:
        subprocess.run(['python3', str(TOOLS / 'loops.py'), str(directory / 'old.ll'),
                        str(directory / 'new.ll')], stdout=log, stderr=subprocess.STDOUT)
    old, new = directory / 'old.ll', directory / 'new.ll'
    (directory / 'ir_diff.txt').write_text('IDENTICAL_IR\n' if old.exists() and new.exists()
                                            and old.read_bytes() == new.read_bytes() else 'IR_DIFFERS\n')
    return row['commit'], row['unit'], f'exit={proc.returncode} result={(directory / "result.json").exists()}'


if __name__ == '__main__':
    rows = json.loads((TOOLS / 'units.json').read_text())
    jobs = [row for row in rows if row['verdict'] == 'RUNNING/MISSING'
            and row['commit'] != '11ded56'
            and 'argument --cflags: expected one argument' in
            (TOOLS.parent / row['commit'] / row['unit'] / 'summary.txt').read_text()]
    print(f'repairing {len(jobs)} failed invocations', flush=True)
    with ThreadPoolExecutor(max_workers=8) as pool:
        for future in as_completed([pool.submit(repair, row) for row in jobs]):
            print(*future.result(), flush=True)
