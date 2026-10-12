#!/usr/bin/env python3
"""Check the exact changed NEON scale/accumulator block in both directions."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
commit = "6ad70c5a"
source_path = "ggml/src/ggml-cpu/arch/arm/repack.cpp"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def run(command, timeout=120):
    try:
        result = subprocess.run(command, capture_output=True, text=True, env=env, timeout=timeout)
        return {"command": list(map(str, command)), "returncode": result.returncode,
                "stdout": result.stdout, "stderr": result.stderr}
    except subprocess.TimeoutExpired as exc:
        return {"command": list(map(str, command)), "timed_out": True,
                "stdout": (exc.stdout or b"").decode(errors="replace"),
                "stderr": (exc.stderr or b"").decode(errors="replace")}


parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env).decode().strip()
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit], env=env).decode().strip()
record = {"parent": parent, "commit": commit, "source_path": source_path, "builds": {}, "checks": {}}
snippets = {}


def normalize(ir):
    # Alive2's installed frontend rejects LLVM 20's capture and TBAA hints.
    # Dropping both hints weakens the optimization assumptions on both sides.
    content = ir.read_text().replace(" nocapture", "")
    content = re.sub(r", !tbaa !\d+", "", content)
    return "\n".join(line for line in content.splitlines() if not line.startswith("!")) + "\n"

for side, revision in (("old", parent), ("new", commit)):
    source = subprocess.check_output(["git", "-C", str(repo), "show", revision + ":" + source_path], env=env)
    start = source.index(b"                        // Scales[i] corresponds to column i\n")
    end = source.index(b"                    }\n\n                    // Multiply Acc bsum + mins", start)
    snippet = source[start:end].decode()
    snippets[side] = snippet
    assert ("for (int blk = 0; blk < 2; blk++)" in snippet) == (side == "old")
    assert ("vcombine_s32" in snippet) == (side == "new")
    wrapper = ("#include <arm_neon.h>\n"
               "extern \"C\" void changed_scale_block(\n"
               "    int cp, const int8_t in_scales[2][8],\n"
               "    const int32x4_t in_sb_acc[4], int32x4_t out_acc[8]) {\n"
               "    int8_t q4sb_scales[2][8];\n"
               "    int32x4_t sb_acc[4], acc[8];\n"
               "    for (int i = 0; i < 2; ++i)\n"
               "        for (int j = 0; j < 8; ++j) q4sb_scales[i][j] = in_scales[i][j];\n"
               "    for (int i = 0; i < 4; ++i) sb_acc[i] = in_sb_acc[i];\n"
               "    for (int i = 0; i < 8; ++i) acc[i] = out_acc[i];\n"
               + snippet +
               "    for (int i = 0; i < 8; ++i) out_acc[i] = acc[i];\n"
               "}\n")
    cpp = here / f"{side}.cpp"
    ir = here / f"{side}.ll"
    cpp.write_text(wrapper)
    build = run([clang, "-target", "aarch64-none-elf", "-ffreestanding", "-O2",
                 "-S", "-emit-llvm", cpp, "-o", ir])
    assert build.get("returncode") == 0, build
    alive_ir = here / f"{side}.alive.ll"
    alive_ir.write_text(normalize(ir))
    record["builds"][side] = {
        "revision": revision,
        "source_sha256": hashlib.sha256(source).hexdigest(),
        "extracted_cpp_sha256": hashlib.sha256(cpp.read_bytes()).hexdigest(),
        "ir_sha256": hashlib.sha256(ir.read_bytes()).hexdigest(),
        "alive_ir_sha256": hashlib.sha256(alive_ir.read_bytes()).hexdigest(),
        "compile": build,
    }

for label, src, tgt in (("forward", "old", "new"), ("reverse", "new", "old")):
    record["checks"][label] = run([alive, "--smt-to=30000", "--always-verify",
                                    here / f"{src}.alive.ll", here / f"{tgt}.alive.ll"], timeout=45)

# The historical enclosing loop has exactly four column-pair values. These
# wrappers materialize its local arrays, selecting precisely the four scale
# bytes and two accumulators used by the changed block for each value of cp.
record["specialized"] = {}
for cp in range(4):
    case = {"builds": {}, "checks": {}}
    for side in ("old", "new"):
        wrapper = (
            "#include <arm_neon.h>\n"
            "extern \"C\" void changed_scale_block(\n"
            "    int8_t s00, int8_t s01, int8_t s10, int8_t s11,\n"
            "    int32x4_t b0, int32x4_t b1, int32x4_t b2, int32x4_t b3,\n"
            "    int32x4_t a0, int32x4_t a1, int32x4_t out[2]) {\n"
            f"    constexpr int cp = {cp};\n"
            "    int8_t q4sb_scales[2][8] = {};\n"
            "    q4sb_scales[0][2 * cp] = s00; q4sb_scales[0][2 * cp + 1] = s01;\n"
            "    q4sb_scales[1][2 * cp] = s10; q4sb_scales[1][2 * cp + 1] = s11;\n"
            "    int32x4_t sb_acc[4] = {b0, b1, b2, b3};\n"
            "    int32x4_t acc[8] = {}; acc[cp] = a0; acc[cp + 4] = a1;\n"
            + snippets[side] +
            "    out[0] = acc[cp]; out[1] = acc[cp + 4];\n"
            "}\n")
        cpp = here / f"cp{cp}-{side}.cpp"
        ir = here / f"cp{cp}-{side}.ll"
        alive_ir = here / f"cp{cp}-{side}.alive.ll"
        cpp.write_text(wrapper)
        build = run([clang, "-target", "aarch64-none-elf", "-ffreestanding", "-O2",
                     "-S", "-emit-llvm", cpp, "-o", ir])
        assert build.get("returncode") == 0, build
        alive_ir.write_text(normalize(ir))
        case["builds"][side] = {
            "cpp_sha256": hashlib.sha256(cpp.read_bytes()).hexdigest(),
            "ir_sha256": hashlib.sha256(ir.read_bytes()).hexdigest(),
            "alive_ir_sha256": hashlib.sha256(alive_ir.read_bytes()).hexdigest(),
            "compile": build,
        }
    for label, src, tgt in (("forward", "old", "new"), ("reverse", "new", "old")):
        case["checks"][label] = run([alive, "--smt-to=30000", "--always-verify",
                                     here / f"cp{cp}-{src}.alive.ll",
                                     here / f"cp{cp}-{tgt}.alive.ll"], timeout=45)
    record["specialized"][str(cp)] = case

(here / "alive2-result.json").write_text(json.dumps(record, indent=2) + "\n")
for label, result in record["checks"].items():
    print(label, "timeout" if result.get("timed_out") else result["returncode"], result["stdout"][-350:])
for cp, case in record["specialized"].items():
    for label, result in case["checks"].items():
        print("cp", cp, label, "timeout" if result.get("timed_out") else result["returncode"], result["stdout"][-180:])
