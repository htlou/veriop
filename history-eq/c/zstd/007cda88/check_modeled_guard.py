#!/usr/bin/env python3
"""Check the historical XXH64 round with its empty asm guard modeled as identity."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
clang = root / "alive2/toolchain/usr/bin/clang-20"
opt = root / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
alive = root / "alive2/build/alive2/alive-tv"

subprocess.run(["python3", str(here / "check_source.py")], check=True)
modules = {}
for side in ("old", "new"):
    module = here / f"header-{side}.ll"
    subprocess.run([str(clang), "-std=c11", "-O2", "-mavx512f", "-S", "-emit-llvm",
                    "-I", str(here), f'-DHISTORICAL_HEADER="xxhash.{side}.txt"',
                    str(here / "header_driver.c"), "-o", str(module)], check=True)
    subprocess.run([str(opt), "-passes=verify", "-disable-output", str(module)], check=True)
    modules[side] = module
raw = modules["new"].read_text()
# shortcut: fixed Clang 20 SSA spelling; update this assertion when changing toolchains.
guard = '  %7 = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %6) #2, !srcloc !5'
assert raw.count(guard) == raw.count(' call i64 asm ') == 1
target = here / "header-new-modeled.ll"
target.write_text(raw.replace(guard, "  %7 = add i64 %6, 0"))
subprocess.run([str(opt), "-passes=verify", "-disable-output", str(target)], check=True)
for direction, source, dest in (("forward", modules["old"], target),
                                ("reverse", target, modules["old"])):
    result = subprocess.run([str(alive), "--always-verify", "--fail-src-ub",
                             "--smt-to=45000", "--src-fn=target_round", "--tgt-fn=target_round",
                             str(source), str(dest)], text=True, stdout=subprocess.PIPE,
                            stderr=subprocess.STDOUT, check=False)
    (here / f"modeled-{direction}.log").write_text(result.stdout)
    assert result.returncode == 0 and "1 correct transformations" in result.stdout, direction
print("Both exact historical headers agree on XXH64_round with empty asm modeled as identity")
