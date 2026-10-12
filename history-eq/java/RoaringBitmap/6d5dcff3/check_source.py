from pathlib import Path
import subprocess

p = Path(__file__).parent
repo = Path(__file__).resolve().parents[4] / "benchmarks/repos/RoaringBitmap"
sha = "6d5dcff3527215ce6b50a67aa237523da2421692"
source = "RoaringBitmap/src/main/java/org/roaringbitmap/RangeBitmap.java"
changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", sha],
    text=True,
).splitlines()
assert changed == [source]
for rev, label in ((sha + "^", "old"), (sha, "new")):
    historical = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{source}"])
    assert historical == (p / f"RangeBitmap.{label}.txt").read_bytes()

old = (p / "RangeBitmap.old.txt").read_text()
new = (p / "RangeBitmap.new.txt").read_text()
relation = (p / "RangeSkipRelation.java").read_text()

for name in ("threshold", "lower", "upper"):
    before = f"((~{name} & ~containerMask) & mask)"
    after = f"(~({name} | containerMask) & mask)"
    assert old.count(before) == new.count(after) == 1
    old = old.replace(before, after)

assert old == new
assert "(~value & ~containerMask) & mask" in relation
assert "~(value | containerMask) & mask" in relation
z3 = repo.parents[2] / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
result = subprocess.check_output([str(z3), "-smt2", str(p / "demorgan.smt2")], text=True).strip()
assert result == "unsat", result
print("full-file source audit and 64-bit equivalence proof passed")
