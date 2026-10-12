from pathlib import Path
import subprocess
from difflib import SequenceMatcher

p = Path(__file__).parent
repo = Path(__file__).resolve().parents[4] / "benchmarks/repos/RoaringBitmap"
sha = "f10f8b740735a6a3e48eae6bab78b48dffe73590"

names = ("Art", "BranchNode", "Node4", "Node16", "Node48", "Node256")
changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r", sha],
    text=True,
).splitlines()
assert set(changed) == {
    f"roaringbitmap/src/main/java/org/roaringbitmap/art/{name}.java" for name in names
}

for name in names:
    source = f"roaringbitmap/src/main/java/org/roaringbitmap/art/{name}.java"
    for rev, label in ((sha + "^", "old"), (sha, "new")):
        historical = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{source}"])
        assert historical == (p / f"{name}.{label}.txt").read_bytes()

old = (p / "Art.old.txt").read_text()
new = (p / "Art.new.txt").read_text()
before = """        //TODO - expose an API that avoids this double dipping
        int pos = branchNode.getChildPos(LongUtils.getByte(key, depth));
        if (pos == BranchNode.ILLEGAL_IDX) {
          return null;
        }
        node = branchNode.getChild(pos);"""
after = """        node = branchNode.getChildAtKey(LongUtils.getByte(key, depth));"""
assert old.count(before) == new.count(after) == 1
assert old.replace(before, after) == new

for name in names[1:]:
    old = (p / f"{name}.old.txt").read_text().splitlines(keepends=True)
    new = (p / f"{name}.new.txt").read_text().splitlines(keepends=True)
    changes = [
        op for op in SequenceMatcher(None, old, new, autojunk=False).get_opcodes()
        if op[0] != "equal"
    ]
    assert len(changes) == 1 and changes[0][0] == "insert", (name, changes)
    _, _, _, start, stop = changes[0]
    assert "getChildAtKey" in "".join(new[start:stop]), name

relation = (p / "Node256LookupRelation.java").read_text()
assert "children[pos] != null ? pos : -1" in relation
assert "oldPos != -1 ? children[oldPos] : null" in relation
assert "newChild = children[pos]" in relation
relation = (p / "all_nodes/ChildLookupRelation.java").read_text()
assert "small[smallPos]" in relation
assert "wide[(byte) wideIdx]" in relation
assert "wide[wideIdx]" in relation
assert "full[fullPos]" in relation
print("all six changed files and both KeY relations source-audited")
