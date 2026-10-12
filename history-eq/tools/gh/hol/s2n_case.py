#!/usr/bin/env python3
"""s2n-bignum historical-optimization HOL Light gate (see tools/gh/PROTOCOL.md).

  s2n_case.py plan   [--commits c8,c8,..]      materialize + shim + assemble objects + build the job list
  s2n_case.py run    [--jobs N] [--timeout S]  run all pending proof jobs (priority queue, <= N processes)
  s2n_case.py report                           aggregate finished jobs into gh/results/s2n-bignum/<commit>.json

Per changed routine (arch, dir/fn) of a commit:
  * identical assembled object (old .o == new .o)           -> unit EQUIV (identical object code)
  * routine added / removed / no proof on one side          -> unit UNSUPPORTED
  * both proofs present: run the upstream proof script of the OLD and of the NEW tree natively against local
    HOL Light (hol_proof.py).  Both PASS and the *_SUBROUTINE_CORRECT statements agree -> EQUIV via shared spec;
    agree except stack-frame size / MAYCHANGE footprint -> EQUIV_UNDER_PRECOND (ABI-level observation);
    otherwise / failure / timeout -> UNKNOWN.
"""
import argparse, concurrent.futures as cf, glob, hashlib, heapq, json, os, re, subprocess, sys, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import hol_proof as HP

ROOT = "/srv/home/hantaolou/code/veriop"
HE = f"{ROOT}/history-eq"
LEDGER = f"{HE}/results/s2n-bignum-optimization-sample.json"
WORK = f"{HE}/gh/work/s2n-bignum"
RES = f"{HE}/gh/results/s2n-bignum"
ARCHES = ("x86", "arm")
ENV = dict(HP.ENV)


def entries():
    d = json.load(open(LEDGER))
    return [e for e in d["entries"] if e.get("checker_status") != "checked"]


def sh(cmd, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, env=ENV, **kw)


def plan_commit(commit):
    c8 = commit[:8]
    wd = f"{WORK}/{c8}"
    r = sh(["python3", f"{HE}/tools/gh/materialize.py", "s2n-bignum", commit, wd])
    if r.returncode: return dict(commit=commit, error="materialize: " + r.stderr[-300:])
    meta = json.load(open(f"{wd}/meta.json"))
    for side in ("old", "new"):
        if not os.path.exists(f"{wd}/{side}/.shimmed"): HP.apply_shims(f"{wd}/{side}")
    units = {}
    other = []
    for ch in meta["changed"]:
        st = ch["status"][0]
        paths = ch["paths"]
        p_old, p_new = paths[0], paths[-1]
        m = re.match(r"(x86|arm)/([^/]+)/([^/]+)\.S$", p_new if st != "D" else p_old)
        if not m:
            other.append(p_new)
            continue
        arch, d_new, fn_new = m.groups()
        mo = re.match(r"(x86|arm)/([^/]+)/([^/]+)\.S$", p_old)
        key = f"{arch}/{fn_new}"
        u = dict(arch=arch, fn=fn_new, status=st, old_path=p_old if st != "A" else None, new_path=p_new if st != "D" else None,
                 old_fn=mo.group(3) if mo and st != "A" else None)
        units[key] = u
    # per unit: objects + proofs
    for key, u in units.items():
        arch = u["arch"]
        wo, wn = f"{wd}/old", f"{wd}/new"
        po = f"{wo}/{arch}/proofs/{u['old_fn']}.ml" if u["old_fn"] else None
        pn = f"{wn}/{arch}/proofs/{u['fn']}.ml" if u["status"] != "D" else None
        u["old_proof"] = bool(po and os.path.exists(po))
        u["new_proof"] = bool(pn and os.path.exists(pn))
        objs = {}
        for side, root, path in (("old", wo, u["old_path"]), ("new", wn, u["new_path"])):
            if not path: continue
            rel = path[len(arch) + 1:][:-2] + ".o"
            rr = sh(["make", "-C", f"{root}/{arch}", rel], timeout=600)
            f = f"{root}/{arch}/{rel}"
            objs[side] = hashlib.sha256(open(f, "rb").read()).hexdigest() if rr.returncode == 0 and os.path.exists(f) else None
            u[f"{side}_obj_ok"] = objs[side] is not None
            if rr.returncode: u[f"{side}_obj_err"] = (rr.stdout + rr.stderr)[-300:]
        u["identical_obj"] = bool(objs.get("old") and objs.get("old") == objs.get("new"))
        if u["identical_obj"]:
            continue
    plan = dict(commit=commit, c8=c8, units=units, other_changed=other, tree=wd)
    json.dump(plan, open(f"{wd}/plan.json", "w"), indent=1)
    return plan


