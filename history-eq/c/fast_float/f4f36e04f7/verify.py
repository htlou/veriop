#!/usr/bin/env python3
"""Check the recovered fraction SWAR change with Alive2 and Z3."""

import json
import os
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/fast_float"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang++-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
Z3 = ROOT / "benchmarks/tools/kuiper-package/inst/bin/z3-4.13.3"
subprocess.run(["python3", "-B", str(HERE / "recover.py")], check=True,
               stdout=subprocess.DEVNULL)
old = subprocess.check_output(
    ["git", "-C", str(REPO), "show", "f4f36e04f7^:include/fast_float/ascii_number.h"],
    text=True, env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})
new = (HERE / "new-ascii_number.h").read_text()

start = new.index("  if ((pend - p) >= 4) {", new.index("loop_parse_if_eight_digits(char"))
end = new.index("\n}", start)
step = new[start:end]
assert old.count(step) == 1 and new.count(step) == 1
assert "#if defined(__clang__)\n" + step + "\n#endif" in old
fallback = """    while ((p != pend) && is_integer(*p)) {
      uint8_t digit = uint8_t(*p - UC('0'));
      ++p;
      i = i * 10 + digit; // in rare cases, this will overflow, but that's ok
    }"""
assert old.count(fallback) == new.count(fallback) == 1
assert "::memcpy(&val, chars, sizeof(uint32_t));" in old
for body in (
    "return (unsigned)(c - UC('0')) <= 9u;",
    "return !((((val + 0x46464646) | (val - 0x30303030)) & 0x80808080));",
    "val -= 0x30303030;",
    "val = (val * 10) + (val >> 8);",
    "return (((val & 0x00FF00FF) * 0x00640001) >> 16) & 0xFFFF;",
):
    assert body in old

template = """#include <stdint.h>
#include <string.h>

template <typename UC> inline bool is_integer(UC c) {
  return (unsigned)(c - UC('0')) <= 9u;
}
inline bool is_made_of_four_digits_fast(uint32_t val) {
  return !((((val + 0x46464646) | (val - 0x30303030)) & 0x80808080));
}
inline uint32_t parse_four_digits_unrolled(uint32_t val) {
  val -= 0x30303030;
  val = (val * 10) + (val >> 8);
  return (((val & 0x00FF00FF) * 0x00640001) >> 16) & 0xFFFF;
}
inline uint32_t read4_to_u32(const char *chars) {
  uint32_t val;
  ::memcpy(&val, chars, sizeof(uint32_t));
  return val;
}
struct Result { uint64_t value; uint32_t consumed; };
"""
for side, inserted in (("old", ""), ("new", step)):
    code = template
    for length in (4, 5):
        code += f"""
extern "C" Result parse{length}(uint64_t initial, uint8_t b0, uint8_t b1,
                                      uint8_t b2, uint8_t b3, uint8_t b4,
                                      uint8_t b5, uint8_t b6) {{
  char data[7] = {{char(b0), char(b1), char(b2), char(b3), char(b4), char(b5), char(b6)}};
  char const *p = data;
  char const *const pend = data + {length};
  uint64_t i = initial;
{inserted}
{fallback.replace("UC('0')", "'0'")}
  return {{i, uint32_t(p - data)}};
}}
"""
    (HERE / f"{side}.cpp").write_text(code)
    subprocess.run([str(CLANG), "-O2", "-S", "-emit-llvm", str(HERE / f"{side}.cpp"),
                    "-o", str(HERE / f"{side}.ll")], check=True)

def alive(func, reference, candidate, label):
    run = subprocess.run([str(ALIVE), "--always-verify", "--smt-to=10000", f"--func={func}",
                          str(HERE / f"{reference}.ll"), str(HERE / f"{candidate}.ll")],
                         capture_output=True, text=True, timeout=30, check=True)
    (HERE / f"alive2-{label}.log").write_text(run.stdout)
    assert "0 incorrect transformations" in run.stdout, run.stdout[-900:]
    if "1 correct transformations" in run.stdout:
        return "correct"
    assert "1 failed-to-prove transformations" in run.stdout, run.stdout[-900:]
    return "timeout"


results = {"parse4_forward": alive("parse4", "old", "new", "parse4"),
           "parse4_reverse": alive("parse4", "new", "old", "parse4-reverse"),
           "parse5_forward": alive("parse5", "old", "new", "parse5")}
assert results["parse4_forward"] == results["parse4_reverse"] == "correct"

base = "(set-logic QF_BV)\n"
for i in range(4):
    base += f"(declare-const b{i} (_ BitVec 8))\n"
base += "(define-fun val () (_ BitVec 32) (concat b3 b2 b1 b0))\n"
base += "(define-fun is4 () Bool (= (bvand (bvor (bvadd val #x46464646) (bvsub val #x30303030)) #x80808080) #x00000000))\n"
base += "(define-fun digits () Bool (and " + " ".join(
    f"(and (bvuge b{i} #x30) (bvule b{i} #x39))" for i in range(4)) + "))\n"
arithmetic = """(define-fun t0 () (_ BitVec 32) (bvsub val #x30303030))
(define-fun t1 () (_ BitVec 32) (bvadd (bvmul t0 #x0000000a) (bvlshr t0 #x00000008)))
(define-fun swar () (_ BitVec 32) (bvand (bvlshr (bvmul (bvand t1 #x00ff00ff) #x00640001) #x00000010) #x0000ffff))
"""
for i in range(4):
    arithmetic += f"(define-fun d{i} () (_ BitVec 32) ((_ zero_extend 24) (bvsub b{i} #x30)))\n"
arithmetic += "(define-fun scalar () (_ BitVec 32) (bvadd (bvmul (bvadd (bvmul (bvadd (bvmul d0 #x0000000a) d1) #x0000000a) d2) #x0000000a) d3))\n"


def prove(name, query):
    (HERE / f"{name}.smt2").write_text(query + "(check-sat)\n")
    run = subprocess.run([str(Z3), str(HERE / f"{name}.smt2")],
                         capture_output=True, text=True, timeout=30, check=True)
    assert run.stdout == "unsat\n", (name, run.stdout)
    (HERE / f"{name}.log").write_text(run.stdout)
    return "unsat"


lemmas = {}
lemmas["digit_guard"] = prove("digit-guard", base + "(assert (xor is4 digits))\n")
lemmas["four_digit_value"] = prove("four-digit-value", base + arithmetic +
                                   "(assert (and is4 (not (= swar scalar))))\n")
fold = "initial"
for i in range(4):
    fold = f"(bvadd (bvmul {fold} #x000000000000000a) ((_ zero_extend 32) d{i}))"
lemmas["uint64_fold"] = prove("uint64-fold", base + arithmetic +
    "(declare-const initial (_ BitVec 64))\n(assert (= swar scalar))\n" +
    f"(define-fun oldv () (_ BitVec 64) {fold})\n" +
    "(define-fun newv () (_ BitVec 64) (bvadd (bvmul initial #x0000000000002710) ((_ zero_extend 32) swar)))\n" +
    "(assert (not (= oldv newv)))\n")

result = {"commit": "f4f36e04f7c7546086624f3995b26ea81bcaf675",
          "source_oid": json.loads((HERE / "recovery.json").read_text())["recovered_new_oid"],
          "scope": "x86 little-endian four-byte fraction SWAR step plus unchanged scalar fallback",
          "alive2": results, "z3_lemmas": lemmas, "verdict": "EQUIV_PARTIAL"}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
