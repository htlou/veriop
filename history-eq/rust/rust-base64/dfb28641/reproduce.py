#!/usr/bin/env python3
"""Run one concrete API counterexample on the exact parent and child sources."""
import json
import os
import subprocess
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
HISTORY = HERE.parents[2]
REPO = HISTORY / "repos/rust-base64"
COMMIT = "dfb2864187be5b562f92e7cb1594f29253454600"
PROBE = '''extern crate base64;
fn main() {
    for input in ["aGVsbG8gd29ybGQh", "AAAAAA?AAAAAAA=="].iter() {
        println!("{:?}", base64::decode(input));
    }
}
'''


def run(*args, **kwargs):
    return subprocess.run(args, check=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, **kwargs).stdout.strip()


def main():
    env = os.environ.copy()
    env_root = HISTORY.parent / "aeneas/env"
    env["CARGO_HOME"] = str(env_root / "cargo")
    env["RUSTUP_HOME"] = str(env_root / "rustup")
    env["PATH"] = str(env_root / "cargo/bin") + os.pathsep + env.get("PATH", "")
    revisions = {"old": COMMIT + "^", "new": COMMIT}
    record = {"commit": COMMIT, "method": "native execution of exact historical Rust crate sources",
              "rustc": run("rustc", "--version", env=env), "inputs": ["aGVsbG8gd29ybGQh", "AAAAAA?AAAAAAA=="],
              "results": {}, "aeneas_status": "unsupported: early returns inside loops"}
    with tempfile.TemporaryDirectory(prefix="veriop-dfb28641-") as temp:
        temp = Path(temp)
        probe = temp / "probe.rs"
        probe.write_text(PROBE)
        for label, revision in revisions.items():
            source = temp / label
            source.mkdir()
            archive = subprocess.run(["git", "-C", str(REPO), "archive", revision], check=True, stdout=subprocess.PIPE).stdout
            subprocess.run(["tar", "-xf", "-", "-C", str(source)], input=archive, check=True)
            run("cargo", "build", "--offline", "--manifest-path", str(source / "Cargo.toml"), env=env)
            executable = temp / ("probe-" + label)
            run("rustc", "--edition=2015", str(probe), "--extern", "base64=" + str(source / "target/debug/libbase64.rlib"),
                "-L", "dependency=" + str(source / "target/debug/deps"), "-o", str(executable), env=env)
            record["results"][label] = run(str(executable)).splitlines()
            record["results"][label + "_src_blob"] = run("git", "-C", str(REPO), "rev-parse", revision + ":src/lib.rs")
    old, new = record["results"]["old"], record["results"]["new"]
    assert len(old) == len(new) == 2
    assert old[0] == "Ok([104, 101, 108, 108, 111, 32, 119, 111, 114, 108, 100, 33])"
    assert new[0] == "Ok([104, 101, 108, 108, 97, 160, 119, 111, 114, 108, 100, 33])"
    assert old[1] == "Err(InvalidByte(6, 63))"
    assert new[1] == "Ok([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])"
    record["verdict"] = "NOT_EQUIV"
    (HERE / "result.json").write_text(json.dumps(record, indent=2) + "\n")
    print("NOT_EQUIV: both public API witnesses reproduced on exact historical sources")


if __name__ == "__main__":
    main()
