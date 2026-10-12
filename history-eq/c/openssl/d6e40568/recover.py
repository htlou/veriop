#!/usr/bin/env python3
"""Recover the missing historical BIO dump parent and extract its public function."""

import hashlib
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/openssl"
commit = "d6e4056805f54bb1a0ef41fa3a6a35b70c94edba"
path = "crypto/bio/bio_dump.c"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def oid(data: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


child = subprocess.check_output(["git", "-C", str(repo), "show", f"{commit}:{path}"], env=env)
new = b'        if (++j >= width) {\n            j = 0;\n            BIO_printf(out, "\\n");\n        }'
old = b'        j = (j + 1) % width;\n        if (!j)\n            BIO_printf(out, "\\n");'
assert child.count(new) == 1
parent = child.replace(new, old)
for side, revision, data in (("old", commit + "^", parent), ("new", commit, child)):
    expected = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
        env=env, text=True,
    ).strip()
    assert oid(data) == expected, (side, expected, oid(data))
    target = here / f"bio_dump.{side}.c"
    if target.exists():
        assert target.read_bytes() == data
    else:
        target.write_bytes(data)
    print(side, expected)
    source = data.decode()
    start = source.index("int BIO_hex_string(")
    end = source.index("\n}\n", start) + 2
    body = source[start:end].replace("int BIO_hex_string(", f"int BIO_hex_string_{side}(", 1)
    (here / f"hex.{side}.c").write_text("#include <openssl/bio.h>\n\n" + body + "\n")
    changed = old if side == "old" else new
    assert data.count(changed) == 1
    step = changed.decode().replace('BIO_printf(out, "\\n");', "newline = 1;")
    common = "    int newline = 0;\n" + step + "\n    return ((uint64_t)(uint32_t)j << 1) | (uint64_t)newline;\n"
    model = ("#include <stdint.h>\n\n"
             "uint64_t step_all(int j, int width) {\n" + common + "}\n\n"
             "uint64_t step_positive(int j, int width) {\n"
             "    if (width <= 0 || j < 0 || j >= width) return 0;\n" + common + "}\n")
    (here / f"step.{side}.c").write_text(model)