def proof_jobs(plan):
    """list of (priority, outdir, tree, arch, mlrel) for non-identical units with both proofs"""
    jobs = []
    wd = plan["tree"]
    for key, u in plan["units"].items():
        if u["identical_obj"] or u["status"] not in ("M", "R") or not (u["old_proof"] and u["new_proof"]): continue
        so = os.path.getsize(f"{wd}/new/{u['arch']}/proofs/{u['fn']}.ml")
        for side, fn in (("old", u["old_fn"]), ("new", u["fn"])):
            jobs.append((so, f"{wd}/ev/{side}_{u['arch']}_{fn}", f"{wd}/{side}", u["arch"], f"proofs/{fn}.ml"))
    return jobs


def load_plans(only=None):
    plans = []
    for e in entries():
        c8 = e["commit"][:8]
        if only and c8 not in only: continue
        p = f"{WORK}/{c8}/plan.json"
        if os.path.exists(p): plans.append(json.load(open(p)))
    return plans


def cmd_plan(a):
    es = [e["commit"] for e in entries() if not a.commits or e["commit"][:8] in a.commits.split(",")]
    with cf.ThreadPoolExecutor(a.jobs) as ex:
        for pl in ex.map(plan_commit, es):
            if "error" in pl: print(pl["commit"][:8], "ERROR", pl["error"]); continue
            nj = len(proof_jobs(pl))
            print(pl["c8"], f"units={len(pl['units'])} ident={sum(u['identical_obj'] for u in pl['units'].values())} proof_jobs={nj//2}", flush=True)


