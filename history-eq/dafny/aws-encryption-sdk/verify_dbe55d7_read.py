#!/usr/bin/env python3
"""Lock the historical Read bodies, then check their bounded Dafny relation."""

import hashlib
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[3]
repo = root / "benchmarks/repos/aws-encryption-sdk"
here = Path(__file__).resolve().parent
commit = "dbe55d7f8230b874fa38c69cfd26fbcbf8e938ce"
path = "AwsEncryptionSDK/dafny/AwsEncryptionSdk/src/Serialize/SerializeFunctions.dfy"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, text=True, env=env).stdout.strip()


old_oid = git("rev-parse", f"{commit}^:{path}")
new_oid = git("rev-parse", f"{commit}:{path}")
assert (old_oid, new_oid) == (
    "5608d024e98e2b79ab78d579ad3184d4cdbf1f77",
    "f87ef64e4027628ba5724118d053c658d3f74b24",
)


def read_body(oid):
    source = git("cat-file", "blob", oid)
    body = source.split("  opaque function Read(\n", 1)[1].split("  function WriteUint16(\n", 1)[0]
    assert body.count("var end :=") == 1
    return body


old, new = read_body(old_oid), read_body(new_oid)
for part in ("length: nat", "var end := buffer.start + length;",
             ":- Need(|buffer.bytes| >= end, MoreNeeded(end));",
             "buffer.bytes[buffer.start..end]", "buffer.(start := end)"):
    assert part in old, part
for part in ("length: uint64", "var end := Add(buffer.start, length);",
             "SequenceIsSafeBecauseItIsInMemory(buffer.bytes);",
             ":- Need(|buffer.bytes| as uint64 >= end, MoreNeeded(end));",
             "buffer.bytes[buffer.start..end]", "buffer.(start := end)"):
    assert part in new, part

for relative, digest, snippets in (
    ("StandardLibrary/src/MemoryMath.dfy",
     "1976f5bd4b6d2cb855c8098a2f815f2d42d72c2f0df4ab57697c6c9b0212c8c7",
     ("function {:opaque} Add(x : uint64, y : uint64)", "    x + y\n")),
    ("libraries/src/Wrappers.dfy",
     "a1b1464f5d3bef33b6d5d77387839fb65ac23c1746bc8c60314cc495d2fbae3a",
     ("function Need<E>(condition: bool, error: E)",
      "if condition then Pass else Fail(error)")),
):
    source = (root / "history-eq/wt/aws-esdk-dbe55d7-new/mpl" / relative).read_bytes()
    assert hashlib.sha256(source).hexdigest() == digest, relative
    assert all(part in source.decode() for part in snippets), relative

cmd = [str(root / "benchmarks/tools/dafny-4.10.0/dafny/dafny"), "verify",
       str(here / "dbe55d7-read-relation.dfy"), "--cores", "2",
       "--verification-time-limit", "60", "--progress", "None"]
result = subprocess.run(cmd, capture_output=True, text=True, env=env)
log = f"source blobs: {old_oid} {new_oid}\n$ {' '.join(cmd)}\n{result.stdout}{result.stderr}"
(here / "dbe55d7-read-relation.log").write_text(log)
print(log)
assert result.returncode == 0 and "0 errors" in result.stdout
