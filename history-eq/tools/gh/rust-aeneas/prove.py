"""prove.py: locate old/new Aeneas defs per unit, emit Lean theorems `@new = @old`, run a tactic battery."""
import json, os, re, subprocess, time
H = "/srv/home/hantaolou/code/veriop/history-eq"
LEANDIR = f"{H}/gh/rust-aeneas/lean"

def parse_blocks(text):
    """returns list of dict(rust, file, l1, name, kind) from Aeneas-generated Lean."""
    out = []
    parts = re.split(r"(?m)^/-- \[", text)
    for p in parts[1:]:
        m = re.match(r"(.*?)\]", p, re.S)
        rust = m.group(1) if m else ""
        sm = re.search(r"Source: '([^']*)', lines (\d+):(\d+)-(\d+):(\d+)", p)
        dm = re.search(r"(?m)^(?:noncomputable )?(def|axiom|opaque|abbrev|theorem) ([^\s:(]+)", p)
        if not dm: continue
        out.append({"rust": rust, "file": sm.group(1) if sm else None, "l1": int(sm.group(2)) if sm else None,
                    "l2": int(sm.group(4)) if sm else None, "name": dm.group(2), "kind": dm.group(1)})
    return out

TACS = """
macro "funext_all" : tactic => `(tactic| repeat (apply funext; intro _))
"""
def battery(a, b, callees=()):
    cs = ", ".join(callees)
    extra = f"\n    | (funext_all; simp [{a}, {b}, {cs}] <;> grind)\n    | (funext_all; unfold {a} {b}; simp [{cs}] <;> grind)" if callees else ""
    return f"""  first
    | rfl
    | (funext_all; rfl)
    | (funext_all; simp [{a}, {b}]; done)
    | (funext_all; unfold {a} {b}; rfl)
    | (funext_all; simp [{a}, {b}] <;> grind)
    | (funext_all; unfold {a} {b}; simp_all <;> grind)
    | (funext_all; unfold {a} {b}; split <;> simp_all <;> grind)
    | (funext_all; unfold {a} {b}; (try split) <;> (try split) <;> simp_all <;> omega){extra}"""

def run(D, res):
    pr = {"ok": True, "theorems": []}
    res["steps"]["prove"] = pr
    for mod in res.get("lean_modules", []):
        text = open(mod["file"]).read()
        blocks = parse_blocks(text)
        ns = mod["ns"]
        thms = []
        for ui, u in enumerate(res["units"]):
            crate_tag = (res_crate_tag(res, u))
            if crate_tag != mod["tag"]: continue
            nr, orr = u.get("new_range"), u.get("old_range")
            if not nr or not orr: u["lean"] = {"status": "no-range"}; continue
            fname = u["file"]
            def pick(rng, want_old):
                c = [b for b in blocks if b["file"] and b["file"].endswith(os.path.basename(fname)) and b["l1"] and rng[0] <= b["l1"] <= rng[1]
                     and b["kind"] in ("def",) and not re.search(r"_loop\d*$", b["name"]) and (("__histeq_old" in b["rust"]) == want_old)]
                return c
            cn, co = pick(nr, False), pick(orr, True)
            if not cn or not co:
                u["lean"] = {"status": "not-translated", "new_found": bool(cn), "old_found": bool(co)}; continue
            u["lean"] = {"status": "located", "new": cn[0]["name"], "old": co[0]["name"], "tid": f"histeq_{ui}"}
            thms.append(u)
        if not thms: continue
        body = ["set_option linter.style.nameCheck false", "set_option maxHeartbeats 400000", TACS, f"open {ns}"]
        defnames = [b["name"] for b in blocks if b["kind"] == "def" and not re.search(r"_loop\d*$", b["name"])]
        manual = {}
        mp_ = f"/srv/home/hantaolou/code/veriop/history-eq/tools/gh/rust-aeneas/manual/{os.path.basename(D)}.json"
        if os.path.exists(mp_): manual = json.load(open(mp_))
        for u in thms:
            l = u["lean"]
            def bodytext(n):
                m_ = re.search(r"(?ms)^def " + re.escape(n) + r"\b(.*?)(?=^/-- \[|^end )", text)
                return m_.group(1) if m_ else ""
            bt = bodytext(l["new"]) + bodytext(l["old"])
            callees = [n for n in defnames if n not in (l["new"], l["old"]) and re.search(r"(?<![\w.])" + re.escape(n) + r"(?![\w.])", bt)]
            l["callees"] = callees[:12]
            if u["key"] in manual:
                tac = manual[u["key"]]; l["manual"] = True
                body.append(f"theorem {l['tid']} : @{l['new']} = @{l['old']} := by\n{tac}\n#print axioms {l['tid']}\n")
            else:
                body.append(f"theorem {l['tid']} : @{l['new']} = @{l['old']} := by\n{battery(l['new'], l['old'], callees[:12])}\n#print axioms {l['tid']}\n")
        m = re.search(r"(?m)^end " + re.escape(ns) + r"\s*$", text)
        full = text[:m.end()] + "\n\n" + "\n".join(body)
        pf = f"{D}/Proof-{mod['tag']}.lean"
        open(pf, "w").write(full)
        t0 = time.time()
        try:
            r = subprocess.run(["bash", "-c", f"cd {LEANDIR} && lake env lean {pf}"], capture_output=True, text=True, timeout=1200)
            out = r.stdout + r.stderr
        except subprocess.TimeoutExpired:
            out = "TIMEOUT"
        open(f"{D}/Proof-{mod['tag']}.log", "w").write(out)
        pr["secs"] = round(time.time() - t0)
        for u in thms:
            tid = u["lean"]["tid"]
            ax = re.search(r"'" + re.escape(tid) + r"' depends on axioms: \[(.*?)\]", out, re.S)
            if ax:
                axs = [x.strip() for x in ax.group(1).split(",")]
                u["lean"]["axioms"] = axs
                u["lean"]["proved"] = "sorryAx" not in axs and "Lean.ofReduceBool" not in axs
            else:
                u["lean"]["proved"] = False
        errs = [l for l in out.split("\n") if "error" in l]
        pr["lean_errors"] = errs[:5]
        # typecheck failure of model itself
        if any(re.search(r"Proof-.*lean:(\d+):", l) and int(re.search(r":(\d+):", l).group(1)) <= text[:m.end()].count("\n") for l in errs):
            pr["model_typecheck_error"] = [l for l in errs if int(re.search(r":(\d+):", l).group(1)) <= text[:m.end()].count("\n")][:3]
    return res

def res_crate_tag(res, u):
    # which crate (tag) does the unit's file belong to
    for cd, files in res["crates"].items():
        if u["file"] in files: return (cd or "root").replace("/", "_")
