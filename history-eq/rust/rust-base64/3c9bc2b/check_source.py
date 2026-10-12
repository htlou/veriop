#!/usr/bin/env python3
"""Lock the one-chunk error model to the historical base64 sources."""

import hashlib
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
repo = here.parents[3] / "aeneas/repos/rust-base64"
commit = "3c9bc2b15360f9313988ac7995153a220ed80607"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


sources = {}
full_sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    data = git("show", rev + ":src/lib.rs")
    oid = git("rev-parse", rev + ":src/lib.rs").decode().strip()
    assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == oid
    (here / f"lib.{side}.rs").write_bytes(data)
    source = data.decode()
    full_sources[side] = source
    start = source.index("while input_index < length_of_full_chunks {")
    end = source.index("BigEndian::write_u64", start)
    sources[side] = source[start:end]

old, new = sources["old"], sources["new"]
old_accum = re.findall(r"^\s*accum\s*(?:\|=|=).*;$", old, re.MULTILINE)
new_accum = re.findall(r"^\s*accum\s*(?:\|=|=).*;$", new, re.MULTILINE)
assert old_accum == new_accum and len(old_accum) == 8
write_tails = {}
for side, source in full_sources.items():
    write_start = source.index("BigEndian::write_u64", source.index("while input_index < length_of_full_chunks {"))
    loop_end = source.index("        };", write_start)
    write_tails[side] = source[write_start:loop_end]
    assert "buffer_slice" not in sources[side]
assert write_tails["old"] == write_tails["new"]
old_offsets = re.findall(r"return Err\(Base64Error::InvalidByte\(input_index(?: \+ (\d))?,", old)
new_offsets = re.findall(r"bad_byte_index = input_index(?: \+ (\d))?;", new)
assert old_offsets == new_offsets == ["", "1", "2", "3", "4", "5", "6", "7"]
assert len(re.findall(r"if morsel == decode_tables::INVALID_VALUE", old)) == 8
assert len(re.findall(r"if morsel == decode_tables::INVALID_VALUE", new)) == 8
assert new.count("break;") == 8
for shift in range(56, 0, -8):
    assert f"input_chunk >> {shift}" in old and f"input_chunk >> {shift}" in new
assert "input_chunk & 0xFF" in old and "input_chunk & 0xFF" in new
assert "if morsel == decode_tables::INVALID_VALUE {" in new
assert "return Err(Base64Error::InvalidByte(bad_byte_index, (selected_input_byte & 0xFF) as u8));" in full_sources["new"]

table = git("show", commit + ":src/decode_tables.rs")
assert table == git("show", commit + "^:src/decode_tables.rs")
assert b"pub const INVALID_VALUE: u8 = 255;" in table
model = (here / "error_scan.rs").read_text()
assert "const INVALID: u8 = 255;" in model
model_old, model_new = model.split("pub fn new_scan(")
for i in range(8):
    assert f"if m{i} == INVALID" in model_old and f"if m{i} == INVALID" in model_new
    assert f"Some(({i}, b{i}))" in model_old
    assert f"({i}, b{i}, m{i})" in model_new
assert "if morsel == INVALID { Some((bad_index, selected_byte)) } else { None }" in model_new
(here / "decode_tables.rs").write_bytes(table)
(here / "source.diff").write_bytes(git("diff", commit + "^", commit, "--", "src/lib.rs"))
print("historical blobs, all eight error positions, and successful chunk writes match the model's scope")
