#!/usr/bin/env python3
"""Check the complete historical Vulkan MMVQ routing helper."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "892e3c333a634f818acc195dc699468c08ff5e80"
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
header = "ggml/include/ggml.h"
names = ("Q3_K", "Q6_K", "Q2_K", "IQ1_S", "IQ1_M", "MXFP4", "Q8_0", "Q4_K", "Q5_K", "Q4_0", "Q5_1")


def run(args, *, check=True):
    return subprocess.run(args, capture_output=True, check=check,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


def git(*args):
    return run(["git", "-C", str(repo), *args]).stdout.decode()


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path]
blobs = {}
sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {name: git("rev-parse", f"{rev}:{name}").strip() for name in (path, header)}
    sources[side] = git("show", f"{rev}:{path}")
assert blobs["old"][header] == blobs["new"][header]
ggml_header = git("show", f"{commit}:{header}")
values = {}
for name in names:
    match = re.search(r"\bGGML_TYPE_" + name + r"\s*=\s*(\d+),", ggml_header)
    assert match, name
    values[name] = int(match.group(1))
assert len(set(values.values())) == len(names) and values["Q8_0"] == 8


def extract(source):
    start = source.index("static bool ggml_vk_should_use_mmvq(")
    end = source.index("\nstatic void ggml_vk_mul_mat_vec_q_f16", start)
    return source[start:end]


parts = {side: extract(source) for side, source in sources.items()}
assert sources["old"].replace(parts["old"], parts["new"], 1) == sources["new"]
assert parts["old"].count("case VK_VENDOR_ID_INTEL:") == parts["new"].count("case VK_VENDOR_ID_INTEL:") == 1

stub = """typedef unsigned int uint32_t;
enum ggml_type { ENUMS };
enum class vk_device_architecture { OTHER, NVIDIA_PRE_TURING, AMD_GCN };
namespace vk { enum class DriverId { eOther, eIntelProprietaryWindows }; }
struct Device { int mmvq_mode; int vendor_id; vk::DriverId driver_id; vk_device_architecture architecture; };
using vk_device = const Device*;
#define VK_VENDOR_ID_NVIDIA 1
#define VK_VENDOR_ID_AMD 2
#define VK_VENDOR_ID_INTEL 3
#define GGML_UNUSED(x) ((void)(x))
""".replace("ENUMS", ", ".join(f"GGML_TYPE_{name}={value}" for name, value in values.items()))

for side in ("old", "new"):
    function = parts[side]
    body = function[function.index("{"):]
    signature = "extern \"C\" bool target(const vk_device& device, uint32_t m, uint32_t n, uint32_t k, ggml_type src0_type) "
    (here / f"{side}.cpp").write_text(stub + signature + body + "\n")
    run([str(clang), "-x", "c++", "-std=c++17", "-O0", "-S", "-emit-llvm", "-fno-ident",
         str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll")])

checks = {}
for label, src, dst in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
    log = run([str(alive), str(here / f"{src}.ll"), str(here / f"{dst}.ll"),
               "--func=target", "--smt-to=10000"]).stdout.decode()
    assert "1 incorrect transformations" in log and "0 failed-to-prove transformations" in log
    assert "0 Alive2 errors" in log
    (here / f"alive-{label}.log").write_text(log)
    checks[label] = "incorrect"

# Exit zero means the extracted helper selected MMVQ.
native = {}
for case, init, n, k, kind in (
    ("intel_windows_q8", "eIntelProprietaryWindows", 1, 4096, "Q8_0"),
    ("intel_windows_batch", "eIntelProprietaryWindows", 2, 4096, "Q8_0"),
    ("intel_other_driver", "eOther", 1, 4096, "Q8_0"),
):
    native[case] = {}
    for side in ("old", "new"):
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "check.cpp"
            binary = Path(directory) / "check"
            source.write_text((here / f"{side}.cpp").read_text() +
                              f"\nint main() {{ Device d{{0, VK_VENDOR_ID_INTEL, vk::DriverId::{init}, vk_device_architecture::OTHER}}; "
                              f"return target(&d, 1, {n}, {k}, GGML_TYPE_{kind}) ? 0 : 1; }}\n")
            run([str(clang), "-x", "c++", "-std=c++17", str(source), "-o", str(binary)])
            native[case][side] = run([str(binary)], check=False).returncode == 0
assert native == {
    "intel_windows_q8": {"old": True, "new": False},
    "intel_windows_batch": {"old": True, "new": True},
    "intel_other_driver": {"old": True, "new": True},
}

result = {
    "commit": commit, "changed_paths": [path], "blobs": blobs,
    "ggml_type_values": values,
    "ir_sha256": {side: hashlib.sha256((here / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new")},
    "checks": checks, "native": native, "verdict": "NOT_EQUIV",
    "scope": "complete ggml_vk_should_use_mmvq host routing return value for valid Intel Windows device descriptor, n=1, k=4096, Q8_0 and default mmvq_mode; Vulkan tensor outputs and whole commit unverified",
}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "checks": checks, "native": native}))
