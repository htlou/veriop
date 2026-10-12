#!/usr/bin/env python3
"""Audit both historical Python files and try the selected K checker."""

import ast
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/kontrol"
path = "src/kontrol/kompile.py"
revisions = {
    "old": "b030efae408f94cbcc9bb642a8340f5912dd5e94",
    "new": "1c2e6775f2938aec5ec8c001b0662a53199f2bf1",
}
sources = {}
for label, rev in revisions.items():
    source = subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{rev}:{path}"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
    )
    ast.parse(source)
    (here / f"kompile-{label}.py").write_text(source)
    sources[label] = source

old, new = sources["old"], sources["new"]
before = """    if should_rekompile():
        output_dir = foundry.kompiled
        kevm_kompile("""
after = """    if should_rekompile():
        output_dir = foundry.kompiled

        optimization = 0
        if options.o1:
            optimization = 1
        if options.o2:
            optimization = 2
        if options.o3:
            optimization = 3

        kevm_kompile("""
assert old.count(before) == 1
expected = old.replace(before, after, 1)
before_arg = """            ignore_warnings=options.ignore_warnings,
        )"""
after_arg = """            ignore_warnings=options.ignore_warnings,
            optimization=optimization,
        )"""
assert expected.count(before_arg) == 1
assert expected.replace(before_arg, after_arg, 1) == new

definition = root / "history-eq/k/evm-semantics/bb3a2b89/new-historical-kompiled"
kprove = root / "benchmarks/tools/kframework-7.1.337/usr/bin/kprove"
java_home = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64"
env = {**os.environ, "JAVA_HOME": str(java_home), "PATH": str(java_home / "bin") + os.pathsep + os.environ.get("PATH", "")}
run = subprocess.run(
    [str(kprove), "--definition", str(definition), str(here / "kompile-new.py")],
    env=env, capture_output=True, text=True, timeout=90,
)
output = run.stdout + run.stderr
assert run.returncode != 0 and "Outer Parser" in output, output
(here / "kprove-python.log").write_text(output)
(here / "result.json").write_text(json.dumps({
    "revisions": revisions,
    "python_syntax": "both pass",
    "changed_code": "only optimization flag selection and kevm_kompile argument",
    "kprove_exit": run.returncode,
    "kprove_error": "Outer Parser rejects Python before checking a relation",
}, indent=2) + "\n")
print(f"historical Python audit passed; kprove rejected Python source (exit {run.returncode})")
