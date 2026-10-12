#!/usr/bin/env python3
"""Draw 200 uniformly by hash rank from all currently identified Compress optimizations."""
from collections import Counter
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
RESULTS = ROOT / "history-eq/results"
SEED = "veriop-compress-identified-v1"
keyword = json.loads((RESULTS / "compress-keyword200-sample.json").read_text())
tail = json.loads((RESULTS / "compress-topup-tail-intent-screen.json").read_text())
nonkeyword = json.loads((RESULTS / "compress-nonkeyword-explicit-intents.json").read_text())
assert keyword["pin"] == tail["pin"] == nonkeyword["pin"]
assert len(keyword["entries"]) == 200
tail_confirmed = [e for e in tail["entries"] if e["screen"] == "confirmed_optimization"]
assert len(tail_confirmed) == 56 and len(nonkeyword["entries"]) == 11

outside_gobra = {
    "156c8d0e": "Adds a new Best compression mode without an old same-mode function pair.",
    "b87d2c41": "Adds a new no-entropy-compression option without an old same-option pair.",
    "26e60fbc": "Adds a new WriterTo interface without an old same-interface pair.",
    "2222c2c7": "Changes a noescape compiler annotation, outside Gobra's source-value relation.",
    "ef0aeb77": "Changes a noescape compiler annotation, outside Gobra's source-value relation.",
}


def classify_extra(entry, population_source):
    paths = {item["path"] for item in entry["missing_changed_blobs"]}
    assert paths
    prefix = entry["commit"][:8]
    if prefix == "e0224764":
        assert entry["commit"] == "e022476498e6a3cc23ba4540dab98378eafc5d74"
        case = ROOT / "history-eq/gobra/compress/e0224764"
        assert "old 6149384aaf9fec52cd3dfd9f4162e6dd3e09ce85" in (case / "source-recovery.log").read_text()
        assert "new b897261a134b37629525987fd8b36af16505fe02" in (case / "source-recovery.log").read_text()
        assert "Gobra found 0 errors" in (case / "gobra.log").read_text()
        assert "PASS" in (case / "go-test.log").read_text()
        return {**entry, "screen": "confirmed_optimization",
                "population_source": population_source,
                "selected_by": "identified-population-hash-draw",
                "source_status": "exact_historical_blobs_recovered",
                "checker_target": "Gobra", "checker_status": "checked",
                "verdict": "EQUIV_PARTIAL",
                "coverage": "arbitrary-offset old/new eight-byte and tail-byte slice relation; complete matchLen loop unproved",
                "evidence": "history-eq/gobra/compress/e0224764/README.md"}
    assembly = any(path.endswith((".s", ".s.in")) for path in paths)
    unsupported = assembly or prefix in outside_gobra
    reason = ("Whole optimization changes assembly outside the selected Gobra relation."
              if assembly else outside_gobra.get(prefix, "Exact historical changed source is unavailable."))
    return {**entry, "screen": "confirmed_optimization", "population_source": population_source,
            "selected_by": "identified-population-hash-draw",
            "source_status": "missing_changed_blob", "checker_target": "Gobra",
            "checker_status": "not_run", "verdict": "UNSUPPORTED" if unsupported else "UNKNOWN",
            "coverage": reason + " No old/new checker run.",
            "evidence": ("history-eq/results/compress-topup-tail-intent-screen.json"
                         if population_source == "keyword_tail" else
                         "history-eq/results/compress-nonkeyword-explicit-intents.json")}


frame = [{**e, "population_source": "keyword_first200"} for e in keyword["entries"]]
frame += [classify_extra(e, "keyword_tail") for e in tail_confirmed]
frame += [classify_extra(e, "nonkeyword_explicit") for e in nonkeyword["entries"]]
assert len(frame) == len({e["commit"] for e in frame}) == 267
assert all(e.get("verdict") in {"EQUIV", "EQUIV_PARTIAL", "UNKNOWN", "UNSUPPORTED"} for e in frame)


def rank(entry):
    return hashlib.sha256((SEED + ":" + entry["commit"]).encode()).hexdigest()


draw = sorted(frame, key=rank)[:200]
assert len(draw) == len({e["commit"] for e in draw}) == 200
assert Counter(e["population_source"] for e in draw) == {
    "keyword_first200": 150, "keyword_tail": 43, "nonkeyword_explicit": 7}
metadata = {
    "repo": "compress", "pin": keyword["pin"], "seed": SEED,
    "rank_rule": "ascending SHA-256 of UTF-8 seed, colon, full commit SHA",
    "frame_size": len(frame),
    "frame_limit": "267 currently identified optimization intents; nonkeyword history has not had complete intent screening",
}
(RESULTS / "compress-identified-optimization-frame.json").write_text(json.dumps({
    **metadata, "entries": sorted(frame, key=lambda e: e["commit"]),
    "summary": dict(Counter(e["population_source"] for e in frame))}, indent=2) + "\n")
(RESULTS / "compress-optimization-sample.json").write_text(json.dumps({
    **metadata, "selection": "first 200 hash-ranked commits from the 267-item identified frame",
    "sample_size": len(draw), "entries": draw,
    "summary": dict(Counter(e["verdict"] for e in draw)),
    "source_mix": dict(Counter(e["population_source"] for e in draw))}, indent=2) + "\n")
print(json.dumps({"frame": len(frame), "sample": len(draw),
                  "source_mix": dict(Counter(e["population_source"] for e in draw)),
                  "verdicts": dict(Counter(e["verdict"] for e in draw))}, sort_keys=True))
