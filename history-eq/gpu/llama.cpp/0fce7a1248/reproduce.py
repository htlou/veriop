#!/usr/bin/env python3
"""Audit the exact historical Vulkan pipeline-name representation change."""

import hashlib
import json
import re
import subprocess
import tempfile
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "0fce7a1248"
PATH = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"


def source(rev):
    return subprocess.check_output(
        ["git", "-C", str(REPO), "show", f"{rev}:{PATH}"], text=True
    )


old = source(f"{COMMIT}^")
new = source(COMMIT)
assert "const std::string &name, size_t spv_size" in old
assert "const std::string &entrypoint," in old
assert "const char *name, size_t spv_size" in new
assert "const char *entrypoint," in new

start = new.index("    auto const &ggml_vk_create_pipeline2 = ")
end = new.index("    };\n\n", start) + len("    };\n\n")
wrapper = new[start:end]
assert wrapper.count("name.c_str()") == 1
assert wrapper.count("return ggml_vk_create_pipeline(") == 1
assert new.count("ggml_vk_create_pipeline2(") == 6
normalized = new[:start] + new[end:]
normalized = normalized.replace("const char *name, size_t spv_size",
                                "const std::string &name, size_t spv_size", 1)
normalized = normalized.replace("const char *entrypoint,\n",
                                "const std::string &entrypoint,\n", 1)
normalized = normalized.replace("ggml_vk_create_pipeline2(", "ggml_vk_create_pipeline(")
assert normalized == old, "unaccounted historical source change"

# These are the only six routed call sites; each builds a name from ASCII
# literals, a decimal integer, or the source's _f16/_f32 suffix builder.
for expression in (
    '"mul_mat_vec_p021_f16_f32"+std::to_string(i+1)',
    '#name + get_suffix(s0, s1, d) + #namemod',
    '"multi_add_f32_"     + std::to_string(i+1)',
    '"multi_add_rms_f32_" + std::to_string(i+1)',
    '"argsort_f32_"+std::to_string(i)',
):
    assert expression in new, expression
assert new.count('"mul_mat_vec_p021_f16_f32"+std::to_string(i+1)') == 2
suffix = new.split("    auto get_suffix = ", 1)[1].split("    };", 1)[0]
assert suffix.count('"_f16" : "_f32"') == 3
assert 'pipeline->name = name;' in new
assert 'get_subgroup_size(name, device->architecture)' in new
assert 'const std::string entrypoint,' in new

lines = new.splitlines()
direct_calls = 0
for i, line in enumerate(lines):
    if "ggml_vk_create_pipeline(" not in line or "auto const &" in line or \
            "VK_LOG_DEBUG" in line or "return ggml_vk_create_pipeline(" in line:
        continue
    call = "\n".join(lines[i:i + 3])
    assert '"main"' in call, (i + 1, call)
    assert re.search(r'ggml_vk_create_pipeline\(\s*device,\s*[^,]+,\s*(?:"|#)', call), (i + 1, call)
    direct_calls += 1
assert direct_calls == 296

with tempfile.TemporaryDirectory() as temp:
    binary = Path(temp) / "string-conversion"
    compiler = subprocess.run(["g++", "-std=c++17", "-O2", "-Wall", "-Wextra",
                               str(HERE / "string-conversion.cpp"), "-o", str(binary)],
                              text=True, capture_output=True)
    assert compiler.returncode == 0, compiler.stderr
    run = subprocess.run([str(binary)], text=True, capture_output=True)
    assert run.returncode == 0, (run.stdout, run.stderr)
(HERE / "string-conversion.log").write_text(run.stdout)

result = {
    "commit": subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True).strip(),
    "scope": "pipeline-name and entrypoint values for actual load_shaders call sites",
    "normalized_full_source_identical": True,
    "old_source_sha256": hashlib.sha256(old.encode()).hexdigest(),
    "normalized_new_source_sha256": hashlib.sha256(normalized.encode()).hexdigest(),
    "dynamic_wrapper_call_sites": 6,
    "literal_or_stringized_direct_call_sites": direct_calls,
    "native_string_conversion": run.stdout.strip(),
    "verdict": "EQUIV_PARTIAL",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
