#!/usr/bin/env python3
"""Check the witness's decisive code against the archived historical classes."""

from pathlib import Path
import re

here = Path(__file__).resolve().parent
old = (here / "BitmapContainer.old.txt").read_text()
new = (here / "BitmapContainer.new.txt").read_text()
witness = (here / "BitmapIorWitness.java").read_text()


def compact(s: str) -> str:
    return re.sub(r"\s+", "", s)


old_loop = """this.cardinality = 0;
    for (int k = 0; k < this.bitmap.length; k++) {
      long w = this.bitmap[k] | b2.bitmap[k];
      this.bitmap[k] = w;
      this.cardinality += Long.bitCount(w);
    }"""
new_loop = """for (int k = 0; k < this.bitmap.length & k < b2.bitmap.length; k++) {
      this.bitmap[k] |= b2.bitmap[k];
    }
    computeCardinality();"""
constructor = """public BitmapContainer(long[] newBitmap, int newCardinality) {
    this.cardinality = newCardinality;
    this.bitmap = newBitmap;
  }"""
for label, snippet, source in (
    ("parent loop", old_loop, old),
    ("child loop", new_loop, new),
    ("parent constructor", constructor, old),
    ("child constructor", constructor, new),
):
    assert compact(snippet) in compact(source), label
for label, snippet in (("parent witness", old_loop), ("child witness", new_loop)):
    assert compact(snippet) in compact(witness), label
print("historical constructor and both changed loop bodies match the witness")
