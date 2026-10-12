#!/usr/bin/env python3
"""Check the source-mapped SHA-1 schedule and round relation for arbitrary words."""

from functools import lru_cache
import hashlib
import json
import os
from pathlib import Path
import subprocess

import z3


here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/hacl-star"
rev = "a1aa8f9a547745a506dfddab34df668b0a88f4e4"
objects = {
    "old": (rev + "^", "d4804cbdd2492812575178dae185081a61f59624"),
    "new": (rev, "4588fe822faecc781e6c16b029c3a214acbee7f9"),
}
source = {}
for name, (revision, oid) in objects.items():
    raw = subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{revision}:specs/Spec.SHA1.fst"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )
    blob = b"blob " + str(len(raw)).encode() + b"\0" + raw
    assert hashlib.sha1(blob).hexdigest() == oid
    source[name] = raw.decode()

# These exact source bodies anchor the bit-vector model below to both revisions.
assert "then Seq.index mi (U32.v t)" in source["old"]
assert "w mi (t `U32.sub` 3ul) `U32.logxor` w mi (t `U32.sub` 8ul) `U32.logxor` w mi (t `U32.sub` 14ul) `U32.logxor` w mi (t `U32.sub` 16ul)" in source["old"]
assert "then Seq.index mi (t)" in source["new"]
assert "w' mi (t - 3) `U32.logxor` w' mi (t - 8) `U32.logxor` w' mi (t - 14) `U32.logxor` w' mi (t - 16)" in source["new"]
assert "w (n - 3) `U32.logxor` w (n - 8) `U32.logxor` w (n - 14) `U32.logxor` w (n - 16)" in source["new"]
assert "then accu" in source["new"] and "else compute_w mi (n + 1) (compute_w_next mi n accu)" in source["new"]
assert "let cwt = compute_w mi 0 Seq.empty" in source["new"]
assert "Spec.Loops.repeat_range 0 80 (step3_body mi (fun i -> Seq.index cwt i)) h" in source["new"]
assert "Spec.Loops.repeat_range 0 80 (step3_body mi) h" in source["old"]
assert source["old"].split("(* Section 4.1.1: logical functions *)", 1)[1].split(
    "(* Section 6.1.2 Step 3 *)", 1
)[0] == source["new"].split("(* Section 4.1.1: logical functions *)", 1)[1].split(
    "(* Section 6.1.2 Step 3 *)", 1
)[0]
for body in source.values():
    assert "U32.((x <<^ n_) |^ (x >>^ (32ul -^ n_)))" in body
    assert "if U32.lt t 20ul" in body
    assert "else if U32.lt 39ul t && U32.lt t 60ul" in body
    assert "0x5a827999ul" in body and "0x6ed9eba1ul" in body
    assert "0x8f1bbcdcul" in body and "0xca62c1d6ul" in body
    assert "let e = std in\n  let d = stc in\n  let c = rotl 30ul stb in\n  let b = sta in\n  let a = _T in" in body


# shortcut: this source-mapped model omits F* extraction; check generated C when the historical toolchain is available.
def rotl(value, amount):
    return (value << amount) | z3.LShR(value, 32 - amount)


message = [z3.BitVec(f"m{i}", 32) for i in range(16)]
initial = [z3.BitVec(f"h{i}", 32) for i in range(5)]


@lru_cache(None)
def old_word(t):
    if t < 16:
        return message[t]
    return rotl(old_word(t - 3) ^ old_word(t - 8) ^ old_word(t - 14) ^ old_word(t - 16), 1)


new_words = []
for t in range(80):
    new_words.append(message[t] if t < 16 else rotl(
        new_words[t - 3] ^ new_words[t - 8] ^ new_words[t - 14] ^ new_words[t - 16], 1
    ))


def round_step(state, word, t):
    a, b, c, d, e = state
    if t < 20:
        f, k = (b & c) ^ (~b & d), 0x5A827999
    elif t < 40:
        f, k = b ^ c ^ d, 0x6ED9EBA1
    elif t < 60:
        f, k = (b & c) ^ (b & d) ^ (c & d), 0x8F1BBCDC
    else:
        f, k = b ^ c ^ d, 0xCA62C1D6
    return [rotl(a, 5) + f + e + k + word, a, rotl(b, 30), c, d]


assert "let _T = rotl 5ul sta `U32.add_mod` f t stb stc std `U32.add_mod` ste `U32.add_mod` k t `U32.add_mod` w mi t" in source["old"]
assert "let _T = rotl 5ul sta `U32.add_mod` f t stb stc std `U32.add_mod` ste `U32.add_mod` k t `U32.add_mod` wt" in source["new"]
assert "(x `U32.logand` y) `U32.logxor` (U32.lognot x `U32.logand` z)" in source["old"]
assert "(x `U32.logand` y) `U32.logxor` (x `U32.logand` z) `U32.logxor` (y `U32.logand` z)" in source["old"]
assert "let f " in source["new"] and "let k " in source["new"]


def check_difference(left, right):
    solver = z3.Solver()
    solver.set(timeout=30000)
    solver.add(z3.Or(*[a != b for a, b in zip(left, right)]))
    return str(solver.check())


schedule_result = check_difference([old_word(t) for t in range(80)], new_words)
old_state, new_state = initial[:], initial[:]
for t in range(80):
    old_state = round_step(old_state, old_word(t), t)
    new_state = round_step(new_state, new_words[t], t)
round_result = check_difference(old_state, new_state)
negative_control = check_difference([old_word(0)], [new_words[0] ^ z3.BitVecVal(1, 32)])
assert (schedule_result, round_result, negative_control) == ("unsat", "unsat", "sat")

result = {
    "commit": rev,
    "old_blob": objects["old"][1],
    "new_blob": objects["new"][1],
    "checker": "Z3 bit-vectors " + z3.get_version_string(),
    "domain": "arbitrary sixteen 32-bit message words and five 32-bit initial-state words",
    "schedule_80_words_differ": schedule_result,
    "step3_five_output_words_differ": round_result,
    "perturbed_word_negative_control": negative_control,
    "scope": "source-mapped SHA-1 message schedule and 80-round state only; historical F* modules and extracted C not checked",
}
(here / "schedule-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
