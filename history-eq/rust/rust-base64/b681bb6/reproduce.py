#!/usr/bin/env python3
"""Build both exact historical crates and witness a public decode difference."""

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
RUSTC = ROOT / "aeneas/env/rustup/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin/rustc"
COMMIT = "b681bb62b3d34b140367cc2c770a61f1546a1d1e"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(REPO), *args], capture_output=True,
                          check=True, env=ENV).stdout


def run(*args):
    return subprocess.run(args, capture_output=True, text=True, check=True, timeout=45).stdout


def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def main():
    result = {"commit": COMMIT,
              "parent": git("rev-parse", COMMIT + "^").decode().strip(),
              "rustc": run(str(RUSTC), "--version").strip(),
              "source_blobs": {}, "outputs": {},
              "aeneas_verdict": "UNSUPPORTED", "verdict": "NOT_EQUIV",
              "scope": "public base64::decode on Y=Q= under Rust 2015 and rustc 1.99; valid YQ== and YQ controls"}
    with TemporaryDirectory(prefix="base64-b681bb6-") as directory:
        work = Path(directory)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            source = work / side
            source.mkdir()
            archive = git("archive", "--format=tar", revision)
            with tarfile.open(fileobj=io.BytesIO(archive), mode="r:") as tar:
                tar.extractall(source, filter="data")
            entries = git("ls-tree", "-r", "--full-tree", revision, "--", "src", "Cargo.toml")
            blobs = {}
            for line in entries.decode().splitlines():
                metadata, path = line.split("\t", 1)
                expected = metadata.split()[2]
                assert blob_id((source / path).read_bytes()) == expected
                blobs[path] = expected
            assert len(blobs) == (2 if side == "old" else 4)
            result["source_blobs"][side] = blobs
            library = work / f"libbase64_{side}.rlib"
            run(str(RUSTC), "--edition=2015", "--crate-name", "base64",
                "--crate-type=rlib", "-Awarnings", str(source / "src/lib.rs"),
                "-o", str(library))
            binary = work / f"decode-{side}"
            run(str(RUSTC), "--edition=2015", str(HERE / "reproduce.rs"),
                "--extern", f"base64={library}", "-o", str(binary))
            result["outputs"][side] = run(str(binary)).splitlines()
    assert result["outputs"]["old"] == [
        '"Y=Q=" -> Ok([97])', '"YQ==" -> Ok([97])', '"YQ" -> Ok([97])']
    assert result["outputs"]["new"] == [
        '"Y=Q=" -> Err(InvalidByte(1, 61))', '"YQ==" -> Ok([97])', '"YQ" -> Ok([97])']
    logs = ROOT / "history-eq/rust/rust-base64/work/b681bb6"
    assert "Could not match the contexts" in (logs / "DmodeOld-aeneas.log").read_text()
    assert "Returns inside of nested loops are not supported yet" in (
        logs / "DmodeNew-aeneas.log").read_text()
    result["aeneas_logs"] = [str((logs / name).relative_to(ROOT)) for name in
                             ("DmodeOld-aeneas.log", "DmodeNew-aeneas.log")]
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "input": "Y=Q=",
                      "old": result["outputs"]["old"][0],
                      "new": result["outputs"]["new"][0]}))


if __name__ == "__main__":
    main()
