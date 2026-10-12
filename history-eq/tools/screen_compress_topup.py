#!/usr/bin/env python3
"""Screen the next random Compress candidates and assemble 200 confirmed optimizations."""

from collections import Counter
import json
from pathlib import Path
import subprocess
import sys


root = Path(__file__).resolve().parents[2]
repo = root / "benchmarks/repos/compress"
results = root / "history-eq/results"
evidence = root / "history-eq/gobra/compress/topup-metadata-screening.md"
performance = {
    "a4773d2d": "Speeds up DEFLATE Huffman encoding.",
    "d76f8016": "Adds a buffer-recycling callback to reduce S2 EncodeBuffer allocation pressure.",
    "0bf3ecbe": "Reduces casts in flate match-length processing.",
    "ac94599e": "Adds readahead to improve s2c/s2d compression throughput.",
    "a1c49c64": "Precomputes literal costs in flate findMatch.",
    "3c0d3084": "Speeds up flate load and store paths.",
    "73508b25": "Adds faster ARM64 S2 assembly encoders.",
    "9aa18ad6": "Optimizes matchLenSSE4 assembly.",
    "4e062aac": "Specializes a DEFLATE path to eliminate fastSkipHashing checks.",
    "c73af0c1": "Adds ARM64 Huffman decompression assembly.",
    "72cae769": "Uses shorter S2 copy encodings for close matches.",
    "82a60df3": "Extends a flate slice instead of appending.",
    "8410c637": "Speeds up DEFLATE bit writing by avoiding bounds checks.",
    "b5cd7445": "Speeds up zstd encoding of incompressible data.",
    "e3ae23b4": "Searches the end of S2 matches in best mode.",
    "b8824569": "Retunes Huffman assembly decompression loops.",
    "3fb78369": "Checks buffer capacity to reuse S2 EncodeBetter/Best memory.",
    "057ea209": "Avoids double history resets and unnecessary allocation in zstd encoding.",
    "b084a35f": "Makes a small S2 encoder speed improvement.",
    "c0bbc847": "Regenerates ARM64 zstd assembly with faster BMI2-style lowering.",
    "dfaad360": "Uses per-encoder zstd reset thresholds for lower overhead.",
    "33c9bc80": "Adds faster AMD64 flate match-length assembly.",
    "1901a5fa": "Uses quickSort for faster Huffman frequency ordering.",
    "c1db4cbe": "Adds SSE CRC32 and string-match fast paths.",
    "7143e682": "Speeds up small Snappy payload compression.",
    "6c2ac28c": "Improves zstd best-mode compression and memory use.",
    "0836a1ca": "Removes a separate zstd bit-reader offset.",
    "b8a3c614": "Uses a five-byte hash to improve flate level 1–3 compression.",
    "131651f8": "Speeds up zstd decoding with low-memory mode disabled.",
    "5c06c0e8": "Widens the DEFLATE output bit buffer for reported speed gains.",
    "22de9831": "Uses larger default zstd blocks outside fastest mode.",
    "29a7d272": "Reduces zstd dictionary shard size and zeroing overhead.",
    "d900f26a": "Uses strings to avoid a gzhttp jitter-data copy.",
    "47031954": "Speeds up hashing for flate levels 7–9.",
    "5753c12f": "Shortens zstd checksum code to enable inlining.",
    "2c62357a": "Encodes four bytes between bit-writer flushes.",
    "763de0b1": "Removes unnecessary zstd encoder masks.",
    "07f8bcdd": "Retunes ARM64 zstd and Huffman assembly lowering.",
    "15967def": "Canonicalizes ETag headers to hit the net/http fast path.",
    "14542889": "Makes a small S2 best-mode speed improvement.",
    "928c7dd8": "Replaces a switch so a flate helper can inline.",
    "a3a5dce5": "Adds faster AMD64 zstd match-length assembly.",
    "20d0f941": "Keeps the inflate dictionary on the stack.",
    "308a7519": "Reworks zstd decoding for faster concurrent streams.",
    "43829fcb": "Speeds up flate Huffman generation.",
}
unsupported = {"d76f8016", "ac94599e", "73508b25", "9aa18ad6", "c73af0c1", "b8824569",
               "c0bbc847", "33c9bc80", "c1db4cbe", "07f8bcdd", "a3a5dce5", "308a7519"}
excluded = {
    "895291cf": "Adds a new Xerial Snappy reader/writer rather than optimizing an existing path.",
    "dbd783b4": "Updates README benchmark text only.",
    "0afc4af7": "Upgrades Go and speeds race tests, not production code.",
    "6d3a385b": "Fixes benchmark table output only.",
    "520e81d6": "Adds a README notice about MinLZ.",
    "7720ba10": "Adds a new Snappy package rather than changing an existing path.",
    "03de960a": "Adds zstd support to a server handler, a new feature.",
    "4efcabef": "Changes benchmark comparison inputs only.",
    "5f70209e": "Disables an SSE path whose speed equals generic code, with no stated gain.",
}
assert len(performance) == 45 and len(excluded) == 9 and unsupported <= performance.keys()
assert performance.keys().isdisjoint(excluded)

