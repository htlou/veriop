#!/usr/bin/env python3
"""Check the iterator witness against the historical production source blobs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
manifest = json.loads((here / "source_manifest.json").read_text())
assert manifest["commit"] == "443fd309998cdddf18a95677ef0fe477001349bc"
proof_source = (here / "key/ReverseProof.java").read_text()


def block(source, marker):
    start = source.index(marker)
    depth = 0
    for end in range(source.index("{", start), len(source)):
        if source[end] == "{":
            depth += 1
        elif source[end] == "}":
            depth -= 1
            if depth == 0:
                return source[start : end + 1]
    raise AssertionError(marker)


for label, revision, package in (
    ("old", manifest["parent"], "parent"),
    ("new", manifest["commit"], "child"),
):
    for name in (
        f"BitmapContainer.{label}.java.txt",
        f"CharIterator.{label}.java.txt",
        f"PeekableCharIterator.{label}.java.txt",
        f"PeekableCharRankIterator.{label}.java.txt",
    ):
        raw = (here / name).read_bytes()
        metadata = manifest["files"][name]
        assert hashlib.sha256(raw).hexdigest() == metadata["sha256"]
        expected = subprocess.check_output(
            ["git", "-C", str(repo), "show", f"{revision}:{metadata['git_path']}"],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
        )
        assert raw == expected, name
    source = (here / f"BitmapContainer.{label}.java.txt").read_text()
    shell = (here / package / "BitmapIterators.java").read_text()
    for class_name in (
        "BitmapContainerCharIterator",
        "BitmapContainerCharRankIterator",
        "ReverseBitmapContainerCharIterator",
    ):
        assert block(source, f"class {class_name}") in shell, (label, class_name)
    reverse = block(source, "class ReverseBitmapContainerCharIterator")
    for signature in (
        "public boolean hasNext()",
        "public char next()",
        "public void advanceIfNeeded(char maxval)",
        "public char peekNext()",
    ):
        assert block(reverse, signature) in proof_source, (label, signature)
    public_iterator = block(source, "public PeekableCharIterator getReverseCharIterator()")
    assert "new ReverseBitmapContainerCharIterator(this.bitmap)" in public_iterator
    public_constructor = block(source, "public BitmapContainer(long[] newBitmap, int newCardinality)")
    assert "this.bitmap = newBitmap;" in public_constructor
    public_shell = (here / package / "BitmapContainer.java").read_text()
    assert public_constructor in public_shell
    assert public_iterator in public_shell
    for interface in ("CharIterator", "PeekableCharIterator", "PeekableCharRankIterator"):
        raw = (here / f"{interface}.{label}.java.txt").read_bytes()
        assert raw.replace(
            b"package org.roaringbitmap;", f"package {package};".encode(), 1
        ) == (here / package / f"{interface}.java").read_bytes()
    runner = (here / package / "Runner.java").read_text()
    assert "new long[1024]" in runner
    assert "bitmap[0] = 2L;" in runner
    assert "reverse.advanceIfNeeded((char) 0);" in runner
    assert "new BitmapContainer(bitmap, 1).getReverseCharIterator()" in runner
print("exact historical iterator classes, interfaces and public entry point match witness")
