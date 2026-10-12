#!/usr/bin/env python3
"""Shared helpers for GPU old/new PTX comparison (llama.cpp / cutlass / flash-attention)."""
import hashlib, json, os, re, subprocess, sys, time
ROOT = "/srv/home/hantaolou/code/veriop"
HE = f"{ROOT}/history-eq"
VOLTA = f"{ROOT}/cuda/repos/volta/target/release/volta"
GHRES = f"{HE}/gh/results"

def run(cmd, timeout=900, cwd=None, log=None):
    t = time.time()
    try:
        r = subprocess.run([str(c) for c in cmd], capture_output=True, text=True, timeout=timeout, cwd=cwd)
        out = dict(cmd=[str(c) for c in cmd], rc=r.returncode, stdout=r.stdout, stderr=r.stderr)
    except subprocess.TimeoutExpired as e:
        out = dict(cmd=[str(c) for c in cmd], rc=None, timeout=True, stdout=(e.stdout or b"").decode(errors="replace") if isinstance(e.stdout, bytes) else (e.stdout or ""), stderr="")
    out["secs"] = round(time.time() - t, 1)
    if log:
        open(log, "w").write("$ " + " ".join(out["cmd"]) + f"\nrc={out['rc']} secs={out['secs']}\n" + out["stdout"] + out["stderr"])
    return out

def materialize(repo, commit, dest, *paths):
    r = run(["python3", f"{HE}/tools/gh/materialize.py", repo, commit, dest, *paths], timeout=1800)
    if r["rc"]: raise RuntimeError(r["stderr"][-500:])
    return json.load(open(f"{dest}/meta.json"))

def nvcc_ptx(src, out, incs, defs=(), arch="compute_80", std="c++17", extra=(), log=None, timeout=900, cwd=None):
    cmd = ["nvcc", f"-std={std}", f"-arch={arch}", "--ptx", "-O3", *extra, *[f"-D{d}" for d in defs],
           *[f"-I{i}" for i in incs], src, "-o", out]
    return run(cmd, timeout=timeout, log=log, cwd=cwd)

def norm_ptx(text):
    text = re.sub(r"//[^\n]*", "", text)
    text = re.sub(r"_INTERNAL_[0-9a-f]{8}_", "_INTERNAL_X_", text)
    lines = [l.strip() for l in text.splitlines()]
    out = []
    for l in lines:
        if not l: continue
        m = re.match(r"(\.global .*\$str[^=]*)=\s*\{([\d,\s]*)\};", l)
        if m:
            try:
                s = bytes(int(x) for x in m.group(2).split(",") if x.strip()).decode("latin1")
                s = re.sub(r"/(old|new)/", "/SIDE/", s)
                l = "STR " + re.sub(r"\[\d+\]", "", m.group(1)) + repr(s)
            except Exception:
                pass
        out.append(l)
    return out

def split_funcs(path):
    """name -> list of normalized lines for each .entry/.func in a PTX file."""
    lines = norm_ptx(open(path).read())
    funcs, cur, name, depth = {}, None, None, 0
    hdr = []
    for l in lines:
        m = re.match(r"\.(?:visible\s+|weak\s+)?\.?(entry|func)\s+(?:\([^)]*\)\s*)?([^\s(]+)", l)
        if cur is None and re.match(r"^\.(visible |weak )?\.?(entry|func)\b", l) or (cur is None and ".entry" in l and "(" in l):
            mm = re.search(r"(?:\.entry|\.func)\s+(?:\([^)]*\)\s*)?([A-Za-z_$][\w$]*)", l)
            name = mm.group(1) if mm else l
            cur = [l]; depth = l.count("{") - l.count("}")
            if depth == 0 and l.endswith(";"):
                funcs[name] = cur; cur = None
            continue
        if cur is not None:
            cur.append(l); depth += l.count("{") - l.count("}")
            if depth <= 0 and "}" in l and not any(c.endswith("(") for c in cur[-1:]):
                if depth == 0 and ("{" in "".join(cur)):
                    funcs[name] = cur; cur = None
        else:
            hdr.append(l)
    return funcs

def sha(p):
    return hashlib.sha256(open(p, "rb").read()).hexdigest()

def line_only(a, b):
    """True if two function bodies differ only in `mov.u32 %rN, <imm>` constants (the __LINE__ of a vprintf+trap diagnostic)."""
    if len(a) != len(b) or not any(l == "trap;" for l in a) or not any("vprintf" in l for l in a): return False
    diff = [(x, y) for x, y in zip(a, b) if x != y]
    return bool(diff) and all(re.match(r"mov\.u32\s+%r\d+,\s*\d+;$", x) and re.match(r"mov\.u32\s+%r\d+,\s*\d+;$", y) and x.split(",")[0] == y.split(",")[0] for x, y in diff)

