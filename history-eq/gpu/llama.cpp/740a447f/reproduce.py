#!/usr/bin/env python3
"""Check the exact historical Vulkan queue-policy expressions with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "740a447fc38e6578a69bb578380c86998d75e286"
path = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(*args):
    result = subprocess.run(args, capture_output=True, text=True, env=env, timeout=60)
    assert result.returncode == 0, result.stderr or result.stdout
    return result.stdout


def git(*args):
    return run("git", "-C", str(repo), *args)


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).splitlines() == [path]
diff = git("show", "--format=", "--no-ext-diff", commit, "--", path)
assert diff.encode() == (here.parent / "source-screening/740a447f.source.diff").read_bytes()
sources = {side: git("show", f"{rev}:{path}") for side, rev in
           (("old", commit + "^"), ("new", commit))}
blobs = {side: git("rev-parse", f"{rev}:{path}").strip() for side, rev in
         (("old", commit + "^"), ("new", commit))}


def expression(side, pattern):
    matches = re.findall(pattern, sources[side])
    assert len(matches) == 1, (side, pattern, len(matches))
    return matches[0]


graphics = {side: expression(side, r"const vk::QueueFlagBits graphics_flag = ([^;]+);")
            for side in ("old", "new")}
async_queue = {side: expression(side, r"device->async_use_transfer_queue = ([^;\n]*GGML_VK_ASYNC_USE_TRANSFER_QUEUE[^;\n]*);")
               for side in ("old", "new")}
prefers = expression("new", r"const bool prefers_transfer_queue = ([^;]+);")
assert expression("new", r'const bool allow_graphics_queue = \(getenv\("([^"]+)"\) != nullptr\);') == "GGML_VK_ALLOW_GRAPHICS_QUEUE"
assert "prefers_transfer_queue" not in sources["old"]
assert graphics["old"] == "device->vendor_id == VK_VENDOR_ID_AMD ? (vk::QueueFlagBits)0 : vk::QueueFlagBits::eGraphics"
assert graphics["new"] == "allow_graphics_queue ? (vk::QueueFlagBits)0 : vk::QueueFlagBits::eGraphics"
assert async_queue["old"] == '(getenv("GGML_VK_ASYNC_USE_TRANSFER_QUEUE") != nullptr)'
assert async_queue["new"] == 'prefers_transfer_queue || (getenv("GGML_VK_ASYNC_USE_TRANSFER_QUEUE") != nullptr)'

stub = """namespace vk { enum class QueueFlagBits { eGraphics = 1 }; }
enum Architecture { AMD_GCN, OTHER };
struct Device { int vendor_id; Architecture architecture; };
#define VK_VENDOR_ID_AMD 2
"""
for side in ("old", "new"):
    body = "extern \"C\" int target(Device *device, bool allow, bool async_env, bool single_queue) {\n"
    if side == "new":
        body += "  const bool allow_graphics_queue = allow;\n"
    body += f"  const vk::QueueFlagBits graphics_flag = {graphics[side]};\n"
    if side == "new":
        body += f"  const bool prefers_transfer_queue = {prefers};\n"
    body += "  bool async_use_transfer_queue = false;\n"
    body += "  if (!single_queue) {\n"
    body += "    async_use_transfer_queue = " + async_queue[side].replace(
        '(getenv("GGML_VK_ASYNC_USE_TRANSFER_QUEUE") != nullptr)', "async_env") + ";\n"
    body += "  }\n  return int(graphics_flag) | (int(async_use_transfer_queue) << 1);\n}\n"
    (here / f"{side}.cpp").write_text(stub + body)
    run(str(clang), "-x", "c++", "-std=c++17", "-O0", "-S", "-emit-llvm",
        str(here / f"{side}.cpp"), "-o", str(here / f"{side}.ll"))

checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    log = run(str(alive), str(here / f"{first}.ll"), str(here / f"{second}.ll"),
              "--func=target", "--smt-to=10000")
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log
    (here / f"alive-{direction}.log").write_text(log)
    checks[direction] = "incorrect"

native = {}
for label, vendor, arch, allow in (("amd_gcn_default", 2, "AMD_GCN", "false"),
                                   ("amd_nongcn_default", 2, "OTHER", "false"),
                                   ("amd_nongcn_optin", 2, "OTHER", "true"),
                                   ("nonamd_default", 1, "OTHER", "false")):
    native[label] = {}
    for side in ("old", "new"):
        with TemporaryDirectory() as temp:
            source = Path(temp) / "check.cpp"
            binary = Path(temp) / "check"
            source.write_text((here / f"{side}.cpp").read_text() +
                              f"int main() {{ Device d{{{vendor}, {arch}}}; "
                              f"return target(&d, {allow}, false, false); }}\n")
            run(str(clang), "-x", "c++", "-std=c++17", str(source), "-o", str(binary))
            native[label][side] = subprocess.run([str(binary)], env=env, timeout=10).returncode
assert native == {"amd_gcn_default": {"old": 0, "new": 1},
                  "amd_nongcn_default": {"old": 0, "new": 3},
                  "amd_nongcn_optin": {"old": 0, "new": 0},
                  "nonamd_default": {"old": 1, "new": 1}}

result = {"commit": commit, "changed_paths": [path], "blobs": blobs,
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in ("old", "new")},
          "checks": checks, "native": native, "verdict": "NOT_EQUIV",
          "scope": "Vulkan device queue-policy projection: graphics-queue exclusion and async transfer-queue selection on AMD, with environment flags absent; GPU tensor results and whole commit unverified"}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "native": native}))
