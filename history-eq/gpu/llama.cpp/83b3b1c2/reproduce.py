#!/usr/bin/env python3
"""Build and compare the historical F32 CUB cumsum kernel at n=1024."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
volta = root / "cuda/repos/volta/target/release/volta"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "83b3b1c2"], env=env, text=True).strip()
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"], env=env, text=True).strip()
record = {"commit": commit, "parent": parent, "scope": "F32 CUB cumsum, one row of 1024, one 256-thread CTA",
          "builds": {}, "analyses": {}, "comparison": None}


def run(command, timeout=120):
    try:
        done = subprocess.run(list(map(str, command)), capture_output=True, text=True, env=env, timeout=timeout)
        return {"command": list(map(str, command)), "returncode": done.returncode,
                "stdout": done.stdout, "stderr": done.stderr}
    except subprocess.TimeoutExpired as exc:
        def decode(value):
            return value.decode(errors="replace") if isinstance(value, bytes) else (value or "")
        return {"command": list(map(str, command)), "timed_out": True,
                "stdout": decode(exc.stdout), "stderr": decode(exc.stderr)}


with tempfile.TemporaryDirectory(prefix="veriop-llama-cumsum-") as tmp:
    kernels = {}
    for side, revision in (("old", parent), ("new", commit)):
        work = Path(tmp) / side
        work.mkdir()
        archive = work / "ggml.tar"
        with archive.open("wb") as out:
            archived = subprocess.run(["git", "-C", str(repo), "archive", "--format=tar", revision, "ggml"],
                                      stdout=out, capture_output=False, env=env)
        assert archived.returncode == 0, (side, archived.returncode)
        subprocess.run(["tar", "-xf", str(archive), "-C", str(work)], check=True)
        source = work / "ggml/src/ggml-cuda/cumsum.cu"
        exact = subprocess.check_output(["git", "-C", str(repo), "show", revision + ":ggml/src/ggml-cuda/cumsum.cu"], env=env)
        assert source.read_bytes() == exact
        ptx = here / f"{side}.ptx"
        built = run(["nvcc", "-std=c++17", "-arch=compute_80", "--ptx", "-O3",
                     "-DGGML_BACKEND_BUILD", f"-I{work}/ggml/src",
                     f"-I{work}/ggml/include", source, "-o", ptx], timeout=180)
        record["builds"][side] = {"source_sha256": hashlib.sha256(exact).hexdigest(), "compile": built}
        if built.get("returncode") != 0:
            break
        record["builds"][side]["ptx_sha256"] = hashlib.sha256(ptx.read_bytes()).hexdigest()
        parsed = run([volta, "parse", "--no-log-file", ptx], timeout=45)
        record["builds"][side]["parse"] = parsed
        if parsed.get("returncode") != 0:
            break
        entries = re.findall(r"\.entry\s+([^\(]+)\(", ptx.read_text())
        kernels[side] = next(name for name in entries if "cumsum_cub_kernelIfLi256" in name)
        selected_body = ptx.read_text().split(".entry " + kernels[side] + "(", 1)[1].split(".entry ", 1)[0]
        assert "smem[" not in selected_body  # The extern dynamic region belongs to the fallback entry.
    if len(kernels) == 2:
        params = ["--param", "ptr:src", "--param", "ptr:dst"]
        for value in [1024, 1, 1, 1, 1024, 1024, 1024, 1024, 1024, 1024]:
            params += ["--param", f"int:{value}"]
        launch = ["-b", "256", "-g", "1", "--dyn-shared", "1064",
                  "--array", "src:0x10000:4:1024:in", "--array", "dst:0x20000:4:1024:out",
                  "--no-log-file", *params]
        for side in ("old", "new"):
            record["analyses"][side] = run([volta, "analyze", here / f"{side}.ptx",
                                             "--kernel", kernels[side], *launch], timeout=45)
        command = [volta, "compare", here / "old.ptx", here / "new.ptx",
                   "--kernel1", kernels["old"], "--kernel2", kernels["new"],
                   "--check-array", "dst", *launch]
        record["comparison"] = run(command, timeout=45)

(here / "volta-result.json").write_text(json.dumps(record, indent=2) + "\n")
assert all(record["builds"][side]["compile"].get("returncode") == 0 and
           record["builds"][side]["parse"].get("returncode") == 0 for side in ("old", "new"))
assert record["analyses"]["old"].get("returncode") == 0
assert "data race on Shared" in record["analyses"]["new"]["stderr"]
assert "optimized kernel: data race on Shared" in record["comparison"]["stderr"]
print(json.dumps({"built": list(record["builds"]),
                  "comparison": (record["comparison"] or {}).get("returncode"),
                  "timed_out": (record["comparison"] or {}).get("timed_out", False)}))
