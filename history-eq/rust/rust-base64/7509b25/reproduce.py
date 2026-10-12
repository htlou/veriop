#!/usr/bin/env python3
"""Compare exact historical public encode outputs and String capacities."""

import hashlib
import io
import json
import os
from pathlib import Path
import subprocess
import tarfile
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "aeneas/repos/rust-base64"
rustc = root / "aeneas/env/rustup/toolchains/1.99.0-x86_64-unknown-linux-gnu/bin/rustc"
byteorder = root / "aeneas/env/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/byteorder-1.5.0/src/lib.rs"
commit = "7509b25f"  # The complete ID is resolved and recorded below.
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


def build(*args: object) -> None:
    run = subprocess.run([str(rustc), "--cap-lints", "allow", *map(str, args)],
                         capture_output=True, text=True)
    assert run.returncode == 0, run.stderr


def blob_id(data: bytes) -> str:
    return hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest()


def main() -> None:
    assert rustc.is_file() and byteorder.is_file()
    full = git("rev-parse", commit + "^{commit}").decode().strip()
    assert git("diff", "--name-only", full + "^", full).decode().splitlines() == ["src/encode.rs"]
    report = {"commit": full, "rustc": subprocess.check_output([rustc, "--version"], text=True).strip(),
              "dependency": "byteorder 1.5.0, semver-compatible with historical 1.2.6 requirement",
              "byteorder_sha256": hashlib.sha256(byteorder.read_bytes()).hexdigest(),
              "probe_sha256": hashlib.sha256((here / "probe.rs").read_bytes()).hexdigest(),
              "source_blobs": {}, "runs": {}}
    with TemporaryDirectory(prefix="base64-7509b25-") as directory:
        temp = Path(directory)
        dep = temp / "libbyteorder.rlib"
        build("--edition=2021", "--crate-name", "byteorder", "--crate-type=rlib", byteorder, "-o", dep)
        sources = {}
        for side, revision in (("old", full + "^"), ("new", full)):
            src = temp / side
            src.mkdir()
            with tarfile.open(fileobj=io.BytesIO(git("archive", "--format=tar", revision)), mode="r:") as archive:
                archive.extractall(src, filter="data")
            data = (src / "src/encode.rs").read_bytes()
            oid = git("rev-parse", revision + ":src/encode.rs").decode().strip()
            assert blob_id(data) == oid
            report["source_blobs"][side] = oid
            assert 'byteorder = "1.2.6"' in (src / "Cargo.toml").read_text()
            sources[side] = src
        for mode, flags in (("debug", ()), ("release", ("-O",))):
            outputs = {}
            for side, src in sources.items():
                lib = temp / f"libbase64_{side}_{mode}.rlib"
                build("--edition=2015", *flags, "--crate-name", "base64", "--crate-type=rlib",
                      "-L", f"dependency={temp}", "--extern", f"byteorder={dep}", src / "src/lib.rs", "-o", lib)
                binary = temp / f"probe_{side}_{mode}"
                build("--edition=2015", *flags, "-L", f"dependency={temp}", "--extern",
                      f"base64={lib}", here / "probe.rs", "-o", binary)
                outputs[side] = subprocess.check_output([binary]).splitlines()
            assert len(outputs["old"]) == len(outputs["new"]) == 2 * 513 * 12
            differences = [(i, old.decode(), new.decode()) for i, (old, new) in
                           enumerate(zip(outputs["old"], outputs["new"])) if old != new]
            report["runs"][mode] = {
                "cases": len(outputs["old"]), "differences": len(differences),
                "old_sha256": hashlib.sha256(b"\n".join(outputs["old"])).hexdigest(),
                "new_sha256": hashlib.sha256(b"\n".join(outputs["new"])).hexdigest(),
                "first_difference": differences[0] if differences else None,
            }
    all_equal = all(run["differences"] == 0 and run["old_sha256"] == run["new_sha256"]
                    for run in report["runs"].values())
    report["verdict"] = ("bounded native equality; Aeneas full-function relation unsupported"
                         if all_equal else "native public-return counterexample")
    (here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({mode: run["differences"] for mode, run in report["runs"].items()}))


if __name__ == "__main__":
    main()
