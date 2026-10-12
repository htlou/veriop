#!/usr/bin/env python3
"""Build exact historical sources and check the public encode_config_buf witness."""
import json
import os
import subprocess
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
HISTORY = HERE.parents[2]
REPO = HISTORY / "repos/rust-base64"
COMMIT = "de3a1f04f460ce083b58bad0fd48ceecf7f316b1"


def run(*args, **kwargs):
    return subprocess.run(args, check=True, text=True, stdout=subprocess.PIPE,
                          stderr=subprocess.PIPE, **kwargs).stdout.strip()


def main():
    env = os.environ.copy()
    cargo_root = HISTORY.parent / "aeneas/env"
    env["CARGO_HOME"] = str(cargo_root / "cargo")
    env["RUSTUP_HOME"] = str(cargo_root / "rustup")
    env["PATH"] = str(cargo_root / "cargo/bin") + os.pathsep + env.get("PATH", "")
    record = {"commit": COMMIT, "method": "native public API execution of exact historical Rust crate sources",
              "rustc": run("rustc", "--version", env=env), "probe": "probe.rs", "results": {},
              "aeneas_status": "both sides unsupported: nested borrows in encode_config_buf"}
    with tempfile.TemporaryDirectory(prefix="veriop-de3a1f04-") as temp:
        temp = Path(temp)
        for label, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            source = temp / label
            source.mkdir()
            archive = subprocess.run(["git", "-C", str(REPO), "archive", revision],
                                     check=True, stdout=subprocess.PIPE).stdout
            subprocess.run(["tar", "-xf", "-", "-C", str(source)], input=archive, check=True)
            run("cargo", "build", "--offline", "--manifest-path", str(source / "Cargo.toml"), env=env)
            binary = temp / ("probe-" + label)
            run("rustc", "--edition=2015", str(HERE / "probe.rs"), "--extern",
                "base64=" + str(source / "target/debug/libbase64.rlib"), "-L",
                "dependency=" + str(source / "target/debug/deps"), "-o", str(binary), env=env)
            record["results"][label] = run(str(binary))
            record["results"][label + "_src_blob"] = run("git", "-C", str(REPO),
                                                           "rev-parse", revision + ":src/lib.rs")
    assert record["results"]["old"] == '"prefix"'
    assert record["results"]["new"] == '"prefix="'
    record["verdict"] = "NOT_EQUIV"
    (HERE / "result.json").write_text(json.dumps(record, indent=2) + "\n")
    print("NOT_EQUIV: exact historical public API outputs differ")


if __name__ == "__main__":
    main()