def compare_ptx_files(old, new):
    fo, fn = split_funcs(old), split_funcs(new)
    ident, changed, lineonly = [], [], []
    for k in fo:
        if k in fn:
            if fo[k] == fn[k]: ident.append(k)
            elif line_only(fo[k], fn[k]): lineonly.append(k)
            else: changed.append(k)
    return dict(identical=sorted(ident), changed=sorted(changed), line_only=sorted(lineonly),
                removed=sorted(set(fo) - set(fn)), added=sorted(set(fn) - set(fo)),
                n_old=len(fo), n_new=len(fn), whole_file_identical=(norm_ptx(open(old).read()) == norm_ptx(open(new).read())))

def volta_parse(ptx, log=None):
    return run([VOLTA, "parse", "--no-log-file", ptx], timeout=300, log=log)

def write_result(repo, commit, **kw):
    d = f"{GHRES}/{repo}"; os.makedirs(d, exist_ok=True)
    rec = dict(repo=repo, commit=commit, checker="", checker_ran=False, verdict="UNSUPPORTED", scope="", build_config="",
               units=[], unsupported_reason=None, not_equiv_kind=None, not_equiv_level=None, counterexample=None,
               evidence_dir=None, notes="")
    rec.update(kw)
    json.dump(rec, open(f"{d}/{commit}.json", "w"), indent=1)
    return rec

def result_exists(repo, commit):
    return os.path.exists(f"{GHRES}/{repo}/{commit}.json")

def ptx_totals(work, tag=""):
    d = json.load(open(f"{work}/ptx/summary{tag}.json"))
    t = dict(tus=len(d), built=0, build_fail=[], identical=0, line_only=0, changed=0, added=0, removed=0, changed_names=[], whole_identical=0)
    t["one_sided"] = []
    for k, v in d.items():
        if v.get("one_sided"):
            t["one_sided"].append((k, v["one_sided"])); continue
        if v["old_rc"] != 0 or v["new_rc"] != 0:
            t["build_fail"].append((k, v["old_rc"], v["new_rc"])); continue
        t["built"] += 1; t["identical"] += v["n_identical"]; t["line_only"] += len(v.get("line_only", []))
        t["changed"] += len(v["changed"]); t["added"] += len(v["added"]); t["removed"] += len(v["removed"])
        t["whole_identical"] += bool(v["whole_file_identical"])
        t["changed_names"] += [(k.split("/")[-1], n) for n in v["changed"]]
    return t, d

def parse_all(work, d, maxn=4):
    """Volta-parse a sample of the built PTX files (old+new); returns list of (file, rc, first line)."""
    out = []
    n = 0
    for k, v in d.items():
        if v.get("one_sided") or v["old_rc"] != 0 or v["new_rc"] != 0: continue
        for p in (v["old_ptx"], v["new_ptx"]):
            r = volta_parse(p)
            out.append((os.path.basename(p), r["rc"], (r["stdout"] + r["stderr"]).strip().splitlines()[-1:] ))
        n += 1
        if n >= maxn: break
    return out

_T = None
def full(repo, short):
    global _T
    if _T is None: _T = json.load(open(f"{HE}/gh/work/gpu_triage.json"))
    m = [e["commit"] for e in _T[repo] if e["commit"].startswith(short)]
    assert len(m) == 1, (repo, short, m)
    return m[0]

def ev(repo, short):
    return f"history-eq/gh/work/{repo}/{short}"

def affected_tus(root, changed_rel, tu_glob_dirs=("ggml/src/ggml-cuda", "ggml/src/ggml-cuda/template-instances"), exts=(".cu",)):
    """Return .cu files (relative to root) that transitively #include any changed header (or are changed themselves)."""
    import glob
    incre = re.compile(r'#\s*include\s+"([^"]+)"')
    files = {}
    for dd in tu_glob_dirs:
        for f in glob.glob(f"{root}/{dd}/*"):
            if f.endswith((".cu", ".cuh", ".h", ".hpp")):
                files[os.path.relpath(f, root)] = f
    inc = {}
    for rel, f in files.items():
        deps = set()
        for m in incre.findall(open(f, errors="replace").read()):
            cand = os.path.normpath(os.path.join(os.path.dirname(rel), m))
            if cand in files: deps.add(cand)
        inc[rel] = deps
    def reach(rel, seen=None):
        seen = seen if seen is not None else set()
        for dpd in inc.get(rel, ()):
            if dpd not in seen:
                seen.add(dpd); reach(dpd, seen)
        return seen
    out = []
    for rel in files:
        if rel.endswith(".cu"):
            r = reach(rel) | {rel}
            if r & set(changed_rel): out.append(rel)
    return sorted(out)
