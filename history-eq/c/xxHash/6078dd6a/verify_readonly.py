#!/usr/bin/env python3
"""Check the read-only value relation for the historical restrict change."""

import hashlib
import json
import os
import re
import subprocess
from tempfile import TemporaryDirectory

from reproduce import ALIVE, CLANG, COMMIT, HERE, REPO, WRAPPER


env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env)


def normalize(ir):
    ir = ir.replace(" nocapture", "").replace(" noalias", "")
    ir = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", ir)
    return "\n".join(line for line in ir.splitlines()
                     if "call void @llvm.experimental.noalias.scope.decl(" not in line) + "\n"


source_blobs = {}
sources = {}
with TemporaryDirectory(prefix="xxh-restrict-readonly-") as directory:
    from pathlib import Path
    temp = Path(directory)
    wrapper = temp / "wrapper.c"
    wrapper.write_text(WRAPPER)
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        include = temp / side
        include.mkdir()
        raw = git("show", revision + ":xxhash.h")
        (include / "xxhash.h").write_bytes(raw)
        digest = hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()
        assert digest == git("rev-parse", revision + ":xxhash.h").decode().strip()
        source_blobs[side] = digest
        sources[side] = raw.decode()
        module = HERE / (side + "-readonly.ll")
        subprocess.run([str(CLANG), "-std=c99", "-O1", "-I", str(include), "-S", "-emit-llvm",
                        str(wrapper), "-o", str(module)], check=True, env=env)
        (HERE / (side + "-readonly-normalized.ll")).write_text(normalize(module.read_text()))

old_signature = ("XXH3_hashLong_64b_withSeed(const void* input, size_t len,\n"
                 "                           XXH64_hash_t seed, const xxh_u8* secret, size_t secretLen)")
new_signature = ("XXH3_hashLong_64b_withSeed(const void* XXH_RESTRICT input, size_t len,\n"
                 "                           XXH64_hash_t seed, const xxh_u8* XXH_RESTRICT secret, size_t secretLen)")
assert sources["old"].count(old_signature) == sources["new"].count(new_signature) == 1
assert sources["old"].replace("# if defined(__s390x__) ", "# if defined(__s390x__)").replace(
    old_signature, new_signature) == sources["new"]
assert "(void)secret; (void)secretLen;" in sources["new"]
new_raw_ir = (HERE / "new-readonly.ll").read_text()
old_raw_ir = (HERE / "old-readonly.ll").read_text()
assert "@XXH3_hashLong_64b_withSeed(ptr noalias nocapture noundef readonly" in new_raw_ir
assert "@XXH3_hashLong_64b_withSeed(ptr nocapture noundef readonly" in old_raw_ir

checks = []
for function in ("XXH3_hashLong_64b_withSeed", "target"):
    result = subprocess.run([str(ALIVE), "--quiet", "--bidirectional", "--func=" + function,
                             str(HERE / "old-readonly-normalized.ll"),
                             str(HERE / "new-readonly-normalized.ll")],
                            capture_output=True, text=True, timeout=90, env=env)
    log = result.stdout + result.stderr
    (HERE / ("alive2-" + function + ".log")).write_text(log)
    assert result.returncode == 0 and "1 correct transformations" in log
    assert "0 incorrect transformations" in log and "0 Alive2 errors" in log
    checks.append({"function": function, "log": "history-eq/c/xxHash/6078dd6a/alive2-" + function + ".log"})

record = {
    "commit": COMMIT, "verdict": "EQUIV_PARTIAL",
    "scope": "XXH3_hashLong_64b_withSeed value result and fixed-256-byte wrapper, Clang 20 -O1 x86-64; no timing claim",
    "reason": "The only executable source change adds restrict to read-only input and unused secret parameters. After dropping unsupported alias attributes/metadata on both sides, bidirectional Alive2 finds the function and wrapper IR syntactically equal. The noalias contract is discharged separately by the source's absence of writes to input/secret-accessible storage.",
    "source_blobs": source_blobs, "checks": checks,
    "exact_attribute_attempt": "history-eq/c/xxHash/6078dd6a/result.json",
}
(HERE / "readonly-result.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({"verdict": record["verdict"], "checks": len(checks)}))
