"""Compile exact historical changed sources and run one client against both revisions."""

import json
import hashlib
import os
import subprocess
import tempfile
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/netty"
COMMIT = "59aec4b4dc61d3aeb6393d51a7155ef452fb29ee"
OUT = Path(__file__).resolve().parent / "result.json"
BUFFER = REPO / "buffer/target/netty-buffer-4.2.20.Final-SNAPSHOT.jar"
COMMON = REPO / "common/target/netty-common-4.2.20.Final-SNAPSHOT.jar"
JAVA_BIN = ROOT / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
SOURCES = ("CompositeByteBuf", "UnpooledHeapByteBuf", "HeapByteBufUtil")


def run(*args, **kwargs):
    return subprocess.run(args, check=True, text=True, capture_output=True, **kwargs).stdout


def main():
    cp = os.pathsep.join(map(str, (BUFFER, COMMON)))
    if not BUFFER.is_file() or not COMMON.is_file():
        raise RuntimeError("Pinned local Netty support JARs are missing")
    result = {"commit": COMMIT, "support_jars": {
        str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
        for p in (BUFFER, COMMON)
    }, "revisions": {}}
    with tempfile.TemporaryDirectory(prefix="veriop-netty-59aec4b4-") as temp:
        temp = Path(temp)
        for label, rev in (("parent", COMMIT + "^"), ("child", COMMIT)):
            src = temp / label / "src/io/netty/buffer"
            classes = temp / label / "classes"
            src.mkdir(parents=True)
            classes.mkdir()
            blobs = {}
            for name in SOURCES:
                path = f"buffer/src/main/java/io/netty/buffer/{name}.java"
                blob = run("git", "-C", str(REPO), "rev-parse", f"{rev}:{path}").strip()
                source = subprocess.run(
                    ("git", "-C", str(REPO), "cat-file", "blob", blob),
                    check=True, capture_output=True,
                ).stdout
                (src / (name + ".java")).write_bytes(source)
                blobs[name] = blob
            subprocess.run((str(JAVA_BIN / "javac"), "-cp", cp, "-d", str(classes),
                            *(str(src / (name + ".java")) for name in SOURCES)), check=True)
            result["revisions"][label] = {"blobs": blobs}

        client = temp / "client"
        client.mkdir()
        subprocess.run((str(JAVA_BIN / "javac"), "-cp", str(temp / "parent/classes") + os.pathsep + cp,
                        "-d", str(client), str(Path(__file__).with_name("Witness.java"))), check=True)
        for label in ("parent", "child"):
            runtime_cp = os.pathsep.join((str(temp / label / "classes"), str(client), cp))
            p = subprocess.run((str(JAVA_BIN / "java"), "-cp", runtime_cp, "Witness"),
                               text=True, capture_output=True)
            result["revisions"][label].update(
                exit_code=p.returncode, stdout=p.stdout, stderr=p.stderr)

    assert result["revisions"]["parent"]["exit_code"] == 0
    assert result["revisions"]["parent"]["stdout"] == "first=33\nnext=44\n"
    assert result["revisions"]["child"]["exit_code"] != 0
    assert result["revisions"]["child"]["stdout"] == "first=33\n"
    assert "ArrayIndexOutOfBoundsException: Index -1" in result["revisions"]["child"]["stderr"]
    OUT.write_text(json.dumps(result, indent=2) + "\n")
    print(f"parent: {result['revisions']['parent']['stdout'].strip()!r}")
    print("child: ArrayIndexOutOfBoundsException: Index -1")


if __name__ == "__main__":
    main()
