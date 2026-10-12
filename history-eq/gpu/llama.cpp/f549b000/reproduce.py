#!/usr/bin/env python3
"""Compare bounded byte effects of the historical Vulkan cross-device write paths."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "f549b0007dbdd683215820f7229ce180a12b191d"
CHANGED = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"


def run(args):
    p = subprocess.run(args, capture_output=True, text=True, timeout=120,
                       env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
    assert p.returncode == 0, p.stdout + p.stderr
    return p.stdout


def git(*args):
    return run(["git", "-C", str(REPO), *args])


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines() == [CHANGED]
diff = git("show", "--format=", "--no-ext-diff", COMMIT, "--", CHANGED)
assert diff.encode() == (HERE.parent / "source-screening/f549b000.source.diff").read_bytes()
old = git("show", f"{COMMIT}^:{CHANGED}")
new = git("show", f"{COMMIT}:{CHANGED}")
assert "ggml_vk_ensure_sync_staging_buffer(dst->device, size);" in old
assert "memcpy(dst->device->sync_staging->ptr, src->device->sync_staging->ptr, size);" in old
assert "ggml_vk_buffer_copy(dst, dst_offset, dst->device->sync_staging, 0, size);" in old
assert "ggml_vk_buffer_write_2d(dst, dst_offset, src->device->sync_staging->ptr, 0, size, 1);" in new
assert "ggml_vk_ensure_sync_staging_buffer(dst->device, size);" not in new
assert "for (size_t i = 0; i < height; i++)" in new
assert "memcpy((uint8_t *)dst->ptr + offset + i * width, (const uint8_t *) src + i * spitch, width);" in new
assert "const size_t copy_size = width*height;" in new
assert "deferred_memcpy((uint8_t *)staging_buffer->ptr + i * width, (const uint8_t *) src + i * spitch, width, &subctx->in_memcpys);" in new
assert "vkCmdCopyBuffer(subctx->s->buffer, (VkBuffer)staging_buffer->buffer, (VkBuffer)dst->buffer, 1, &buf_copy);" in new
assert "ggml_vk_host_get(dst->device, src, buf, buf_offset);" in new
assert "for (size_t i = 0; i < device->pinned_memory.size(); i++)" in new
assert "device->sync_staging = ggml_vk_create_buffer_check(device, size," in new

# Source and destination are on different logical devices. The source pointer
# is not registered as pinned memory on the destination device. Model size=8,
# src_offset=3, dst_offset=5 and both host-visible and device-local destinations.
common = """extern "C" unsigned __int128 target(unsigned __int128 input,
        unsigned __int128 initial_dst, bool host_visible) {
    unsigned char src[16], dst[16], src_staging[8], dst_staging[8];
    __builtin_memcpy(src, &input, 16);
    __builtin_memcpy(dst, &initial_dst, 16);
    __builtin_memcpy(src_staging, src + 3, 8);
"""
models = {
    "old": common + """    __builtin_memcpy(dst_staging, src_staging, 8);
    __builtin_memcpy(dst + 5, dst_staging, 8);
    unsigned __int128 result;
    __builtin_memcpy(&result, dst, 16);
    return result;
}
""",
    "new": common + """    if (host_visible) {
        __builtin_memcpy(dst + 5, src_staging, 8);
    } else {
        __builtin_memcpy(dst_staging, src_staging, 8);
        __builtin_memcpy(dst + 5, dst_staging, 8);
    }
    unsigned __int128 result;
    __builtin_memcpy(&result, dst, 16);
    return result;
}
""",
}
for side, source in models.items():
    cpp = HERE / f"{side}.cpp"
    cpp.write_text(source)
    ll = HERE / f"{side}.ll"
    run([str(CLANG), "-std=c++17", "-O1", "-S", "-emit-llvm", str(cpp), "-o", str(ll)])
    ll.write_text(re.sub(r" nocapture\b", "", ll.read_text()))

checks = {}
for direction, source, target in (("old_to_new", "old", "new"),
                                  ("new_to_old", "new", "old")):
    log = run([str(ALIVE), str(HERE / f"{source}.ll"), str(HERE / f"{target}.ll"),
               "--smt-to=30000", "--always-verify"])
    assert "1 correct transformations" in log and "0 Alive2 errors" in log, log
    (HERE / f"alive-{direction}.log").write_text(log)
    checks[direction] = "correct"

result = {"commit": COMMIT, "changed_paths": [CHANGED],
          "source_blobs": {side: git("rev-parse", f"{rev}:{CHANGED}").strip()
                           for side, rev in (("old", COMMIT + "^"), ("new", COMMIT))},
          "source_diff_sha256": hashlib.sha256(diff.encode()).hexdigest(),
          "model_sha256": {side: hashlib.sha256((HERE / f"{side}.cpp").read_bytes()).hexdigest()
                           for side in models},
          "checks": checks, "verdict": "EQUIV_PARTIAL",
          "scope": "For a cross-device eight-byte copy with source offset 3 and destination offset 5, arbitrary 16-byte source/destination contents, and no destination-device pinned alias, both host-visible and device-local destination paths produce identical final 16-byte destination contents; Vulkan runtime synchronization, other sizes, and whole-commit behavior unverified"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
