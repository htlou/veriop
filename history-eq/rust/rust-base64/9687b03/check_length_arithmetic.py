#!/usr/bin/env python3
"""Check source-mapped index arithmetic in GeneralPurpose::internal_encode."""

import hashlib
import json
from pathlib import Path

import z3


here = Path(__file__).resolve().parent
root = here.parents[3]
old = root / "history-eq/wt/base64-9687b03-old/src/engine/general_purpose/mod.rs"
new = root / "history-eq/wt/base64-9687b03-new/src/engine/general_purpose/mod.rs"
expected = "af8897bc2be2bd74b0aa213a03566f4901591601"
for path in (old, new):
    data = path.read_bytes()
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == expected
assert old.read_bytes() == new.read_bytes()
source = new.read_text()
for fragment in (
    "let mut input_index: usize = 0",
    "const BLOCKS_PER_FAST_LOOP: usize = 4",
    "input.len().saturating_sub(BLOCKS_PER_FAST_LOOP * 6 + 2)",
    "let mut output_index = 0",
    "if last_fast_index > 0",
    "while input_index <= last_fast_index",
    "output_index..(output_index + BLOCKS_PER_FAST_LOOP * 8)",
    "input_index += BLOCKS_PER_FAST_LOOP * 6",
    "output_index += BLOCKS_PER_FAST_LOOP * 8",
    "let rem = input.len() % 3",
    "let start_of_rem = input.len() - rem",
    "while input_index < start_of_rem",
    "input_index += 3",
    "output_index += 4",
    "if rem == 2",
    "output_index += 3",
    "else if rem == 1",
    "output_index += 2",
    "\n        output_index\n    }",
):
    assert fragment in source, fragment


def unsat(name, *constraints):
    solver = z3.Solver()
    solver.set(timeout=10000)
    solver.add(n >= 0, n <= 2**64 - 1, length <= 2**64 - 1, *constraints)
    result = str(solver.check())
    assert result == "unsat", (name, result, solver.model() if result == "sat" else "")
    checks[name] = result


# shortcut: this integer model omits Aeneas memory effects; upgrade when the generated function has a loop invariant.
n, j, k = z3.Ints("n j k")
rem = n % 3
start = n - rem
fast = z3.If(n > 26, (n - 26) / 24 + 1, 0)
after_fast = 24 * fast
tail = z3.If(rem == 0, 0, rem + 1)
length = 4 * (n / 3) + tail
slow = (start - after_fast) / 3
after_slow_output = 32 * fast + 4 * slow
checks = {}

last_fast_index = z3.If(n > 26, n - 26, 0)
unsat("fast_iteration_count_too_small", n > 26, after_fast <= last_fast_index)
unsat("fast_iteration_count_too_large", n > 26, j >= 0, j < fast, 24 * j > last_fast_index)
unsat("fast_loop_index_exceeds_full_triples", after_fast > start)
unsat("fast_input_chunk_out_of_bounds", j >= 0, j < fast, 24 * j + 26 > n)
unsat("fast_output_chunk_out_of_bounds", j >= 0, j < fast, 32 * j + 32 > length)
unsat("slow_input_chunk_out_of_bounds", k >= 0, k < slow, after_fast + 3 * k + 3 > start)
unsat("slow_output_chunk_out_of_bounds", k >= 0, k < slow, 32 * fast + 4 * k + 4 > length)
unsat("slow_iteration_count_too_small", after_fast + 3 * slow < start)
unsat("slow_iteration_count_too_large", k >= 0, k < slow, after_fast + 3 * k >= start)
unsat("two_byte_tail_out_of_bounds", rem == 2,
      z3.Or(start + 1 >= n, after_slow_output + 2 >= length))
unsat("one_byte_tail_out_of_bounds", rem == 1,
      z3.Or(start >= n, after_slow_output + 1 >= length))
unsat("returned_length_differs", after_slow_output + tail != length)

negative = z3.Solver()
negative.add(n == 1, 4 * (n / 3) + n % 3 != length)
assert str(negative.check()) == "sat"
checks["wrong_tail_negative_control"] = "sat"

result = {
    "historical_implementation_blob": expected,
    "checker": "Z3 integer arithmetic " + z3.get_version_string(),
    "domain": "all 64-bit input lengths n with unpadded encoded length <= 2^64-1",
    "checks": checks,
    "scope": "source-mapped loop-count/index arithmetic; not a proof of Aeneas-generated internal_encode, memory writes, or whole encode_with_padding",
}
(here / "length-arithmetic-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
