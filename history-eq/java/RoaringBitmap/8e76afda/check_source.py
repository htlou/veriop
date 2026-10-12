from pathlib import Path
import subprocess

p = Path(__file__).parent
repo = Path(__file__).resolve().parents[4] / "benchmarks/repos/RoaringBitmap"
sha = "8e76afda92aaf3a30a645351b4f0e9bc532d3662"
sources = {
    "RoaringBitmap": "RoaringBitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java",
    "ImmutableRoaringBitmap":
        "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/ImmutableRoaringBitmap.java",
}
changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", sha],
    text=True,
).splitlines()
assert {s for s in changed if s.startswith("RoaringBitmap/src/main/")} == set(sources.values())

guard = "    if(subset.getCardinality() > getCardinality()) {\n      return false;\n    }\n"
for name, source in sources.items():
    for rev, label in ((sha + "^", "old"), (sha, "new")):
        historical = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{source}"])
        assert historical == (p / f"{name}.{label}.txt").read_bytes()
    old = (p / f"{name}.old.txt").read_text()
    new = (p / f"{name}.new.txt").read_text()
    assert old.count(guard) == 1 and old.replace(guard, "") == new
    assert "return (int) getLongCardinality();" in old

assert "receiverCardinality == -2147483648" in (p / "key/ContainsGuardRelation.java").read_text()
assert "roaring long=2147483648 int=-2147483648 contains=false" in (p / "old-runtime.log").read_text()
assert "roaring long=2147483648 int=-2147483648 contains=true" in (p / "new-runtime.log").read_text()
assert "buffered long=2147483648 int=-2147483648 contains=false" in (p / "old-runtime.log").read_text()
assert "buffered long=2147483648 int=-2147483648 contains=true" in (p / "new-runtime.log").read_text()
assert "Number of goals remaining open: 0" in (p / "key/key.log").read_text()
print("historical source, runtime counterexample, and KeY guard proof checked")
