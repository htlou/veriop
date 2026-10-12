from pathlib import Path

here = Path(__file__).resolve().parent
old = (here / "ContainerAppender.old.txt").read_text()
new = (here / "ContainerAppender.new.txt").read_text()
before = "    container = container.add(lowbits(value));"
after = "    C tmp = container.add(lowbits(value));\n    if (tmp != container) {\n      container = tmp;\n    }"
assert old.count(before) == 1
assert old.replace(before, after) == new
assert "  private C container;" in old
proof = (here / "ContainerAppenderRelation.java").read_text()
assert "oldContainer = tmp;" in proof
assert "if (tmp != newContainer)" in proof
assert "newContainer = tmp;" in proof
print("Exact historical changed statements match the KeY relation")
