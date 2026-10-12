#!/usr/bin/env python3
"""Reproduce the historical direct-helper difference outside its caller domain."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/rust-base64"
rustc = root / "aeneas/env/rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc"
commits = {
    "old": ("37670c5ec224eec3af9778fb371c5529dfab52af", "e1e005d25b50bcc37df84588f518e7c16180b9df"),
    "new": ("9979cc33bb964b4ee36898773a01f546d2c6487a", "6f4a10efa853ea1876a4de0ad1d53b987ec91dae"),
}
source_path = "src/engine/general_purpose/decode_suffix.rs"
caller_path = "src/engine/general_purpose/decode.rs"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


template = (here / "invalid_count_witness.rs").read_text()
assert template.count("SUFFIX_SOURCE") == 1
caller_ids = []
outputs = {}
public_outputs = {}
with tempfile.TemporaryDirectory(prefix="base64-invalid-count-") as temporary:
    temporary = Path(temporary)
    for side, (commit, expected_oid) in commits.items():
        assert git("rev-parse", f"{commit}:{source_path}").decode().strip() == expected_oid
        source = git("show", f"{commit}:{source_path}")
        oid = hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()
        assert oid == expected_oid
        source_file = temporary / f"{side}-suffix.rs"
        source_file.write_bytes(source)
        harness = temporary / f"{side}-witness.rs"
        harness.write_text(template.replace("SUFFIX_SOURCE", str(source_file)))
        executable = temporary / f"{side}-witness"
        build = subprocess.run([str(rustc), "--edition=2021", "-C", "opt-level=3",
                                "-C", "debug-assertions=no", "-A", "dead_code",
                                str(harness), "-o", str(executable)],
                               text=True, capture_output=True)
        assert build.returncode == 0, build.stderr
        run = subprocess.run([str(executable)], text=True, capture_output=True)
        assert run.returncode == 0, run.stderr
        outputs[side] = run.stdout.strip().splitlines()
        (here / f"invalid-count-{side}.log").write_text(run.stdout)
        caller_ids.append(git("rev-parse", f"{commit}:{caller_path}").decode().strip())

        worktree = root / f"history-eq/wt/base64-9979cc3-{side}"
        assert subprocess.check_output(["git", "-C", str(worktree), "rev-parse", "HEAD"],
                                       env=env).decode().strip() == commit
        assert not subprocess.check_output(["git", "-C", str(worktree), "status", "--porcelain"], env=env)
        library = temporary / f"libbase64_{side}.rlib"
        build = subprocess.run([str(rustc), "--edition=2018", "--crate-name", "base64",
                                "--crate-type", "rlib", "--cfg", 'feature="std"',
                                "--cfg", 'feature="alloc"', "--cap-lints", "allow",
                                "-C", "opt-level=3", "-C", "debug-assertions=no",
                                "-o", str(library), str(worktree / "src/lib.rs")],
                               text=True, capture_output=True)
        assert build.returncode == 0, build.stderr
        client = temporary / f"public-{side}"
        build = subprocess.run([str(rustc), "--edition=2018", "-C", "opt-level=3",
                                "--extern", f"base64={library}",
                                str(here / "public_invalid_client.rs"), "-o", str(client)],
                               text=True, capture_output=True)
        assert build.returncode == 0, build.stderr
        run = subprocess.run([str(client)], text=True, capture_output=True)
        assert run.returncode == 0, run.stderr
        public_outputs[side] = run.stdout.strip().splitlines()
        (here / f"public-invalid-{side}.log").write_text(run.stdout)

assert outputs == {"old": ["1 PANIC", "5 PANIC"],
                   "new": ["1 OK 0", "5 OK 3"]}, outputs
assert public_outputs == {side: ["1 Err(InvalidLength)", "5 Err(InvalidLength)"]
                          for side in commits}, public_outputs
assert len(set(caller_ids)) == 1
caller = git("show", f"{commits['new'][0]}:{caller_path}").decode()
assert "const INPUT_CHUNK_LEN: usize = 8;" in caller
assert "let remainder_len = input.len() % INPUT_CHUNK_LEN;" in caller
branch = caller.index("1 | 5 =>")
reject = caller.index("return Err(DecodeError::InvalidLength);", branch)
call = caller.index("super::decode_suffix::decode_suffix(", reject)
assert branch < reject < call
result = {
    "commit": commits["new"][0],
    "source_blob_ids": {side: oid for side, (_, oid) in commits.items()},
    "unchanged_caller_blob": caller_ids[0],
    "rustc": subprocess.check_output([str(rustc), "--version"], text=True).strip(),
    "build": "opt-level=3, debug-assertions=no",
    "direct_helper_outputs": outputs,
    "public_decode_outputs": public_outputs,
    "scope": "exact historical decode_suffix bodies in a minimal type harness; input lengths 1 and 5",
    "public_path": "exact historical GeneralPurpose builds return InvalidLength on the two witness inputs; unchanged decode_helper rejects lengths modulo 8 equal to 1 or 5 before calling decode_suffix",
    "verdict": "direct-helper inequality outside this caller's valid domain; no public decode counterexample",
}
(here / "invalid-count-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
