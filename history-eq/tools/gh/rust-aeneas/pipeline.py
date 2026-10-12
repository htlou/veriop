#!/usr/bin/env python3
"""pipeline.py REPO C8 [--keep-target]
Build a combined crate (new tree + old copies `<fn>__histeq_old` of every changed same-signature fn),
mark old/new fns with #[verify::start_from], run Charon + Aeneas + Lean typecheck, then attempt
`new = old` theorems.  Writes gh/work/REPO/C8/pipe.json (status of each step) + logs."""
import sys; sys.path.insert(0, "/srv/home/hantaolou/code/veriop/history-eq/tools/gh/rust-aeneas")
import json, os, re, shutil, subprocess, sys, time
H = "/srv/home/hantaolou/code/veriop/history-eq"
T = f"{H}/tools/gh/rust-aeneas"
FNDIFF = f"{T}/fndiff/target/release/fndiff"
ENVSH = "/srv/home/hantaolou/code/veriop/aeneas/env.sh"
AENEAS = "/srv/home/hantaolou/code/veriop/aeneas/env/aeneas/aeneas"
SUF = "__histeq_old"
LEANDIR = f"{H}/gh/rust-aeneas/lean"

def sh(cmd, cwd=None, env=None, timeout=900, log=None):
    e = dict(os.environ); e.update(env or {})
    full = f"source {ENVSH}; " + cmd
    t0 = time.time()
    try:
        r = subprocess.run(["bash", "-c", full], cwd=cwd, env=e, capture_output=True, text=True, timeout=timeout)
        out, rc = r.stdout + r.stderr, r.returncode
    except subprocess.TimeoutExpired as ex:
        out, rc = (ex.stdout or b"").decode() if isinstance(ex.stdout, bytes) else (ex.stdout or ""), 124
        out += "\nTIMEOUT"
    if log: open(log, "w").write(out)
    return rc, out, time.time() - t0

def fndiff(path):
    r = subprocess.run([FNDIFF, path], capture_output=True, text=True)
    return json.loads(r.stdout)

def crate_dir(ws, rel):
    d = os.path.dirname(rel)
    while True:
        cp = os.path.join(ws, d, "Cargo.toml")
        if os.path.exists(cp) and "[package]" in open(cp, errors="replace").read():
            return d
        if d == "": return ""
        d = os.path.dirname(d)

