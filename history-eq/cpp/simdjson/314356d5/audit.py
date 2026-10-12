#!/usr/bin/env python3
"""Pin the Alive2 digit-predicate pair to simdjson's exact historical source."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/simdjson"
commit = "314356d56161847ebfedd3fed35c2b200b14bf48"
path = "include/jsonparser/numberparsing.h"


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def body(source, signature):
    start = source.index(signature)
    depth = 0
    for end in range(source.index("{", start), len(source)):
        if source[end] == "{":
            depth += 1
        elif source[end] == "}":
            depth -= 1
            if depth == 0:
                return source[source.index("{", start) : end + 1]
    raise AssertionError(signature)


parent = git("rev-parse", commit + "^").decode().strip()
archived = {}
for label, revision in (("old", parent), ("new", commit)):
    raw = git("show", f"{revision}:{path}")
    name = f"numberparsing.{label}.h.txt"
    (here / name).write_bytes(raw)
    archived[name] = {"git_path": path, "sha256": hashlib.sha256(raw).hexdigest()}

old = (here / "numberparsing.old.h.txt").read_text()
new = (here / "numberparsing.new.h.txt").read_text()
pair = (here / "digits.cpp").read_text()
old_predicate = body(old, "static inline bool is_integer(char c)")
assert re.sub(r"\s+", "", old_predicate) == "{return(c>='0'&&c<='9');}"
assert "while (is_integer(*p))" in old
assert "if ('.' == *p)" in old

historical_fast = body(new, "static inline bool is_made_of_eight_digits_fast")
extracted_fast = body(pair, 'extern "C" bool new_eight_digits(const char *chars)')
assert re.sub(r"\s+", "", historical_fast) == re.sub(r"\s+", "", extracted_fast)
assert "if (is_made_of_eight_digits_fast(p))" in new
for index in range(8):
    predicate = f"chars[{index}] >= '0' && chars[{index}] <= '9'"
    assert pair.count(predicate) == 1
assert "#define memcpy __builtin_memcpy" in pair
assert "static_assert(sizeof(uint64_t) == 8" in pair

manifest = {"commit": commit, "parent": parent, "files": archived}
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("exact historical SWAR helper and old scalar digit predicate match the Alive2 pair")
