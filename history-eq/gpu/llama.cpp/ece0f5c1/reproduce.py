#!/usr/bin/env python3
"""Recheck one source-locked OpenCL set_rows fastmod specialization with Kuiper F*."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
package = root / "benchmarks/tools/kuiper-package"
commit = "ece0f5c1"
host_path = "ggml/src/ggml-opencl/ggml-opencl.cpp"
kernel_path = "ggml/src/ggml-opencl/kernels/set_rows.cl"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, **kwargs):
    p = subprocess.run(args, capture_output=True, text=True, env=env, timeout=90, **kwargs)
    assert p.returncode == 0, p.stdout + p.stderr
    return p.stdout


def git(*args):
    return run(["git", "-C", str(repo), *args])


commit = git("rev-parse", commit + "^{commit}").strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [host_path, kernel_path]
diff = git("show", "--format=", "--no-ext-diff", commit, "--", host_path, kernel_path)
assert diff.encode() == (here.parent / "source-screening/ece0f5c1.source.diff").read_bytes()
blobs = {side: {p: git("rev-parse", f"{rev}:{p}").strip() for p in (host_path, kernel_path)}
         for side, rev in (("old", commit + "^"), ("new", commit))}
host = git("show", f"{commit}:{host_path}")
old_kernel = git("show", f"{commit}^:{kernel_path}")
new_kernel = git("show", f"{commit}:{kernel_path}")
initializer = host[host.index("static fastdiv_vals init_fastdiv_values("):
                   host.index("\nenum GPU_FAMILY", host.index("static fastdiv_vals init_fastdiv_values("))]
host_fragment = host[host.index("struct fastdiv_vals {"):host.index("\nenum GPU_FAMILY")]
assert "while (L < 32 && (uint32_t{ 1 } << L) < d)" in initializer
assert "((uint64_t{ 1 } << 32) * ((uint64_t{ 1 } << L) - d) / d + 1)" in initializer
assert host.count("init_fastdiv_values(ne11)") == 1
assert host.count("init_fastdiv_values(ne12)") == 1
assert old_kernel.count("int i12 = i03%ne12;") == 4
assert old_kernel.count("int i11 = i02%ne11;") == 4
assert new_kernel.count("int i12 = fastmod(i03, ne12);") == 4
assert new_kernel.count("int i11 = fastmod(i02, ne11);") == 4
assert "msbs = mul_hi(n, v.s0);\n    return (msbs + n) >> v.s1;" in new_kernel
assert "return n - q * v.s2;" in new_kernel
assert old_kernel.count("int i03 = get_group_id(2);") == 4
assert new_kernel.count("int i03 = get_group_id(2);") == 4

proof = here / "Kuiper.Llama.OpenCL.FastDiv.fst"
assert "admit" not in proof.read_text() and "assume" not in proof.read_text()
prior = root / "history-eq/gpu/flash-attention/8d454a3a"
prior_proof = prior / "Kuiper.FlashAttention.FastDiv.fst"
assert "admit" not in prior_proof.read_text() and "assume" not in prior_proof.read_text()
with TemporaryDirectory(prefix="kuiper-opencl-fastdiv-") as tmp:
    cache = Path(tmp)
    probe = cache / "init.cpp"
    executable = cache / "init"
    probe.write_text("#include <cstdint>\n#include <limits>\n#include <cstdio>\n#include <cassert>\n"
                     "#define GGML_ASSERT assert\n" + host_fragment +
                     "int main() { auto v = init_fastdiv_values(3); "
                     "std::printf(\"%u %u\\n\", v.mp, v.L); }\n")
    run(["c++", "-std=c++17", str(probe),
         "-o", str(executable)])
    assert run([str(executable)]).strip() == "1431655766 2"
    old_log = run([str(package / "fstar.sh"), "--cache_checked_modules", "--cache_dir", str(cache),
                   str(prior_proof)], cwd=root)
    assert "All verification conditions discharged successfully" in old_log
    log = run([str(package / "fstar.sh"), "--include", str(cache), "--include", str(prior),
               str(proof)], cwd=root)
assert "Verified module: Kuiper.Llama.OpenCL.FastDiv" in log
assert "All verification conditions discharged successfully" in log
(here / "kuiper.log").write_text(log)

L = next(i for i in range(33) if (1 << i) >= 3)
mp = ((1 << 32) * ((1 << L) - 3) // 3 + 1) & 0xffffffff
assert (L, mp) == (2, 1431655766)
result = {"commit": commit, "changed_paths": [host_path, kernel_path], "source_blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "proof_sha256": hashlib.sha256(proof.read_bytes()).hexdigest(),
          "imported_proof_sha256": hashlib.sha256(prior_proof.read_bytes()).hexdigest(),
          "kuiper_build_info_sha256": hashlib.sha256((package / "BUILD_INFO").read_bytes()).hexdigest(),
          "checker": "Kuiper-bundled F* verifier", "verdict": "EQUIV_PARTIAL",
          "scope": "source-derived OpenCL set_rows quotient and remainder at divisor 3 for every 0 <= index < 2^31; full host/kernel execution, other divisors, tensor output, and performance unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "mp": mp, "L": L}))
