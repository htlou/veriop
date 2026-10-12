"""Check that the KeY relation uses the exact historical hash expressions."""

import re
from pathlib import Path


HERE = Path(__file__).resolve().parent
HISTORY = HERE.parents[2]
source = Path("common/src/main/java/io/netty/util/collection/IntObjectHashMap.java")
method = re.compile(r"(?ms)^    private int hashIndex\(int key\) \{.*?^    \}")
expected = {
    "old": "int length = keys.length;\n        // Allowing for negative keys by adding the length after the first mod operation.\n        return (key % length + length) % length;",
    "new": "// Allowing for negative keys by adding the length after the first mod operation.\n        return (key % keys.length + keys.length) % keys.length;",
}
for label, body in expected.items():
    text = (HISTORY / "wt" / f"netty-hash-{label}" / source).read_text()
    found = method.search(text)
    assert found and found.group().split("{", 1)[1].rsplit("}", 1)[0].strip() == body, label

relation = (HERE / "NettyHashRelation.java").read_text()
assert "int length = keys.length;" in relation
assert "int oldResult = (key % length + length) % length;" in relation
assert "int newResult = (key % keys.length + keys.length) % keys.length;" in relation
print("KeY relation matches the two historical hashIndex expressions")
