#!/usr/bin/env python3
"""Compare exact historical Windows priority-function bodies with Alive2."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


ROOT = Path(__file__).resolve().parents[4]
CASE = Path(__file__).resolve().parent
REPO = ROOT / "cuda/repos/llama.cpp"
COMMIT = "053b1539c0"
SOURCE = "ggml/src/ggml-cpu/ggml-cpu.c"
HEADER = "ggml/include/ggml.h"
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args],
                                   env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


def function_body(source):
    start = source.index("static bool ggml_thread_apply_priority(int32_t prio) {", source.index("#if defined(_WIN32)"))
    opening = source.index("{", start)
    depth = 1
    for pos in range(opening + 1, len(source)):
        if source[pos] == "{":
            depth += 1
        elif source[pos] == "}":
            depth -= 1
            if depth == 0:
                return source[opening + 1:pos]
    raise AssertionError("Windows priority function has no closing brace")


prefix = """#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
typedef unsigned long DWORD;
typedef struct { DWORD Version, ControlMask, StateMask; } THREAD_POWER_THROTTLING_STATE;
#define _WIN32_WINNT 0x0A00
#define GGML_SCHED_PRIO_LOW (-1)
#define GGML_SCHED_PRIO_NORMAL 0
#define GGML_SCHED_PRIO_MEDIUM 1
#define GGML_SCHED_PRIO_HIGH 2
#define GGML_SCHED_PRIO_REALTIME 3
#define THREAD_PRIORITY_NORMAL 0
#define THREAD_PRIORITY_BELOW_NORMAL (-1)
#define THREAD_PRIORITY_ABOVE_NORMAL 1
#define THREAD_PRIORITY_HIGHEST 2
#define THREAD_PRIORITY_TIME_CRITICAL 3
#define THREAD_POWER_THROTTLING_CURRENT_VERSION 1
#define THREAD_POWER_THROTTLING_EXECUTION_SPEED 1
#define ThreadPowerThrottling 1
#define ZeroMemory(p,n) memset((p), 0, (n))
#define GetCurrentThread() 0
#define GetLastError() 0
#define SetThreadInformation(thread,kind,state,size) info_ok
#define SetThreadPriority(thread,priority) priority_ok
#define GGML_LOG_DEBUG(...) ((void) 0)
bool check(int32_t prio, bool info_ok, bool priority_ok) {
    __builtin_assume(prio == GGML_SCHED_PRIO_NORMAL);
"""

blobs = {}
for side, rev in (("old", COMMIT + "^"), ("new", COMMIT)):
    source = git("show", f"{rev}:{SOURCE}").decode()
    header = git("show", f"{rev}:{HEADER}").decode()
    blobs[f"{side}:source"] = git("rev-parse", f"{rev}:{SOURCE}").decode().strip()
    blobs[f"{side}:header"] = git("rev-parse", f"{rev}:{HEADER}").decode().strip()
    if side == "new":
        assert "GGML_SCHED_PRIO_LOW = -1,\n        GGML_SCHED_PRIO_NORMAL," in header
    else:
        assert "enum ggml_sched_priority {\n        GGML_SCHED_PRIO_NORMAL," in header
    body = function_body(source)
    assert "if (prio == GGML_SCHED_PRIO_NORMAL)" in body
    if side == "old":
        assert "SetThreadInformation" not in body
    else:
        assert "if (prio != GGML_SCHED_PRIO_LOW)" in body
        assert "if (!SetThreadInformation(GetCurrentThread(), ThreadPowerThrottling, &t, sizeof(t)))" in body
        assert body.index("SetThreadInformation") < body.index("if (prio == GGML_SCHED_PRIO_NORMAL)")
    model = prefix + body + "\n}\n"
    (CASE / f"{side}.c").write_text(model)
    subprocess.run([str(CLANG), "-O1", "-S", "-emit-llvm", "-Werror", "-x", "c",
                    str(CASE / f"{side}.c"), "-o", str(CASE / f"{side}.ll")], check=True)

archive = ROOT / "history-eq/gpu/llama.cpp/source-screening/053b1539.source.diff"
actual_diff = git("diff", COMMIT + "^", COMMIT, "--", SOURCE)
assert actual_diff == archive.read_bytes()

checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    result = subprocess.run([str(ALIVE), str(CASE / f"{first}.ll"), str(CASE / f"{second}.ll")],
                            capture_output=True, text=True, check=True)
    log = result.stdout + result.stderr
    (CASE / f"{direction}.log").write_text(log)
    assert "1 incorrect transformations" in log and "0 Alive2 errors" in log, log
    checks[direction] = "incorrect"

result = {
    "commit": git("rev-parse", COMMIT).decode().strip(),
    "source_blobs": blobs,
    "source_diff_sha256": hashlib.sha256(actual_diff).hexdigest(),
    "ir_sha256": {side: hashlib.sha256((CASE / f"{side}.ll").read_bytes()).hexdigest()
                  for side in ("old", "new")},
    "checks": checks,
    "witness": {"prio": "GGML_SCHED_PRIO_NORMAL", "SetThreadInformation_result": False,
                "old_return": True, "new_return": False},
    "scope": "Windows _WIN32_WINNT>=0x0602 helper return at normal priority; SetThreadInformation result modeled as an input",
    "verdict": "NOT_EQUIV",
}
(CASE / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
