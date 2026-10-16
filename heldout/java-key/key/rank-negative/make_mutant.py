#!/usr/bin/env python3
"""Negative control: off-by-one mutant of the NEW rank (suffix loop starts at end+1, i.e. skips word `end`).
Invariant adjusted accordingly so that only the program bug can make the proof fail."""
from pathlib import Path
H = Path(__file__).resolve().parent
s = (H.parent / "rank" / "BitmapRank.java").read_text()
b = "for (int k = end; k < bitmap.length; ++k) {"
assert s.count(b) == 1
s = s.replace(b, "for (int k = end + 1; k < bitmap.length; ++k) {")
s = s.replace("/*@ loop_invariant end <= k && k <= bitmap.length\n        @   && answer == cardinality - (\\sum int i; end <= i && i < k;",
              "/*@ loop_invariant end + 1 <= k && k <= bitmap.length\n        @   && answer == cardinality - (\\sum int i; end + 1 <= i && i < k;")
s = s.replace("0 <= cardinality - answer && cardinality - answer <= 64 * (k - end);",
              "0 <= cardinality - answer && cardinality - answer <= 64 * (k - end - 1);")
(H / "BitmapRank.java").write_text(s)
for f in ("PopCount.java", "settings.key.txt"):
    (H / f).write_text((H.parent / "rank" / f).read_text())
print("mutant written")
