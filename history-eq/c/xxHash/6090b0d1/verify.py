#!/usr/bin/env python3
"""Source-lock and check the four-backend XXH128 update dispatch projection."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
commit = "6090b0d18b1e0ee7f49c630acde681c911e081f6"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
names = ("scalar", "sse2", "avx2", "avx512")


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == ["xxh_x86dispatch.c"]
old = git("show", f"{commit}^:xxh_x86dispatch.c")
new = git("show", f"{commit}:xxh_x86dispatch.c")
diff = git("diff", commit + "^", commit, "--", "xxh_x86dispatch.c")
for name, data in (("source.old.c", old), ("source.new.c", new), ("source.diff", diff)):
    (here / name).write_bytes(data)
old_text, new_text = old.decode(), new.decode()
for header in ("xxhash.h", "xxh3.h"):
    before = git("show", f"{commit}^:{header}")
    after = git("show", f"{commit}:{header}")
    assert before == after, header
    (here / header).write_bytes(after)
assert "typedef enum { XXH3_acc_64bits, XXH3_acc_128bits } XXH3_accWidth_e;" in (here / "xxh3.h").read_text()
assert "g_coreFunc = k_coreFunc[vecID];" in old_text
assert "g_dispatch128 = k_dispatch128[vecID];" in old_text and new_text
assert "XXH3_acc_128bits, g_coreFunc.accumulate_512, g_coreFunc.scrambleAcc" in old_text
assert "return g_dispatch128.update(state, (const xxh_u8*)input, len);" in new_text

old_model = (here / "old.c").read_text()
new_model = (here / "new.c").read_text()
common_model = (here / "dispatch_model.h").read_text()
assert "#define DISPATCH_ARGS(name) XXH3_accumulate_512_##name, XXH3_scrambleAcc_##name" in common_model
assert "return XXH3_update(state, (const unsigned char *)input, len, 1, DISPATCH_ARGS(name));" in new_model
for index, name in enumerate(names):
    assert re.search(r"/\* " + name + r"\s*\*/ \{ XXH3_accumulate_512_" + name +
                     r",\s*XXH3_scrambleAcc_" + name + r" \}", old_text)
    assert re.search(r"/\* " + name + r"\s*\*/ \{[^\n]*XXH3_128bits_update_" + name + r" \}", new_text)
    assert re.search(r"XXH3_128bits_update_" + name + r"\([^)]*\)\s*\{\s*return XXH3_update"
                     r"\(state, \(const xxh_u8\*\)input, len,\s*XXH3_acc_128bits, "
                     r"XXH3_accumulate_512_" + name + r", XXH3_scrambleAcc_" + name + r"\);\s*\}", new_text)
    branch = f"case {index}" if index < 3 else "default"
    assert f"{branch}: return XXH3_update(state, input, len, 1, DISPATCH_ARGS({name}));" in old_model
    assert f"UPDATE_WRAPPER({name})" in new_model
    assert f"{branch}: return XXH3_128bits_update_{name}(state, input, len);" in new_model

clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"
for side in ("old", "new"):
    subprocess.run([clang, "-O2", "-S", "-emit-llvm", here / f"{side}.c",
                    "-o", here / f"{side}.ll"], check=True)
    subprocess.run([opt, "-passes=verify", "-disable-output", here / f"{side}.ll"], check=True)
for label, first, second in (("forward", "old", "new"), ("reverse", "new", "old")):
    result = subprocess.run([alive, "--func=target_update", "--always-verify",
                             here / f"{first}.ll", here / f"{second}.ll"],
                            text=True, capture_output=True)
    output = result.stdout + result.stderr
    (here / f"{label}.log").write_text(output)
    assert result.returncode == 0 and "1 correct transformations" in output
    assert "0 incorrect transformations" in output and "0 failed-to-prove transformations" in output
    assert "0 Alive2 errors" in output

direct_log = (here / "full-entry-attempt.log").read_text()
assert "Unsupported interprocedural transformation" in direct_log
assert "1 failed-to-prove transformations" in direct_log
(here / "result.json").write_text(json.dumps({
    "commit": commit, "selected_verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNKNOWN",
    "scope": "initialized XXH128 stream-update backend dispatch for scalar, SSE2, AVX2, and AVX512; shared XXH3_update is opaque",
    "checks": {"old_to_new": "correct", "new_to_old": "correct",
               "direct_historical_entry": "unsupported interprocedural global-table change"},
    "sha256": {name: hashlib.sha256((here / name).read_bytes()).hexdigest()
               for name in ("source.old.c", "source.new.c", "source.diff", "xxhash.h", "xxh3.h",
                            "dispatch_model.h", "old.c", "new.c", "old.ll", "new.ll", "forward.log", "reverse.log",
                            "full-entry-attempt.log")},
    "limits": "source-audited projection; CPUID initialization, global table state, real XXH3_update body, and public hash result unproved"
}, indent=2) + "\n")
print("Exact historical dispatch audited; four-backend projection equivalent in both Alive2 directions")
