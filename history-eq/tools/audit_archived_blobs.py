"""Cross-check missing sampled Git blobs against existing history-eq archives."""

import hashlib
import json
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
MANIFEST = ROOT / "history-eq/results/pinned-changed-blob-availability.json"
ARCHIVES = ("c", "rust", "java", "fstar", "gpu", "hol", "cpp", "solidity", "gobra", "k", "dafny", "proto", "wt")
SKIP = ("/repos/", "/cargo-home/", "/build/", "/target/", "/obj/", "/vfs/", "/node_modules/", "/.git/")


def blob_id(path):
    size = path.stat().st_size
    digest = hashlib.sha1(f"blob {size}\0".encode())
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest(), size


assert hashlib.sha1(b"blob 0\0").hexdigest() == "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"
data = json.loads(MANIFEST.read_text())
missing = {entry["blob"] for repo in data["repos"] for item in repo["items"] for entry in item.get("missing", [])}
paths = subprocess.check_output(
    ["rg", "--files", *(str(ROOT / "history-eq" / name) for name in ARCHIVES)], text=True
).splitlines()
found = {}
count = total_bytes = 0
for name in paths:
    if any(part in name for part in SKIP):
        continue
    path = Path(name)
    if not path.is_file():
        continue
    oid, size = blob_id(path)
    count += 1
    total_bytes += size
    if oid in missing:
        found.setdefault(oid, []).append(str(path.relative_to(ROOT)))
complete = sum(
    bool(item.get("missing")) and all(m["blob"] in found for m in item["missing"])
    for repo in data["repos"] for item in repo["items"]
)
print(json.dumps({"files_scanned": count, "bytes_scanned": total_bytes,
                  "missing_blob_ids": len(missing), "recovered_blob_ids": len(found),
                  "newly_complete_candidates": complete,
                  "matches": found}, indent=2))
