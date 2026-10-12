"""Lock the local offset relation to the exact historical Java blobs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
child = "f9746aedd164b1918731ed86ca3ab39ba4e42415"
parent = "17f784f7eca3c41e6a8ef1f51cac21246f5e88bf"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/ImmutableRoaringArray.java"
old_oid = "965ac5ff2168e486f1aa6a4f479abfec52e15638"
new_oid = "a44d881fea2fc3efc338600e7a0eaad5a49bbca3"
mutable_path = "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringArray.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env)


assert git("rev-parse", child + "^").decode().strip() == parent
raw = git("diff-tree", "--no-commit-id", "--no-renames", "-r", "--raw", parent, child, "--", path)
assert old_oid.encode() in raw and new_oid.encode() in raw
old = git("cat-file", "blob", old_oid)
new = git("cat-file", "blob", new_oid)
assert b"return (buffer.getInt(0) & 0xFFFF) == SERIAL_COOKIE;" in old
assert b"return (buffer.getInt(0) & 0xFFFF) == SERIAL_COOKIE;" in new
assert b"if (hasRunCompression()) { // account for size of runcontainer bitmap" in old
assert b"if (hasRunCompression) { // account for size of runcontainer bitmap" in new
assert b"boolean hasrun = hasRunCompression();" in old
assert b"boolean hasrun = hasRunCompression();" in new
assert b"getOffsetContainer(i, hasrun)" in new
assert b"getOffsetContainer(i)" in old
assert b"4 + 4 * this.size + ((this.size + 7) / 8) + 4 * k" in old
assert b"4 + 4 * this.size + ((this.size + 7) / 8) + 4 * k" in new
assert b"4 + 4 + 4 * this.size + 4 * k" in old and b"4 + 4 + 4 * this.size + 4 * k" in new
mutable_oid = git("rev-parse", f"{child}:{mutable_path}").decode().strip()
assert git("rev-parse", f"{parent}:{mutable_path}").decode().strip() == mutable_oid
mutable = git("cat-file", "blob", mutable_oid)
assert b"NO_OFFSET_THRESHOLD = 4;" in mutable
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
diff = (here.parent / "source-screening/f9746aed.source.diff").read_bytes()
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][child]["diff_sha256"]
report = {"parent": parent, "child": child, "path": path, "old_oid": old_oid, "new_oid": new_oid,
          "unchanged_mutable_array_oid": mutable_oid,
          "old_sha256": hashlib.sha256(old).hexdigest(), "new_sha256": hashlib.sha256(new).hexdigest(),
          "diff_sha256": hashlib.sha256(diff).hexdigest()}
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("historical blobs and offset paths match the local KeY relation")
