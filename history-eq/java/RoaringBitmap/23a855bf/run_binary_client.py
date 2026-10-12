#!/usr/bin/env python3
"""Run one old binary client against exact old/new LongUtils classes."""

import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
commit = "23a855bf2c1d31d6e29143c699a8219a17ca0d75"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
result = {"commit": commit, "source_blobs": {}, "runs": {},
          "scope": "existing public LongUtils binary client calling compareHigh(byte[],byte[]) and isMaxHigh(byte[])",
          "verdict": "NOT_EQUIV"}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-23a-binary-") as tmp:
    tmp = Path(tmp)
    classes = {}
    for side, revision, saved in (("old", commit + "^", "LongUtils.old.txt"),
                                  ("new", commit, "LongUtils.new.txt")):
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
            env=env, text=True).strip()
        source = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid], env=env)
        assert source == (here / saved).read_bytes()
        java = tmp / side / "src" / "org/roaringbitmap/longlong/LongUtils.java"
        java.parent.mkdir(parents=True)
        java.write_bytes(source)
        classes[side] = tmp / side / "classes"
        build = subprocess.run([str(jdk / "javac"), "-d", str(classes[side]),
                                str(java)], capture_output=True, text=True)
        assert build.returncode == 0, (side, build.stderr)
        result["source_blobs"][side] = oid

    client = tmp / "client"
    build = subprocess.run([str(jdk / "javac"), "-cp", str(classes["old"]),
                            "-d", str(client), str(here / "BinaryClient.java")],
                           capture_output=True, text=True)
    assert build.returncode == 0, build.stderr
    for side in ("old", "new"):
        for action, old_output, method in (("compare", "-1\n", "compareHigh"),
                                           ("max", "true\n", "isMaxHigh")):
            run = subprocess.run([str(jdk / "java"), "-XX:-UsePerfData", "-cp",
                                  f"{client}:{classes[side]}", "BinaryClient", action],
                                 capture_output=True, text=True)
            if side == "old":
                assert run.returncode == 0 and run.stdout == old_output, run.stderr
            else:
                assert run.returncode != 0 and "NoSuchMethodError" in run.stderr \
                    and f"LongUtils.{method}" in run.stderr, run.stderr
            result["runs"][f"{side}-{action}"] = {
                "exit_code": run.returncode, "stdout": run.stdout,
                "stderr": run.stderr}

(here / "binary-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({key: {"exit_code": value["exit_code"], "stdout": value["stdout"]}
                  for key, value in result["runs"].items()}, sort_keys=True))
