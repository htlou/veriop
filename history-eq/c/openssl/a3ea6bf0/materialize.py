#!/usr/bin/env python3
"""Archive exact a_int.c revisions and make an Alive2 witness model."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/openssl"
commit = "a3ea6bf0ef703b38a656245931979c7e53c410b7"
path = "crypto/asn1/a_int.c"


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def function(source, signature):
    start = source.index(signature)
    end = source.index("\n}\n", start) + 2
    return source[start:end]


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "path": path, "files": {}}
sources = {}
for label, revision in (("old", parent), ("new", commit)):
    raw = git("show", f"{revision}:{path}")
    name = f"a_int.{label}.c.txt"
    (here / name).write_bytes(raw)
    manifest["files"][name] = hashlib.sha256(raw).hexdigest()
    sources[label] = raw.decode()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")

old = function(sources["old"], "static size_t c2i_ibuf(")
new = function(sources["new"], "static size_t c2i_ibuf(")
twos = function(sources["new"], "static void twos_complement(")
assert "if (i == plen)" in old
assert "p += pad;" in new and "plen -= pad;" in new
assert "twos_complement(b, p, plen, neg ? 0xffU : 0);" in new

model = """#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#define ASN1err(a, b) ((void)0)
#define OPENSSL_assert(c) assert(c)
"""
model += twos + "\n\n"
model += old.replace("static size_t c2i_ibuf(", "static size_t c2i_ibuf_old(", 1) + "\n\n"
model += new.replace("static size_t c2i_ibuf(", "static size_t c2i_ibuf_new(", 1) + "\n\n"
model += """int src(void) {
    const unsigned char p[2] = {0xff, 0x00};
    unsigned char b[2] = {0xaa, 0xaa};
    int neg = 0;
    size_t n = c2i_ibuf_old(b, &neg, p, 2);
    return ((int)n << 8) | b[0];
}
int tgt(void) {
    const unsigned char p[2] = {0xff, 0x00};
    unsigned char b[2] = {0xaa, 0xaa};
    int neg = 0;
    size_t n = c2i_ibuf_new(b, &neg, p, 2);
    return ((int)n << 8) | b[0];
}
int main(void) {
    printf("old=%#x new=%#x\\n", src(), tgt());
    return src() == tgt();
}
"""
(here / "model.c").write_text(model)
print("archived exact old/new a_int.c and generated witness model")
