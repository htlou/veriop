#!/usr/bin/env python3
"""Connect native objects compiled from checked IR to existing repo benchmarks."""
from pathlib import Path
import subprocess
import hashlib
import json
from check import ROOT, FLAGS, verify_artifacts


def run(*cmd):
    subprocess.run([str(x) for x in cmd], check=True)
    commands.append([str(x) for x in cmd])


out = ROOT / "build/bench"
out.mkdir(parents=True, exist_ok=True)
verify_artifacts()
commands = []
header = (ROOT / "repos/libdivide/libdivide.h").read_text()
for bits in (32, 64):
    signature = f"static LIBDIVIDE_INLINE uint{bits}_t libdivide_u{bits}_do_raw(uint{bits}_t numer, uint{bits}_t magic, uint8_t more) {{"
    start = header.index(signature)
    end = header.index("\n}\n", start) + 2
    header = header[:start] + signature + f"\n    return target_u{bits}(numer, magic, more);\n}}" + header[end:]
prefix = '#include <stdint.h>\nextern "C" {\nuint32_t target_u32(uint32_t, uint32_t, uint8_t);\nuint64_t target_u64(uint64_t, uint64_t, uint8_t);\n}\n'
(out / "libdivide.h").write_text(prefix + header)
cxx = ["clang++", "--gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11", *FLAGS, "-std=c++17"]
ld = ROOT / "repos/libdivide"
for variant in ("stock", "old", "select"):
    inc = ld if variant == "stock" else out
    obj = [] if variant == "stock" else [ROOT / f"build/ir/libdivide_{variant}.o"]
    run(*cxx, "-I", inc, "-I", ld / "test", ld / "test/benchmark_branchfree.cpp", *obj,
        "-o", out / f"libdivide_{variant}_varying")
    run(*cxx, "-I", inc, "-I", ld / "test", ROOT / "experiments/bench_libdivide_fixed.cpp", *obj,
        "-o", out / f"libdivide_{variant}_fixed")
    if variant != "stock":
        for workload, source in (("varying", ld / "test/benchmark_branchfree.cpp"),
                                 ("fixed", ROOT / "experiments/bench_libdivide_fixed.cpp")):
            harness = out / f"libdivide_{workload}.ll"
            linked = out / f"libdivide_{variant}_{workload}.bc"
            run(*cxx, "-I", inc, "-I", ld / "test", "-S", "-emit-llvm", source, "-o", harness)
            run("llvm-link", harness, ROOT / f"build/ir/libdivide_{variant}.ll", "-o", linked)
            run(*cxx, linked, "-o", out / f"libdivide_{variant}_lto_{workload}")
xx = ROOT / "repos/xxHash"
for variant in ("stock", "old", "dispatch"):
    obj = ["-DSTOCK"] if variant == "stock" else [ROOT / f"build/ir/xxhash_{variant}.o"]
    if variant != "stock" and not obj[0].exists():
        continue
    run("clang", *FLAGS, "-I", xx, "-I", xx / "tests/bench", ROOT / "experiments/bench_xxhash.c",
        *[xx / f"tests/bench/{f}.c" for f in ("benchHash", "benchfn", "timefn")],
        *obj, "-o", out / f"xxhash_{variant}")
(ROOT / 'results/benchmark-build.json').write_text(json.dumps({
    'commands': commands,
    'sha256': {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
               for p in out.iterdir() if p.is_file()}}, indent=2) + '\n')
