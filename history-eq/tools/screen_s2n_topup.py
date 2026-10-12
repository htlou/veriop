#!/usr/bin/env python3
"""Screen s2n-bignum's remaining seeded keyword candidates and changed blobs."""

from collections import Counter
import json
import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
repo = root / "benchmarks/repos/s2n-bignum"
topup = next(x for x in json.loads((results / "topup-candidate-order.json").read_text())["repos"]
             if x["repo"] == "s2n-bignum")
pin_record = next(x for x in json.loads((results / "pinned-samples.json").read_text())["repos"]
                  if x["repo"] == "s2n-bignum")
fixed = json.loads((results / "s2n-bignum-pinned-sample-audit.json").read_text())
assert topup["pin"] == pin_record["pin"] == fixed["pin"]
assert len(topup["order"]) == 31
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args, input=None):
    return subprocess.run(["git", "-C", str(repo), *args], input=input,
                          capture_output=True, text=True, check=True, env=env).stdout


assert git("rev-parse", "HEAD").strip() == topup["pin"]
confirmed = {
    0: "Speeds x86 NTT/INTT HOL proofs through abbreviations.",
    2: "Carries prior p256_montjadd/double performance improvements into scalar multiplication.",
    3: "Keeps the cosimulation protocol process alive to avoid repeated startup costs.",
    5: "Builds and runs proofs with native OCaml to reduce proof runtime.",
    8: "Adds point doubling with shorter intermediate modular reductions.",
    16: "Adds a four-way batch Keccak implementation using SIMD and scalar operations.",
    18: "Reorders SM2 doubling for slightly better efficiency and 32 fewer stack bytes.",
    21: "Replaces multiplier use with a faster double carry chain in modular tripling.",
    22: "Adds a SHA3-instruction Keccak alternative for faster supported ARM CPUs.",
    24: "Adds a non-lazy-rotation Keccak alternative for CPUs where lazy rotation is slower.",
    26: "Reduces code size and carry-chain work in P-256/P-384 Montgomery operations.",
    28: "Reduces dependent latency and instruction count in curve25519 multiplication and squaring.",
}
pending = {
    9: "Moves constants to rodata, but no speed or size objective is stated.",
    11: "Adds efficient ARM NTT functions for new ML-KEM support; no prior same-function path is identified.",
}
assert not (confirmed.keys() & pending.keys())
entries, oids = [], set()
for draw, item in enumerate(topup["order"]):
    commit = item["commit"]
    raw = git("diff-tree", "--no-commit-id", "--no-renames", "--raw", "-r",
              commit + "^", commit, "--", *pin_record["scope"]).splitlines()
    changed = []
    for line in raw:
        fields, path = line.split("\t", 1)
        for oid in fields.split()[2:4]:
            if oid.strip("0"):
                changed.append({"path": path, "blob": oid})
                oids.add(oid)
    assert changed, commit
    message = git("cat-file", "-p", commit).split("\n\n", 1)[1]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in pending else "excluded_non_optimization")
    entries.append({"draw": draw, "commit": commit, "subject": item["subject"],
                    "message": message, "changed": changed, "screen": status,
                    "reason": confirmed.get(draw, pending.get(draw,
                        "No optimization of an existing production or proof-workload path established."))})

check = git("cat-file", "--batch-check", input="".join(oid + "\n" for oid in sorted(oids)))
missing = {line.split()[0] for line in check.splitlines() if line.endswith(" missing")}
for entry in entries:
    entry["missing_changed_blobs"] = [x for x in entry.pop("changed") if x["blob"] in missing]
    if entry["screen"] == "confirmed_optimization":
        entry.update({"checker_status": "not_run", "verdict": "UNKNOWN",
                      "coverage": "historical message/path screen; no source-matched HOL Light before/after check"})

added = [e for e in entries if e["screen"] == "confirmed_optimization"]
original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
assert len(entries) == 31 and len(added) == 12 and len(original) == 80
assert len({e["commit"] for e in original + added}) == 92
(results / "s2n-bignum-topup-intent-screen.json").write_text(json.dumps({
    "repo": "s2n-bignum", "pin": topup["pin"], "draws_reviewed": len(entries),
    "confirmed_optimizations": len(added), "intent_unresolved": len(pending),
    "entries": entries,
}, indent=2) + "\n")
nonkeyword = json.loads((results / "s2n-bignum-nonkeyword-first353-blob-audit.json").read_text())
assert nonkeyword["pin"] == topup["pin"]
nonkeyword_reasons = {
    13: "Removes a duplicated x86 bignum_mul_p521_alt instruction that moved an input from rdx twice; other proof edits are part of the same commit.",
    122: "Changes ARM bignum_sqr_p521_alt assembly to use fewer registers.",
}
extras = []
for draw, reason in nonkeyword_reasons.items():
    item = nonkeyword["entries"][draw]
    assert item["draw"] == draw and item["missing_changed_blobs"]
    extras.append({"draw": draw, "draw_population": "seeded nonkeyword source commits",
                   "commit": item["commit"], "date": git("show", "-s", "--format=%aI", item["commit"]).strip(),
                   "subject": item["subject"], "source_status": "missing_changed_blob",
                   "screen": "confirmed_optimization", "reason": reason,
                   "missing_changed_blobs": item["missing_changed_blobs"],
                   "checker_status": "not_run", "verdict": "UNKNOWN",
                   "coverage": "metadata intent screen; exact historical assembly and HOL source missing",
                   "evidence": "history-eq/results/s2n-bignum-nonkeyword-optimization-screen.md"})
sample = original + added + extras
assert len(sample) == len({e["commit"] for e in sample}) == 94
(results / "s2n-bignum-optimization-sample.json").write_text(json.dumps({
    "repo": "s2n-bignum", "pin": topup["pin"],
    "selection": "all 200 fixed and 31 remaining seeded keyword candidates after intent screening, plus two explicit assembly optimization intents from a seeded full nonkeyword metadata audit",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(entries), "added": len(added) + len(extras), "sample": len(sample),
                  "source_complete_added": sum(not e["missing_changed_blobs"] for e in added),
                  "intent_unresolved": len(pending)}))
