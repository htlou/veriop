"""Exercise exact historical rank/cache methods around inherited deserialization."""

import json
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "5350c57e"  # pinned sampled commit
BASE = "roaringbitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java"
FAST = "roaringbitmap/src/main/java/org/roaringbitmap/FastRankRoaringBitmap.java"
JAVA = ROOT / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"


def source(rev, path):
    blob = subprocess.check_output(
        ("git", "-C", str(REPO), "rev-parse", f"{rev}:{path}"), text=True).strip()
    body = subprocess.check_output(("git", "-C", str(REPO), "cat-file", "blob", blob), text=True)
    return blob, body


def method(text, signature):
    start = text.index(signature)
    brace = text.index("{", start)
    depth = 0
    for pos in range(brace, len(text)):
        if text[pos] == "{":
            depth += 1
        elif text[pos] == "}":
            depth -= 1
            if depth == 0:
                return text[start:pos + 1]
    raise ValueError(f"Unclosed method: {signature}")


def main():
    base_blob, base = source(COMMIT + "^", BASE)
    fast_blob, fast = source(COMMIT, FAST)
    assert "public void deserialize(DataInput in)" not in fast
    assert "this.highLowContainer.deserialize(in);" in method(base, "public void deserialize(DataInput in)")
    cache_fields = "".join(line + "\n" for line in fast.splitlines()
                           if line.strip().startswith("private boolean cumulatedCardinalitiesCacheIsValid =")
                           or line.strip().startswith("private int[] highToCumulatedCardinality ="))
    assert cache_fields.count("\n") == 2
    java = """
import java.io.*;
class Util {
  static short highbits(int x) { return (short) (x >>> 16); }
  static short lowbits(int x) { return (short) x; }
  static int compareUnsigned(short a, short b) {
    return Integer.compare(a & 0xffff, b & 0xffff);
  }
  static int hybridUnsignedBinarySearch(short[] keys, int from, int to, short key) {
    for (int i = from; i < to; i++) if (keys[i] == key) return i;
    for (int i = from; i < to; i++) if (compareUnsigned(keys[i], key) > 0) return -i - 1;
    return -to - 1;
  }
}
class Container {
  int cardinality;
  Container(int n) { cardinality = n; }
  int getCardinality() { return cardinality; }
  int rank(short low) { return low == 0 ? 1 : cardinality; }
}
class RoaringArray {
  short[] keys = {0, 1};
  Container[] values = {new Container(2), new Container(1)};
  int size() { return 2; }
  short getKeyAtIndex(int i) { return keys[i]; }
  Container getContainerAtIndex(int i) { return values[i]; }
  void deserialize(DataInput in) throws IOException {
    values = new Container[] {new Container(in.readInt()), new Container(in.readInt())};
  }
}
class RoaringBitmap {
  RoaringArray highLowContainer = new RoaringArray();
""" + method(base, "public void deserialize(DataInput in)") + "\n" + method(base, "public long rankLong(int x)") + "\n}\n" + """
class FastRankRoaringBitmap extends RoaringBitmap {
""" + cache_fields + method(fast, "private void preComputeCardinalities()") + "\n" + method(fast, "public long rankLong(int x)") + "\n}\n" + """
public class Witness {
  public static void main(String[] args) throws Exception {
    RoaringBitmap baseline = new RoaringBitmap();
    FastRankRoaringBitmap candidate = new FastRankRoaringBitmap();
    System.out.println("before=" + baseline.rankLong(65536) + "/" + candidate.rankLong(65536));
    ByteArrayOutputStream out = new ByteArrayOutputStream();
    DataOutputStream serialized = new DataOutputStream(out);
    serialized.writeInt(1); serialized.writeInt(1);
    baseline.deserialize(new DataInputStream(new ByteArrayInputStream(out.toByteArray())));
    candidate.deserialize(new DataInputStream(new ByteArrayInputStream(out.toByteArray())));
    System.out.println("after=" + baseline.rankLong(65536) + "/" + candidate.rankLong(65536));
  }
}
"""
    with tempfile.TemporaryDirectory(prefix="veriop-roaring-5350c57e-") as temp:
        p = Path(temp) / "Witness.java"
        p.write_text(java)
        subprocess.run((str(JAVA / "javac"), str(p)), check=True)
        output = subprocess.check_output((str(JAVA / "java"), "-cp", temp, "Witness"), text=True)
    assert output == "before=3/3\nafter=2/3\n", output
    result = {"commit": subprocess.check_output(("git", "-C", str(REPO), "rev-parse", COMMIT),
                                               text=True).strip(),
              "base_blob": base_blob, "fast_blob": fast_blob,
              "scope": "exact historical rank/cache method bodies under a two-container deserializer model",
              "output": output}
    Path(__file__).with_name("result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(output, end="")


if __name__ == "__main__":
    main()
