#!/usr/bin/env python3
"""Audit the complete inline-hint edit and recheck representative public calls."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

case = Path(__file__).resolve().parent
root = case.parents[3]
repo = root / "history-eq/repos/xxHash"
alive = root / "alive2/build/alive2/alive-tv"
commit = "b8dfa44bbcce9d8c36c52996ec7073242e2aa04b"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True,
                          text=True, check=True, env=env).stdout.strip()

assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == ["README.md", "xxhash.h"]
blobs = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.h", "README.md"):
        oid = git("rev-parse", f"{rev}:{name}")
        if name == "xxhash.h":
            assert git("hash-object", str(case / side / name)) == oid
        blobs[f"{side}/{name}"] = oid
old = (case / "old/xxhash.h").read_text()
new = (case / "new/xxhash.h").read_text()
added = new[new.index("/*!XXH_NO_INLINE_HINTS"):new.index("/*!XXH_REROLL")]
assert "#ifndef XXH_NO_INLINE_HINTS" in added
assert "#    define XXH_NO_INLINE_HINTS 1" in added
assert "#    define XXH_NO_INLINE_HINTS 0" in added
assert new.count(added) == 1
new_without_docs = new.replace(added, "", 1)
old_def = ("#ifdef _MSC_VER    /* Visual Studio */\n"
           "#  pragma warning(disable : 4127)      /* disable: C4127: conditional expression is constant */\n"
           "#  define XXH_FORCE_INLINE static __forceinline\n"
           "#  define XXH_NO_INLINE static __declspec(noinline)\n")
new_def = ("#ifdef _MSC_VER /* Visual Studio warning fix */\n"
           "#  pragma warning(disable : 4127)      /* disable: C4127: conditional expression is constant */\n"
           "#endif\n\n"
           "#if XXH_NO_INLINE_HINTS /* disable inlining hints */\n"
           "#  define XXH_FORCE_INLINE static\n"
           "#  define XXH_NO_INLINE static\n"
           "#elif defined(_MSC_VER)    /* Visual Studio */\n"
           "#  define XXH_FORCE_INLINE static __forceinline\n"
           "#  define XXH_NO_INLINE static __declspec(noinline)\n")
assert old.count(old_def) == new_without_docs.count(new_def) == 1
assert new_without_docs.replace(new_def, old_def, 1) == old
old_readme = git("cat-file", "blob", blobs["old/README.md"])
new_readme = git("cat-file", "blob", blobs["new/README.md"])
added_readme = [line for line in new_readme.splitlines() if line not in old_readme.splitlines()]
assert len(added_readme) == 1 and "XXH_NO_INLINE_HINTS" in added_readme[0]
assert new_readme.replace(added_readme[0] + "\n", "", 1) == old_readme

default = json.loads((case / "revalidated-public.json").read_text())
assert default["commit"] == commit and len(default["checks"]) == 14
assert all("1 correct transformations" in c["output"] and "0 Alive2 errors" in c["output"]
           for c in default["checks"])
noinline_dir = case / "r_O3_nih1_thr"
noinline = json.loads((noinline_dir / "result.json").read_text())
for side in ("old", "new"):
    assert hashlib.sha256((noinline_dir / f"{side}.ll").read_bytes()).hexdigest() == noinline[f"{side}_ll_sha256"]
checks = {}
for func, outcome in noinline["functions"].items():
    if outcome["verdict"] != "EQUIV":
        continue
    for direction, source, target in (("forward", "old", "new"), ("backward", "new", "old")):
        run = subprocess.run([str(alive), "--func=" + func, "--always-verify", "--quiet",
                              str(noinline_dir / f"{source}.ll"), str(noinline_dir / f"{target}.ll")],
                             capture_output=True, text=True, timeout=60, check=True)
        assert "1 correct transformations" in run.stdout and "0 Alive2 errors" in run.stdout
        checks[f"{func}/{direction}"] = "correct"
assert len(checks) == 10

result = {
    "commit": commit, "blobs": blobs,
    "source_edit": "README documentation plus XXH_NO_INLINE_HINTS and FORCE_INLINE/NO_INLINE declaration macro selection; all function bodies byte-identical",
    "default_alive2_directions": 14, "noinline_alive2_directions": checks,
    "verdict": "EQUIV",
    "scope": "functional hash outputs and streaming state for defined C executions; all internal function bodies unchanged and declaration macros differ only in inline/noinline hints; diagnostics, generated code, timing and resource exhaustion excluded",
}
(case / "defined-outputs-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"], len(checks), "no-inline directions rechecked")
