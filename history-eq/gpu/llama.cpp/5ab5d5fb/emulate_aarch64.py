#!/usr/bin/env python3
"""Run the archived historical 2x2 functions on valid quantized inputs."""

import hashlib
import json
import pathlib
import subprocess
import tempfile

here = pathlib.Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang-20"
linker = root / "benchmarks/tools/apt/clang15/usr/lib/llvm-15/bin/ld.lld"
manifest = json.loads((here / "manifest.json").read_text())
source_path = "ggml/src/ggml-cpu/ggml-cpu-quants.c"


def run(args, **kwargs):
    return subprocess.run(args, check=True, **kwargs)


with tempfile.TemporaryDirectory(prefix="llama-5ab5-aarch64-") as directory:
    tmp = pathlib.Path(directory)
    objects = []
    resource = run([clang, "-print-resource-dir"], capture_output=True, text=True).stdout.strip()
    flags = ["--target=aarch64-none-elf", "-march=armv8.6-a+i8mm", "-ffreestanding",
             "-nostdinc", "-isystem", resource + "/include", "-O2", "-c"]
    for side, revision in (("old", manifest["commit"] + "^"),
                           ("new", manifest["commit"])):
        source = run(["git", "show", f"{revision}:{source_path}"], cwd=repo,
                     capture_output=True).stdout
        assert hashlib.sha256(source).hexdigest() == manifest["source_sha256"][side]
        body = (here / f"{side}-body.c").read_text().strip()
        assert body in source.decode()
        code = (here / f"{side}.c").read_text()
        assert code.count("void compare_2x2(") == 1
        code = code.replace("void compare_2x2(", f"void compare_{side}(")
        if side == "old":
            assert code.count("ggml_vec_dot_q6_K_q8_K(256,") == 4
            code = code.replace("ggml_vec_dot_q6_K_q8_K(256,",
                                "ggml_vec_dot_q6_K_q8_K(512,")
            for before, after in (("x+1,0,y+0", "x+2,0,y+0"),
                                  ("x+0,0,y+1", "x+0,0,y+2"),
                                  ("x+1,0,y+1", "x+2,0,y+2")):
                assert code.count(before) == 1
                code = code.replace(before, after)
        else:
            before = "ggml_vec_dot_q6_K_q8_K(256,s,2,x,sizeof(block_q6_K),y,sizeof(block_q8_K),2);"
            after = "ggml_vec_dot_q6_K_q8_K(512,s,2,x,2*sizeof(block_q6_K),y,2*sizeof(block_q8_K),2);"
            assert code.count(before) == 1
            code = code.replace(before, after)
        assert body.replace("void ggml_vec_dot_q6_K_q8_K(",
                            "static inline __attribute__((always_inline)) void ggml_vec_dot_q6_K_q8_K(", 1) in code
        path = tmp / f"{side}.c"
        path.write_text(code)
        obj = tmp / f"{side}.o"
        run([clang, *flags, path, "-o", obj])
        objects.append(obj)
    harness = tmp / "harness.o"
    run([clang, *flags, here / "emulator_harness.c", "-o", harness])
    elf = tmp / "case.elf"
    run([linker, "-T", here / "emulator.ld", *objects, harness, "-o", elf])
    result = subprocess.run(["qemu-system-aarch64", "-M", "virt", "-cpu", "max",
                             "-nographic", "-semihosting-config", "enable=on,target=native",
                             "-device", f"loader,file={elf},cpu-num=0"],
                            capture_output=True, text=True, timeout=20)
    log = result.stdout + result.stderr
    (here / "emulator.log").write_text(log)
    assert result.returncode == 0 and log == "256 trials: equal bits\n", (result.returncode, log)
    print(log, end="")
