#!/usr/bin/env python3
"""Check exact historical Util methods with KeY and native controls."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
java_home = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64"
revisions = {
    "old": "39a6de27bae195bc69048e51b2e8d4240547bd98",
    "new": "c9dc48eb803850b2df073560ce02191c3c1d865b",
}
path = "RoaringBitmap/src/main/java/org/roaringbitmap/Util.java"


def method(source):
    marker = "public static void partialRadixSort(int[] data) {"
    start = source.index(marker)
    brace = source.index("{", start)
    depth = 1
    end = brace + 1
    while depth:
        depth += (source[end] == "{") - (source[end] == "}")
        end += 1
    return source[start:end]


result = {"revisions": revisions, "source_blobs": {}, "native": {}, "key": {}}
sources = {}
with tempfile.TemporaryDirectory(prefix="veriop-roaring-radix-") as temp_name:
    temp = Path(temp_name)
    for label, rev in revisions.items():
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
        ).strip()
        source = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
        )
        sources[label] = source
        result["source_blobs"][label] = oid
        classes = temp / label / "classes"
        classes.mkdir(parents=True)
        java_file = temp / label / "Util.java"
        java_file.write_text(source)
        build = subprocess.run(
            [str(java_home / "bin/javac"), "-cp", str(jar), "-d", str(classes),
             str(java_file), str(here / "Witness.java")],
            capture_output=True, text=True,
        )
        assert build.returncode == 0, build.stderr
        run = subprocess.run(
            [str(java_home / "bin/java"), "-cp", f"{classes}:{jar}", "Witness"],
            capture_output=True, text=True, check=True,
        )
        result["native"][label] = run.stdout.strip()
    assert result["native"]["old"] == result["native"]["new"]

old_method = method(sources["old"]).replace("partialRadixSort", "oldSort", 1)
new_method = method(sources["new"]).replace("partialRadixSort", "newSort", 1)
template = (here / "RadixRelation.template.txt").read_text()
relation = template.replace("  // SOURCE_METHODS", "  " + old_method + "\n\n  " + new_method)
key_dir = here / "key"
key_dir.mkdir(exist_ok=True)
relation_path = key_dir / "RadixRelation.java"
relation_path.write_text(relation)
result["relation_sha256"] = hashlib.sha256(relation.encode()).hexdigest()

key = root / "benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar"
run = subprocess.run(
    [str(java_home / "bin/java"), f"-Duser.home={key_dir}", "-jar", str(key),
     "--auto", "--timeout=30000", str(relation_path)],
    input="0\n", capture_output=True, text=True, timeout=75,
    env={**os.environ, "HOME": str(key_dir)},
)
output = run.stdout + run.stderr
(here / "key.log").write_text(output)
result["key"] = {"exit_code": run.returncode, "proved": "Proved" in output and "0 open goals" in output,
                 "open_goals": 1 if "Number of goals remaining open: 1" in output else None,
                 "strategy_error": "IProgramMethod.isStatic NullPointerException" if "IProgramMethod.isStatic()" in output else None,
                 "diagnostic": "see key.log"}
result["key_partial"] = {}
for name, relation, log_path in (
    ("two_element_buffer_values", key_dir / "SwapParityRelation.java", key_dir / "swap-parity.log"),
    ("arbitrary_array_reference_parity", here / "key-reference/SwapReferenceRelation.java",
     here / "key-reference/key.log"),
):
    with tempfile.TemporaryDirectory(prefix="veriop-key-radix-") as key_home:
        partial = subprocess.run(
            [str(java_home / "bin/java"), f"-Duser.home={key_home}", "-jar", str(key),
             "--auto", "--timeout=60000", str(relation)],
            input="0\n", capture_output=True, text=True, timeout=75,
        )
    partial_output = partial.stdout + partial.stderr
    log_path.write_text(partial_output)
    proved = (partial.returncode == 0 and "Number of goals remaining open: 0" in partial_output
              and " - Proved" in partial_output)
    assert proved, (name, partial.returncode, partial_output[-1000:])
    result["key_partial"][name] = {"proved": True, "log": str(log_path.relative_to(here)),
                                   "relation": str(relation.relative_to(here))}
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"native hashes match; full KeY proved={result['key']['proved']}; two partial KeY proofs closed")
