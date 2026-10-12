#!/usr/bin/env python3
"""Screen every seeded simdjson keyword top-up by historical message and paths."""

from collections import Counter
import json
from pathlib import Path
import subprocess
import sys


root = Path(__file__).resolve().parents[2]
results = root / "history-eq/results"
source = json.loads((results / "simdjson-topup-blob-audit.json").read_text())
fixed = json.loads((results / "simdjson-pinned-sample-audit.json").read_text())
assert source["pin"] == fixed["pin"]

confirmed = {
    1: "Removes quadratic copying in wildcard JSONPath collection.",
    3: "Reverts a stage-one trailing-zero optimization that caused a major regression.",
    8: "Adds compiled JSON paths with a stated advantage for repeated known paths.",
    14: "Improves number parsing with MMX.",
    15: "Targets faster number parsing.",
    18: "Re-enables architecture-optimized kernels.",
    20: "Adds a reusable thread-local parser path.",
    23: "Adds an LSX fast path for string-escape scanning.",
    24: "Formats two digits at a time and removes the reversal pass.",
    25: "Adds a faster string-view based JSON serialization path.",
    26: "Avoids allocations in global objects.",
    31: "Implements a stated stage-two optimization idea.",
    36: "Uses a wider comparison for surrogate-pair parsing.",
    38: "Allows object-lookup checks to be disabled in optimized builds.",
    40: "Removes a backslash branch in the ARM parser.",
    42: "Deserializes strings and large elements in place instead of through temporaries.",
    43: "Stores string lengths on the tape and moves escape detection to stage one.",
    44: "Adds single-pass key selection and an 8-bit-window fast path.",
    49: "Restores a faster capacity check after a measured serialization regression.",
    50: "Optimizes fallback number parsing.",
    53: "Speeds unescaped JSON-pointer key lookup.",
    57: "Decodes consecutive Unicode escapes without repeated scans.",
    61: "Fixes a stated performance regression.",
    62: "Avoids a slow ARM64 PMULL path.",
    63: "Avoids forced inlining in debug builds to shorten compilation.",
    65: "Introduces a faster number parser.",
    70: "Avoids duplicate stage-one tail processing.",
    77: "Improves number parsing speed.",
    78: "Repairs a performance regression.",
    83: "Forces inlining of JSON string builder helpers.",
    84: "Changes string parsing for a stated speed objective.",
    90: "Chooses the faster no-PDEP configuration by default.",
    96: "Makes the number-formatting path branchless.",
    102: "Adds a zero-copy DOM parse path for unpadded input.",
    107: "Adds an AVX-512 parsing implementation for performance.",
    115: "Optimizes stage-one scanning across architectures.",
    116: "Moves hot iterator functions into headers to enable inlining.",
    126: "Adds SIMD escaping and batch integer formatting optimizations.",
    132: "Uses builtin popcount to encourage better ARM64 code generation.",
    134: "Fixes a stated Zen 4 performance issue.",
    138: "Uses single-pass block escaping for faster string serialization.",
}
pending = {
    0: "Implementation-forcing configuration is added, but no changed fast path is established.",
    6: "Alternative UTF-8 algorithms are added for shootouts; adoption as an optimization is unclear.",
    34: "New document-stream API mentions removing copies, but the optimized prior path is unclear.",
    95: "An unnecessary pointer member is removed without a stated resource objective.",
    103: "The stage-one step size changes without a stated speed or memory objective.",
    112: "Large static-reflection feature work mentions optimization, but the changed prior path is unclear.",
    127: "The message says 'trying to improve' but changes only error.cpp without a concrete objective.",
    136: "Implementation selection changes without a stated speed objective.",
}
assert not (confirmed.keys() & pending.keys())
entries = []
for item in source["entries"]:
    draw = item["draw"]
    assert item["missing_changed_blobs"], item["commit"]
    status = ("confirmed_optimization" if draw in confirmed else
              "intent_unresolved" if draw in pending else "excluded_non_optimization")
    entries.append({"draw": draw, "commit": item["commit"], "subject": item["subject"],
                    "screen": status, "reason": confirmed.get(draw, pending.get(draw,
                        "No production performance objective established by the commit message and changed paths.")),
                    "missing_changed_blobs": item["missing_changed_blobs"],
                    **({"checker_status": "not_run", "verdict": "UNKNOWN",
                        "coverage": "historical metadata intent screen; exact old/new source blobs missing"}
                       if draw in confirmed else {})})

added = [e for e in entries if e["screen"] == "confirmed_optimization"]
original = [e for e in fixed["entries"] if e["screen"] == "confirmed_optimization"]
assert len(entries) == 148 and len(added) == 41 and len(original) == 55
assert len({e["commit"] for e in original + added}) == 96
(results / "simdjson-topup-intent-screen.json").write_text(json.dumps({
    "repo": "simdjson", "pin": source["pin"], "selection_seed": source["selection_seed"],
    "reviewed": len(entries), "confirmed_optimizations": len(added),
    "intent_unresolved": len(pending), "entries": entries,
}, indent=2) + "\n")
sample = original + added
(results / "simdjson-optimization-sample.json").write_text(json.dumps({
    "repo": "simdjson", "pin": source["pin"],
    "selection": "fixed 200 keyword candidates plus all 148 seeded remaining keyword candidates, after intent screening",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(e["verdict"] for e in sample)),
}, indent=2) + "\n")
print(json.dumps({"reviewed": len(entries), "added": len(added),
                  "keyword_sample_size": len(sample), "intent_unresolved": len(pending)}), flush=True)
subprocess.run([sys.executable, "-B", str(root / "history-eq/tools/reconcile_simdjson_sample.py")],
               check=True)
