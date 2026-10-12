#!/usr/bin/env python3
"""Recheck the exact historical pragma-only change and complete C translation unit."""

import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/bin/clang-20"
alive = root / "alive2/build/alive2/alive-tv"
inc = root / "history-eq/c/xxHash/_tools/sysinc"
commit = "60c7cc70fa9f55b1e00c974f89343fb9bff9d201"
pragma = "#pragma clang loop unroll(enable)\n"


def run(args, cwd=None):
    return subprocess.run(args, cwd=cwd, check=True, capture_output=True,
                          env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).stdout


assert run(["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", commit]).splitlines() == [b"xxh3.h"]
blobs = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {}
    for name in ("xxh3.h", "xxhash.h", "xxhash.c"):
        path = here / side / name
        oid = run(["git", "hash-object", str(path)]).decode().strip()
        assert oid == run(["git", "-C", str(repo), "rev-parse", f"{rev}:{name}"]).decode().strip()
        blobs[side][name] = oid
assert all(blobs["old"][name] == blobs["new"][name] for name in ("xxhash.h", "xxhash.c"))

old = (here / "old/xxh3.h").read_text()
new = (here / "new/xxh3.h").read_text()
old_comment = """     * note from @aras-p : this unroll statement is actually detrimental for WASM.
     * need to find a detection macro to exclude this case. */"""
new_comment = """     * The unroll statement seems detrimental for WASM (@aras-p) and ARM though.
     */"""
old_guard = "#if defined(__clang__) && !defined(__OPTIMIZE_SIZE__) && !defined(__ARM_ARCH)\n"
new_guard = old_guard[:-1] + " && !defined(__EMSCRIPTEN__)\n"
assert old.count(old_comment) == old.count(old_guard) == 1
assert old.replace(old_comment, new_comment, 1).replace(old_guard, new_guard, 1).replace(
    "#endif\n    for (n = 0; n < nbStripes; n++ ) {",
    "#endif\n\n    for (n = 0; n < nbStripes; n++ ) {", 1) == new

base = [str(clang), "-std=c99", "-O0", "-Drestrict=", "-D__restrict="]
wasm = ["--target=wasm32-unknown-emscripten", "-nostdlibinc", "-isystem", str(inc)]
pp = {}
for mode, flags in (("x86", []), ("x86_emscripten", ["-D__EMSCRIPTEN__=1"]),
                    ("wasm_emscripten", wasm)):
    pp[mode] = {side: run([*base, "-E", "-P", *flags, "xxhash.c"], here / side).decode()
                for side in ("old", "new")}
    before, after = pp[mode]["old"], pp[mode]["new"]
    assert (before == after) if mode == "x86" else (before.count(pragma) == 1 and
                                                     after.count(pragma) == 0 and
                                                     before.replace(pragma, "", 1) == after)
assert pp["wasm_emscripten"]["old"].replace("XXH_versionNumber", "XXH_broken", 1) != pp["wasm_emscripten"]["new"]


def normalize(ir):
    counts = []
    for pattern, replacement, flags in (
        (r"ptr dead_on_unwind (?:noalias )?writable sret\(%struct\.XXH128_hash_t\) align 8", "ptr", 0),
        (r"^\s*call void @llvm\.experimental\.noalias\.scope\.decl\(metadata !\d+\)\n", "", re.M),
        (r", !noalias !\d+", "", 0),
        (r", !alias\.scope !\d+", "", 0),
    ):
        ir, n = re.subn(pattern, replacement, ir, flags=flags)
        counts.append(n)
    assert counts == [7, 4, 182, 8], counts
    return ir, counts


with tempfile.TemporaryDirectory() as directory:
    tmp = Path(directory)
    hashes = {}
    for side in ("old", "new"):
        raw = run([*base, "-S", "-emit-llvm", "-fno-ident", *wasm, "xxhash.c", "-o", "-"], here / side).decode()
        normalized, counts = normalize(raw)
        assert len(re.findall(r"^define ", raw, re.M)) == 60
        assert raw.count("!llvm.loop !") == (5 if side == "old" else 0)
        (tmp / f"{side}.ll").write_text(normalized)
        hashes[side] = {"raw_ir_sha256": hashlib.sha256(raw.encode()).hexdigest(),
                        "normalized_ir_sha256": hashlib.sha256(normalized.encode()).hexdigest(),
                        "normalization_counts": counts}
    summaries = {}
    for direction, src, dst in (("forward", "old", "new"), ("backward", "new", "old")):
        log = run([str(alive), str(tmp / f"{src}.ll"), str(tmp / f"{dst}.ll"), "--smt-to=10000"])
        assert b"60 correct transformations" in log
        assert b"0 incorrect transformations" in log
        assert b"0 failed-to-prove transformations" in log
        assert b"0 Alive2 errors" in log
        (here / f"alive-{direction}.log.gz").write_bytes(gzip.compress(log, mtime=0))
        summaries[direction] = "60 correct, 0 incorrect, 0 failed, 0 errors"

result = {
    "commit": commit, "changed_paths": ["xxh3.h"], "blobs": blobs,
    "preprocessed_sha256": {mode: {side: hashlib.sha256(body.encode()).hexdigest()
                                   for side, body in sides.items()} for mode, sides in pp.items()},
    "preprocessor_relation": "x86 byte-identical; x86/wasm Emscripten differ only by one loop-unroll pragma",
    "compiler": "Clang 20 -std=c99 -O0 wasm32-unknown-emscripten",
    "alive2": summaries, "ir": hashes, "verdict": "EQUIV",
    "scope": "defined C functional outputs and memory writes of all 60 historical xxhash.c definitions under Clang 20 wasm32 Emscripten -O0; source edit is only a loop-unroll hint, so defined C behavior is unchanged in other build modes; machine code, timing, and compiler diagnostics excluded",
}
(here / "pragma-proof.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"commit": commit, "verdict": result["verdict"], "alive2": summaries}))