def run_job(job, timeout):
    pri, out, tree, arch, mlrel = job
    rj = f"{out}/result.json"
    if os.path.exists(rj):
        try:
            if json.load(open(rj)).get("status") in ("PASS", "FAIL", "TIMEOUT", "BUILD_FAIL", "OBJ_FAIL"): return out, "cached"
        except Exception: pass
    subprocess.run(["python3", f"{HE}/tools/gh/hol/hol_proof.py", tree, arch, mlrel, out, str(timeout)], env=ENV,
                   stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    try: return out, json.load(open(rj)).get("status")
    except Exception: return out, "NORESULT"


def cmd_run(a):
    plans = load_plans(set(a.commits.split(",")) if a.commits else None)
    # priority: pass 1 = the (up to K) smallest routines of every commit; pass 2 = the rest
    q = []
    for pl in plans:
        js = sorted(proof_jobs(pl), key=lambda j: j[0])
        seen = []
        for j in js:
            k = (j[3], os.path.basename(j[4]))
            if k not in seen: seen.append(k)
            rank = seen.index(k)
            pri = (0 if rank < a.first_pass else 1, rank, j[0])
            q.append((pri, j))
    q.sort(key=lambda x: x[0])
    jobs = [j for _, j in q]
    print(len(jobs), "proof jobs", flush=True)
    done = 0
    with cf.ThreadPoolExecutor(a.jobs) as ex:
        futs = [ex.submit(run_job, j, a.timeout) for j in jobs]
        for f in cf.as_completed(futs):
            done += 1
            out, st = f.result()
            print(f"[{done}/{len(jobs)}] {os.path.relpath(out, WORK)} {st}", flush=True)


# ------------------------------------------------------------------------------------------------ report
def norm1(t):
    t = re.sub(r"\(word pc,\s*\d+\)", "(word pc,CODELEN)", t)
    t = re.sub(r"\b0x[0-9a-f]+\b", lambda m: m.group(0), t)
    return " ".join(t.split())


def norm2(t):
    t = norm1(t)
    t = re.sub(r"word_sub stackpointer \(word \d+\),\s*\d+", "STACKFRAME", t)
    t = re.sub(r"\(word pc,CODELEN\)", "CODE", t)
    # drop the frame (MAYCHANGE ...) clause: everything from the last top-level "(MAYCHANGE" onward
    i = t.find("(MAYCHANGE")
    if i >= 0: t = t[:i]
    return t


def spec_pairs(r_old, r_new):
    """pair up spec theorems by name; subroutine specs preferred"""
    names = [n for n in r_old["thms"] if n in r_new["thms"]]
    sub = [n for n in names if "SUBROUTINE_CORRECT" in n]
    missing = [n for n in list(r_old["thms"]) + list(r_new["thms"]) if "SUBROUTINE_CORRECT" in n and n not in names]
    return (sub if sub else names), missing


def unit_verdict(plan, key, u):
    wd = plan["tree"]
    ud = dict(name=key, file=u.get("new_path") or u.get("old_path"), status=u["status"])
    if u["identical_obj"]:
        return dict(ud, result="EQUIV", detail="assembled object code identical (source change is comment/whitespace/macro-neutral)", tier="identical-object")
    if u["status"] == "A":
        return dict(ud, result="UNSUPPORTED", unsupported_reason="no-old-counterpart", detail="routine added by this commit; no old routine to compare" + ("" if u["new_proof"] else " (and no proof)"))
    if u["status"] == "D":
        return dict(ud, result="UNSUPPORTED", unsupported_reason="no-new-counterpart", detail="routine deleted")
    if not u["old_obj_ok"] or not u["new_obj_ok"]:
        return dict(ud, result="UNSUPPORTED", unsupported_reason="old-code-does-not-build" if not u["old_obj_ok"] else "new-code-does-not-build", detail=(u.get("old_obj_err") or u.get("new_obj_err") or "")[-200:])
    if not (u["old_proof"] and u["new_proof"]):
        return dict(ud, result="UNSUPPORTED", unsupported_reason="no-proof-for-routine", detail=f"old proof present={u['old_proof']}, new proof present={u['new_proof']}")
    ro = f"{wd}/ev/old_{u['arch']}_{u['old_fn']}/result.json"
    rn = f"{wd}/ev/new_{u['arch']}_{u['fn']}/result.json"
    if not (os.path.exists(ro) and os.path.exists(rn)):
        return dict(ud, result="UNKNOWN", detail="proof job not run (time budget)", attempted=False)
    o, n = json.load(open(ro)), json.load(open(rn))
    if o["status"] != "PASS" or n["status"] != "PASS":
        return dict(ud, result="UNKNOWN", attempted=True,
                    detail=f"HOL Light proof replay: old={o['status']}{(' ' + str(o.get('detail', ''))) if o['status'] != 'PASS' else ''} (secs {o.get('secs', 0):.0f}), new={n['status']}{(' ' + str(n.get('detail', ''))) if n['status'] != 'PASS' else ''} (secs {n.get('secs', 0):.0f})")
    names, missing = spec_pairs(o, n)
    if not names or missing:
        return dict(ud, result="UNKNOWN", attempted=True, detail=f"both proofs check but spec theorem names do not pair up (missing {missing[:3]})")
    t1 = all(norm1(o["thms"][x]) == norm1(n["thms"][x]) for x in names)
    if t1:
        return dict(ud, result="EQUIV", attempted=True, tier="same-spec",
                    detail=f"both object-code proofs check; {', '.join(names)} statements identical (modulo code-length constant): shared full functional spec; old {o['secs']:.0f}s, new {n['secs']:.0f}s")
    t2 = all(norm2(o["thms"][x]) == norm2(n["thms"][x]) for x in names)
    if t2:
        return dict(ud, result="EQUIV_UNDER_PRECOND", attempted=True, tier="same-spec-modulo-frame",
                    detail=f"both proofs check; {', '.join(names)} identical (preconditions + postcondition) except stack-frame size / MAYCHANGE footprint; equal under ABI-level observation (caller-saved regs, flags and dead stack not observable)")
    diff = next(x for x in names if norm2(o["thms"][x]) != norm2(n["thms"][x]))
    a, b = norm2(o["thms"][diff]), norm2(n["thms"][diff])
    k = next((i for i in range(min(len(a), len(b))) if a[i] != b[i]), 0)
    return dict(ud, result="UNKNOWN", attempted=True, tier="spec-changed",
                detail=f"both proofs check but {diff} differs beyond frame: old ...{a[max(0,k-60):k+80]} | new ...{b[max(0,k-60):k+80]}")


def commit_result(plan, entry):
    commit = plan["commit"]
    units = [unit_verdict(plan, k, u) for k, u in sorted(plan["units"].items())]
    cnt = {}
    for u in units: cnt[u["result"]] = cnt.get(u["result"], 0) + 1
    base = dict(repo="s2n-bignum", commit=commit, checker="HOL Light (local, OCaml 5.3 native replay of upstream s2n-bignum object-code proofs; clang-14 aarch64 assembler stand-in for ARM)",
                checker_ran=False, verdict=None, scope="", build_config="x86-64/AArch64 object code assembled from the commit's own .S via the tree's Makefile rule (cpp | as); proofs replayed from each historical tree against HOL Light @233b83c with documented compatibility shims (hol_proof.py: apply_shims)",
                units=units, unsupported_reason=None, not_equiv_kind=None, not_equiv_level=None, counterexample=None,
                evidence_dir=os.path.relpath(plan["tree"], ROOT), notes="")
    proven = [u for u in units if u["result"] in ("EQUIV", "EQUIV_UNDER_PRECOND")]
    attempted = [u for u in units if u.get("attempted")]
    base["checker_ran"] = bool(attempted) or any(u.get("tier") == "identical-object" for u in units)
    ucnt = ", ".join(f"{v} {k}" for k, v in sorted(cnt.items()))
    if not units:
        base.update(verdict="UNSUPPORTED", unsupported_reason="no-executable-change-in-checker-language", scope="no x86/arm assembly routine changed",
                    notes="Commit changes no x86/arm .S routine (only proof infrastructure/tactics/build/tests/docs: %s); nothing for the object-code gate to compare." % ", ".join(plan["other_changed"][:6]))
        return base
    base["scope"] = f"{len(units)} changed assembly routine(s): {ucnt}"
    if len(proven) == len(units):
        v = "EQUIV" if all(u["result"] == "EQUIV" for u in units) else "EQUIV_UNDER_PRECOND"
        base["verdict"] = v
        base["notes"] = "Every changed routine: identical object code or both old/new HOL Light object-code proofs check against the same functional spec. " + (
            "Some pairs differ only in stack-frame/MAYCHANGE footprint (ABI-level equality)." if v != "EQUIV" else "")
    elif proven:
        base["verdict"] = "EQUIV_PARTIAL"
        base["notes"] = f"{len(proven)}/{len(units)} routines proven equal; rest: " + "; ".join(sorted({(u.get('unsupported_reason') or u['result']) for u in units if u not in proven}))
    else:
        unsup = [u for u in units if u["result"] == "UNSUPPORTED"]
        if len(unsup) == len(units):
            rs = [u["unsupported_reason"] for u in unsup]
            base.update(verdict="UNSUPPORTED", unsupported_reason=max(set(rs), key=rs.count),
                        notes="No changed routine could be paired old/new with proofs: " + "; ".join(sorted(set(rs))))
        else:
            base["verdict"] = "UNKNOWN"
            base["notes"] = "No routine proved equal; checker ran on %d routine pair(s) (proof replay failed/timed out/spec changed): see units." % len(attempted)
    return base


def cmd_report(a):
    os.makedirs(RES, exist_ok=True)
    n = 0
    for e in entries():
        c8 = e["commit"][:8]
        p = f"{WORK}/{c8}/plan.json"
        if not os.path.exists(p): continue
        plan = json.load(open(p))
        r = commit_result(plan, e)
        json.dump(r, open(f"{RES}/{e['commit']}.json", "w"), indent=1)
        n += 1
    print("wrote", n)


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("cmd", choices=["plan", "run", "report"])
    ap.add_argument("--commits", default="")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--timeout", type=int, default=5400)
    ap.add_argument("--first-pass", type=int, default=2)
    a = ap.parse_args()
    {"plan": cmd_plan, "run": cmd_run, "report": cmd_report}[a.cmd](a)
