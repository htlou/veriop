#!/usr/bin/env python3
"""Archive exact RunContainer sources and build a one-run equality witness."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "8f062d05e93599f0fafb8cfb920411cd0e5b2f87"
path = "roaringbitmap/src/main/java/org/roaringbitmap/RunContainer.java"
shim_path = "shims/src/main/java/org/roaringbitmap/ArraysShim.java"


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def member(source, signature):
    start = source.index(signature)
    depth = 0
    for position in range(source.index("{", start), len(source)):
        if source[position] == "{":
            depth += 1
        elif source[position] == "}":
            depth -= 1
            if depth == 0:
                return source[start : position + 1]
    raise AssertionError(signature)


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "files": {}}
for label, revision, package in (("old", parent, "parent"), ("new", commit, "child")):
    raw = git("show", f"{revision}:{path}")
    name = f"RunContainer.{label}.java.txt"
    (here / name).write_bytes(raw)
    manifest["files"][name] = {"git_path": path, "sha256": hashlib.sha256(raw).hexdigest()}
    source = raw.decode()
    constructor = member(source, "public RunContainer(final int firstOfRun, final int lastOfRun)")
    get_length = member(source, "public short getLength(int index)")
    get_value = member(source, "public short getValue(int index)")
    private_equals = member(source, "private boolean equals(RunContainer ")
    public_equals = member(source, "public boolean equals(Object o)")
    assert "return equals((RunContainer) o);" in public_equals
    shell = f"""package {package};
public final class RunContainer {{
  private short[] valueslength;
  int nbrruns = 0;
  {constructor}
  {get_length}
  {get_value}
  {private_equals}
  public boolean equalsRun(RunContainer other) {{ return equals(other); }}
}}
"""
    directory = here / package
    directory.mkdir(exist_ok=True)
    (directory / "RunContainer.java").write_text(shell)

shim = git("show", f"{commit}:{shim_path}")
(here / "ArraysShim.new.java.txt").write_bytes(shim)
manifest["files"]["ArraysShim.new.java.txt"] = {"git_path": shim_path, "sha256": hashlib.sha256(shim).hexdigest()}
assert shim.startswith(b"package org.roaringbitmap;")
(here / "child/ArraysShim.java").write_bytes(shim.replace(b"package org.roaringbitmap;", b"package child;", 1))
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("archived exact historical RunContainer methods and child ArraysShim")
