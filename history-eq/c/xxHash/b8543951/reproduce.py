#!/usr/bin/env python3
"""Check the two changed historical XXH3 entry points at branch boundaries."""
import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
COMMIT = "b8543951149ebecd8a1d8d8f758c18f1099c93c4"
LENGTHS = (0, 1, 16, 17, 32, 33, 64, 65, 96, 97, 128, 129, 256)


def run(command):
    process = subprocess.run(command, capture_output=True, text=True, timeout=35)
    assert process.returncode == 0, (command, process.stderr[-2000:])
    return process.stdout


def target_body(module):
    body = re.search(r"^define [^\n]*@target\([^\n]*\).*?^}", module, re.M | re.S)
    assert body
    return body.group()


def main():
    result = {"commit": COMMIT, "scope": "XXH3_64bits_withSeed and XXH3_64bits_withSecret; "
              "fixed branch-boundary input lengths with arbitrary bytes, seed or secret pointer",
              "lengths": list(LENGTHS), "source_blobs": {}, "checks": []}
    changed = run(["git", "-C", str(REPO), "diff", "--name-only", COMMIT + "^", COMMIT]).splitlines()
    assert changed == ["xxh3.h"], changed
    with TemporaryDirectory(prefix="xxh3-branch-layout-") as directory:
        temp = Path(directory)
        for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
            dest = temp / side
            dest.mkdir()
            for name in ("xxh3.h", "xxhash.h", "xxhash.c"):
                data = subprocess.run(["git", "-C", str(REPO), "show", revision + ":" + name],
                                      check=True, stdout=subprocess.PIPE).stdout
                (dest / name).write_bytes(data)
                digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
                expected = run(["git", "-C", str(REPO), "rev-parse", revision + ":" + name]).strip()
                assert digest == expected
                result["source_blobs"][side + "/" + name] = digest
        assert result["source_blobs"]["old/xxhash.h"] == result["source_blobs"]["new/xxhash.h"]
        assert result["source_blobs"]["old/xxhash.c"] == result["source_blobs"]["new/xxhash.c"]
        for mode in ("seed", "secret"):
            for length in LENGTHS:
                call = (f"XXH3_64bits_withSeed(data, {length}, argument)" if mode == "seed" else
                        f"XXH3_64bits_withSecret(data, {length}, argument, 192)")
                arg = "unsigned long long argument" if mode == "seed" else "const unsigned char *argument"
                wrapper = temp / f"{mode}-{length}.c"
                wrapper.write_text(f'#include "xxh3.h"\nunsigned long long target(const unsigned char *data, {arg}) {{\n    return {call};\n}}\n')
                modules = {}
                for side in ("old", "new"):
                    module = temp / f"{side}-{mode}-{length}.ll"
                    run([str(CLANG), "-std=c99", "-O2", "-I", str(temp / side), "-S", "-emit-llvm",
                         str(wrapper), "-o", str(module)])
                    normalized = module.read_text().replace(" nocapture", "")
                    normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
                    module.write_text(normalized)
                    modules[side] = module
                old_body = target_body(modules["old"].read_text())
                new_body = target_body(modules["new"].read_text())
                for direction, source, target in (("forward", "old", "new"), ("backward", "new", "old")):
                    output = run([str(ALIVE), str(modules[source]), str(modules[target]), "--func=target",
                                  "--always-verify", "--fail-src-ub", "--smt-to=30000", "--quiet"])
                    assert "1 correct transformations" in output and "0 incorrect transformations" in output
                    assert "0 failed-to-prove transformations" in output and "0 Alive2 errors" in output
                    result["checks"].append({"mode": mode, "length": length, "direction": direction,
                                             "target_ir_differs": old_body != new_body,
                                             "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                                             "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest(),
                                             "output": output.strip()})
        symbolic = temp / "symbolic-length.c"
        symbolic.write_text('#include "xxh3.h"\nunsigned long long target(const unsigned char *data, '
                            'unsigned long long len, unsigned long long seed) {\n'
                            '    return XXH3_64bits_withSeed(data, (size_t)len, seed);\n}\n')
        modules = {}
        for side in ("old", "new"):
            module = temp / f"{side}-symbolic.ll"
            run([str(CLANG), "-std=c99", "-O1", "-I", str(temp / side), "-S", "-emit-llvm",
                 str(symbolic), "-o", str(module)])
            normalized = module.read_text().replace(" nocapture", "")
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            module.write_text(normalized)
            modules[side] = module
        output = run([str(ALIVE), str(modules["old"]), str(modules["new"]), "--func=target",
                      "--always-verify", "--fail-src-ub", "--smt-to=30000", "--quiet"])
        assert "1 failed-to-prove transformations" in output and "ERROR: Timeout" in output
        result["symbolic_length_attempt"] = {"verdict": "UNKNOWN_TIMEOUT", "output": output.strip(),
                                             "target_ir_differs": target_body(modules["old"].read_text()) !=
                                                                  target_body(modules["new"].read_text()),
                                             "old_ir_sha256": hashlib.sha256(modules["old"].read_bytes()).hexdigest(),
                                             "new_ir_sha256": hashlib.sha256(modules["new"].read_bytes()).hexdigest()}
    assert len(result["checks"]) == 2 * len(LENGTHS) * 2
    result["verdict"] = "EQUIV_BOUNDED"
    (HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"verdict": result["verdict"], "checks": len(result["checks"]),
                      "different_target_ir": sum(c["target_ir_differs"] for c in result["checks"])}))


if __name__ == "__main__":
    main()
