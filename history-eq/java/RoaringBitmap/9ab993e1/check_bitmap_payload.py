"""Run the exact old/new bitmap-payload blocks from the historical RoaringArray."""

import json
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "9ab993e11480c6a461f0eeb38e3984995c1ffc8a"
PATH = "roaringbitmap/src/main/java/org/roaringbitmap/RoaringArray.java"
JAVA = ROOT / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"


def source(rev, overload):
    blob = subprocess.check_output(
        ("git", "-C", str(REPO), "rev-parse", f"{rev}:{PATH}"), text=True).strip()
    text = subprocess.check_output(("git", "-C", str(REPO), "cat-file", "blob", blob), text=True)
    method = "public void deserialize(DataInput in, byte[] buffer)" if overload else "public void deserialize(DataInput in)"
    start = text.index("final long[] bitmapArray = new long[BitmapContainer.MAX_CAPACITY / 64];",
                       text.index(method))
    end = text.index("val = new BitmapContainer(bitmapArray, cardinalities[k]);", start)
    return blob, text[start:end]


def main():
    old_blob, old = source(COMMIT + "^", False)
    new_blob, new = source(COMMIT, True)
    assert "Long.reverseBytes(in.readLong())" in old
    assert "in.readFully(buffer, 0, end - start)" in new
    assert "asLongBuffer.get(bitmapArray, start, (end - start) / 8)" in new
    java = """
import java.io.*;
import java.nio.*;
public class Witness {
  static class BitmapContainer { static final int MAX_CAPACITY = 65536; }
  static long[] oldRead(DataInput in, byte[] buffer) throws IOException {
""" + old + "return bitmapArray;\n  }\n" + """
  static long[] newRead(DataInput in, byte[] buffer) throws IOException {
""" + new + "return bitmapArray;\n  }\n" + """
  public static void main(String[] args) throws IOException {
    byte[] payload = new byte[8192];
    for (int i = 0; i < 513; i++) payload[i] = (byte) 0xff;
    // 4104 set bits, so a serialized container with cardinality 4104 uses this bitmap path.
    for (boolean optimized : new boolean[] {false, true}) {
      ByteArrayInputStream bytes = new ByteArrayInputStream(payload);
      DataInputStream in = new DataInputStream(bytes);
      long[] words = optimized ? newRead(in, new byte[8]) : oldRead(in, new byte[8]);
      System.out.println((optimized ? "child" : "parent") + " first=" + words[0]
          + " remaining=" + bytes.available());
    }
  }
}
"""
    with tempfile.TemporaryDirectory(prefix="veriop-roaring-9ab993e1-") as temp:
        p = Path(temp) / "Witness.java"
        p.write_text(java)
        subprocess.run((str(JAVA / "javac"), str(p)), check=True)
        output = subprocess.check_output((str(JAVA / "java"), "-cp", temp, "Witness"), text=True)
    assert output == "parent first=-1 remaining=0\nchild first=0 remaining=8073\n", output
    result = {"commit": COMMIT, "old_blob": old_blob, "new_blob": new_blob,
              "scope": "source-extracted bitmap-container payload blocks, 8-byte scratch buffer",
              "output": output}
    Path(__file__).with_name("result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(output, end="")


if __name__ == "__main__":
    main()
