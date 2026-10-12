#!/usr/bin/env python3
"""Audit the exact historical Metal build-command-only optimization."""

import json
import shutil
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "7c7f3b7f43"
PATH = "ggml/src/ggml-metal/CMakeLists.txt"


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], text=True)


paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).splitlines()
assert paths == [PATH], paths
old = git("show", f"{COMMIT}^:{PATH}")
new = git("show", f"{COMMIT}:{PATH}")
old_commands = """        COMMAND xcrun -sdk macosx metal    ${XC_FLAGS} -c ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ggml-metal.metal -o ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ggml-metal.air
        COMMAND xcrun -sdk macosx metallib                ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ggml-metal.air   -o ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/default.metallib
        COMMAND rm -f ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ggml-metal.air
"""
new_commands = """        COMMAND xcrun -sdk macosx metal ${XC_FLAGS} -c ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/ggml-metal.metal -o - |
            xcrun -sdk macosx metallib - -o ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/default.metallib
"""
assert old.count(old_commands) == 1
assert new.count(new_commands) == 1
assert new.replace(new_commands, old_commands) == old

result = {
    "commit": git("rev-parse", COMMIT).strip(),
    "changed_paths": paths,
    "cmake_source_equal_after_reversing_command": True,
    "xcrun_available": shutil.which("xcrun") is not None,
    "checker_status": "checked",
    "verdict": "UNSUPPORTED",
    "scope": "program-equivalence tools cannot compare macOS Metal compiler pipeline side effects",
}
(HERE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
