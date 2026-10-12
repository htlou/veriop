#!/usr/bin/env python3
"""Recheck the historical Vulkan host-visible 2D-copy fast path."""

import hashlib
import os
from pathlib import Path
import re
import subprocess


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "fdc3db9b65776ec78497bab03166a3b878fda1ce"
PATH = "ggml/src/ggml-vulkan/ggml-vulkan.cpp"
CLANG_IR = ROOT / "alive2/toolchain/usr/bin/clang-20"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"


def run(args, *, env=None):
    return subprocess.run(args, cwd=CASE, env=env, text=True, capture_output=True)


def source(rev):
    result = subprocess.run(
        ["git", "show", f"{rev}:{PATH}"], cwd=REPO,
        env=dict(os.environ, GIT_NO_LAZY_FETCH="1"), capture_output=True, check=True,
    )
    return result.stdout.decode()


def host_copy(text, direction):
    name = f"ggml_vk_buffer_{direction}_2d"
    body = text.split(f"static void {name}(", 1)[1].split(
        f"static void ggml_vk_buffer_{direction}(", 1
    )[0]
    return body.split("GGML_ASSERT(", 1)[1].split(";\n", 1)[1].split(
        "    } else {\n        std::lock_guard", 1
    )[0].strip()


prefix = """typedef unsigned long size_t;
typedef unsigned char uint8_t;
void *memcpy(void *, const void *, size_t);
struct Buffer { uint8_t *ptr; };
void transfer(uint8_t *base) {
    struct Buffer box = {base};
"""
suffix = """
}
int printf(const char *, ...);
int main(void) {
    uint8_t b[12];
    for (int i = 0; i < 12; i++) b[i] = (uint8_t)i;
    transfer(b);
    for (int i = 0; i < 12; i++) printf("%u%s", (unsigned)b[i], i == 11 ? "\\n" : " ");
    return 0;
}
"""
setups = {
    "write": "    struct Buffer *dst = &box; const void *src = base;\n    size_t offset = 4;",
    "read": "    struct Buffer *src = &box; void *dst = base + 4;\n    size_t offset = 0;",
}
old, new = source(COMMIT + "^"), source(COMMIT)
print("parent source SHA256", hashlib.sha256(old.encode()).hexdigest())
print("child source SHA256", hashlib.sha256(new.encode()).hexdigest())

for direction in ("write", "read"):
    before, after = host_copy(old, direction), host_copy(new, direction)
    assert "for (size_t i = 0; i < height; i++)" in before
    assert "if (width == spitch && width == dpitch)" in after
    assert "width * height" in after
    normalize = lambda text: "\n".join(line.strip() for line in text.splitlines())
    assert normalize(before) in normalize(after), "fallback loop changed"
    for label, branch in (("old", before), ("new", after)):
        cfile = CASE / f"{direction}-{label}.c"
        cfile.write_text(prefix + setups[direction] + "\n"
                         + "    size_t spitch = 4, dpitch = 4, width = 4, height = 2;\n"
                         + branch + "\n" + suffix)
        llfile = CASE / f"{direction}-{label}.ll"
        build = run([str(CLANG_IR), "-O1", "-S", "-emit-llvm", str(cfile), "-o", str(llfile)])
        assert build.returncode == 0, build.stderr
        ir = llfile.read_text()
        ir = re.sub(r"\bnocapture ", "", ir)
        ir = re.sub(r"\binitializes\(\(\d+, \d+\)\) ", "", ir)
        ir = ir.replace(" memory(argmem: readwrite)", "")
        (CASE / f"{direction}-{label}-normalized.ll").write_text(ir)
        binary = CASE / f"{direction}-{label}-asan"
        build = run(["/usr/bin/clang", "-O0", "-fno-builtin-memcpy", "-fsanitize=address",
                     str(cfile), "-o", str(binary)])
        assert build.returncode == 0, build.stderr
        execution = run([str(binary)], env=dict(os.environ, ASAN_OPTIONS="detect_leaks=0"))
        (CASE / f"{direction}-{label}-asan.log").write_text(execution.stdout + execution.stderr)
        if label == "old":
            assert execution.returncode == 0, execution.stderr
            assert execution.stdout.strip() == "0 1 2 3 0 1 2 3 0 1 2 3"
        else:
            assert execution.returncode != 0 and "memcpy-param-overlap" in execution.stderr
        binary.unlink()
    check = run([str(ALIVE), "--func=transfer", "--src-unroll=4",
                 str(CASE / f"{direction}-old-normalized.ll"),
                 str(CASE / f"{direction}-new-normalized.ll")])
    (CASE / f"{direction}-alive2.log").write_text(check.stdout + check.stderr)
    assert "1 incorrect transformations" in check.stdout, check.stdout
    assert "Mismatch in memory" in check.stdout, check.stdout
    print(direction, "Alive2: 1 incorrect; old defined; new memcpy-param-overlap")
