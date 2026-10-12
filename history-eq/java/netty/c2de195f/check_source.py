#!/usr/bin/env python3
"""Check that the executed witness includes the exact changed historical methods."""

import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
manifest = json.loads((here / "source_manifest.json").read_text())
assert manifest["commit"] == "c2de195f872506dacd5df5cd5507b49e1669790d"


def extract(source, signature):
    start = source.index("    @Override\n    " + signature)
    end = source.index("\n    /**", start)
    return source[start:end].rstrip() + "\n"

for label, package in (("old", "parent"), ("new", "child")):
    name = f"ByteString.{label}.java.txt"
    raw = (here / name).read_bytes()
    assert hashlib.sha256(raw).hexdigest() == manifest["files"][name]
    source = raw.decode()
    model = (here / package / "ByteString.java").read_text()
    for method in (extract(source, "public boolean equals(Object obj) {"),
                   extract(source, "public int hashCode() {")):
        assert method in model
    assert "public class ByteString" in source
    assert "public final int length()" in source
    assert "public final byte[] array()" in source
    assert "protected final byte[] value;" in source

old = (here / "equals.old.java.txt").read_text()
new = (here / "equals.new.java.txt").read_text()
assert "length() != that.length() || hashCode() != that.hashCode()" in old
assert "return hashCode() == other.hashCode() &&" in new
assert "PlatformDependent.equals" in new
print("exact historical equals and hashCode bodies match compiled witness")
