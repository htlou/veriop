#!/usr/bin/env python3
"""Build exact historical base64 crates and observe public String capacity."""
import hashlib
import io
import json
import os
from pathlib import Path
import subprocess
import tarfile
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/rust-base64"
RUSTC = ROOT / "aeneas/env/rustup/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin/rustc"
BYTEORDER = ROOT / "history-eq/rust/lz4_flex/cargo-home/registry/src/index.crates.io-1949cf8c6b5b557f/byteorder-1.5.0/src/lib.rs"
COMMIT = "f977b8eef220b021cecaf3c026f81211a808c3aa"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def build(*args):
    proc = subprocess.run([str(RUSTC), *map(str, args)], capture_output=True, text=True)
    assert proc.returncode == 0, proc.stderr


def main():
    assert BYTEORDER.is_file()
    assert git("diff", "--name-only", COMMIT + "^", COMMIT).decode().splitlines() == [".gitignore", "src/lib.rs"]
    result = {"commit": COMMIT, "rustc": subprocess.check_output([str(RUSTC), "--version"], text=True).strip(),
              "dependency": "byteorder 1.5.0, semver-compatible with historical Cargo.toml byteorder 1.0.0",
              "byteorder_source_sha256": hashlib.sha256(BYTEORDER.read_bytes()).hexdigest(),
              "source_blobs": {}, "observations": {}}
    with TemporaryDirectory(prefix="base64-f977b8e-") as directory:
        temp = Path(directory)
        dep = temp / "libbyteorder.rlib"
        build("--edition=2021", "--crate-name", "byteorder", "--crate-type=rlib", BYTEORDER, "-o", dep)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            src = temp / side
            src.mkdir()
            with tarfile.open(fileobj=io.BytesIO(git("archive", "--format=tar", revision)), mode="r:") as archive:
                archive.extractall(src, filter="data")
            data = (src / "src/lib.rs").read_bytes()
            oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert oid == git("rev-parse", revision + ":src/lib.rs").decode().strip()
            assert 'byteorder = "1.0.0"' in (src / "Cargo.toml").read_text()
            result["source_blobs"][side] = oid
            lib = temp / f"libbase64_{side}.rlib"
            build("--edition=2015", "-Awarnings", "--crate-name", "base64", "--crate-type=rlib",
                  "-L", f"dependency={temp}", "--extern", f"byteorder={dep}", src / "src/lib.rs", "-o", lib)
            binary = temp / f"observe_{side}"
            build("--edition=2015", "-L", f"dependency={temp}", "--extern", f"base64={lib}",
                  HERE / "reproduce.rs", "-o", binary)
            output = subprocess.check_output([str(binary)], text=True).strip()
            length, capacity, text = output.split("|", 2)
            result["observations"][side] = {"length": int(length), "capacity": int(capacity), "text": text}
    old, new = result["observations"]["old"], result["observations"]["new"]
    assert old["length"] == new["length"] == 0 and old["text"] == new["text"] == ""
    assert old["capacity"] >= 4 and new["capacity"] == 0
    result["verdict"] = "NOT_EQUIV for public encode_mode return String capacity on empty input"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result["observations"]))


if __name__ == "__main__":
    main()
