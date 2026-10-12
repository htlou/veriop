"""Reproduce the scoped Alive2 check for the historical 3D nonpaged branch."""

import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
EXTRACT = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/llvm-extract"
subprocess.run(["python3", str(HERE / "check_source.py")], check=True, capture_output=True)
for name in ("old", "new"):
    subprocess.run([str(CLANG), "-std=c11", "-O2", "-S", "-emit-llvm", "-fno-discard-value-names",
                    str(HERE / f"{name}.c"), "-o", str(HERE / f"{name}.ll")], check=True, capture_output=True)
    ir = (HERE / f"{name}.ll").read_text()
    normalized = re.sub(r", !tbaa !\d+", "", ir)
    assert normalized != ir and "!tbaa" not in normalized.split("!llvm.module.flags")[0]
    (HERE / f"{name}.norm.ll").write_text(normalized)
    for dimension in (3, 4):
        subprocess.run([str(EXTRACT), f"--func=target_copy{dimension}", "-S",
                        str(HERE / f"{name}.norm.ll"), "-o", str(HERE / f"{name}{dimension}.ll")],
                       check=True, capture_output=True)
results = {"3D": {}, "4D": {}}
for dimension in (3, 4):
    for label, source, target in (("forward", "old", "new"), ("backward", "new", "old")):
        run = subprocess.run([str(ALIVE), "--always-verify", "--smt-to=10000",
                              str(HERE / f"{source}{dimension}.ll"), str(HERE / f"{target}{dimension}.ll")],
                             capture_output=True, text=True, check=True)
        (HERE / f"alive-{dimension}d-{label}.log").write_text(run.stdout + run.stderr)
        assert "0 incorrect transformations" in run.stdout and "0 Alive2 errors" in run.stdout
        if "1 correct transformations" in run.stdout:
            results[f"{dimension}D"][label] = "correct"
        else:
            assert "ERROR: Timeout" in run.stdout and "1 failed-to-prove transformations" in run.stdout
            results[f"{dimension}D"][label] = "timeout"
assert results["3D"] == {"forward": "correct", "backward": "correct"}
(HERE / "result.json").write_text(json.dumps({"scope": "3D nonpaged and 4D coordinate branches; TMA calls abstracted",
                                               "verdict": "EQUIV_PARTIAL", "directions": results}, indent=2) + "\n")
print(results)
