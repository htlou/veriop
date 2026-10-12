#!/usr/bin/env python3
"""Compare the historical Vulkan work-submission thresholds with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
commit = "0bbc87b16"
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args):
    return subprocess.run([str(x) for x in args], capture_output=True, text=True, env=env)


common = r'''#ifndef VULKAN_SCOPED_COMMON
#define VULKAN_SCOPED_COMMON
#include <stdint.h>
namespace std { template<typename T> T min(T a, T b) { return a < b ? a : b; } }
#define VK_VENDOR_ID_AMD 0x1002u
#define AMD_GCN 1u
struct Device { uint32_t vendor_id, architecture, shader_core_count; };
struct Context { Device * device; uint64_t last_total_flops; };
#endif
'''
signature = 'extern "C" uint64_t threshold(uint64_t last, uint32_t vendor, uint32_t arch, uint32_t cores)'
setup = ("    Device device = {vendor, arch, cores};\n"
         "    Context context = {&device, last};\n"
         "    Context * ctx = &context;\n")
snippets = {}
sources = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    source = subprocess.check_output(["git", "-C", str(repo), "show", f"{revision}:{path}"], env=env)
    sources[side] = hashlib.sha256(source).hexdigest()
    body = source.decode()
    anchor = ("uint64_t flops_per_submit = std::min" if side == "old"
              else "uint64_t flops_cap = 200'000'000'000ULL")
    start = body.index(anchor, body.index("static ggml_status ggml_backend_vk_graph_compute"))
    end = body.index("for (int i = 0; i < cgraph->n_nodes; i++)", start)
    snippet = body[start:end].rstrip()
    assert "flops_per_submit" in snippet
    assert ("shader_core_count" in snippet) == (side == "new")
    snippets[side] = snippet
    (here / f"{side}-source.txt").write_text(snippet + "\n")
    wrapper = common + signature + " {\n" + setup + snippet + "\n    return flops_per_submit;\n}\n"
    (here / f"{side}.cpp").write_text(wrapper)
    compiled = run([clang, "-x", "c++", "-std=c++17", "-O1", "-S", "-emit-llvm",
                    here / f"{side}.cpp", "-o", here / f"{side}.ll"])
    assert compiled.returncode == 0, compiled.stderr

check = run([alive, "--func=threshold", "--always-verify", here / "old.ll", here / "new.ll"])
(here / "alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation doesn't verify!" in check.stdout and "Value mismatch" in check.stdout

implication = common + signature.replace("threshold", "relation") + " {\n" + setup
implication += "    const uint64_t old_value = ([&]() {\n" + snippets["old"] + "\n        return flops_per_submit;\n    })();\n"
implication += "    const uint64_t new_value = ([&]() {\n" + snippets["new"] + "\n        return flops_per_submit;\n    })();\n"
implication += "    return new_value <= old_value;\n}\n"
(here / "relation.cpp").write_text(implication)
(here / "true.cpp").write_text(common + signature.replace("threshold", "relation") + " { return 1; }\n")
for name in ("relation", "true"):
    compiled = run([clang, "-x", "c++", "-std=c++17", "-O1",
                    "-S", "-emit-llvm", here / f"{name}.cpp", "-o", here / f"{name}.ll"])
    assert compiled.returncode == 0, compiled.stderr
check = run([alive, "--func=relation", "--always-verify",
             here / "true.ll", here / "relation.ll"])
(here / "relation-alive2.log").write_text(check.stdout + check.stderr)
assert "Transformation seems to be correct!" in check.stdout, check.stdout + check.stderr

driver = ("#include <stdio.h>\n"
          "#define threshold old_threshold\n#include \"old.cpp\"\n#undef threshold\n"
          "#define threshold new_threshold\n#include \"new.cpp\"\n#undef threshold\n"
          "int main() {\n"
          "  auto a = old_threshold(400000000000ULL, 0x1002u, 1u, 1u);\n"
          "  auto b = new_threshold(400000000000ULL, 0x1002u, 1u, 1u);\n"
          "  printf(\"old=%llu new=%llu\\n\", (unsigned long long)a, (unsigned long long)b);\n"
          "  return a != 10000000000ULL || b != 500000000ULL;\n}\n")
(here / "witness.cpp").write_text(driver)
with tempfile.TemporaryDirectory(prefix="vulkan-threshold-") as temp:
    exe = Path(temp) / "witness"
    compiled = run([clang, "-x", "c++", "-std=c++17", "-O1", here / "witness.cpp", "-o", exe])
    assert compiled.returncode == 0, compiled.stderr
    witness = run([exe])
(here / "witness.log").write_text(witness.stdout + witness.stderr)
assert witness.returncode == 0 and witness.stdout == "old=10000000000 new=500000000\n"

result = {"commit": subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit], env=env).decode().strip(),
          "source_sha256": sources,
          "alive2_threshold_equality": "counterexample",
          "alive2_new_threshold_le_old": "proved",
          "witness": {"last_total_flops": 400000000000, "vendor": "AMD",
                      "architecture": "GCN", "shader_core_count": 1,
                      "old": 10000000000, "new": 500000000}}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
