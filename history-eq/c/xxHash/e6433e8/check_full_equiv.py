#!/usr/bin/env python3
"""Audit the historical pragma/unused-local edit and replay whole-TU Alive2 equality."""

import json
import os
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
OUT = HERE / "full-source-proof"
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
REV = "e6433e8d"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(args, **kwargs):
    return subprocess.run(args, check=True, capture_output=True, text=True, env=ENV, **kwargs)


parent = run(["git", "-C", str(REPO), "rev-parse", REV + "^"]).stdout.strip()
changed = run(["git", "-C", str(REPO), "diff-tree", "--no-commit-id", "--name-only",
               "-r", parent, REV]).stdout.splitlines()
assert changed == [".travis.yml", "xxh3.h"]
blobs = {}
for name in ("xxh3.h", "xxhash.c", "xxhash.h"):
    for side, rev in (("old", parent), ("new", REV)):
        expected = run(["git", "-C", str(REPO), "rev-parse", f"{rev}:{name}"]).stdout.strip()
        actual = run(["git", "hash-object", str(HERE / side / name)]).stdout.strip()
        assert actual == expected, (side, name)
        blobs[f"{side}/{name}"] = actual

old = (HERE / "old/xxh3.h").read_text()
new = (HERE / "new/xxh3.h").read_text()
pragma = ("    /* Clang doesn't unroll this loop without the pragma. Unrolling can be up to 1.4x faster. */\n"
          "#if defined(__clang__) && !defined(__OPTIMIZE_SIZE__)\n"
          "#  pragma clang loop unroll(enable)\n#endif\n")
anchor = "    size_t n;\n    for (n = 0; n < nbStripes; n++ ) {"
assert old.count("    U64 t;\n") == old.count(anchor) == 1
assert old.replace("    U64 t;\n", "", 1).replace(
    anchor, "    size_t n;\n" + pragma + "    for (n = 0; n < nbStripes; n++ ) {") == new
arm = old[old.index("#elif defined(__GNUC__) /* GCC-compatible */"):
          old.index("#else /* Portable scalar version */")]
assert re.findall(r"\bt\b", arm) == ["t"]
assert all((HERE / "old" / name).read_bytes() == (HERE / "new" / name).read_bytes()
           for name in ("xxhash.c", "xxhash.h"))

OUT.mkdir(exist_ok=True)
for side in ("old", "new"):
    run([str(CLANG), "-std=c99", "-O0", "-Drestrict=", "-S", "-emit-llvm",
         "-fno-ident", "xxhash.c", "-o", str(OUT / f"{side}.ll")], cwd=HERE / side)
old_ir = (OUT / "old.ll").read_text()
new_ir = (OUT / "new.ll").read_text()
metadata = re.search(r'(?m)^!(\d+) = distinct !\{!\1, !(\d+)\}\n!\2 = !\{!"llvm\.loop\.unroll\.enable"\}\n', new_ir)
assert metadata is not None
tag = f", !llvm.loop !{metadata.group(1)}"
assert new_ir.count(tag) == 1
assert new_ir.replace(tag, "").replace(metadata.group(), "") == old_ir
names = re.findall(r"(?m)^define .*?@([^ (]+)\(", old_ir)
assert len(names) == len(set(names)) == 49
assert re.findall(r"(?m)^define .*?@([^ (]+)\(", new_ir) == names

for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
    result = run([str(ALIVE), str(OUT / f"{first}.ll"), str(OUT / f"{second}.ll"),
                  "--smt-to", "10000"])
    (OUT / f"alive-{direction}.log").write_text(result.stdout + result.stderr)
    assert "49 correct transformations" in result.stdout
    assert all(f"0 {kind}" in result.stdout for kind in
               ("incorrect transformations", "failed-to-prove transformations", "Alive2 errors"))

audit = {"parent": parent, "child": run(["git", "-C", str(REPO), "rev-parse", REV]).stdout.strip(),
         "git_blobs": blobs, "changed_paths": changed,
         "source_delta": "one unused ARM local removed; one Clang loop-unroll pragma inserted",
         "ir_config": "clang-20 -std=c99 -O0 -Drestrict=; no loop bound or input precondition",
         "ir_delta": "only llvm.loop.unroll.enable metadata; executable LLVM instructions identical",
         "functions": len(names), "forward": "49 correct; 0 incorrect/unknown/errors",
         "backward": "49 correct; 0 incorrect/unknown/errors"}
(OUT / "audit.json").write_text(json.dumps(audit, indent=2) + "\n")
(OUT / "result.json").write_text(json.dumps({
    "verdict": "EQUIV", "functions": {name: {"fwd": "correct", "bwd": "correct"} for name in names},
}, indent=2) + "\n")
print("49/49 historical translation-unit functions pass Alive2 in both directions")
