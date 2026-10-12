#!/usr/bin/env python3
"""Reproduce the source-locked zero-literal internal-caller witness."""

from pathlib import Path
import os
import re
import subprocess
import tempfile


here = Path(__file__).resolve().parent
subprocess.run(["python3", str(here / "check_source.py")], check=True)


def body(text: str, signature: str) -> str:
    start = text.index(signature)
    return text[start:text.index("\n}\n", start) + 2]


for side in ("old", "new"):
    source = (here / f"zstd.{side}.txt").read_text()
    model = (here / f"exec-sequence-{side}.c").read_text()
    for signature in ("static void ZSTD_wildcopy(", "static size_t ZSTD_execSequence("):
        assert body(model, signature) == body(source, signature), (side, signature)
    for helper in (
        "ZSTD_copy4(void* dst, const void* src) { memcpy(dst, src, 4); }",
        "ZSTD_copy8(void* dst, const void* src) { memcpy(dst, src, 8); }",
        "#define COPY8(d,s) { ZSTD_copy8(d,s); d+=8; s+=8; }",
    ):
        assert helper in source and helper in model, (side, helper)
    assert "size_t litLength, offset, matchLength;" in model
    assert all(f"size_t {field};" in source for field in ("litLength", "offset", "matchLength"))
    assert "seq_t s={0,8,8};" in model
    assert "const BYTE *lit=arena+40;" in model
    assert "ZSTD_execSequence(op,s,&lit,arena+40,arena,arena+24)" in model

with tempfile.TemporaryDirectory(prefix="zstd-107c-exec-") as tmp:
    compiler = subprocess.check_output(["/usr/bin/clang", "--version"], text=True).splitlines()[0]
    for side in ("old", "new"):
        binary = Path(tmp) / side
        subprocess.run([
            "/usr/bin/clang", "-std=c11", "-O0", "-g",
            "-fsanitize=address,undefined", "-fno-omit-frame-pointer",
            str(here / f"exec-sequence-{side}.c"), "-o", str(binary),
        ], check=True)
        run = subprocess.run([binary], capture_output=True, text=True,
                             env={**os.environ, "ASAN_OPTIONS": "detect_leaks=0"})
        (here / f"exec-sequence-{side}.log").write_text(
            f"compiler={compiler}\nexit={run.returncode}\nstdout:\n{run.stdout}stderr:\n{run.stderr}"
        )
        if side == "old":
            assert run.returncode == 0 and run.stdout == "n=8 first=1 last=8\n"
            assert not run.stderr
        else:
            assert run.returncode != 0
            assert "AddressSanitizer: stack-buffer-overflow" in run.stderr
            assert "READ of size 8" in run.stderr
            assert "ZSTD_execSequence" in run.stderr

    # shortcut: caller definedness is unresolved here; upgrade with a proven-valid public input.
    wrapper = """
int target_exec_sequence(void) {
    BYTE arena[40];
    for (size_t i = 0; i < 40; ++i) arena[i] = (BYTE)(i + 1);
    BYTE *op = arena + 8;
    const BYTE *lit = arena + 40;
    seq_t s = {0, 8, 8};
    size_t n = ZSTD_execSequence(op, s, &lit, arena + 40, arena, arena + 24);
    return (int)n + op[0];
}
"""
    modules = []
    for side in ("old", "new"):
        source = Path(tmp) / f"{side}.c"
        module = Path(tmp) / f"{side}.ll"
        source.write_text((here / f"exec-sequence-{side}.c").read_text() + wrapper)
        subprocess.run([
            str(here.parents[3] / "alive2/toolchain/usr/bin/clang-20"),
            "-std=c11", "-O0", "-emit-llvm", "-S", str(source), "-o", str(module),
        ], check=True)
        modules.append(str(module))
    check = subprocess.run([
        str(here.parents[3] / "alive2/build/alive2/alive-tv"),
        "--func=target_exec_sequence", "--quiet", "--always-verify", "--fail-src-ub",
        "--smt-to=10000", *modules,
    ], capture_output=True, text=True)
    (here / "alive2-exec-sequence-O0.log").write_text(check.stdout + check.stderr)
    assert "ERROR: Source function is always UB" in check.stdout + check.stderr
    assert "0 correct transformations" in check.stdout + check.stderr

    optimized = []
    ir_compiler = here.parents[3] / "alive2/toolchain/usr/bin/clang-20"
    for side in ("old", "new"):
        module = Path(tmp) / f"{side}-O2.ll"
        subprocess.run([
            str(ir_compiler),
            "-std=c11", "-O2", "-mllvm", "-inline-threshold=100000",
            "-emit-llvm", "-S", str(Path(tmp) / f"{side}.c"), "-o", str(module),
        ], check=True)
        match = re.search(
            r"define [^\n]*@target_exec_sequence\([^)]*\)[^\n]*\{(.*?)\n\}",
            module.read_text(), re.S,
        )
        assert match and match.group(1).strip() == "ret i32 9", side
        optimized.append(f"{side}: {match.group(1).strip()}")
    (here / "exec-sequence-O2-ir-collapse.log").write_text(
        f"compiler={subprocess.check_output([ir_compiler, '--version'], text=True).splitlines()[0]}\n"
        + "\n".join(optimized) + "\n"
    )

print("ASan reproduces the internal caller difference; Alive2 caller check is inconclusive.")