def main(repo, c8):
    D = f"{H}/gh/work/{repo}/{c8}"
    an = json.load(open(f"{D}/analysis.json"))
    ws = f"{D}/ws"
    res = {"commit": an["commit"], "steps": {}, "units": [], "skipped": []}
    shutil.rmtree(ws, ignore_errors=True)
    shutil.copytree(f"{D}/new", ws, symlinks=True)
    inserts = {}   # file -> list of (line_after, text)
    crates = {}
    for f in an["files"]:
        if f.get("parse_error"):
            res["skipped"].append({"file": f["new"], "why": "syn parse error: " + f["parse_error"][:200]}); continue
        chg = [c for c in f["changed"] if c["kind"] == "fn"]
        if not chg: continue
        o = {i["key"]: i for i in fndiff(f"{D}/old/{f['old']}")["items"]}
        n = {i["key"]: i for i in fndiff(f"{D}/new/{f['new']}")["items"]}
        olines = open(f"{D}/old/{f['old']}", errors="replace").read().split("\n")
        for c in chg:
            k = c["key"]
            if c["sig_changed"]:
                res["skipped"].append({"fn": k, "file": f["new"], "why": "signature changed"}); continue
            if c["cfg_changed"]:
                res["skipped"].append({"fn": k, "file": f["new"], "why": "cfg changed"}); continue
            oi, ni = o[k], n[k]
            sp_o, sp_n = oi["span"], ni["span"]
            name = sp_n["name"]
            text = olines[sp_o["start"] - 1: sp_o["end"]]
            # rename first `fn name`
            joined = "\n".join(text)
            joined2, cnt = re.subn(r"\bfn\s+" + re.escape(name) + r"\b", "fn " + name + SUF, joined, count=1)
            if cnt == 0:
                res["skipped"].append({"fn": k, "file": f["new"], "why": "cannot rename"}); continue
            lst = inserts.setdefault(f["new"], [])
            marker = "#[verify::start_from]"
            uid = len(res["units"])
            if "impl_hdr" in sp_n:
                if "impl_hdr" not in sp_o:
                    res["skipped"].append({"fn": k, "file": f["new"], "why": "old fn not in impl"}); continue
                lst.append((sp_n["impl_end"], 0, f"{sp_o['impl_hdr']} {{\n{marker}\n{joined2}\n}}", uid))
            else:
                lst.append((sp_n["end"], 0, f"{marker}\n{joined2}", uid))
            lst.append((sp_n["start"] - 1, 1, marker, None))
            res["units"].append({"_uid": uid, "_start": sp_n["start"], "_end": sp_n["end"],"key": k, "file": f["new"], "name": name, "body_changed": c["body_changed"], "attrs_changed": c["attrs_changed"],
                                 "old_attrs": c["old_attrs"], "new_attrs": c["new_attrs"], "is_trait_impl": sp_n.get("is_trait_impl", False)})
            crates.setdefault(crate_dir(ws, f["new"]), []).append(f["new"])
    ranges = {}
    for rel, lst in inserts.items():
        p = f"{ws}/{rel}"
        lines = open(p, errors="replace").read().split("\n")
        off = 0
        for after, prio, text, uid in sorted(lst, key=lambda x: (x[0], x[1])):
            tl = text.split("\n")
            at = after + off
            lines[at:at] = tl
            if uid is not None:
                ranges.setdefault(uid, {})["old"] = (at + 1, at + len(tl))
            off += len(tl)
        open(p, "w").write("\n".join(lines))
        # new fn ranges: map original lines
        for u in res["units"]:
            if u["file"] != rel: continue
            def mp(L):
                return L + sum(len(t.split("\n")) for (a, pr, t, ui) in lst if a < L)
            u["new_range"] = (mp(u["_start"]), mp(u["_end"]))
    for u in res["units"]:
        u["old_range"] = ranges.get(u["_uid"], {}).get("old")
        u.pop("_start", None); u.pop("_end", None)
    res["crates"] = {k: sorted(set(v)) for k, v in crates.items()}
    json.dump(res, open(f"{D}/pipe.json", "w"), indent=1)
    if not res["units"]:
        res["steps"]["charon"] = "no-units"; json.dump(res, open(f"{D}/pipe.json", "w"), indent=1); return res
    tgt = f"{H}/gh/rust-aeneas/targets/{c8}"
    ok_all = True
    res["lean_modules"] = []
    for cd, files in res["crates"].items():
        tag = (cd or "root").replace("/", "_")
        llbc = f"{D}/{tag}.llbc"
        cmd = (f"export CARGO_BUILD_JOBS=2 CARGO_HOME={H}/gh/rust-aeneas/cargo-home RUSTFLAGS='--cap-lints=warn' CARGO_TARGET_DIR={tgt}; "
               f"charon cargo --preset=aeneas --dest-file {llbc} --start-from-attribute "
               f"--rustc-arg=-Zcrate-attr=feature\\(register_tool\\) --rustc-arg=-Zcrate-attr=register_tool\\(verify\\) -- --lib")
        rc, out, dt = sh(cmd, cwd=f"{ws}/{cd}", timeout=1500, log=f"{D}/{tag}-charon.log")
        ok = rc == 0 and os.path.exists(llbc)
        res["steps"][f"charon:{tag}"] = {"ok": ok, "rc": rc, "secs": round(dt)}
        if not ok:
            m = [l for l in out.split("\n") if l.startswith("error") or "ERROR" in l]
            res["steps"][f"charon:{tag}"]["err"] = "; ".join(m[:3])[:600]
            ok_all = False; continue
        ns = f"R{c8}{re.sub('[^A-Za-z0-9]', '', tag)}"
        shutil.rmtree(f"{D}/lean-{tag}", ignore_errors=True)
        rc, out, dt = sh(f"{AENEAS} -backend lean -loops-to-rec -no-progress-bar -namespace {ns} -dest {D}/lean-{tag} {llbc}", log=f"{D}/{tag}-aeneas.log")
        partial = "Generated the partial file" in out
        import glob
        lf = glob.glob(f"{D}/lean-{tag}/*.lean")
        ok = rc == 0 and not partial and len(lf) == 1
        res["steps"][f"aeneas:{tag}"] = {"ok": ok, "rc": rc, "secs": round(dt), "partial": partial}
        if not ok:
            m = [l for l in out.split("\n") if "Error" in l or "rror]" in l]
            res["steps"][f"aeneas:{tag}"]["err"] = " | ".join(x.strip() for x in m[:3])[:800]
            ok_all = False; continue
        res["lean_modules"].append({"tag": tag, "ns": ns, "file": lf[0]})
    shutil.rmtree(tgt, ignore_errors=True)
    try:
        import prove
        prove.run(D, res)
    except Exception as ex:
        res["steps"]["prove"] = {"ok": False, "err": repr(ex)}
    json.dump(res, open(f"{D}/pipe.json", "w"), indent=1)
    return res

if __name__ == "__main__":
    r = main(sys.argv[1], sys.argv[2])
    print(json.dumps({k: v for k, v in r.items() if k in ("steps", "skipped")}, indent=1)[:3000])
