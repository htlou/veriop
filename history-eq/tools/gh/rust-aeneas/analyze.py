#!/usr/bin/env python3
"""analyze.py REPO COMMIT8 -> gh/work/REPO/COMMIT8/analysis.json  (syn-based item-level diff of changed .rs files)"""
import json, os, subprocess, sys
H = "/srv/home/hantaolou/code/veriop/history-eq"
FNDIFF = f"{H}/tools/gh/rust-aeneas/fndiff/target/release/fndiff"
NONLIB = ("tests/", "test/", "benches/", "bench/", "examples/", "fuzz/", "regex-cli/", "regex-capi/", "regex-test/", "regex-debug/", "ci/", "scripts/", "record/", "testdata/", "regex_macros/")
def is_lib(p):
    if not p.endswith(".rs"): return False
    if p == "build.rs": return False
    return not any(p.startswith(x) or ("/" + x) in p for x in NONLIB)
def run(path):
    if not os.path.exists(path): return None
    r = subprocess.run([FNDIFF, path], capture_output=True, text=True)
    try: return json.loads(r.stdout)
    except Exception: return {"error": "fndiff-crash " + r.stderr[-200:]}
def main():
    repo, c = sys.argv[1:3]
    d = f"{H}/gh/work/{repo}/{c}"
    meta = json.load(open(f"{d}/meta.json"))
    res = {"commit": meta["commit"], "files": [], "nonlib_rs": [], "other_changed": []}
    for f in meta["changed"]:
        st = f["status"][0]
        oldp = f["paths"][0]; newp = f["paths"][-1]
        if not newp.endswith(".rs") and not oldp.endswith(".rs"):
            res["other_changed"].append(newp); continue
        if not (is_lib(newp) or is_lib(oldp)):
            res["nonlib_rs"].append(newp); continue
        o = run(f"{d}/old/{oldp}") if st != "A" else {"items": []}
        n = run(f"{d}/new/{newp}") if st != "D" else {"items": []}
        ent = {"old": oldp, "new": newp, "status": st}
        if o is None or n is None or "error" in o or "error" in n:
            ent["parse_error"] = (o or {}).get("error") or (n or {}).get("error") or "missing"
            res["files"].append(ent); continue
        om = {i["key"]: i for i in o["items"]}; nm = {i["key"]: i for i in n["items"]}
        ch, add, rem = [], [], []
        for k, ni in nm.items():
            oi = om.get(k)
            if oi is None: add.append({"key": k, "kind": ni["kind"]}); continue
            if ni["full"] == oi["full"] and ni["attrs"] == oi["attrs"] and ni["cfg"] == oi["cfg"]: continue
            ch.append({"key": k, "kind": ni["kind"], "sig_changed": ni["sig"] != oi["sig"],
                       "body_changed": ni["body"] != oi["body"], "attrs_changed": ni["attrs"] != oi["attrs"],
                       "cfg_changed": ni["cfg"] != oi["cfg"], "old_attrs": oi["attrs"], "new_attrs": ni["attrs"],
                       "old_sig": oi["sig"][:200], "new_sig": ni["sig"][:200]})
        for k, oi in om.items():
            if k not in nm: rem.append({"key": k, "kind": oi["kind"]})
        ent.update(changed=ch, added=add, removed=rem)
        res["files"].append(ent)
    json.dump(res, open(f"{d}/analysis.json", "w"), indent=1)
    return res
if __name__ == "__main__":
    r = main()
    for f in r["files"]:
        print(f["new"], f.get("parse_error", ""), "chg", [(x["key"], "S" if x["sig_changed"] else "", "B" if x["body_changed"] else "", "A" if x["attrs_changed"] else "") for x in f.get("changed", [])][:12], "add", len(f.get("added", [])), "rem", len(f.get("removed", [])))
