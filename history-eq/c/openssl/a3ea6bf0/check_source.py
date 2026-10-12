#!/usr/bin/env python3
"""Check archived source and model bodies without regenerating either."""

import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
manifest = json.loads((here / "source_manifest.json").read_text())
assert manifest["commit"] == "a3ea6bf0ef703b38a656245931979c7e53c410b7"
assert manifest["path"] == "crypto/asn1/a_int.c"


def function(source, signature):
    start = source.index(signature)
    end = source.index("\n}\n", start) + 2
    return source[start:end]


sources = {}
for label in ("old", "new"):
    name = f"a_int.{label}.c.txt"
    raw = (here / name).read_bytes()
    assert hashlib.sha256(raw).hexdigest() == manifest["files"][name]
    sources[label] = raw.decode()

model = (here / "model.c").read_text()
old = function(sources["old"], "static size_t c2i_ibuf(")
new = function(sources["new"], "static size_t c2i_ibuf(")
twos = function(sources["new"], "static void twos_complement(")
assert old.replace("static size_t c2i_ibuf(", "static size_t c2i_ibuf_old(", 1) in model
assert new.replace("static size_t c2i_ibuf(", "static size_t c2i_ibuf_new(", 1) in model
assert twos in model
assert "const unsigned char p[2] = {0xff, 0x00};" in model
assert "return ((int)n << 8) | b[0];" in model
assert function(sources["old"], "ASN1_INTEGER *c2i_ASN1_INTEGER(") == function(sources["new"], "ASN1_INTEGER *c2i_ASN1_INTEGER(")
print("exact historical c2i_ibuf bodies and unchanged public caller match archived source")
