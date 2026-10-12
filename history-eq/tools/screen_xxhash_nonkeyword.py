#!/usr/bin/env python3
"""Screen all seeded nonkeyword xxHash source commits for performance intent."""
import json
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "history-eq/repos/xxHash"
audit = json.loads((results / "xxHash-nonkeyword-first542-blob-audit.json").read_text())
assert audit["draws_reviewed"] == audit["nonkeyword_commits"] == audit["complete_changed_blobs"] == 542
known = {}
for part in ("pre2020", "2020on"):
    prior = json.loads((results / f"xxHash-{part}.json").read_text())
    for entry in prior["commits"]:
        full = subprocess.check_output(["git", "-C", str(repo), "rev-parse", entry["commit"] + "^{commit}"],
                                       text=True).strip()
        known[full] = entry["change_summary"]
boundary = json.loads((root / "history-eq/c/xxHash/b8543951/result.json").read_text())
known[boundary["commit"]] = "Moves the long-input branch ahead of mid-size accumulation."

additional = {
    2: "Selects native vector multiplication intrinsics for IBM XL's SIMD path.",
    7: "Adds an SSE2 target attribute so the x86 dispatcher can select this SIMD path.",
    51: "Uses SIMD multiplication intrinsics for the s390x vector path.",
    200: "Replaces three static libc forwarding functions with direct macros, removing a call layer when the wrappers are not inlined.",
    228: "Uses an AVX-512F zero intrinsic instead of an AVX-512BW form in the AVX-512 fast path.",
    232: "Adds restrict alias hints to the long-input seeded hash function for compiler optimization.",
    493: "Skips block scramble at exact block lengths, removing that work from the hash path.",
}
unresolved = {}
excluded = {
    22: "Reassigns length eight to a different hash formula without a stated speed objective; exact public hash outputs differ (history-eq/c/xxHash/5fad59e7/result.json).",
    3: "Replaces the 4-to-7-byte hash mixing formula; the message gives no performance objective.",
    4: "Factors two mid-size entry points into one implementation; the stated goal is code sharing.",
    86: "Reinstates unaligned vector loads/stores in the VSX accumulator; no runtime performance objective is stated.",
    107: "Temporarily disables the NEON scrambler pending its update; no runtime objective is stated.",
    188: "Unifies ARMv7 and AArch64 NEON code and documents a shared VZIP.32 macro.",
    195: "Simplifies secret allocation for vector-dispatch compatibility; no speed objective is stated.",
    279: "Routes memcpy calls through the existing customization shim; no runtime objective is stated.",
    298: "Removes redundant XXH32 seed state per upstream issue #79; prior audit excludes it as state-layout cleanup with no performance claim.",
    324: "Removes a forwarding reset helper and renames the common one; stated goal is source simplification.",
    329: "Changes the 4-to-7-byte hash mixing formula to dispatch bits; the message gives no performance objective.",
    386: "Factors the shared mix32 helper without a stated runtime objective.",
    517: "Factors the small-input and dispatcher code; the message says only that the source is shorter.",
}
assert not (additional.keys() & unresolved.keys() or additional.keys() & excluded.keys() or unresolved.keys() & excluded.keys())
entries = []
for source in audit["entries"]:
    draw, commit = source["draw"], source["commit"]
    assert not source["missing_changed_blobs"]
    if commit in known:
        screen, reason = "confirmed_optimization", known[commit]
    elif draw in additional:
        screen, reason = "confirmed_optimization", additional[draw]
    elif draw in unresolved:
        screen, reason = "intent_unresolved", unresolved[draw]
    elif draw in excluded:
        screen, reason = "excluded_non_optimization", excluded[draw]
    else:
        screen, reason = "excluded_non_optimization", "No runtime performance objective established by the message/path intent screen."
    entries.append({"draw": draw, "commit": commit, "subject": source["subject"],
                    "screen": screen, "reason": reason, "exact_changed_blobs_available": True})
assert len(entries) == 542 and len({e["commit"] for e in entries}) == 542
assert sum(e["screen"] == "confirmed_optimization" for e in entries) == 45
assert sum(e["screen"] == "intent_unresolved" for e in entries) == len(unresolved)
(results / "xxHash-nonkeyword-full-screen.json").write_text(json.dumps({
    "repo": "xxHash", "pin": audit["pin"], "selection_seed": audit["selection_seed"],
    "draws_reviewed": 542, "confirmed_optimizations": 45, "new_confirmed": len(additional),
    "intent_unresolved": len(unresolved), "entries": entries,
}, indent=2) + "\n")
print(f"reviewed 542 nonkeyword commits; confirmed 45 (7 new), intent unresolved {len(unresolved)}")