queue = json.loads((results / "topup-candidate-order.json").read_text())
fixed = json.loads((results / "compress-pinned-sample-audit.json").read_text())
item = next(x for x in queue["repos"] if x["repo"] == "compress")
assert item["pin"] == fixed["pin"] and item["fixed_confirmed"] == 155
draw = item["order"][:54]
assert {x["commit"][:8] for x in draw} == performance.keys() | excluded.keys()

entries = []
lines = [
    "# Compress random top-up metadata screen", "",
    "The first 54 remaining performance-keyword candidates in the deterministic random order were checked "
    "against exact local commit messages and changed-path trees. All 54 lack at least one historical changed "
    "blob. `UNKNOWN` and `UNSUPPORTED` are metadata/scope labels with `checker_status: not_run`, not Gobra "
    "proofs or local official benchmark reruns. `UNSUPPORTED` is relative to the selected Go function-pair "
    "relation for new APIs, assembly, command I/O, or concurrent-stream behavior.", "",
    "| Draw | Commit | Subject | Classification | Reason | Changed paths |", "|---:|---|---|---|---|---:|",
]
for draw_number, candidate in enumerate(draw, 1):
    commit = candidate["commit"]
    prefix = commit[:8]
    obj = subprocess.run(["git", "-C", str(repo), "cat-file", "-p", commit],
                         check=True, capture_output=True, text=True).stdout
    assert "\n\n" in obj and " ".join(candidate["subject"].split()) in " ".join(obj.split("\n\n", 1)[1].split())
    raw = subprocess.run(["git", "-C", str(repo), "diff-tree", "--raw", "--no-commit-id", "-r", commit],
                         check=True, capture_output=True, text=True).stdout.splitlines()
    assert raw
    blobs = [oid for line in raw for oid in line.split("\t", 1)[0].split()[2:4] if oid.strip("0")]
    missing = [oid for oid in blobs if subprocess.run(["git", "-C", str(repo), "cat-file", "-e", oid],
                                                        capture_output=True).returncode]
    assert missing, prefix
    if prefix in performance:
        verdict = "UNSUPPORTED" if prefix in unsupported else "UNKNOWN"
        reason = performance[prefix]
        screen = "confirmed_optimization"
        label = f"optimization; {verdict}"
    else:
        verdict = None
        reason = excluded[prefix]
        screen = "excluded_non_optimization"
        label = "excluded"
    entry = {**candidate, "draw": draw_number, "source_status": "missing_changed_blob", "screen": screen,
             "checker_status": "not_run", "reason": reason, "evidence": str(evidence.relative_to(root))}
    if verdict:
        entry.update({"verdict": verdict, "coverage": "historical commit metadata and changed-path screen; no source-matched Gobra old/new relation run"})
    entries.append(entry)
    url = f"https://github.com/klauspost/compress/commit/{commit}"
    lines.append(f"| {draw_number} | [`{prefix}`]({url}) | {candidate['subject'].replace('|', '&#124;')} | {label} | {reason} | {len(raw)} |")

assert Counter(e["screen"] for e in entries) == {"confirmed_optimization": 45, "excluded_non_optimization": 9}
fixed_confirmed = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
topup_confirmed = [e for e in entries if e["screen"] == "confirmed_optimization"]
assert len(fixed_confirmed) == 155 and len(topup_confirmed) == 45
sample = fixed_confirmed + topup_confirmed
assert len({e["commit"] for e in sample}) == len(sample) == 200
assert all(e.get("verdict") for e in sample)
proof = json.loads((root / "history-eq/gobra/compress/31b99fb/result.json").read_text())
proved = [e for e in sample if e["commit"] == proof["commit"]]
assert len(proved) == 1 and proved[0]["verdict"] == "UNKNOWN" and proof["verdict"] == "EQUIV"
proved[0].update({"verdict": "EQUIV", "checker_status": "checked",
                  "coverage": proof["scope"], "checker_target": "Gobra + direct Z3",
                  "reason": "Gobra proves the exact old/new slice bytes and lengths; Z3 proves equal normal-return domains.",
                  "evidence": "history-eq/gobra/compress/31b99fb/result.json"})

(results / "compress-topup-audit.json").write_text(json.dumps({"repo": "compress", "pin": item["pin"],
    "candidate_draws": len(entries), "confirmed_topup": 45, "entries": entries}, indent=2) + "\n")
(results / "compress-keyword200-sample.json").write_text(json.dumps({"repo": "compress", "pin": item["pin"],
    "selection": "first 200 confirmed optimizations in the seeded random permutation of performance-keyword candidates",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample))}, indent=2) + "\n")
evidence.write_text("\n".join(lines) + "\n")
subprocess.run([sys.executable, "-B", str(root / "history-eq/tools/resample_compress_identified.py")],
               check=True)
print(json.dumps({"confirmed_topup": 45, "excluded_topup": 9,
                  "keyword_sample_size": len(sample),
                  "keyword_verdicts": dict(Counter(e["verdict"] for e in sample))}, sort_keys=True))
