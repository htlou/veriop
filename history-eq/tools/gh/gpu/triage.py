#!/usr/bin/env python3
"""List pending (not checked) entries for GPU repos with their changed files, classified."""
import json, subprocess, sys, os, re
ROOT = "/srv/home/hantaolou/code/veriop"
LEDGERS = {"llama.cpp": "llama-optimization-sample.json", "cutlass": "cutlass-optimization-sample.json",
           "flash-attention": "flash-attention-optimization-sample.json"}
NOFETCH = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def classify(p):
    pl = p.lower()
    ext = os.path.splitext(pl)[1]
    if ext in (".cu", ".cuh"): return "cuda"
    if "/ggml-cuda/" in pl and ext in (".h", ".hpp", ".cpp"): return "cuda-host"
    if ext in (".metal",) or "ggml-metal" in pl: return "metal"
    if ext in (".comp", ".glsl") or "ggml-vulkan" in pl: return "vulkan"
    if "ggml-sycl" in pl: return "sycl"
    if "ggml-opencl" in pl or ext == ".cl": return "opencl"
    if "ggml-webgpu" in pl or ext == ".wgsl": return "webgpu"
    if ext == ".py": return "python"
    if ext in (".md", ".txt", ".rst", ".yml", ".yaml", ".toml", ".json", ".cmake") or "cmakelists" in pl or pl.startswith("docs/"): return "build-doc"
    if "/test" in pl or pl.startswith("test") or pl.startswith("examples/") or "benchmark" in pl or pl.startswith("tools/") or pl.startswith("bench"): return "test-example"
    if ext in (".c", ".cpp", ".h", ".hpp", ".cc", ".hxx", ".inl"):
        if "ggml-cpu" in pl or pl.startswith("ggml/src/ggml") and "ggml-" not in pl.split("/")[2] if pl.count("/")>=2 else False: return "cpu-c"
        if pl.startswith("ggml/src/ggml-cpu") or pl in ("ggml/src/ggml.c","ggml.c","ggml-quants.c","ggml/src/ggml-quants.c"): return "cpu-c"
        if "ggml-" in pl and any(b in pl for b in ("cann","musa","hip","rpc","kompute","zdnn","blas","vulkan","metal","sycl","opencl")): return "other-backend"
        return "cxx"
    return "other"

def main():
    out = {}
    for repo, led in LEDGERS.items():
        d = json.load(open(f"{ROOT}/history-eq/results/{led}"))
        rp = f"{ROOT}/benchmarks/repos/{repo}"
        for e in d["entries"]:
            if e.get("checker_status") == "checked": continue
            c = e["commit"]
            try:
                full = subprocess.check_output(["git","-C",rp,"rev-parse",c],text=True,env=NOFETCH).strip()
                files = subprocess.check_output(["git","-C",rp,"diff-tree","-r","--no-commit-id","--name-status","-M",full+"^1",full],text=True,env=NOFETCH).splitlines()
                stat = subprocess.check_output(["git","-C",rp,"diff","--shortstat",full+"^1",full],text=True,env=NOFETCH).strip()
            except Exception as ex:
                out.setdefault(repo, []).append({"commit": c, "error": str(ex)[:200], "subject": e.get("subject")}); continue
            fl = [l.split("\t")[-1] for l in files]
            out.setdefault(repo, []).append({"commit": full, "subject": e.get("subject"), "files": [(f, classify(f)) for f in fl], "stat": stat})
    json.dump(out, open(sys.argv[1], "w"), indent=1)
    for repo, es in out.items():
        print("==", repo, len(es))
        from collections import Counter
        cnt = Counter()
        for e in es:
            cats = sorted({k for _, k in e.get("files", [])})
            cnt[tuple(cats)] += 1
        for k, v in cnt.most_common(): print(v, k)
main()
