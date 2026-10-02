#!/usr/bin/env python3
"""Summarize the two ordered passes of upstream encode_slice benchmarks."""
import json
import math
import statistics
from pathlib import Path

root = Path(__file__).resolve().parent / "results"
data = root / "criterion"
variants = ["base64-candidate", "base64-unroll2", "base64-unroll8"]
workloads = sorted(p.parent.parent.relative_to(data / "rust-base64")
                   for p in (data / "rust-base64").glob("**/round-1/estimates.json"))
assert len(workloads) == 8, "Incomplete upstream size coverage"

def estimates(variant, workload):
    rounds = [json.loads((data / variant / workload / f"round-{n}" / "estimates.json").read_text())
              for n in (1, 2)]
    medians = [r["median"]["point_estimate"] for r in rounds]
    assert all(math.isfinite(t) and t > 0 for t in medians)
    return medians, [r["median"]["confidence_interval"] for r in rounds]

report = {"metric": "baseline / candidate; median of two Criterion medians",
          "cpu": 2, "rounds": 2, "variants": {}}
for variant in variants:
    rows = []
    for workload in workloads:
        base, base_ci = estimates("rust-base64", workload)
        opt, opt_ci = estimates(variant, workload)
        rows.append({"workload": str(workload), "baseline_ns": statistics.median(base),
                     "candidate_ns": statistics.median(opt),
                     "speedup": statistics.median(base) / statistics.median(opt),
                     "round_speedups": [b / o for b, o in zip(base, opt)],
                     "baseline_round_ci": base_ci, "candidate_round_ci": opt_ci})
    overall = statistics.geometric_mean(r["speedup"] for r in rows)
    report["variants"][variant] = {"geometric_mean_speedup": overall, "workloads": rows,
        "proof_status": "checked" if variant == "base64-candidate" else "tests only"}
    print(f"{variant}: geometric mean {overall:.3f}x; "
          f"range {min(r['speedup'] for r in rows):.3f}–{max(r['speedup'] for r in rows):.3f}x")
(root / "performance.json").write_text(json.dumps(report, indent=2) + "\n")

if (root / "binggan").exists():
    rows = []
    files = sorted((root / "binggan/lz4_flex/round-1").iterdir())
    assert len(files) == 12, "Incomplete LZ4 dataset coverage"
    for file in files:
        values = {}
        for variant in ("lz4_flex", "lz4-candidate"):
            values[variant] = [json.loads((root / "binggan" / variant / f"round-{n}" / file.name).read_text())["median_ns"]
                               for n in (1, 2)]
        base, opt = values["lz4_flex"], values["lz4-candidate"]
        rows.append({"workload": file.name, "baseline_ns": statistics.median(base),
                     "candidate_ns": statistics.median(opt),
                     "speedup": statistics.median(base) / statistics.median(opt),
                     "round_speedups": [b / o for b, o in zip(base, opt)]})
    summary = {"proof_status": "token_from_literal only; whole block translation failed", "workloads": rows}
    for group in ("block_compress", "block_decompress"):
        value = statistics.geometric_mean(r["speedup"] for r in rows if r["workload"].startswith(group))
        summary[group + "_speedup"] = value
        print(f"LZ4 {group}: geometric mean {value:.3f}x")
    (root / "lz4-performance.json").write_text(json.dumps(summary, indent=2) + "\n")
