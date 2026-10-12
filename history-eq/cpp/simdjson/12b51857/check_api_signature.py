#!/usr/bin/env python3
"""Check whether one old ParsedJson client type-checks with both revisions."""

import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/simdjson"
commit = "12b518578d9535fad495029772c028476d17a519"
path = "include/jsonparser/simdjson_internal.h"
expected = {"old": "b61f769d6ff0bd7b542e1ec6960e79ff20b62871",
            "new": "0e4f4c06697c714e57d60420f208d82b37422910"}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
probe = here / "api_signature_probe.cpp"
assert "OldPrintJson old_client_call = &ParsedJson::printjson;" in probe.read_text()
result = {"commit": commit, "scope": "old C++ source client taking void ParsedJson::printjson() pointer",
          "source_blobs": expected, "runs": {}}
for side, revision in (("old", commit + "^"), ("new", commit)):
    oid = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
                                  env=env, text=True).strip()
    assert oid == expected[side]
    assert subprocess.check_output(["git", "hash-object", str(here / f"{side}.h")],
                                   text=True).strip() == oid
    run = subprocess.run(["g++", "-std=c++11", "-fsyntax-only",
                          f'-DHISTORICAL_HEADER="{side}.h"', "-I", str(here), str(probe)],
                         capture_output=True, text=True)
    (here / f"api-signature-{side}.log").write_text(run.stdout + run.stderr)
    if side == "old":
        assert run.returncode == 0, run.stderr
    else:
        assert run.returncode != 0 and "bool (ParsedJson::*)()" in run.stderr \
            and "void (ParsedJson::*)()" in run.stderr, run.stderr
    result["runs"][side] = {"exit_code": run.returncode,
                            "diagnostic": run.stderr.strip()}

result["verdict"] = "NOT_EQUIV for the old C++ source API client; valid JSON output unverified"
(here / "api-signature-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["verdict"])
