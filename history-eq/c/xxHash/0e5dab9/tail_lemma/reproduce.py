#!/usr/bin/env python3
"""Compare the exact historical XXH64 tail bodies for all 32 remainders."""

import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


case = Path(__file__).resolve().parent
historical = case.parent
root = historical.parents[3]
store = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "0e5dab97db33b84dc21bbede3b31fa3ad5954ad8"


def run(command):
    return subprocess.run(command, check=True, capture_output=True, text=True, timeout=40)


def normalize(source):
    source = re.sub(r"/\*.*?\*/", "", source, flags=re.S)
    source = re.sub(r"//[^\n]*", "", source)
    return re.sub(r"\s+", "", source)


sources, blobs = {}, {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.c", "xxhash.h"):
        data = (historical / side / name).read_bytes()
        actual = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        expected = run(["git", "-C", str(store), "rev-parse", revision + ":" + name]).stdout.strip()
        assert actual == expected, (side, name)
        blobs[f"{side}/{name}"] = actual
    sources[side] = (historical / side / "xxhash.c").read_text()


def prefix(side, function, end):
    source = sources[side]
    match = re.search(r"FORCE_INLINE U64\s+" + function + r"\s*\(", source)
    assert match, (side, function)
    return source[match.start():source.index(end, match.start()) + len(end)]


old_one = prefix("old", "XXH64_endian_align", "h64 += (U64) len;")
new_one = prefix("new", "XXH64_endian_align", "h64 += (U64) len;")
macro = "#define XXH_get64bits(p) XXH_readLE64_align(p, endian, align)"
assert old_one.count(macro) == 1 and sources["new"].count(macro) == 1
assert normalize(old_one.replace(macro, "")) == normalize(new_one)
old_stream = prefix("old", "XXH64_digest_endian", "h64 += (U64) state->total_len;")
new_stream = prefix("new", "XXH64_digest_endian", "h64 += (U64) state->total_len;")
old_stream = re.sub(r"const BYTE\s*\*\s*p\s*=\s*\(const BYTE\*\)state->mem64;", "", old_stream)
old_stream = re.sub(r"const BYTE\* const bEnd\s*=\s*\(const BYTE\*\)state->mem64 \+ state->memsize;", "", old_stream)
assert normalize(old_stream) == normalize(new_stream)
assert "return XXH64_finalize(h64, p, len, endian, align);" in sources["new"]
assert "return XXH64_finalize(h64, state->mem64, state->total_len, endian, XXH_aligned);" in sources["new"]
for start, stop in (("XXH_PUBLIC_API XXH_errorcode XXH64_reset",
                     "XXH_PUBLIC_API XXH_errorcode XXH64_update"),
                    ("XXH_PUBLIC_API XXH_errorcode XXH64_update",
                     "FORCE_INLINE U64 XXH64_digest_endian")):
    assert sources["old"].split(start, 1)[1].split(stop, 1)[0] == \
           sources["new"].split(start, 1)[1].split(stop, 1)[0]


def old_tail(function):
    source = sources["old"]
    match = re.search(r"FORCE_INLINE U64\s+" + function + r"\s*\(", source)
    assert match
    rest = source[match.start():]
    start = rest.index("    while (p+8<=bEnd)")
    stop = rest.index("    return h64;", start) + len("    return h64;")
    return rest[start:stop]


tail = {"oneshot": old_tail("XXH64_endian_align"),
        "streaming": old_tail("XXH64_digest_endian")}
checks = []
with TemporaryDirectory(prefix="xxh64-tail-lemma-") as directory:
    temporary = Path(directory)
    for mode in ("oneshot", "streaming"):
        alignment = "XXH_unaligned" if mode == "oneshot" else "XXH_aligned"
        for length in range(32):
            modules, bodies = {}, {}
            for side in ("old", "new"):
                wrapper = temporary / f"{mode}-{side}-{length}.c"
                code = ("#include \"xxhash.c\"\n"
                        "struct Tail { unsigned char bytes[32]; } __attribute__((aligned(8)));\n"
                        "U64 target(struct Tail tail, U64 h64, size_t blocks) {\n")
                if side == "old":
                    code += (f"const BYTE* p=tail.bytes; const BYTE* bEnd=p+{length}; "
                             "XXH_endianess endian=XXH_littleEndian; "
                             "XXH_alignment align=XXH_unaligned;\n" + tail[mode] + "\n")
                else:
                    code += (f"return XXH64_finalize(h64, tail.bytes, {length}+32*blocks, "
                             f"XXH_littleEndian, {alignment});\n")
                wrapper.write_text(code + "}\n")
                module = temporary / f"{mode}-{side}-{length}.ll"
                run([str(clang), "-O3", "-march=x86-64-v3", "-fno-strict-aliasing",
                     "-fno-vectorize", "-fno-slp-vectorize", "-mllvm",
                     "-inline-threshold=100000", "-I", str(historical / side),
                     "-S", "-emit-llvm", str(wrapper), "-o", str(module)])
                normalized = re.sub(r" nocapture\b", "", module.read_text())
                normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
                module.write_text(normalized)
                body = re.search(r"^define [^\n]*@target\([^\n]*\)\s*[^\n]*\{.*?^\}",
                                 normalized, re.M | re.S)
                assert body and not re.search(r"\bcall [^@]*@(?!llvm\.)", body.group())
                modules[side] = module
                bodies[side] = body.group()
            for direction, source, target in (("forward", "old", "new"),
                                              ("backward", "new", "old")):
                command = [str(alive), str(modules[source]), str(modules[target]),
                           "--func=target", "--always-verify", "--fail-src-ub",
                           "--src-unroll=8", "--tgt-unroll=8", "--smt-to=30000", "--quiet"]
                output = run(command).stdout
                assert "1 correct transformations" in output, (mode, length, direction, output)
                assert "0 incorrect transformations" in output
                assert "0 failed-to-prove transformations" in output
                assert "0 Alive2 errors" in output
                checks.append({"mode": mode, "remainder": length, "direction": direction,
                               "target_ir_differs": bodies["old"] != bodies["new"],
                               "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                               "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest(),
                               "output": output.strip()})

assert len(checks) == 128
(case / "result.json").write_text(json.dumps({
    "commit": commit, "source_blobs": blobs,
    "scope": "symbolic XXH64 prefix accumulator and tail bytes for every remainder 0..31; symbolic number of preceding 32-byte blocks; little-endian x86, valid 8-byte-aligned 32-byte tail buffer",
    "source_audit": "one-shot and digest prefixes token-identical after macro relocation, removed local tail pointers, and comments; reset/update source unchanged; old tail bodies extracted verbatim",
    "verdict": "EQUIV_PARTIAL", "checks": checks,
}, indent=2) + "\n")
print(json.dumps({"verdict": "EQUIV_PARTIAL", "checks": len(checks),
                  "different_target_ir": sum(c["target_ir_differs"] for c in checks) // 2}))
