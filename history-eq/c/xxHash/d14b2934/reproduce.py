#!/usr/bin/env python3
"""Prove fixed-size historical XXH32 streaming calls in both directions."""

import difflib
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


case = Path(__file__).resolve().parent
root = case.parents[3]
store = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
oids = {"old": "86fe5a1f7aedefa52bd899dc61de5972daa464d4",
        "new": "2cf82a03a552423f3d29b8bdeead9f64aaf84c0d"}
commit = "d14b2934c5391895e0c27c34aceb97202601fe7c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def execute(cmd):
    return subprocess.run(cmd, capture_output=True, check=True, timeout=65, env=env)


sources = {}
changed = execute(["git", "-C", str(store), "diff-tree", "--no-commit-id", "--raw",
                   "-r", commit + "^", commit, "--", "xxhash.h"]).stdout.decode()
assert oids["old"] in changed and oids["new"] in changed and "\txxhash.h" in changed
for side, oid in oids.items():
    data = execute(["git", "-C", str(store), "cat-file", "blob", oid]).stdout
    calculated = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    assert calculated == oid
    sources[side] = data
(case / "source.diff").write_text("\n".join(difflib.unified_diff(
    sources["old"].decode().splitlines(), sources["new"].decode().splitlines(),
    fromfile=f"old:{oids['old']}", tofile=f"new:{oids['new']}", lineterm="")) + "\n")


def compile_ir(header_dir, side):
    raw = case / f"{side}.raw.ll"
    cmd = [str(clang), "-O1", "-fno-strict-aliasing", "-mllvm",
           "-inline-threshold=100000", "-mllvm", "-inline-cold-callsite-threshold=100000",
           "-I", str(header_dir), "-S", "-emit-llvm", str(case / "wrapper.c"),
           "-o", str(raw)]
    execute(cmd)
    text = raw.read_text()
    text = re.sub(r" nocapture\b", "", text)
    text = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", text)
    assert set(re.findall(r"^define [^@]*@([^ (]+)", text, re.M)) == {
        "target_hash16", "target_hash32", "target_hash64"}
    assert not [name for name in re.findall(r"\bcall [^@]*@([\w.]+)\(", text)
                if not name.startswith("llvm.")]
    normalized = case / f"{side}.ll"
    normalized.write_text(text)
    return normalized


def proof(src, tgt, name, fn):
    cmd = [str(alive), str(src), str(tgt), f"--func={fn}", "--fail-src-ub",
           "--src-unroll=6", "--tgt-unroll=6", "--smt-to=30000"]
    result = execute(cmd)
    log = (result.stdout + result.stderr).decode(errors="replace")
    (case / f"{name}.log").write_text(" ".join(cmd) + "\n" + log)
    assert "Source function is always UB" not in log
    return log


with TemporaryDirectory(prefix="xxh-d14b2934-") as temp:
    dirs = {}
    for side, data in sources.items():
        directory = Path(temp) / side
        directory.mkdir()
        (directory / "xxhash.h").write_bytes(data)
        dirs[side] = directory
    old, new = compile_ir(dirs["old"], "old"), compile_ir(dirs["new"], "new")
    for n in (16, 32, 64):
        fn = f"target_hash{n}"
        pattern = re.compile(rf"^define [^\n]*@{fn}\([^{{]+\{{.*?^\}}", re.M | re.S)
        old_body, new_body = pattern.search(old.read_text()), pattern.search(new.read_text())
        assert old_body and new_body and old_body.group() != new_body.group(), fn
        for direction, src, tgt in (("forward", old, new), ("backward", new, old)):
            name = f"hash{n}-{direction}"
            log = proof(src, tgt, name, fn)
            assert "1 correct transformations" in log and "0 Alive2 errors" in log, name

result = {
    "commit": commit,
    "historical_blobs": oids,
    "scope": "XXH32_reset/update/digest with a fixed 16-, 32-, or 64-byte input, arbitrary initialized input bytes and seed; not every length or other API",
    "verdict": "EQUIV_PARTIAL",
    "proof_logs": [f"hash{n}-{direction}.log" for n in (16, 32, 64)
                   for direction in ("forward", "backward")],
}
(case / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"verdict": result["verdict"], "proofs": len(result["proof_logs"])}))
