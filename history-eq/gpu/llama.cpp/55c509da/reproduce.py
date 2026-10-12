#!/usr/bin/env python3
"""Check historical PPC save_res template-to-argument refactor with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang++-20"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "55c509da"],
                                 env=env).decode().strip()
path = "ggml/src/ggml-cpu/llamafile/sgemm.cpp"


def git_blob(rev):
    return subprocess.check_output(["git", "-C", str(repo), "show", rev + ":" + path], env=env)


def run(args):
    result = subprocess.run([str(x) for x in args], capture_output=True, text=True,
                            timeout=60, env=env)
    assert result.returncode == 0, result.stdout + result.stderr
    return result


calls = [(rm, rn, 0, 0, 0) for rm in range(1, 5) for rn in range(1, 5)]
calls += [(4, 4, ii, jj, idx) for ii, jj, idx in
          ((0, 4, 4), (4, 0, 4), (0, 4, 8), (4, 4, 12))]
manifest = {"commit": commit, "source_sha256": {}, "snippet_sha256": {},
            "scope": "tinyBLAS_Q0_PPC::save_res, all RM/RN in 1..4 plus four actual 4x4 caller offsets at ldc=8",
            "calls": calls,
            "checks": []}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git_blob(rev)
    manifest["source_sha256"][side] = hashlib.sha256(source).hexdigest()
    text = source.decode()
    start = text.index("class tinyBLAS_Q0_PPC")
    method = text.index("inline void save_res(", start)
    begin = text.rfind("template<int RM, int RN>", start, method) if side == "old" else method
    assert begin >= start
    brace = text.index("{", method)
    depth, end = 1, brace + 1
    while depth:
        depth += (text[end] == "{") - (text[end] == "}")
        end += 1
    snippet = text[begin:end]
    assert "fin_res[idx+I]+J" in snippet
    if side == "old":
        assert "template<int RM, int RN>" in snippet
        assert "save_res<RM, RN>(ii, jj, 0, fin_res)" in text[start:]
    else:
        assert "int RM=4, int RN=4" in snippet
        assert "save_res(ii, jj, 0, fin_res, RM, RN)" in text[start:]
    manifest["snippet_sha256"][side] = hashlib.sha256(snippet.encode()).hexdigest()
    (here / f"{side}-snippet.cpp").write_text(snippet + "\n")
    code = """typedef float v4f __attribute__((vector_size(16)));
static_assert(sizeof(v4f) == 16);
struct Buffers { float C[128]; v4f fin[16]; };
static_assert(sizeof(Buffers) == 768);
struct Kernel {
    float *C;
    long long ldc;
""" + snippet.replace("vector float", "v4f") + "\n};\n"
    for rm, rn, ii, jj, idx in calls:
        call = (f"k.save_res<{rm},{rn}>({ii},{jj},{idx},b->fin)" if side == "old" else
                f"k.save_res({ii},{jj},{idx},b->fin)" if (rm, rn) == (4, 4) else
                f"k.save_res({ii},{jj},{idx},b->fin,{rm},{rn})")
        code += (f'extern "C" void compare_{rm}_{rn}_{ii}_{jj}_{idx}(Buffers *b) '
                 f'{{ Kernel k{{b->C,8}}; {call}; }}\n')
    (here / f"{side}.cpp").write_text(code)
    run([clang, "-O2", "-S", "-emit-llvm", here / f"{side}.cpp", "-o", here / f"{side}.ll"])
    llvm = (here / f"{side}.ll").read_text()
    assert "call void @_ZN6Kernel8save_res" not in llvm
    llvm = re.sub(r", ![A-Za-z_][A-Za-z0-9_.]* ![0-9]+", "", llvm)
    llvm = re.sub(r"(?<![.!])\b(?:noalias|nocapture)\b\s*", "", llvm)
    llvm, count = re.subn(r"(@compare_[^(]+\()ptr noundef",
                          r"\1ptr noundef nonnull align 16 dereferenceable(768)", llvm)
    assert count == len(calls), (side, count)
    (here / f"{side}-normalized.ll").write_text(llvm)
    run([opt, "-passes=verify", "-disable-output", here / f"{side}-normalized.ll"])

for direction, first, second in (("forward", "old", "new"),
                                  ("backward", "new", "old")):
    for rm, rn, ii, jj, idx in calls:
        name = f"compare_{rm}_{rn}_{ii}_{jj}_{idx}"
        result = run([alive, "--always-verify", "--fail-src-ub", "--func=" + name,
                      here / f"{first}-normalized.ll", here / f"{second}-normalized.ll"])
        log = result.stdout + result.stderr
        (here / f"{direction}-{name}.log").write_text(log)
        assert all(s in log for s in ("1 correct transformations", "0 incorrect transformations",
                                      "0 failed-to-prove transformations", "0 Alive2 errors")), (name, log)
        manifest["checks"].append({"direction": direction, "function": name, "correct": 1})

assert len(manifest["checks"]) == 2 * len(calls)
manifest["normalized_ir_sha256"] = {
    side: hashlib.sha256((here / f"{side}-normalized.ll").read_bytes()).hexdigest()
    for side in ("old", "new")
}
(here / "result.json").write_text(json.dumps(manifest, indent=2) + "\n")
print(f"{2*len(calls)}/{2*len(calls)} bidirectional Alive2 checks correct")
