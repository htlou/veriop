#!/usr/bin/env python3
"""Validate the witness's decisive operations against archived source."""

from pathlib import Path
import re

here = Path(__file__).resolve().parent
old = (here / "BitmapContainer.old.txt").read_text()
new = (here / "BitmapContainer.new.txt").read_text()
util = (here / "Util.shared.txt").read_text()
array = (here / "ArrayContainer.shared.txt").read_text()
witness = (here / "BitmapIxorWitness.java").read_text()


def compact(s: str) -> str:
    return re.sub(r"\s+", "", s)


def method(s: str) -> str:
    start = s.index("public Container ixor(BitmapContainer b2)")
    end = s.index("\n  @Override", start + 1)
    return s[start:end]


old_method = method(old)
new_method = method(new)
assert "newCardinality += Long.bitCount(this.bitmap[k] ^ b2.bitmap[k]);" in old_method
assert "Util.fillArrayXOR(ac.content, this.bitmap, b2.bitmap);" in old_method
assert "this.bitmap[k] ^= b2.bitmap[k];" in new_method
assert "computeCardinality();" in new_method
assert "return toArrayContainer();" in new_method
assert "DEFAULT_MAX_SIZE = 4096" in array
assert "this.bitmap = newBitmap;" in old and "this.bitmap = newBitmap;" in new
assert "long bitset = bitmap1[k] ^ bitmap2[k];" in util
for operation in (
    "newCardinality += Long.bitCount(this.bitmap[k] ^ b2.bitmap[k]);",
    "this.bitmap[k] ^= b2.bitmap[k];",
    "computeCardinality();",
):
    assert compact(operation) in compact(witness), operation
print("historical ixor branch and changed mutation match witness operations")
