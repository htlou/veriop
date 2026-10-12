#!/usr/bin/env python3
"""Check local source caches for exact missing historical dependency blobs."""

import hashlib
import json
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
out = root / "history-eq/results/targeted-dependency-file-audit.json"
targets = {}

screen = json.loads((root / "history-eq/results/fast_float-nonkeyword-full-screen.json").read_text())
for entry in screen["entries"]:
    if entry["screen"] == "intent_unresolved":
        for blob in entry["missing_changed_blobs"]:
            targets[blob["blob"]] = [entry["commit"][:8], Path(blob["path"]).name]

zstd = json.loads((root / "history-eq/c/zstd/90a03a95/dependency-audit.json").read_text())
for path, sides in zstd["objects"].items():
    for oid in sides.values():
        targets[oid] = ["zstd-90a03a95", Path(path).name]

roaring = json.loads((root / "history-eq/java/RoaringBitmap/e21398ed/source-and-build.json").read_text())
for side in roaring["sides"].values():
    for path, info in side["fallback"].items():
        targets[info["missing_git_oid"]] = ["RoaringBitmap-e21398ed", Path(path).name]

targets["d5fad1c0ebbe15c535f5d29ffb6cb72ed1ce2ff9"] = ["regex-5e987889", "exec.rs"]
assert hashlib.sha1(b"blob 0\0").hexdigest() == "e69de29bb2d1d6434b8b29ae775ad8c2e48c5391"

bases = [root / p for p in ("history-eq", "benchmarks/repos", "aeneas/repos", "alive2/repos",
                          "cuda/repos", "aeneas/env/cargo/registry")]
bases.append(Path("/srv/home/hantaolou/.cargo"))
bases = [p for p in bases if p.is_dir()]
counts = {}
matches = {}
for name in sorted({name for _, name in targets.values()}):
    listed = subprocess.run(["rg", "--files", "--hidden", "-g", name, "-g", "!**/.git/**",
                             *(str(p) for p in bases)], capture_output=True, text=True)
    assert listed.returncode in (0, 1), listed.stderr
    paths = sorted({Path(p) for p in listed.stdout.splitlines() if Path(p).name == name})
    counts[name] = len(paths)
    for path in paths:
        data = path.read_bytes()
        oid = hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest()
        if oid in targets:
            matches.setdefault(oid, []).append(str(path))

report = {"scope": "same-basename files in selected workspace source/archive and Cargo cache directories",
          "targets": targets, "candidate_counts": counts, "exact_matches": matches}
out.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
print(json.dumps({"missing_objects": len(targets), "files_hashed": sum(counts.values()),
                  "recovered": len(matches)}))
