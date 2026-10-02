#!/usr/bin/env python3
"""Compile C, require complete bidirectional Alive2 success, then emit native objects."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
import time

ROOT = Path(__file__).resolve().parent
FLAGS = ["-O3", "-march=x86-64-v3", "-fno-strict-aliasing", "-fno-vectorize", "-fno-slp-vectorize"]
CASES = {"libdivide_old": 2, "libdivide_select": 2, "xxhash_old": 4,
         "xxhash_dispatch": 1}


def verify_artifacts():
    pins = json.loads((ROOT / "repos.lock.json").read_text())
    for name, pin in pins.items():
        path = ROOT / "repos" / name
        assert subprocess.check_output(["git", "-C", str(path), "rev-parse", "HEAD"], text=True).strip() == pin["commit"]
        assert not subprocess.check_output(["git", "-C", str(path), "status", "--porcelain"], text=True)
    proof = json.loads((ROOT / "results/proofs/summary.json").read_text())
    for name, count in CASES.items():
        record = proof[name]
        assert record['accepted'], name
        log = (ROOT / f"results/proofs/{name}.log").read_text()
        assert accepted(log, count) and log.count("These functions seem to be equivalent!") == count
        for kind, path in [('source', ROOT / f'experiments/{name}.c'),
                           ('ir', ROOT / f'build/ir/{name}.ll'), ('object', ROOT / f'build/ir/{name}.o')]:
            assert hashlib.sha256(path.read_bytes()).hexdigest() == record[kind + '_sha256'], path


def accepted(text, count):
    return all(re.search(rf"^\s*{n} {label}$", text, re.M) for n, label in [
        (count, "correct transformations"), (0, "incorrect transformations"),
        (0, "failed-to-prove transformations"), (0, "Alive2 errors")])


def verify_trial(trial):
    """Require a complete direct or exhaustive-length proof of the exact IR."""
    trial = trial.resolve()
    report = json.loads((trial / 'trial.json').read_text())
    project = report['name'].split('_')[0]
    assert project in ('libdivide', 'xxhash')
    assert (trial / 'old.ll').read_bytes() == (ROOT / f'build/ir/{project}_old.ll').read_bytes()
    for name, digest in report['sha256'].items():
        assert hashlib.sha256((trial / name).read_bytes()).hexdigest() == digest, name
    if report.get('proof_kind') == 'composition':
        source = Path(report['source_trial'])
        assert source.resolve() != trial.resolve()
        prior = verify_trial(source)
        assert prior['functions'] == report['functions']
        assert (trial / 'vector.ll').read_bytes() == (source / 'new.ll').read_bytes()
        assert report['proof'][-2:] == [str(trial / 'vector.ll'), str(trial / 'new.ll')]
    if report['accepted']:
        log = (trial / 'proof.log').read_text()
        count = len(report['functions'])
    else:
        partition = json.loads((trial / 'length-proof/summary.json').read_text())
        assert partition['accepted']
        assert partition['functions'] == [n.removeprefix('target_') for n in report['functions']]
        ranges = {'1to3': list(range(1, 4)), '4to8': list(range(4, 9)),
                  '9to16': list(range(9, 17)), '0to16': list(range(17))}
        assert partition['lengths'] == {n: ranges[n] for n in partition['functions']}
        count = sum(len(v) for v in partition['lengths'].values())
        assert partition['expected_checks'] == count
        for name, digest in partition['sha256'].items():
            assert hashlib.sha256((trial / 'length-proof' / name).read_bytes()).hexdigest() == digest, name
        assert set(partition['input_sha256']) == {'old', 'new'}
        for variant, digest in partition['input_sha256'].items():
            assert hashlib.sha256((trial / f'{variant}.ll').read_bytes()).hexdigest() == digest, variant
        log = (trial / 'length-proof/proof.log').read_text()
    assert accepted(log, count) and log.count('These functions seem to be equivalent!') == count
    return report


def run():
    ir = ROOT / "build/ir"
    ir.mkdir(parents=True, exist_ok=True)
    results = ROOT / "results/proofs"
    results.mkdir(parents=True, exist_ok=True)
    report = {}
    for name, count in CASES.items():
        src = ROOT / f"experiments/{name}.c"
        ll = ir / f"{name}.ll"
        compile_cmd = ["clang", *FLAGS, "-I", str(ROOT / "repos/libdivide"),
                       "-I", str(ROOT / "repos/xxHash"), "-S", "-emit-llvm", str(src), "-o", str(ll)]
        subprocess.run(compile_cmd, check=True)
        baseline = name.split("_")[0] + "_old"
        cmd = [str(ROOT / "build/alive2/alive-tv"), "--bidirectional", "--always-verify",
               "--fail-src-ub", "--smt-to=30000", "--time-verify", str(ir / f"{baseline}.ll"), str(ll)]
        start = time.monotonic()
        proc = subprocess.run(cmd, capture_output=True, text=True, timeout=360)
        output = proc.stdout + proc.stderr
        (results / f"{name}.log").write_text(output)
        ok = (proc.returncode == 0 and accepted(output, count)
              and output.count("These functions seem to be equivalent!") == count)
        record = {"accepted": bool(ok), "seconds": time.monotonic() - start,
                  "compile": compile_cmd, "check": cmd,
                  "source_sha256": hashlib.sha256(src.read_bytes()).hexdigest(),
                  "ir_sha256": hashlib.sha256(ll.read_bytes()).hexdigest()}
        report[name] = record
        (results / "summary.json").write_text(json.dumps(report, indent=2) + "\n")
        print(name, "PASS" if ok else "FAIL", round(record["seconds"], 3), flush=True)
        if not ok:
            raise RuntimeError(f"Proof failed: {results / (name + '.log')}")
        native_cmd = ["clang", *FLAGS, "-c", str(ll), "-o", str(ir / f"{name}.o")]
        subprocess.run(native_cmd, check=True)
        record["native"] = native_cmd
        record["object_sha256"] = hashlib.sha256((ir / f"{name}.o").read_bytes()).hexdigest()
        (results / "summary.json").write_text(json.dumps(report, indent=2) + "\n")


if __name__ == "__main__":
    # Fail closed on empty output, omitted functions, counterexamples and timeouts.
    good = "2 correct transformations\n0 incorrect transformations\n0 failed-to-prove transformations\n0 Alive2 errors\n"
    assert accepted(good, 2) and not accepted(good, 4)
    assert not accepted("", 0) and not accepted(good.replace("0 failed", "1 failed"), 2)
    run()
