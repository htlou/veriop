#!/usr/bin/env python3
"""Check the exact historical scheduler synchronization state projection."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "b47ab7b8e9c4f6154eb6abb6234866ab117d64c7"
source_path = "ggml/src/ggml-backend.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


parent = git("rev-parse", commit + "^").decode().strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == [source_path]
bodies = {}
blobs = {}
for side, revision in (("old", parent), ("new", commit)):
    source = git("show", revision + ":" + source_path)
    oid = git("rev-parse", revision + ":" + source_path).decode().strip()
    assert hashlib.sha1(f"blob {len(source)}\0".encode() + source).hexdigest() == oid
    (here / f"{side}-source.cpp").write_bytes(source)
    text = source.decode()
    start = text.index("void ggml_backend_sched_synchronize(ggml_backend_sched_t sched) {")
    end = text.index("\n}\n", start) + 2
    bodies[side] = text[start:end]
    blobs[side] = oid


def code(body):
    return "\n".join(line.strip() for line in re.sub(r"//[^\n]*", "", body).splitlines() if line.strip())


old, new = code(bodies["old"]), code(bodies["new"])
assert old.count("sched->cur_copy = 0;") == new.count("sched->cur_copy = 0;") == 1
assert old.replace("sched->cur_copy = 0;", "if (!sched->is_alloc) {\nsched->cur_copy = 0;\n}") == new
assert "sched->cur_copy = (sched->cur_copy + 1) % sched->n_copies;" in (here / "new-source.cpp").read_text()
assert "sched->is_alloc = true;" in (here / "new-source.cpp").read_text()

prefix = """struct Backend {};
using ggml_backend_t = Backend *;
struct ggml_backend_sched {
  bool is_alloc;
  int n_backends;
  ggml_backend_t * backends;
  int cur_copy;
};
using ggml_backend_sched_t = ggml_backend_sched *;
static void ggml_backend_synchronize(ggml_backend_t) {}
"""
suffix = """
extern "C" int target_state(bool allocated, int copy) {
  Backend backend;
  ggml_backend_t backends[] = {&backend};
  ggml_backend_sched sched{allocated, 1, backends, copy};
  ggml_backend_sched_synchronize(&sched);
  return sched.cur_copy;
}
extern "C" int target_unallocated(int copy) { return target_state(false, copy); }
"""
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
for side in ("old", "new"):
    cpp = here / f"{side}.cpp"
    cpp.write_text(prefix + bodies[side] + suffix)
    ll = here / f"{side}.ll"
    subprocess.run([str(clang), "-std=c++17", "-O2", "-S", "-emit-llvm", str(cpp), "-o", str(ll)],
                   check=True, capture_output=True, text=True)

checks = {}
for function, outcome in (("target_state", "Transformation doesn't verify"),
                          ("target_unallocated", "Transformation seems to be correct!")):
    for direction, first, second in (("forward", "old", "new"), ("reverse", "new", "old")):
        run = subprocess.run([str(alive), "--always-verify", "--func=" + function,
                              str(here / f"{first}.ll"), str(here / f"{second}.ll")],
                             stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=30)
        log = here / f"{function}-{direction}.log"
        log.write_text(run.stdout)
        assert outcome in run.stdout and "0 Alive2 errors" in run.stdout, (function, direction, run.stdout)
        checks[f"{function}-{direction}"] = {"outcome": outcome, "exit_code": run.returncode,
                                                "log_sha256": sha(log)}

result = {"commit": commit, "parent": parent, "source_blobs": blobs,
          "old_ir_sha256": sha(here / "old.ll"), "new_ir_sha256": sha(here / "new.ll"),
          "model_sha256": {side: sha(here / f"{side}.cpp") for side in ("old", "new")},
          "checks": checks,
          "verdict": "scoped internal cur_copy mismatch when is_alloc=true; full scheduler behavior unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
