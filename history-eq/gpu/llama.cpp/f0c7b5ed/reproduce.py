#!/usr/bin/env python3
"""Probe Alive2 support for the exact historical ggml_barrier bodies."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "f0c7b5ed"],
                                 env=env).decode().strip()
path = "ggml/src/ggml.c"


def run(args):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True,
                          timeout=60, env=env)


def body(source):
    text = source.decode()
    start = text.index("static void ggml_barrier(struct ggml_threadpool * tp) {")
    brace = text.index("{", start)
    depth, end = 1, brace + 1
    while depth:
        depth += (text[end] == "{") - (text[end] == "}")
        end += 1
    return text[start:end]


scaffold = """#include <stdatomic.h>
struct ggml_threadpool {
    atomic_int n_threads_cur, n_barrier, n_barrier_passed;
};
static inline void ggml_thread_cpu_relax(void) {}
"""
result = {"commit": commit, "historical_source_sha256": {}, "barrier_body_sha256": {},
          "scope": "no-OpenMP ggml_barrier, canonical three-counter struct; thread relax is a no-op",
          "checks": []}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "-C", str(repo), "show", rev + ":" + path], env=env)
    snippet = body(source)
    result["historical_source_sha256"][side] = hashlib.sha256(source).hexdigest()
    result["barrier_body_sha256"][side] = hashlib.sha256(snippet.encode()).hexdigest()
    assert "atomic_fetch_add_explicit(&tp->n_barrier" in snippet
    assert ("atomic_thread_fence" in snippet) == (side == "new")
    (here / f"{side}-barrier.c").write_text(snippet + "\n")
    code = scaffold + snippet.replace("static void ggml_barrier(",
                                      "static inline __attribute__((always_inline)) void ggml_barrier(", 1)
    code += "\nvoid compare(struct ggml_threadpool *tp) { ggml_barrier(tp); }\n"
    (here / f"{side}.c").write_text(code)
    for config, flags in (("normal", []), ("tsan", ["-DGGML_TSAN_ENABLED=1"])):
        compiled = run([clang, "-O2", "-S", "-emit-llvm", *flags,
                        here / f"{side}.c", "-o", here / f"{side}-{config}.ll"])
        assert compiled.returncode == 0, compiled.stderr
        llvm = (here / f"{side}-{config}.ll").read_text()
        assert "atomicrmw add" in llvm
        llvm = re.sub(r", ![A-Za-z_][A-Za-z0-9_.]* ![0-9]+", "", llvm)
        llvm = re.sub(r"(?<![.!])\b(?:noalias|nocapture)\b\s*", "", llvm)
        (here / f"{side}-{config}-normalized.ll").write_text(llvm)
        verified = run([opt, "-passes=verify", "-disable-output",
                        here / f"{side}-{config}-normalized.ll"])
        assert verified.returncode == 0, verified.stderr

for config in ("normal", "tsan"):
    checked = run([alive, "--always-verify", "--func=compare",
                   here / f"old-{config}-normalized.ll",
                   here / f"new-{config}-normalized.ll"])
    log = checked.stdout + checked.stderr
    (here / f"alive2-{config}.log").write_text(log)
    assert "Unsupported instruction" in log and "load atomic" in log and "1 Alive2 errors" in log, log
    result["checks"].append({"config": config, "checker": "Alive2", "verdict": "UNSUPPORTED",
                             "reason": "atomic load instruction unsupported"})

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("Alive2 rejects both exact-source atomic barrier variants")
