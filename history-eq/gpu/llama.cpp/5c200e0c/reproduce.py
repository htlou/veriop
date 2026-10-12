#!/usr/bin/env python3
"""Check exact historical Vulkan GDN shader-selection decisions."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "5c200e0c"
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(*args):
    p = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    assert p.returncode == 0, p.stderr or p.stdout
    return p.stdout


def git(*args):
    return run("git", "-C", str(repo), *args)


commit = git("rev-parse", commit + "^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path]
diff = git("show", "--format=", "--no-ext-diff", commit, "--", path)
assert diff.encode() == (here.parent / "source-screening/5c200e0c.source.diff").read_bytes()
blobs = {side: git("rev-parse", f"{rev}:{path}").strip()
         for side, rev in (("old", commit + "^"), ("new", commit))}
start = "const uint32_t S_V = gdn_sizes[si];"
end = "const bool use_subgroup_ops = use_clustered_reduce || use_subgroup_reduce;"
parts = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    source = git("show", f"{rev}:{path}")
    assert "const uint32_t gdn_sizes[] = {16, 32, 64, 128};" in source
    begin = source.index(start, source.index("const uint32_t gdn_sizes[]"))
    stop = source.index(end, begin) + len(end)
    parts[side] = source[begin:stop]
assert "lanes_per_column = 8u;" in parts["old"]
assert "lanes_per_column = std::max(1u, gdn_subgroup_size / 8u);" in parts["new"]
assert "gdn_subgroup_size = 16u;" in parts["new"]
assert "const uint32_t cols_per_wg = gdn_subgroup_size / lanes_per_column;" in git("show", f"{commit}:{path}")
assert "{S_V, kda, gdn_subgroup_size, lanes_per_column}" in git("show", f"{commit}:{path}")

stub = """typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
namespace std {
template<class T> T min(T a, T b) { return a < b ? a : b; }
template<class T> T max(T a, T b) { return a > b ? a : b; }
}
#define GGML_ASSERT(x) do { if (!(x)) __builtin_trap(); } while (0)
constexpr uint32_t VK_VENDOR_ID_INTEL = 1u;
static bool is_pow2(uint32_t n) { return n && !(n & (n - 1)); }
struct Device {
    uint32_t subgroup_size, vendor_id;
    bool subgroup_size_control;
    uint32_t subgroup_min_size, subgroup_max_size;
    bool subgroup_clustered, subgroup_arithmetic;
};
"""
for side in ("old", "new"):
    code = stub
    for label, sv, vendor, clustered in (("intel128", 128, 1, True),
                                         ("other64", 64, 0, False)):
        code += f'extern "C" uint64_t target_{label}() {{\n'
        code += f'Device d{{32u,{vendor}u,true,16u,16u,{str(clustered).lower()},true}};\n'
        code += f'Device *device = &d; const uint32_t gdn_sizes[] = {{{sv}u}}; uint32_t si=0;\n'
        code += parts[side] + "\n"
        subgroup = "device->subgroup_size" if side == "old" else "gdn_subgroup_size"
        code += f"uint32_t chosen = {subgroup};\n"
        code += "uint32_t cols_per_wg = chosen / lanes_per_column;\n"
        code += "return chosen | (uint64_t(lanes_per_column)<<8) | (uint64_t(cols_per_wg)<<16) | "
        code += "(uint64_t(use_clustered_reduce)<<24) | (uint64_t(use_subgroup_reduce)<<25) | "
        code += "(uint64_t(use_subgroup_ops)<<26);\n}\n"
    (here / f"{side}.cpp").write_text(code)
    run(str(clang), "-x", "c++", "-std=c++17", "-O1", "-S", "-emit-llvm",
        str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll"))

checks = {}
for label, expected in (("intel128", "incorrect"), ("other64", "correct")):
    for direction, src, dst in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
        log = run(str(alive), str(here / f"{src}.ll"), str(here / f"{dst}.ll"),
                  f"--func=target_{label}", "--always-verify", "--smt-to=30000")
        assert f"1 {expected} transformations" in log and "0 Alive2 errors" in log
        (here / f"alive-{label}-{direction}.log").write_text(log)
        checks[f"{label}/{direction}"] = expected

native = {}
for label in ("intel128", "other64"):
    native[label] = {}
    for side in ("old", "new"):
        source = here / f"{side}.cpp"
        probe = here / f"probe-{side}.cpp"
        binary = here / f"probe-{side}"
        probe.write_text(source.read_text() +
                         f'int main() {{ return (int)target_{label}(); }}\n')
        run("c++", "-std=c++17", str(probe), "-o", str(binary))
        p = subprocess.run([str(binary)], env=env)
        native[label][side] = p.returncode
        probe.unlink()
        binary.unlink()
assert native == {"intel128": {"old": 32, "new": 16},
                  "other64": {"old": 32, "new": 32}}

result = {"commit": commit, "changed_paths": [path], "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "native_low_byte": native, "verdict": "NOT_EQUIV",
          "scope": "exact historical GDN shader-selection decision for S_V=128 and Intel-tagged subgroup32 device supporting subgroup16: chosen subgroup 32 before, 16 after; complete Vulkan kernels and tensor outputs unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"checks": checks, "native_low_byte": native}))
