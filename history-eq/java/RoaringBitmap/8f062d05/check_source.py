#!/usr/bin/env python3
"""Check the extracted equality witness against archived historical Java."""

import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
manifest = json.loads((here / "source_manifest.json").read_text())
assert manifest["commit"] == "8f062d05e93599f0fafb8cfb920411cd0e5b2f87"


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


for label, package in (("old", "parent"), ("new", "child")):
    name = f"RunContainer.{label}.java.txt"
    raw = (here / name).read_bytes()
    assert hashlib.sha256(raw).hexdigest() == manifest["files"][name]["sha256"]
    source = raw.decode()
    shell = (here / package / "RunContainer.java").read_text()
    for signature in (
        "public RunContainer(final int firstOfRun, final int lastOfRun)",
        "public short getLength(int index)",
        "public short getValue(int index)",
        "private boolean equals(RunContainer ",
    ):
        assert member(source, signature) in shell, (label, signature)
    public_equals = member(source, "public boolean equals(Object o)")
    assert "return equals((RunContainer) o);" in public_equals
    assert "private short[] valueslength;" in source
    assert "int nbrruns = 0;" in source

shim_name = "ArraysShim.new.java.txt"
shim = (here / shim_name).read_bytes()
assert hashlib.sha256(shim).hexdigest() == manifest["files"][shim_name]["sha256"]
assert shim.replace(b"package org.roaringbitmap;", b"package child;", 1) == (here / "child/ArraysShim.java").read_bytes()
assert "new parent.RunContainer(1, 2)" in (here / "Witness.java").read_text()
assert "new child.RunContainer(1, 3)" in (here / "Witness.java").read_text()
print("exact historical RunContainer equality, constructor, accessors and child shim match witness")
