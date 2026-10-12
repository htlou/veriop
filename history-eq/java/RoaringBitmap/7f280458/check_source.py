#!/usr/bin/env python3
"""Bind the local full-run relation to exact historical Java blobs."""

import hashlib
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "7f280458007333c917ff61301290f68dcec0b471"
base = "roaringbitmap/src/main/java/org/roaringbitmap/"
blobs = {
    "RunContainer.java": ("b270792b165207884b9c4217e0e8172a2a6e07e1",
                          "9373585e2c6b20d30a5acac9e9e2d97251f2463e"),
    "buffer/MappeableRunContainer.java": ("1817a2e9b201ee11c309e1290ac94922d2337034",
                                           "330d27dece7703723399ad2714dffa42eef1775e"),
}
for path, hashes in blobs.items():
    for revision, expected in zip((commit + "^", commit), hashes):
        data = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", revision + ":" + base + path])
        assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == expected
        if path == "RunContainer.java":
            snippet = (b"new RunContainer(1, new short[]{0, -1})" if revision != commit else
                       b"return new RunContainer(0, 1 << 16);")
        else:
            snippet = (b"new MappeableRunContainer(sb, 1)" if revision != commit else
                       b"return new MappeableRunContainer(0, 1 << 16);")
        assert snippet in data, (revision, path)
        if revision == commit:
            constructor = (b"this.valueslength = new short[]{(short) firstOfRun, (short) (lastOfRun - 1 - firstOfRun)};"
                           if path == "RunContainer.java" else
                           b"this.valueslength = ShortBuffer.wrap(vl);")
            assert constructor in data, path
manifest = json.loads((root / "history-eq/java/RoaringBitmap/source-screening/source_manifest.json").read_text())
archive = root / "history-eq/java/RoaringBitmap/source-screening/7f280458.source.diff"
assert hashlib.sha256(archive.read_bytes()).hexdigest() == manifest["commits"][commit]["diff_sha256"]
print("Four exact historical blobs and archived diff matched the local full-run relation")
