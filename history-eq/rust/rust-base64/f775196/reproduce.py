#!/usr/bin/env python3
"""Run a public String-capacity witness on both exact historical source trees."""

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
REPO = ROOT / "aeneas/repos/rust-base64"
RUST_BIN = ROOT / "aeneas/env/rustup/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin"
CARGO_HOME = ROOT / "aeneas/env/cargo"
COMMIT = "f77519682ebae3f9f561922bbe2026cf53317a9a"
GIT_ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
BUILD_ENV = {**os.environ, "CARGO_HOME": str(CARGO_HOME),
             "RUSTUP_HOME": str(ROOT / "aeneas/env/rustup"),
             "PATH": str(RUST_BIN) + os.pathsep + os.environ.get("PATH", "")}


def git(*args):
    return subprocess.run(["git", "-C", str(REPO), *args], capture_output=True,
                          check=True, env=GIT_ENV).stdout


def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def run(command, env=BUILD_ENV):
    return subprocess.run(command, capture_output=True, text=True, check=True,
                          timeout=90, env=env).stdout


def main():
    result = {
        "commit": COMMIT, "parent": git("rev-parse", COMMIT + "^").decode().strip(),
        "rustc": run([str(RUST_BIN / "rustc"), "--version"]).strip(),
        "scope": "public encode_config(input[112], MIME) String::capacity under Rust 1.99 with cached offline semver-compatible dependencies",
        "verdict": "NOT_EQUIV", "aeneas_verdict": "UNSUPPORTED",
        "source_blobs": {}, "outputs": {}, "dependency_lock_sha256": {},
    }
    with TemporaryDirectory(prefix="base64-f775196-") as directory:
        work = Path(directory)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            source = work / side
            source.mkdir()
            with tarfile.open(fileobj=io.BytesIO(git("archive", "--format=tar", revision)), mode="r:") as tar:
                tar.extractall(source, filter="data")
            entries = git("ls-tree", "-r", "--full-tree", revision, "--", "src", "Cargo.toml")
            blobs = {}
            for line in entries.decode().splitlines():
                metadata, path = line.split("\t", 1)
                expected = metadata.split()[2]
                assert blob_id((source / path).read_bytes()) == expected
                blobs[path] = expected
            result["source_blobs"][side] = blobs
            target = work / (side + "-target")
            env = {**BUILD_ENV, "CARGO_TARGET_DIR": str(target)}
            run([str(RUST_BIN / "cargo"), "build", "--offline", "--lib",
                 "--manifest-path", str(source / "Cargo.toml")], env=env)
            lock = (source / "Cargo.lock").read_bytes()
            result["dependency_lock_sha256"][side] = hashlib.sha256(lock).hexdigest()
            assert b'name = "byteorder"\nversion = "1.5.0"' in lock
            if side == "new":
                assert b'name = "num"\nversion = "0.1.43"' in lock
            binary = work / ("witness-" + side)
            run([str(RUST_BIN / "rustc"), "--edition=2015", str(HERE / "reproduce.rs"),
                 "--extern", f"base64={target / 'debug/libbase64.rlib'}",
                 "-L", f"dependency={target / 'debug/deps'}", "-o", str(binary)], env=env)
            result["outputs"][side] = run([str(binary)], env=env).splitlines()
    old, new = result["outputs"]["old"], result["outputs"]["new"]
    assert old[0] == "len=154 capacity=156 wrap=true", old
    assert new[0] == "len=154 capacity=154 wrap=true", new
    assert len(old) == len(new) == 2 and old[1] == new[1]
    assert "\\r\\n" in old[1]
    logs = ROOT / "history-eq/rust/rust-base64/work/f775196"
    assert "Nested borrows are not supported yet" in (logs / "EcfgOld-aeneas.log").read_text()
    assert "nested mutable borrows are not supported yet" in (logs / "EcfgNew-aeneas.log").read_text()
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "old": old[0], "new": new[0]}))


if __name__ == "__main__":
    main()
