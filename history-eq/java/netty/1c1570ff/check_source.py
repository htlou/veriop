#!/usr/bin/env python3
"""Audit the precise historical virtual-call rewrite modeled by DispatchRelation."""
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/netty"
commit = "1c1570ffc43de209f46465c526faa891bd6e4a87"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)

parent = git("rev-parse", commit + "^").decode().strip()
diff = git("diff", "--no-ext-diff", parent, commit, "--", "buffer/src/main/java/")
assert diff == (here.parent / "source-screening/1c1570ff.java.diff").read_bytes()
path = "buffer/src/main/java/io/netty/buffer/AbstractByteBuf.java"
old = git("show", f"{parent}:{path}")
new = git("show", f"{commit}:{path}")
assert b"public abstract class AbstractByteBuf implements ByteBuf" in old
assert b"public abstract class AbstractByteBuf implements ByteBuf" in new
assert b"return getByte(readerIndex ++);" in old
assert b"return _getByte(readerIndex++);" in new
assert b"public byte getByte(int index)" in new
assert b"protected abstract byte _getByte(int index);" in new
model = (here / "DispatchRelation.java").read_bytes()
for stmt in (b"return getByte(readerIndex ++);", b"return _getByte(readerIndex++);"):
    assert stmt in model
print("exact historical readByte dispatch rewrite matches relation")
