#!/usr/bin/env python3
"""Rebuild the simdjson sample from screened keyword and explicit nonkeyword intents."""
from collections import Counter
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
RESULTS = ROOT / "history-eq/results"
fixed = json.loads((RESULTS / "simdjson-pinned-sample-audit.json").read_text())
topup = json.loads((RESULTS / "simdjson-topup-intent-screen.json").read_text())
first = json.loads((RESULTS / "simdjson-nonkeyword-first200-triage.json").read_text())
audit = json.loads((RESULTS / "simdjson-nonkeyword-first1197-blob-audit.json").read_text())
explicit_path = RESULTS / "simdjson-nonkeyword-explicit-intent-topup.json"
explicit = json.loads(explicit_path.read_text())
pin = fixed["pin"]
assert pin == topup["pin"] == first["pin"] == audit["pin"] == explicit["pin"]
by_draw = {entry["draw"]: entry for entry in audit["entries"]}
assert len(by_draw) == 1197

new_reasons = {
    60: "Reuses the parser's stored buffer and length instead of retrieving them again.",
    419: "Removes malloc calls from production stage-one and stage-two parsing paths.",
    555: "Reuses an aligned allocation instead of allocating again in JSON I/O.",
    541: "Reuses an existing string in the JSON builder path.",
    935: "Removes unnecessary work from number parsing.",
    1005: "Inlines get_single_implementation on the implementation-selection path.",
    1028: "Checks integer overflow without parsing the same digits again.",
    1155: "Removes an unused extra copy in stage-one document indexing.",
    1162: "Removes an unnecessary end-of-parse depth check.",
}
new_prefixes = {60: "6a71b24495", 419: "0c199cffc3", 541: "703ef54bd9",
                555: "d873ee9983", 935: "a3beac8d13",
                1005: "b7124f7c64", 1028: "d3c089130d", 1155: "ea08e7d192", 1162: "abd1399a7f"}
first_draws = {entry["draw"] for entry in first["entries"]
               if entry["screen"] == "confirmed_optimization"}
assert first_draws == {63, 71, 87, 162}
selected = {entry["draw"]: entry for entry in explicit["selected"]
            if entry["draw"] not in first_draws}
base_draws = {366, 374, 481, 1153, 1157}
assert base_draws <= set(selected) <= base_draws | set(new_reasons)
for draw, reason in new_reasons.items():
    entry = by_draw[draw]
    assert entry["commit"].startswith(new_prefixes[draw]) and entry["missing_changed_blobs"]
    if draw in selected:
        assert selected[draw]["commit"] == entry["commit"] and selected[draw]["reason"] == reason
    selected[draw] = {**entry, "reason": reason}
explicit["selected"] = [selected[draw] for draw in sorted(selected)]
explicit["added_count"] = len(selected)
explicit["method"] = ("Filter seeded nonkeyword messages for explicit runtime-work reductions and inspect changed paths; "
                      "this is not a complete optimization-intent screen of all 1197 commits.")
assert explicit["added_count"] == 14 and all(e["missing_changed_blobs"] for e in explicit["selected"])
explicit_path.write_text(json.dumps(explicit, indent=2) + "\n")

sample = [entry for source in (fixed, topup) for entry in source["entries"]
          if entry["screen"] == "confirmed_optimization"]
assert len(sample) == 96
first_selected = [entry for entry in first["entries"] if entry["screen"] == "confirmed_optimization"]
assert len(first_selected) == 4
later_reasons = {
    410: "Caches the parsed string value locally instead of reloading it.",
    428: "Removes depth tracking from the on-demand API.",
    843: "Short-circuits escape search when a backslash is found.",
}
sources = ((first_selected, "simdjson-nonkeyword-first200-triage.json",
            "exact historical changed C++ blobs missing; no Alive2 pair run"),
           ([{**by_draw[draw], "reason": reason} for draw, reason in later_reasons.items()],
            "simdjson-nonkeyword-first1197-blob-audit.json",
            "historical changed C++ blobs missing; no Alive2 old/new run"),
           (explicit["selected"], "simdjson-nonkeyword-explicit-intent-topup.json",
            "historical changed C++ blobs missing; no Alive2 old/new run"))
for entries, evidence, coverage in sources:
    for entry in entries:
        assert entry["missing_changed_blobs"]
        sample.append({"draw": entry["draw"], "commit": entry["commit"],
                       "subject": entry["subject"], "screen": "confirmed_optimization",
                       "reason": entry["reason"],
                       "missing_changed_blobs": entry["missing_changed_blobs"],
                       "selected_by": "seeded-nonkeyword", "checker_status": "not_run",
                       "verdict": "UNKNOWN", "coverage": coverage,
                       "checker_target": "Alive2", "evidence": "history-eq/results/" + evidence})
assert len(sample) == len({entry["commit"] for entry in sample}) == 117
(RESULTS / "simdjson-optimization-sample.json").write_text(json.dumps({
    "repo": "simdjson", "pin": pin,
    "selection": "all 348 keyword candidates after intent screening, plus 21 confirmed nonkeyword intents from seeded metadata review; nonkeyword intent screening remains incomplete",
    "sample_size": len(sample), "entries": sample,
    "summary": dict(Counter(entry["verdict"] for entry in sample)),
}, indent=2) + "\n")
print(json.dumps({"sample_size": len(sample), "nonkeyword_selected": len(sample) - 96,
                  "unverified_new": len(new_reasons)}, sort_keys=True))
