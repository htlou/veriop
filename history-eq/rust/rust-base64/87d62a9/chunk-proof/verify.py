#!/usr/bin/env python3
"""Prove the exact-source eight-byte decode rewrite at one loop iteration."""

import os
from pathlib import Path
import subprocess


root = Path(__file__).resolve().parents[5]
out = Path(__file__).resolve().parent
repo = root / "aeneas/repos/rust-base64"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, text=True, env=env).stdout


old_oid = "1708872f7065b8e571c93b373ca5ebce7dc8113b"
new_oid = "636dd2bcf729dfa0305d1710bdeffc31fbd9392d"
assert git("rev-parse", "87d62a9^:src/lib.rs").strip() == old_oid
assert git("rev-parse", "87d62a9:src/lib.rs").strip() == new_oid
old = git("cat-file", "blob", old_oid)
new = git("cat-file", "blob", new_oid)
table_oid = "c377375aaf29617b6eb9f76c7b6b437a1684bd29"
assert git("rev-parse", "87d62a9^:src/decode_tables.rs").strip() == table_oid
assert git("rev-parse", "87d62a9:src/decode_tables.rs").strip() == table_oid
assert "pub const INVALID_VALUE: u8 = 255;" in git("cat-file", "blob", table_oid)


def chunk(source):
    start = source.index("while input_index < length_of_full_chunks")
    stop = source.index("BigEndian::write_u64", start)
    return source[start:stop]


old_chunk, new_chunk = chunk(old), chunk(new)
assert old_chunk.count("decode_table_entry(input_bytes, *decode_table, input_index") == 8
assert new_chunk.count("let morsel = decode_table[") == 8
assert "BigEndian::read_u64(&input_bytes[input_index..(input_index + 8)])" in new_chunk
assert "if morsel == decode_tables::INVALID_VALUE" in new_chunk
assert "return Err(Base64Error::InvalidByte(input_index + 7" in new_chunk
assert "if morsel == decode_tables::INVALID_VALUE" in old[old.index("fn decode_table_entry"):]

byteorder = root / "aeneas/env/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/byteorder-1.5.0/src/lib.rs"
assert "u64::from_be_bytes(buf[..8].try_into().unwrap())" in byteorder.read_text()


def fold(op, values):
    result = values[0]
    for value in values[1:]:
        result = f"({op} {result} {value})"
    return result


lines = ["(set-logic QF_AUFBV)",
         "(declare-fun table () (Array (_ BitVec 8) (_ BitVec 8)))"]
for i in range(8):
    lines.append(f"(declare-fun b{i} () (_ BitVec 8))")
lines.append(f"(define-fun chunk () (_ BitVec 64) {fold('concat', [f'b{i}' for i in range(8)])})")
for i in range(8):
    hi = 63 - 8 * i
    lo = hi - 7
    lines.append(f"(define-fun old_v{i} () (_ BitVec 8) (select table b{i}))")
    lines.append(f"(define-fun new_b{i} () (_ BitVec 8) ((_ extract {hi} {lo}) chunk))")
    lines.append(f"(define-fun new_v{i} () (_ BitVec 8) (select table new_b{i}))")

for side in ("old", "new"):
    error = "#x0800"  # No invalid byte in the eight-byte chunk.
    for i in reversed(range(8)):
        byte = f"b{i}" if side == "old" else f"new_b{i}"
        error = f"(ite (= {side}_v{i} #xff) (concat #x0{i} {byte}) {error})"
    lines.append(f"(define-fun {side}_error () (_ BitVec 16) {error})")
    parts = [f"(bvshl ((_ zero_extend 56) {side}_v{i}) (_ bv{58 - 6 * i} 64))"
             for i in range(8)]
    lines.append(f"(define-fun {side}_accum () (_ BitVec 64) {fold('bvor', parts)})")

lines += ["(assert (not (= old_error new_error)))", "(check-sat)",
          "(reset-assertions)",
          "(assert (= old_error #x0800))",
          "(assert (= new_error #x0800))",
          "(assert (not (= old_accum new_accum)))", "(check-sat)"]
mutant_error = "#x0800"
for i in reversed(range(8)):
    byte = f"b{7 - i}"
    mutant_error = f"(ite (= (select table {byte}) #xff) (concat #x0{i} {byte}) {mutant_error})"
lines += [f"(define-fun mutant_error () (_ BitVec 16) {mutant_error})",
          "(reset-assertions)", "(assert (not (= old_error mutant_error)))", "(check-sat)"]
query = "\n".join(lines) + "\n"
(out / "chunk.smt2").write_text(query)
z3 = root / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
result = subprocess.run([str(z3), "-smt2", str(out / "chunk.smt2")],
                        check=True, capture_output=True, text=True)
(out / "z3.log").write_text(result.stdout)
assert result.stdout.splitlines() == ["unsat", "unsat", "sat"], result.stdout
print("PASS: equal first-invalid byte/offset and equal packed accumulator for all eight bytes and arbitrary decode table")
