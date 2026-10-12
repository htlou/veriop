#!/usr/bin/env python3
"""Audit the historical Kontrol builder and test its selected K checker boundary."""
import ast
import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/kontrol"
commit = "c8906a194631e4b959458abdef5cf9da31bdc002"
git_env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=git_env)

parent = git("rev-parse", commit + "^").decode().strip()
paths = (here.parent / "source-screening/c8906a19.paths.txt").read_text().splitlines()
diff = git("diff", "--no-ext-diff", parent, commit, "--", *paths)
assert diff == (here.parent / "source-screening/c8906a19.source.diff").read_bytes()

sources = {}
oids = {}
for label, rev in (("old", parent), ("new", commit)):
    source = git("show", f"{rev}:src/kontrol/kompile.py")
    ast.parse(source)
    target = here / f"kompile-{label}.py"
    if target.exists():
        assert target.read_bytes() == source
    else:
        target.write_bytes(source)
    sources[label] = source
    oids[label] = git("rev-parse", f"{rev}:src/kontrol/kompile.py").decode().strip()

old, new = sources["old"], sources["new"]
assert b"([KImport('KECCAK-LEMMAS')] if keccak_lemmas else [])" in old
assert b"([KImport('KONTROL-AUX-LEMMAS')] if auxiliary_lemmas else [])" in old
assert b"if options.keccak_lemmas and not options.auxiliary_lemmas:" in new
assert b"elif not options.keccak_lemmas and options.auxiliary_lemmas:" in new
assert b"else:\n        base_definition = 'KONTROL-FULL'" in new
module = git("show", f"{commit}:src/kontrol/kdist/kontrol.md")
assert b"module KONTROL-FULL\n    imports KONTROL-AUX\n    imports KONTROL-KECCAK" in module
assert b"module KONTROL-AUX\n    imports KONTROL-BASE\n    imports KONTROL-AUX-LEMMAS" in module
assert b"module KONTROL-KECCAK\n    imports KONTROL-BASE\n    imports KECCAK-LEMMAS" in module

kprove = root / "benchmarks/tools/kframework-7.1.337/usr/bin/kprove"
definition = root / "history-eq/k/evm-semantics/bb3a2b89/new-historical-kompiled"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64"
env = {**os.environ, "JAVA_HOME": str(java), "PATH": str(java / "bin") + os.pathsep + os.environ.get("PATH", "")}
run = subprocess.run([str(kprove), "--definition", str(definition), str(here / "kompile-new.py")],
                     env=env, capture_output=True, text=True, timeout=90)
output = run.stdout + run.stderr
assert run.returncode != 0 and "Outer Parser" in output, output
(here / "kprove-python.log").write_text(output)
result = {
    "revisions": {"old": parent, "new": commit},
    "kompile_blob_ids": oids,
    "diff_sha256": hashlib.sha256(diff).hexdigest(),
    "python_syntax": "both pass",
    "source_diagnostic": "with keccak_lemmas=false and auxiliary_lemmas=false, old omits both optional imports while new selects KONTROL-FULL, whose K source imports both optional modules",
    "kprove_exit": run.returncode,
    "kprove_error": "outer parser rejects historical Python builder before a semantic relation",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["source_diagnostic"])
print(f"kprove rejected Python source (exit {run.returncode})")
