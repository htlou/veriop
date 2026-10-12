"""Restore both exact historical regex-syntax source trees from local blobs."""

import hashlib
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/regex"
REGISTRY = next((ROOT / "aeneas/env/cargo/registry/src").glob("*/regex-syntax-0.8.11"))
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
OUT = Path("/tmp/regex-9825")


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


for side, rev in (("old", "9825c741c^"), ("new", "9825c741c")):
    dest = OUT.with_name(OUT.name + "-" + side)
    entries = git("ls-tree", "-r", rev, "regex-syntax/").decode().splitlines()
    for entry in entries:
        meta, path = entry.split("\t")
        oid = meta.split()[2]
        if path == "regex-syntax/Cargo.toml":
            data = (REGISTRY / "Cargo.toml.orig").read_bytes().replace(
                b'version = "0.8.11"  #:version',
                b'version = "0.8.10"  #:version',
            )
        elif path == "regex-syntax/src/hir/mod.rs":
            data = (REGISTRY / "src/hir/mod.rs").read_bytes()
        else:
            data = git("cat-file", "blob", oid)
        actual = hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest()
        assert actual == oid, (rev, path, actual, oid)
        target = dest / path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    # Cargo's root workspace manifest is unavailable; this minimal one supplies
    # only the inherited package.include setting and changes no crate source.
    (dest / "Cargo.toml").write_text(
        '[workspace]\nmembers = ["regex-syntax"]\nresolver = "2"\n'
        '[workspace.package]\ninclude = ["regex-syntax/**"]\n'
    )
    print(side, len(entries), "historical crate blobs verified")
