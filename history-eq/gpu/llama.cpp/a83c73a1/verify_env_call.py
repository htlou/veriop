#!/usr/bin/env python3
"""Check the exact added CUDA-registration environment call as an observable trace."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang++-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "a83c73a18aaffba253ffd01e7cd3af41feaf8179"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


paths = ["docs/build.md", "ggml/src/ggml-cuda/ggml-cuda.cu"]
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == paths
blobs = {}
sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {}
    for path in paths:
        body = git("show", f"{rev}:{path}")
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        actual = subprocess.run(["git", "hash-object", "--stdin"], input=body,
                                check=True, capture_output=True).stdout.decode().strip()
        assert oid == actual
        blobs[side][path] = oid
        sources[side, path] = body.decode()

old = sources["old", paths[1]]
new = sources["new", paths[1]]
function = "ggml_backend_reg_t ggml_backend_cuda_reg() {"
branch = "        if (!initialized) {\n"
continuation = "            ggml_backend_cuda_reg_context * ctx = new ggml_backend_cuda_reg_context;"
assert old.count(function) == new.count(function) == 1
old_begin = old.index(branch, old.index(function)) + len(branch)
new_begin = new.index(branch, new.index(function)) + len(branch)
assert old[old_begin:old.index(continuation, old_begin)] == ""
added = new[new_begin:new.index(continuation, new_begin)]
assert new.count(added) == 1 and new.replace(added, "", 1) == old
assert 'if (getenv("CUDA_SCALE_LAUNCH_QUEUES") == nullptr)' in added
assert 'setenv("CUDA_SCALE_LAUNCH_QUEUES", "4x", 0)' in added
assert '_putenv_s("CUDA_SCALE_LAUNCH_QUEUES", "4x")' in added
assert "static bool initialized = false;" in old[old.index(function):old_begin]

checks = {}
for mode, presence, expected in (("symbolic", "env_present", "incorrect"),
                                 ("present", "1", "correct")):
    for side, block in (("old", ""), ("new", added)):
        code = ("#ifdef _WIN32\n#error This projection is for the Linux setenv branch\n#endif\n"
                "#define getenv(name) ((env_present) ? (char*)1 : (char*)0)\n"
                "#define setenv(name, value, overwrite) (++setenv_calls)\n"
                "extern \"C\" int target(int initialized, int env_present) {\n"
                "    int setenv_calls = 0;\n"
                f"    env_present = {presence};\n"
                "    if (!initialized) {\n" + block + "    }\n"
                "    return setenv_calls;\n}\n")
        src = here / f"{side}-{mode}.cpp"
        src.write_text(code)
        ll = here / f"{side}-{mode}.ll"
        subprocess.run([str(clang), "-std=c++17", "-O1", "-S", "-emit-llvm", "-fno-ident",
                        str(src), "-o", str(ll)], check=True, capture_output=True, text=True)
    for direction, a, b in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
        run = subprocess.run([str(alive), str(here / f"{a}-{mode}.ll"),
                              str(here / f"{b}-{mode}.ll"), "--func=target", "--smt-to", "10000"],
                             capture_output=True, text=True)
        log = run.stdout + run.stderr
        (here / f"{mode}-{direction}.log").write_text(log)
        assert f"1 {expected} transformations" in log and "0 Alive2 errors" in log, log
        checks[f"{mode}/{direction}"] = expected

(here / "result.json").write_text(json.dumps({
    "commit": commit, "changed_paths": paths, "source_blob_oids": blobs,
    "model_sha256": {f"{side}-{mode}": hashlib.sha256((here / f"{side}-{mode}.cpp").read_bytes()).hexdigest()
                     for side in ("old", "new") for mode in ("symbolic", "present")},
    "checks": checks,
    "witness": {"first_call": True, "CUDA_SCALE_LAUNCH_QUEUES_initially_absent": True,
                "old_setenv_calls": 0, "new_setenv_calls": 1},
    "verdict": "NOT_EQUIV",
    "scope": "Linux first CUDA registry initialization, observing only the setenv call count before context allocation; final registry and tensor results unverified",
}, indent=2) + "\n")
print("Alive2 refutes setenv-call equality in both directions; present-variable control passes")
