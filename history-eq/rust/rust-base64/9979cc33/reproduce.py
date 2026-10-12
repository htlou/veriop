#!/usr/bin/env python3
"""Prove the selected historical decode_suffix bit-packing rewrite with Z3."""

import json
import os
import subprocess
from itertools import product
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/rust-base64"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
COMMIT = "9979cc33bb964b4ee36898773a01f546d2c6487a"
PARENT = "37670c5ec224eec3af9778fb371c5529dfab52af"
PATH = "src/engine/general_purpose/decode_suffix.rs"
OLD_OID = "e1e005d25b50bcc37df84588f518e7c16180b9df"
NEW_OID = "6f4a10efa853ea1876a4de0ad1d53b987ec91dae"


def git(*args):
    env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env).decode()


assert git("rev-parse", COMMIT).strip() == COMMIT
assert git("rev-parse", COMMIT + "^").strip() == PARENT
assert git("rev-parse", f"{PARENT}:{PATH}").strip() == OLD_OID
assert git("rev-parse", f"{COMMIT}:{PATH}").strip() == NEW_OID
old = git("show", f"{PARENT}:{PATH}")
new = git("show", f"{COMMIT}:{PATH}")

assert "let mut leftover_bits: u64 = 0;" in old
assert "let shift = 64 - (morsels_in_leftover + 1) * 6;" in old
assert "leftover_bits |= (morsel as u64) << shift;" in old
assert "let mut morsels = [0_u8; 8];" in new
assert "morsels[morsels_in_leftover] = morsel;" in new
for i, shift in enumerate((58, 52, 46, 40, 34, 28, 22, 16)):
    assert f"u64::from(morsels[{i}]) << {shift}" in new
assert "let leftover_bytes_to_append = morsels_in_leftover * 6 / 8;" in new
assert "let leftover_bits_to_append = leftover_bytes_to_append * 8;" in new
assert "let mask = !0 >> leftover_bits_ready_to_append;" in old
assert "let mask = !0 >> leftover_bits_to_append;" in new
assert "while leftover_bits_appended_to_buf < leftover_bits_ready_to_append" in old
assert "while leftover_bits_appended_to_buf < leftover_bits_to_append" in new
for source_text in (old, new):
    assert "let selected_bits = (leftover_bits >> (56 - leftover_bits_appended_to_buf)) as u8;" in source_text
for count, bits in ((0, 0), (2, 8), (3, 16), (4, 24), (6, 32), (7, 40), (8, 48)):
    assert f"{count} => {bits}," in old

callers = {}
for name, path in (
    ("general_purpose", "src/engine/general_purpose/decode.rs"),
    ("naive", "src/engine/naive.rs"),
):
    before = git("show", f"{PARENT}:{path}")
    assert before == git("show", f"{COMMIT}:{path}")
    callers[name] = before
gp = callers["general_purpose"]
naive = callers["naive"]
for fragment in (
    "const INPUT_CHUNK_LEN: usize = 8;",
    "let remainder_len = input.len() % INPUT_CHUNK_LEN;",
    "1 | 5 => {",
    "debug_assert!(input.len() - input_index <= 8);",
    "super::decode_suffix::decode_suffix(",
):
    assert fragment in gp
for fragment in (
    "const DECODE_INPUT_CHUNK_SIZE: usize = 4;",
    "let rem = input_len % Naive::DECODE_INPUT_CHUNK_SIZE;",
    "if estimate.rem == 1 {",
    "general_purpose::decode_suffix::decode_suffix(",
):
    assert fragment in naive


def reachable_counts(lengths):
    counts = set()
    for n in lengths:
        for shape in product("VPX", repeat=n):
            count, padding = 0, False
            for i, symbol in enumerate(shape):
                if symbol == "P":
                    if i % 4 < 2:
                        break
                    padding = True
                elif symbol == "X" or padding:
                    break
                else:
                    count += 1
            else:
                counts.add(count)
    return sorted(counts)


assert reachable_counts((0, 2, 3, 4, 6, 7, 8)) == [0, 2, 3, 4, 6, 7, 8]
assert reachable_counts((0, 2, 3, 4)) == [0, 2, 3, 4]


def term(i):
    return f"(bvshl ((_ zero_extend 56) m{i}) (_ bv{58 - 6*i} 64))"


def bit_or(terms):
    return "(_ bv0 64)" if not terms else terms[0] if len(terms) == 1 else "(bvor " + " ".join(terms) + ")"


valid = (0, 2, 3, 4, 6, 7, 8)
queries = {}
for n in valid:
    declarations = "\n".join(f"(declare-const m{i} (_ BitVec 8))" for i in range(8))
    bounds = "\n".join(f"(assert (= m{i} #x00))" for i in range(n, 8))
    queries[f"packing_n{n}"] = (
        "(set-logic QF_BV)\n" + declarations + "\n" + bounds + "\n" +
        f"(assert (not (= {bit_or([term(i) for i in range(n)])} " +
        f"{bit_or([term(i) for i in range(8)])})))\n(check-sat)\n"
    )

old_lengths = {0: 0, 2: 8, 3: 16, 4: 24, 6: 32, 7: 40, 8: 48}
old_len_expr = "0"
for n, bits in reversed(tuple(old_lengths.items())):
    old_len_expr = f"(ite (= n {n}) {bits} {old_len_expr})"
queries["output_length"] = (
    "(set-logic QF_LIA)\n(declare-const n Int)\n" +
    "(assert (or " + " ".join(f"(= n {i})" for i in valid) + "))\n" +
    f"(assert (not (= {old_len_expr} (* (div (* n 6) 8) 8))))\n(check-sat)\n"
)

checks = {}
for name, query in queries.items():
    (HERE / f"{name}.smt2").write_text(query)
    output = subprocess.check_output([str(Z3), "-in"], input=query.encode()).decode().strip()
    (HERE / f"{name}.log").write_text(output + "\n")
    assert output == "unsat", (name, output)
    checks[name] = output

result = {
    "commit": COMMIT, "parent": PARENT, "old_blob": OLD_OID, "new_blob": NEW_OID,
    "preconditions": "morsel count in {0,2,3,4,6,7,8}; used morsels are arbitrary u8 values; unused new-array entries remain zero",
    "caller_reachable_counts": {
        "general_purpose": reachable_counts((0, 2, 3, 4, 6, 7, 8)),
        "naive": reachable_counts((0, 2, 3, 4)),
    },
    "checks": checks,
    "consequence": "on caller-reachable paths, same packed u64, trailing-bit mask, output writes and errors, and DecodeMetadata",
    "not_checked": "full Aeneas translation, allocation/timing, and build-warning policy",
    "verdict": "EQUIV",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"checks": checks, "verdict": result["verdict"]}))
