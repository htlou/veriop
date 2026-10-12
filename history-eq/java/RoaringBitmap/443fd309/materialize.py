#!/usr/bin/env python3
"""Archive exact historical bitmap iterator classes and compile-sized shells."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "443fd309998cdddf18a95677ef0fe477001349bc"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/BitmapContainer.java"
interfaces = ("CharIterator", "PeekableCharIterator", "PeekableCharRankIterator")


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def block(source, marker):
    start = source.index(marker)
    opening = source.index("{", start)
    depth = 0
    for end in range(opening, len(source)):
        if source[end] == "{":
            depth += 1
        elif source[end] == "}":
            depth -= 1
            if depth == 0:
                return source[start : end + 1]
    raise AssertionError(marker)


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "files": {}}
proof_classes = []
for label, revision, package in (("old", parent, "parent"), ("new", commit, "child")):
    raw = git("show", f"{revision}:{path}")
    archive = f"BitmapContainer.{label}.java.txt"
    (here / archive).write_bytes(raw)
    manifest["files"][archive] = {"git_path": path, "sha256": hashlib.sha256(raw).hexdigest()}
    source = raw.decode()
    class_names = (
        "BitmapContainerCharIterator",
        "BitmapContainerCharRankIterator",
        "ReverseBitmapContainerCharIterator",
    )
    classes = [block(source, f"class {name}") for name in class_names]
    reverse = classes[-1]
    constructor = block(source, "public BitmapContainer(long[] newBitmap, int newCardinality)")
    reverse_entry = block(source, "public PeekableCharIterator getReverseCharIterator()")
    proof_methods = [
        block(reverse, signature)
        for signature in (
            "public boolean hasNext()",
            "public char next()",
            "public void advanceIfNeeded(char maxval)",
            "public char peekNext()",
        )
    ]
    proof_classes.append(
        f"  static class {'Old' if label == 'old' else 'New'} {{\n"
        "    long word;\n    int position;\n    long[] bitmap;\n"
        + "\n".join(proof_methods)
        + "\n  }\n"
    )
    output = (
        f"package {package};\n"
        "import static java.lang.Long.bitCount;\n"
        "import static java.lang.Long.numberOfTrailingZeros;\n"
        + "\n\n".join(classes)
        + "\n"
    )
    directory = here / package
    directory.mkdir(exist_ok=True)
    (directory / "BitmapIterators.java").write_text(output)
    (directory / "BitmapContainer.java").write_text(
        f"package {package};\n"
        "public final class BitmapContainer {\n"
        "  int cardinality;\n  final long[] bitmap;\n"
        + constructor
        + "\n"
        + reverse_entry
        + "\n}\n"
    )
    (directory / "Runner.java").write_text(
        f"package {package};\n"
        "public final class Runner {\n"
        "  public static String run() {\n"
        "    long[] rankBitmap = new long[1024];\n"
        "    rankBitmap[0] = 1L;\n"
        "    rankBitmap[1] = 1L;\n"
        "    BitmapContainerCharRankIterator iterator =\n"
        "        new BitmapContainerCharRankIterator(rankBitmap);\n"
        "    iterator.advanceIfNeeded((char) 64);\n"
        "    long[] bitmap = new long[1024];\n"
        "    bitmap[0] = 2L;\n"
        "    PeekableCharIterator reverse =\n"
        "        new BitmapContainer(bitmap, 1).getReverseCharIterator();\n"
        "    reverse.advanceIfNeeded((char) 0);\n"
        "    return (int) iterator.peekNext() + \":\" + iterator.peekNextRank()\n"
        "        + \"|\" + reverse.hasNext();\n"
        "  }\n"
        "  public static boolean reverseHasNext() {\n"
        "    long[] bitmap = new long[1024];\n"
        "    bitmap[0] = 2L;\n"
        "    PeekableCharIterator reverse =\n"
        "        new BitmapContainer(bitmap, 1).getReverseCharIterator();\n"
        "    reverse.advanceIfNeeded((char) 0);\n"
        "    return reverse.hasNext();\n"
        "  }\n"
        "}\n"
    )
    for name in interfaces:
        interface_path = f"RoaringBitmap/src/main/java/org/roaringbitmap/{name}.java"
        interface = git("show", f"{revision}:{interface_path}")
        archive = f"{name}.{label}.java.txt"
        (here / archive).write_bytes(interface)
        manifest["files"][archive] = {
            "git_path": interface_path,
            "sha256": hashlib.sha256(interface).hexdigest(),
        }
        (directory / f"{name}.java").write_bytes(
            interface.replace(b"package org.roaringbitmap;", f"package {package};".encode(), 1)
        )
key_dir = here / "key"
key_dir.mkdir(exist_ok=True)
(key_dir / "ReverseProof.java").write_text(
    "public final class ReverseProof {\n"
    + "\n".join(proof_classes)
    + "  /*@ public normal_behavior\n"
      "    @ ensures \\result;\n"
      "    @*/\n"
      "  public static boolean differs() {\n"
      "    Old old = new Old();\n"
      "    old.bitmap = new long[1024]; old.bitmap[0] = 2L;\n"
      "    old.position = 0; old.word = 2L;\n"
      "    New updated = new New();\n"
      "    updated.bitmap = new long[1024]; updated.bitmap[0] = 2L;\n"
      "    updated.position = 0; updated.word = 2L;\n"
      "    old.advanceIfNeeded((char) 0);\n"
      "    updated.advanceIfNeeded((char) 0);\n"
      "    return !old.hasNext() && updated.hasNext();\n"
      "  }\n"
      "}\n"
)
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("archived exact historical bitmap rank iterator classes and interfaces")
