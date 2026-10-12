#!/usr/bin/env python3
"""Run the exact historical packNormal bodies with scalar AltiVec byte semantics."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
CHILD = "b910200897f1d3193a711438d8482a59e517ed08"
PATH = "ggml/src/ggml-cpu/llamafile/sgemm.cpp"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV)


def method(source, signature):
    start = source.index(signature)
    opening = source.index("{", start)
    depth = 0
    for i in range(opening, len(source)):
        depth += (source[i] == "{") - (source[i] == "}")
        if depth == 0:
            return source[start:i + 1]
    raise AssertionError(signature)


HEADER = r'''
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <initializer_list>
using vec_t = unsigned char __attribute__((vector_size(16)));
static vec_t vec_xl(int, const vec_t *p) {
    vec_t result;
    std::memcpy(&result, p, 16);
    return result;
}
static void vec_xst(vec_t value, int, vec_t *p) { std::memcpy(p, &value, 16); }
static vec_t vec_perm(vec_t a, vec_t b, vec_t indices) {
    unsigned char both[32];
    vec_t result;
    std::memcpy(both, &a, 16);
    std::memcpy(both + 16, &b, 16);
    for (int i = 0; i < 16; ++i) result[i] = both[indices[i] & 31];
    return result;
}
template<class TA> struct Harness {
'''
FOOTER = r'''
};
extern "C" int target_pack_second_word() {
    uint16_t input[256] = {};
    input[8] = 9;
    input[128] = 129;
    unsigned char output[256] = {};
    Harness<uint16_t> harness;
    harness.packNormal(input, 16, 8, 16, output);
    return int(output[128]) | (int(output[129]) << 8);
}
int main() {
    uint16_t input[256];
    for (int i = 0; i < 256; ++i) input[i] = uint16_t(i + 1);
    unsigned char output[256] = {};
    Harness<uint16_t> harness;
    for (int cols : {8, 16}) {
        std::memset(output, 0, sizeof(output));
        harness.packNormal(input, 16, 8, cols, output);
        std::printf("cols=%d first=", cols);
        for (int i = 0; i < 128; ++i) std::printf("%02x", output[i]);
        std::printf(" second=");
        for (int i = 128; i < 256; ++i) std::printf("%02x", output[i]);
        std::printf("\n");
    }
}
'''


def main():
    parent = git("rev-parse", CHILD + "^").decode().strip()
    source = {}
    oids = {}
    for side, revision in (("old", parent), ("new", CHILD)):
        data = git("show", f"{revision}:{PATH}")
        oid = git("rev-parse", f"{revision}:{PATH}").decode().strip()
        assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
        source[side] = data.decode()
        oids[side] = oid
    old_pack = method(source["old"], "void packNormal(")
    new_pack = method(source["new"], "void packNormal(")
    old_permute = method(source["old"], "void vector_permute_store(")
    new_permute = method(source["new"], "void vector_permute_store(")
    assert old_permute == new_permute
    assert "aoffsets[it] = aoffsets[it] + 8*lda;" in old_pack
    assert "aoffsets[it] = aoffsets[it] + 8;" in new_pack
    assert "aoffsets[it] = aoffsets[it] + 8*lda;" in new_pack  # Other branches are unchanged.
    outputs = {}
    modules = {}
    with TemporaryDirectory(prefix="llama-ppc-pack-") as temporary:
        directory = Path(temporary)
        for side, pack in (("old", old_pack), ("new", new_pack)):
            program = directory / f"{side}.cpp"
            program.write_text(HEADER + old_permute + "\n" + pack.replace("vector unsigned char", "vec_t") + FOOTER)
            binary = directory / side
            compile_result = subprocess.run(["g++", "-std=c++17", "-O1", "-fsanitize=address,undefined",
                                             "-fno-omit-frame-pointer", str(program), "-o", str(binary)],
                                            capture_output=True, text=True)
            assert compile_result.returncode == 0, compile_result.stderr
            run = subprocess.run([str(binary)], capture_output=True, text=True,
                                 env={**ENV, "ASAN_OPTIONS": "detect_leaks=0"})
            assert run.returncode == 0, run.stderr
            lines = run.stdout.strip().splitlines()
            assert len(lines) == 2 and lines[0].startswith("cols=8 ") and lines[1].startswith("cols=16 ")
            outputs[side] = lines
            module = directory / f"{side}.ll"
            compile_ir = subprocess.run([str(ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"),
                                         "-std=c++17", "-O2", "-S", "-emit-llvm",
                                         "-isystem", "/usr/include/c++/11",
                                         "-isystem", "/usr/include/x86_64-linux-gnu/c++/11",
                                         str(program), "-o", str(module)], capture_output=True, text=True)
            assert compile_ir.returncode == 0, compile_ir.stderr
            module.write_text(re.sub(r", ![A-Za-z_.]+ ![0-9]+", "", module.read_text()))
            modules[side] = module
        alive = subprocess.run([str(ROOT / "alive2/build/alive2/alive-tv"),
                                "--func=target_pack_second_word", "--always-verify",
                                "--src-unroll=3", "--tgt-unroll=3", "--smt-to=30000",
                                str(modules["old"]), str(modules["new"])],
                               capture_output=True, text=True, timeout=60)
        alive_log = alive.stdout + alive.stderr
        assert ("1 incorrect transformations" in alive_log and "0 Alive2 errors" in alive_log
                and "0 failed-to-prove transformations" in alive_log
                and "Source value: #x00000081 (129)" in alive_log
                and "Target value: #x00000009 (9)" in alive_log
                and "Approximations done" not in alive_log), alive_log[-2000:]
    assert outputs["old"][0] == outputs["new"][0]
    assert outputs["old"][1].split(" second=")[0] == outputs["new"][1].split(" second=")[0]
    assert outputs["old"][1].split(" second=")[1] != outputs["new"][1].split(" second=")[1]
    result = {"commit": CHILD, "source_git_oids": oids,
              "scope": "source-extracted private PowerPC packNormal; scalar byte model of vec_xl/vec_perm/vec_xst; TA=uint16_t, lda=16, rows=8, cols=8 or 16, initialized 256-element input",
              "checker": "ASan+UBSan native execution and Alive2 of exact method bodies with scalar AltiVec byte operations",
              "control_cols8_equal": True, "cols16_first_block_equal": True,
              "cols16_second_block_equal": False,
              "outputs": outputs,
              "alive2_exit_code": alive.returncode,
              "alive2_log_sha256": hashlib.sha256(alive_log.encode()).hexdigest(),
              "alive2_witness": {"old_second_block_first_word": 129,
                                 "new_second_block_first_word": 9},
              "verdict": "internal packing counterexample; complete GEMM unverified"}
    (HERE / "packnormal-alive2.log").write_text(alive_log)
    (HERE / "packnormal-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(result["verdict"])


if __name__ == "__main__":
    main()
