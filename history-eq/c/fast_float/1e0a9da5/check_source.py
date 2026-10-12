#!/usr/bin/env python3
"""Audit the local AArch64 read8 model against the exact historical headers."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
commit = "1e0a9da5382f552b2134975d951056c4ade0ddc6"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


headers = {}
for rev, side in ((commit + "^", "old"), (commit, "new")):
    for path, stem in (("include/fast_float/float_common.h", "float_common"),
                       ("include/fast_float/ascii_number.h", "ascii_number")):
        content = git("show", f"{rev}:{path}")
        dest = here / f"{stem}.{side}.txt"
        if dest.exists():
            assert dest.read_bytes() == content
        else:
            dest.write_bytes(content)
        headers[(side, stem)] = content.decode()

diff = git("diff", commit + "^", commit)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == diff
else:
    saved_diff.write_bytes(diff)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == ["include/fast_float/float_common.h"]

old = headers[("old", "float_common")]
new = headers[("new", "float_common")]
ascii_old = headers[("old", "ascii_number")]
ascii_new = headers[("new", "ascii_number")]
assert ascii_old == ascii_new
assert "#if defined(__aarch64__) || defined(_M_ARM64)\n#define FASTFLOAT_NEON 1" in old
assert "#if defined(FASTFLOAT_SSE2) || defined(FASTFLOAT_ARM64)\n#define FASTFLOAT_HAS_SIMD 1" in old
assert "#if defined(FASTFLOAT_SSE2) || defined(FASTFLOAT_NEON)\n#define FASTFLOAT_HAS_SIMD 1" in new
assert "return std::is_same<UC, char16_t>::value;" in ascii_old
for expr in (
    "val |= uint64_t(uint8_t(*chars)) << (i*8);",
    "uint8x8_t utf8_packed = vmovn_u16(data);",
    "return vget_lane_u64(vreinterpret_u64_u8(utf8_packed), 0);",
    "return simd_read8_to_u64(vld1q_u16(reinterpret_cast<const uint16_t*>(chars)));",
):
    assert expr in ascii_old, expr
model = (here / "neon_read8.c").read_text()
for expr in ("val |= (uint64_t)(uint8_t)(*chars) << (i * 8);", "vmovn_u16(data)", "vget_lane_u64(vreinterpret_u64_u8(packed), 0)"):
    assert expr in model, expr
print("Exact historical headers and commit diff match Git; model follows the selected scalar/NEON read8 operations")
