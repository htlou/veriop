#!/usr/bin/env python3
"""Archive exact historical ByteString sources and build a branch witness."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/netty"
commit = "c2de195f872506dacd5df5cd5507b49e1669790d"
path = "common/src/main/java/io/netty/util/ByteString.java"


def git(*args):
    env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


def extract_equals(source):
    start = source.index("    @Override\n    public boolean equals(Object obj) {")
    end = source.index("\n    /**", start)
    return source[start:end].rstrip() + "\n"


def extract_hash(source):
    start = source.index("    @Override\n    public int hashCode() {")
    end = source.index("\n    /**", start)
    return source[start:end].rstrip() + "\n"


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "path": path, "files": {}}
for label, revision, package in (("old", parent, "parent"), ("new", commit, "child")):
    raw = git("show", f"{revision}:{path}")
    name = f"ByteString.{label}.java.txt"
    (here / name).write_bytes(raw)
    manifest["files"][name] = hashlib.sha256(raw).hexdigest()
    source = raw.decode()
    assert "public class ByteString" in source
    assert "public int hashCode()" in source
    assert "public final int length()" in source
    method = extract_equals(source)
    hash_method = extract_hash(source)
    (here / f"equals.{label}.java.txt").write_text(method)
    (here / f"hashCode.{label}.java.txt").write_text(hash_method)
    # The witness runs the exact old/new equals bodies. Its minimal class shell
    # preserves virtual hashCode dispatch and final length/array methods.
    shell = f"""package {package};
public class ByteString {{
    protected static final int HASH_CODE_PRIME = 31;
    protected final byte[] value;
    private int hash;
    public ByteString(byte[] value) {{ this.value = value; }}
    public final int length() {{ return value.length; }}
    public final byte[] array() {{ return value; }}
{hash_method}
    public static final class Throwing extends ByteString {{
        public Throwing(byte[] value) {{ super(value); }}
        @Override public int hashCode() {{ throw new IllegalStateException("hashCode called"); }}
    }}
{method}
}}
"""
    directory = here / package
    directory.mkdir(exist_ok=True)
    (directory / "ByteString.java").write_text(shell)

(here / "child/PlatformDependent.java").write_text("""package child;
public final class PlatformDependent {
    public static boolean equals(byte[] a, int a0, int a1, byte[] b, int b0, int b1) {
        if (a1 - a0 != b1 - b0) return false;
        for (int i = 0; i < a1 - a0; i++) if (a[a0 + i] != b[b0 + i]) return false;
        return true;
    }
}
""")
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
