#!/usr/bin/env python3
"""Build both historical base64 crates and compare public decode errors."""

import hashlib
import io
import json
import os
import subprocess
import tarfile
import tempfile
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "aeneas/repos/rust-base64"
RUSTC = ROOT / "aeneas/env/rustup/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin/rustc"
COMMIT = "a8a60f43"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


outputs = {}
source_oids = {}
with tempfile.TemporaryDirectory(prefix="veriop-base64-a8-") as temp:
    temp = Path(temp)
    for side, rev in (("old", f"{COMMIT}^"), ("new", COMMIT)):
        src = temp / side
        src.mkdir()
        archive = git("archive", "--format=tar", rev)
        with tarfile.open(fileobj=io.BytesIO(archive), mode="r:") as tar:
            tar.extractall(src, filter="data")
        error_src = (src / "src/decode.rs").read_bytes()
        expected_oid = git("rev-parse", f"{rev}:src/decode.rs").decode().strip()
        assert oid(error_src) == expected_oid
        source_oids[side] = expected_oid
        lib = temp / f"libbase64_{side}.rlib"
        build = subprocess.run([str(RUSTC), "--edition=2018", "--crate-name", "base64",
                                "--crate-type=rlib", "--cfg", 'feature="std"', "--cfg",
                                'feature="alloc"', "-A", "mismatched_lifetime_syntaxes",
                                str(src / "src/lib.rs"), "-o", str(lib)],
                               capture_output=True, text=True)
        assert build.returncode == 0, (side, build.stderr)
        binary = temp / f"decode-{side}"
        build = subprocess.run([str(RUSTC), "--edition=2018", "-A", "deprecated",
                                str(HERE / "reproduce.rs"), "--extern", f"base64={lib}",
                                "-o", str(binary)], capture_output=True, text=True)
        assert build.returncode == 0, (side, build.stderr)
        run = subprocess.run([str(binary)], capture_output=True, text=True, check=True)
        (HERE / f"{side}.log").write_text(run.stdout)
        outputs[side] = run.stdout.splitlines()

assert '"A" -> Err(InvalidLength)' in outputs["old"]
assert '"A" -> Err(InvalidLength(1))' in outputs["new"]
assert '"AAAAA" -> Err(InvalidLength)' in outputs["old"]
assert '"AAAAA" -> Err(InvalidLength(5))' in outputs["new"]
assert '"A\\n" -> Err(InvalidByte(1, 10))' in outputs["old"]
assert '"A\\n" -> Err(InvalidByte(1, 10))' in outputs["new"]
old_error = git("show", f"{COMMIT}^:src/decode.rs").decode()
new_error = git("show", f"{COMMIT}:src/decode.rs").decode()
assert "    InvalidLength,\n" in old_error
assert "    InvalidLength(usize),\n" in new_error
assert "return Err(DecodeError::InvalidLength);" in git(
    "show", f"{COMMIT}^:src/engine/general_purpose/decode.rs").decode()
assert "return Err(DecodeError::InvalidLength(\n" in git(
    "show", f"{COMMIT}:src/engine/general_purpose/decode_suffix.rs").decode()

result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "parent": git("rev-parse", f"{COMMIT}^").decode().strip(),
          "rustc": subprocess.check_output([str(RUSTC), "--version"], text=True).strip(),
          "exact_decode_source_oids": source_oids,
          "input": "A", "old": "Err(InvalidLength)",
          "new": "Err(InvalidLength(1))",
          "control": "input bytes [65, 10] yield Err(InvalidByte(1, 10)) in both",
          "verdict": "NOT_EQUIV for public decode error value"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
