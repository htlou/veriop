#!/usr/bin/env python3
"""Extract the exact historical opt-in NEON functions and gate conditions."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
commit = "e8c0378d6d8834c019a657a95b10c6a499a5b647"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


headers = {}
for rev, side in ((commit + "^", "old"), (commit, "new")):
    for path, stem in (("include/fast_float/float_common.h", "float_common"),
                       ("include/fast_float/ascii_number.h", "ascii_number")):
        data = git("show", f"{rev}:{path}")
        saved = here / f"{stem}.{side}.txt"
        if saved.exists():
            assert saved.read_bytes() == data
        else:
            saved.write_bytes(data)
        headers[(side, stem)] = data.decode()
diff = git("diff", commit + "^", commit)
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [
    "include/fast_float/ascii_number.h", "include/fast_float/float_common.h"]

common = headers[("new", "float_common")]
ascii = headers[("new", "ascii_number")]
gate = "#if defined(__aarch64__) || defined(_M_ARM64)\n#define FASTFLOAT_NEON 1\n#endif\n\n#if defined(FASTFLOAT_SSE2) || defined(FASTFLOAT_ARM64)\n#define FASTFLOAT_HAS_SIMD 1\n#endif"
assert gate in common
assert "FASTFLOAT_ARM64" not in common.split(gate)[0]
start = ascii.index("#elif defined(FASTFLOAT_ARM64)\n\n\n")
end = ascii.index("#endif // FASTFLOAT_SSE2", start)
branch = ascii[start + len("#elif defined(FASTFLOAT_ARM64)\n") : end]
assert "uint64_t simd_read8_to_u64(const uint16x8_t data)" in branch
assert "reinterpret_cast<const uint16_t*>(values)" in branch
assert "vget_lane_u64(vreinterpret_u64_u8(utf8_packed), 0);" in branch

probe = """#include <stdint.h>
#include <arm_neon.h>
#define fastfloat_really_inline inline
#define FASTFLOAT_SIMD_DISABLE_WARNINGS
#define FASTFLOAT_SIMD_RESTORE_WARNINGS
namespace fast_float {
""" + branch + "\n}\n"
(here / "neon_optin.cpp").write_text(probe)
(here / "gate_default.c").write_text(gate + "\n#if !defined(FASTFLOAT_NEON) || defined(FASTFLOAT_HAS_SIMD)\n#error unexpected default AArch64 gate\n#endif\n")
print("Historical headers and diff match Git; opt-in functions and default macro gate extracted verbatim")
