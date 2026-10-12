#!/usr/bin/env python3
"""Check the exact historical IQ1 shader preprocessing change."""

import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "d6d0ce8215a1c324e8de04b52f9dd65c5edc129f"
BASE = "ggml/src/ggml-vulkan/vulkan-shaders/"


def source(rev, path):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{path}"], text=True
    )


def preprocess(src, quant, expanded):
    # cpp understands the GLSL conditional directives but not #extension.
    src = re.sub(r"^#extension[^\n]*$", "", src, flags=re.MULTILINE)
    cmd = ["cpp", "-P", "-undef", "-nostdinc", "-x", "c", f"-D{quant}=1"]
    if expanded:
        cmd.append("-DNEEDS_IQ1S_GRID_GPU=1")
    result = subprocess.run(cmd + ["-"], input=src, text=True, capture_output=True, check=True)
    return result.stdout


def shader_preprocess(rev, quant):
    with tempfile.TemporaryDirectory() as temp:
        todo = ["mul_mat_vecq.comp"]
        seen = set()
        while todo:
            name = todo.pop()
            if name in seen:
                continue
            seen.add(name)
            src = source(rev, BASE + name)
            todo.extend(re.findall(r'^#include\s+"([^"]+)"', src, flags=re.MULTILINE))
            src = re.sub(r"^#(?:extension|version)[^\n]*$", "", src, flags=re.MULTILINE)
            (Path(temp) / name).write_text(src)
        assert seen == {
            "mul_mat_vecq.comp", "mul_mat_vec_base.glsl", "mul_mat_vec_iface.glsl",
            "mul_mat_vecq_funcs.glsl", "types.glsl",
        }
        result = subprocess.run(
            ["cpp", "-P", "-undef", "-nostdinc", "-x", "c", f"-D{quant}=1",
             str(Path(temp) / "mul_mat_vecq.comp")],
            text=True, capture_output=True, check=True,
        )
        return result.stdout


old_types = source(f"{COMMIT}^", BASE + "types.glsl")
new_types = source(COMMIT, BASE + "types.glsl")
old_vec = source(f"{COMMIT}^", BASE + "mul_mat_vecq.comp")
new_vec = source(COMMIT, BASE + "mul_mat_vecq.comp")
assert new_vec == old_vec.replace("#define MMQ\n", "#define MMQ\n#define NEEDS_IQ1S_GRID_GPU\n", 1)

cases = []
for quant in ("DATA_A_IQ1_S", "DATA_A_IQ1_M"):
    for expanded in (False, True):
        old = preprocess(old_types, quant, expanded)
        new = preprocess(new_types, quant, expanded)
        assert (old == new) == expanded
        if not expanded:
            assert "shared uint32_t iq1s_grid_gpu[2048]" in old
            assert "shared uint32_t iq1s_grid_gpu[2048]" not in new
        cases.append({
            "quant": quant,
            "expanded_grid_macro": expanded,
            "preprocessed_equal": old == new,
            "old_sha256": hashlib.sha256(old.encode()).hexdigest(),
            "new_sha256": hashlib.sha256(new.encode()).hexdigest(),
        })

shader_cases = []
for quant in ("DATA_A_IQ1_S", "DATA_A_IQ1_M"):
    old = shader_preprocess(f"{COMMIT}^", quant)
    new = shader_preprocess(COMMIT, quant)
    assert old == new
    shader_cases.append({
        "quant": quant,
        "preprocessed_shader_equal": True,
        "sha256": hashlib.sha256(old.encode()).hexdigest(),
    })

cpp_path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
old_host = source(f"{COMMIT}^", cpp_path)
new_host = source(COMMIT, cpp_path)
start = "static bool ggml_vk_matmul_shmem_support"
old_fn = old_host[old_host.index(start):old_host.index("case GGML_TYPE_IQ2_XXS:", old_host.index(start))]
new_fn = new_host[new_host.index(start):new_host.index("case GGML_TYPE_IQ2_XXS:", new_host.index(start))]
assert "lut_size = 2*2048 + 4*2048;" in old_fn
assert "lut_size = 2*2048;" in new_fn

result = {
    "commit": COMMIT,
    "checker": "exact historical source plus cpp conditional preprocessing",
    "cases": cases,
    "shader_cases": shader_cases,
    "vector_shader_macro_added": True,
    "host_iq1_lut_bytes_before": 2 * 2048 + 4 * 2048,
    "host_iq1_lut_bytes_after": 2 * 2048,
    "compiled_spirv_and_full_host_execution": "UNKNOWN",
}
out = Path(__file__).with_name("result.json")
out.write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
