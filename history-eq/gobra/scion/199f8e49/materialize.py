#!/usr/bin/env python3
"""Archive the historical receiver change and make a method-set witness."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/scion"
commit = "199f8e4924db1e2cfcaacf46019bd47109fd4a2c"
path = "pkg/slayers/path/onehop/onehop.go"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", commit + "^").decode().strip()
files = {"source.diff": git("diff", parent, commit, "--", path)}
for side, rev in (("old", parent), ("new", commit)):
    source = git("show", f"{rev}:{path}")
    files[f"onehop.{side}.go"] = source
    signature = re.search(r"func \(o (\*?Path)\) Reverse\(\) \(path\.Path, error\) \{", source.decode())
    assert signature is not None
    body = ("package onehop\n\nimport \"example.com/methodset/path\"\n\n"
            "type Path struct{}\n\n" + signature.group(0) + "\n"
            "    return nil, nil\n}\n")
    files[f"witness/{side}/onehop/onehop.go"] = body.encode()
    files[f"witness/{side}/path/path.go"] = b"package path\n\ntype Path interface{}\n"
    files[f"witness/{side}/go.mod"] = b"module example.com/methodset\n\ngo 1.26\n"
    files[f"witness/{side}/client/client.go"] = (
        b"package client\n\nimport \"example.com/methodset/onehop\"\n"
        b"import \"example.com/methodset/path\"\n\n"
        b"type Reverser interface { Reverse() (path.Path, error) }\n"
        b"var _ Reverser = onehop.Path{}\n"
    )
    files[f"witness/{side}/pointeronly/pointer.go"] = (
        b"package pointeronly\n\nimport \"example.com/methodset/onehop\"\n"
        b"import \"example.com/methodset/path\"\n\n"
        b"type Reverser interface { Reverse() (path.Path, error) }\n"
        b"var _ Reverser = &onehop.Path{}\n"
    )
for name, data in files.items():
    target = here / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(data)
(here / "source_manifest.json").write_text(json.dumps({
    "commit": commit, "parent": parent,
    "source_sha256": {name: hashlib.sha256(data).hexdigest()
                      for name, data in files.items()},
}, indent=2) + "\n")
