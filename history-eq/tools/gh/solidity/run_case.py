#!/usr/bin/env python3
"""run_case.py REPO COMMIT [--force]  -- one commit, writes history-eq/gh/results/REPO/COMMIT.json"""
import json, os, re, subprocess, sys, shutil, time, traceback, glob
from concurrent.futures import ThreadPoolExecutor
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from soltool import *

CHECKER = "hevm 0.58.0 equivalence (z3 4.15.3; symbolic runtime-bytecode equivalence) on solc-compiled old/new harness contracts"
EXCL = re.compile(r"(^|/)(test|tests|mocks|mock|script|scripts|lib|node_modules|certora|echidna|testing)/|Mock|\.t\.sol$|\.s\.sol$|Test\.sol$|Harness|Wrapper\.sol$")
DEPS = {"solmate": "https://github.com/transmissions11/solmate", "openzeppelin-contracts": "https://github.com/OpenZeppelin/openzeppelin-contracts"}
DEP_SUB = {"solmate": "src", "openzeppelin-contracts": "contracts"}
NO_EXEC = "no-executable-change-in-checker-language"
HEVM_WALL = int(os.environ.get("HEVM_WALL", "900"))
CARRIER_WALL = int(os.environ.get("CARRIER_WALL", "600"))


def git(repo, *a):
    return subprocess.run(["git", "-C", f"{ROOT}/benchmarks/repos/{repo}", *a], capture_output=True, text=True)


def ensure_dep(name, sha, dest):
    if os.path.exists(f"{dest}/.done"): return
    bare = f"{GH}/work/_deps/{name}.git"
    os.makedirs(f"{GH}/work/_deps", exist_ok=True)
    if not os.path.exists(bare):
        tmp = bare + f".tmp{os.getpid()}"
        sh(["git", "clone", "--bare", "--filter=blob:none", DEPS[name], tmp])
        if os.path.exists(bare): shutil.rmtree(tmp)
        else: os.rename(tmp, bare)
    if sh(["git", "-C", bare, "cat-file", "-t", sha]).returncode:
        sh(["git", "-C", bare, "fetch", "origin", sha])
    os.makedirs(dest, exist_ok=True)
    p = subprocess.run(f"git -C {bare} archive {sha} {DEP_SUB[name]} | tar -x -C {dest}", shell=True, capture_output=True, text=True)
    if p.returncode: raise RuntimeError("dep archive failed " + p.stderr[-300:])
    open(f"{dest}/.done", "w").close()


def materialize(repo, commit, work):
    top = git(repo, "ls-tree", "--name-only", commit).stdout.split()
    want = [x for x in ("src", "contracts", "foundry.toml", "hardhat.config.js", "hardhat.config.ts", "truffle.js",
                        "truffle-config.js", "remappings.txt", "package.json", ".gitmodules") if x in top]
    p = subprocess.run([sys.executable, f"{ROOT}/history-eq/tools/gh/materialize.py", repo, commit, work, *want], capture_output=True, text=True)
    if p.returncode: raise RuntimeError("materialize: " + p.stderr[-500:])
    meta = json.load(open(f"{work}/meta.json"))
    for side, rev in (("old", meta["parent"]), ("new", meta["commit"])):
        for l in git(repo, "ls-tree", rev, "lib/").stdout.splitlines():
            m = l.split()
            if m[1] == "commit":
                nm = m[3].split("/")[-1]
                if nm in DEPS: ensure_dep(nm, m[2], f"{work}/{side}/lib/{nm}")
    return meta


def sol_changes(meta):
    pairs, others = [], []
    for f in meta["changed"]:
        st = f["status"][0]
        ps = f["paths"]
        op, np_ = ps[0], ps[-1]
        if st == "A": op = None
        if st == "D": np_ = None
        p = np_ or op
        if p.endswith(".sol") and (p.startswith("src/") or p.startswith("contracts/")) and not EXCL.search(p):
            pairs.append((op, np_))
        else:
            others.append(p)
    return pairs, others


def compile_ast(root, cfg, path, prefer=None):
    text = open(f"{root}/{path}").read()
    prag = pragma_of(text)
    cands = []
    if prefer: cands.append(prefer)
    if cfg["version"]: cands.append(cfg["version"])
    if prag:
        sv = sat_versions(prag[0])
        for v in sv[::-1][:3] + sv[:1]:
            if v not in cands and vt(v) <= (0, 8, 35): cands.append(v)
    errs = None
    for v in cands[:5]:
        out = solc_run(root, v, mk_input({path: text}, settings_of(cfg, v), {"*": {"": ["ast"]}}))
        e = errors_of(out)
        if not e and path in out.get("sources", {}):
            return v, out["sources"][path]["ast"], text.encode(), None
        errs = [x["message"][:300] for x in e][:3]
    return None, None, None, errs


class Ctx: pass


def derive(repo, work, meta):
    c = Ctx()
    c.pairs, c.others = sol_changes(meta)
    c.sides = {s: dict(root=f"{work}/{s}", cfg=read_cfg(f"{work}/{s}"), ver=None) for s in ("old", "new")}
    c.errors, c.files, c.notes = [], {}, []
    for (op, np_) in c.pairs:
        it = {}
        for side, p in (("old", op), ("new", np_)):
            if p is None: it[side] = {}; continue
            v, ast, data, errs = compile_ast(c.sides[side]["root"], c.sides[side]["cfg"], p, c.sides[side]["ver"])
            if ast is None:
                c.errors.append((side, p, errs)); it[side] = None; continue
            c.sides[side]["ver"] = c.sides[side]["ver"] or v
            it[side] = collect_items(ast, data)
        c.files[(op, np_)] = it
    return c


def build(c):
    """-> fn_units (harness), contract_units, notes, immediate results"""
    fn_units, cunits, notes, imm = {}, {}, [], []
    for pair, it in c.files.items():
        old, new = it["old"], it["new"]
        changes = diff_items(old, new)
        # signature-change detection (same contract & name removed+added)
        for ch in changes:
            ref = ch["new"] or ch["old"]
            ck = ref["ckind"]
            k = ch["key"]
            if ck == "interface":
                notes.append(f"interface-only (non-executable) change in {ref['contract']}: {ch['change']} {ref['kind']} {ref.get('name') or ''}")
                continue
            if ref["kind"] == "UsingForDirective":
                notes.append(f"using-for directive {ch['change']} in {ref['contract'] or 'file'} (non-executable)")
                continue
            lib_like = ck in ("library", "file")
            cname = ref["contract"]
            if lib_like:
                if ref["kind"] == "Function":
                    if ch["change"] == "modified":
                        fn_units[(pair, k)] = dict(pair=pair, key=k, old=ch["old"], new=ch["new"], why="modified")
                    else:
                        vis = ref["node"].get("visibility")
                        if vis in ("public", "external") and ck == "library":
                            imm.append(dict(name=f"{cname}.{ref.get('name')}({k[3]})", file=pair[1] or pair[0], result="UNSUPPORTED",
                                            detail=f"public/external library function {ch['change']}: interface change", reason="interface-or-state-layout-change"))
                        else:
                            notes.append(f"{ch['change']} {vis} function {cname}.{ref.get('name')}({k[3]}) ({ck}); non-public helper, covered via its (compared) callers")
                elif ref["kind"] == "ContractHeader":
                    notes.append(f"library/contract header {ch['change']}: {cname}")
                else:
                    # declaration: find dependents in same library (functions mentioning the name)
                    nm = ref.get("name")
                    if cname == "":
                        imm.append(dict(name=f"[file-level {ref['kind']}] {nm}", file=pair[1] or pair[0], result="UNSUPPORTED",
                                        detail=f"{ch['change']} file-level {ref['kind']}; users spread over the code base", reason="dependency-closure-too-large"))
                        continue
                    deps = []
                    for k2, it2 in new.items():
                        if k2[0] == "fn" and it2["contract"] == cname and k2 in old and re.search(r"\b%s\b" % re.escape(nm or "\0"), it2["text"] + old[k2]["text"]):
                            deps.append(k2)
                    if ch["change"] == "removed" or not deps and ref["kind"] not in ("EventDefinition", "ErrorDefinition", "StructDefinition", "EnumDefinition"):
                        pass
                    for k2 in deps:
                        fn_units.setdefault((pair, k2), dict(pair=pair, key=k2, old=old[k2], new=new[k2], why=f"dependent on changed {ref['kind']} {cname}.{nm}"))
                    notes.append(f"{ch['change']} {ref['kind']} {cname}.{nm}: {len(deps)} in-library dependent function(s) added to the units")
            else:
                u = cunits.setdefault((pair, cname), dict(pair=pair, name=cname, reasons=[], ckind=ck))
                u["reasons"].append(f"{ch['change']} {ref['kind']} {ref.get('name') or ''}".strip())
    # private functions -> callers
    changed = True
    while changed:
        changed = False
        for key, u in list(fn_units.items()):
            if u["new"]["node"].get("visibility") == "private" and not u.get("expanded"):
                u["expanded"] = True
                pair, k = key
                nm = u["new"]["name"]
                it = c.files[pair]
                cname = u["new"]["contract"]
                for k2, i2 in it["new"].items():
                    if k2[0] == "fn" and i2["contract"] == cname and k2 != k and k2 in it["old"] and re.search(r"\b%s\b" % re.escape(nm), i2["text"]):
                        if (pair, k2) not in fn_units:
                            fn_units[(pair, k2)] = dict(pair=pair, key=k2, old=it["old"][k2], new=i2, why=f"caller of changed private function {nm}")
                            changed = True
    return fn_units, cunits, notes, imm


def compile_side(work, c, side, items, mode):
    """items: list of (idx, src, file); returns {idx: (hex, immut, methodId)} , errs"""
    root, cfg, ver = c.sides[side]["root"], c.sides[side]["cfg"], c.sides[side]["ver"]
    files = sorted({f for _, _, f in items})
    pr = "pragma solidity >=0.4.22;\n" + ("pragma experimental ABIEncoderV2;\n" if (0, 5, 0) <= vt(ver) < (0, 8, 0) else "")
    head = "// SPDX-License-Identifier: UNLICENSED\n" + pr + "".join(f'import "{f}";\n' for f in files)
    text = head + "".join(s for _, s, _ in items)
    out = solc_run(root, ver, mk_input({f"__eq_{mode}.sol": text}, settings_of(cfg, ver),
                                       {f"__eq_{mode}.sol": {"*": ["evm.deployedBytecode.object", "evm.deployedBytecode.immutableReferences", "evm.methodIdentifiers"]}}))
    return out, text


def collect(out, mode, res):
    for n, ct in out.get("contracts", {}).get(f"__eq_{mode}.sol", {}).items():
        m = re.match(r"[HK](\d+)$", n)
        if not m: continue
        ev = ct["evm"]
        res[int(m.group(1))] = (ev["deployedBytecode"]["object"], ev["deployedBytecode"].get("immutableReferences") or {}, ev.get("methodIdentifiers") or {})


def build_set(work, c, side, items, mode):
    res, errs = {}, {}
    if not items: return res, errs
    out, text = compile_side(work, c, side, items, mode)
    open(f"{work}/__eq_{mode}.{side}.sol", "w").write(text)
    if errors_of(out):
        for it in items:
            o, t = compile_side(work, c, side, [it], mode)
            if errors_of(o): errs[it[0]] = "harness-compile-error: " + errors_of(o)[0]["message"][:240].replace("\n", " ")
            else: collect(o, mode, res)
    else:
        collect(out, mode, res)
    return res, errs


def concrete_calldata(out):
    m = re.search(r"Calldata:\s*\n\s*(0x[0-9a-fA-F]+)", out)
    return m.group(1) if m else None


def replay(hexf, cd):
    r = sh([HEVM, "exec", "--code-file", hexf, "--calldata", cd, "--gas", "30000000"])
    o = re.sub(r"\x1b\[[0-9;]*m", "", r.stdout + r.stderr).strip()
    return o


def verdict_for_pair(work, tag, ha, hb, im, wall, sig=None):
    """-> dict(result, detail, ...)"""
    u = {}
    sa, sb = strip_meta(ha), strip_meta(hb)
    if re.search(r"__\$|__[A-Za-z_]+__", sa + sb):
        return dict(result="UNSUPPORTED", detail="unlinked library placeholders in bytecode", reason="global-state-or-dispatch")
    if sa == sb:
        return dict(result="EQUIV", detail="runtime bytecode identical after metadata strip (compiled old == new)", bytecode_identical=True)
    out, rc, dt = hevm_equiv(sa, sb, work, tag, timeout=wall, smt_timeout=120, sig=sig)
    v, d = classify_hevm(out, rc)
    u["hevm_seconds"] = round(dt, 1)
    if v == "EQUIV":
        u.update(result="EQUIV", detail="hevm 0.58.0 + z3: no discrepancies found over symbolic calldata/storage, all paths explored")
        if im: u["precond"] = "immutable variables are zero in compiled runtime bytecode"
    elif v == "NOT_EQUIV":
        dm = re.search(r"Difference:\s*(.*)", out)
        diff = dm.group(1).strip() if dm else ""
        cd = concrete_calldata(out)
        calls = opcodes_have_calls(sa) or opcodes_have_calls(sb)
        if cd and not calls:
            ra, rb = replay(f"{work}/{tag}.a.hex", cd), replay(f"{work}/{tag}.b.hex", cd)
            u["counterexample"] = {"calldata": cd, "difference": diff, "old_exec": ra[-400:], "new_exec": rb[-400:]}
            if ra != rb:
                u.update(result="NOT_EQUIV", detail="hevm counterexample, replayed concretely (hevm exec) with different results: " + diff)
            else:
                u.update(result="UNKNOWN", detail="hevm counterexample did not reproduce under concrete replay: " + diff)
        else:
            u["counterexample"] = {"calldata": cd, "difference": diff}
            u.update(result="UNKNOWN", detail="hevm reported a counterexample that relies on %s; not confirmable by concrete replay: %s" %
                     ("symbolic external-call results" if calls else "a non-concrete calldata", diff))
    else:
        u.update(result="UNKNOWN", detail=d[:400])
    return u


def run(repo, commit, force=False):
    c8 = commit[:8]
    work = f"{GH}/work/{repo}/{c8}"
    resf = f"{GH}/results/{repo}/{commit}.json"
    if os.path.exists(resf) and not force:
        return json.load(open(resf))
    res = {"repo": repo, "commit": commit, "checker": CHECKER, "checker_ran": False, "verdict": "UNKNOWN", "scope": "",
           "build_config": "", "units": [], "unsupported_reason": None, "not_equiv_kind": None, "not_equiv_level": None,
           "counterexample": None, "evidence_dir": f"history-eq/gh/work/{repo}/{c8}", "notes": ""}
    t0 = time.time()
    try:
        meta = materialize(repo, commit, work)
        c = derive(repo, work, meta)
        S = c.sides
        res["build_config"] = "solc old=%s new=%s; old=%s; new=%s" % (S["old"]["ver"], S["new"]["ver"],
            {k: v for k, v in S["old"]["cfg"].items() if k != "remappings"}, {k: v for k, v in S["new"]["cfg"].items() if k != "remappings"})
        notes = []
        cfgchg = [p for p in c.others if p.endswith(("foundry.toml", "hardhat.config.js", "truffle.js", "truffle-config.js", "remappings.txt", ".gitmodules"))]
        if cfgchg: notes.append("build-config files changed: " + ",".join(cfgchg))
        if c.errors:
            side, p, errs = c.errors[0]
            res.update(verdict="UNSUPPORTED", unsupported_reason=("old-code-does-not-build" if side == "old" else "new-code-does-not-build"),
                       scope="none (build failure)", notes=f"solc failed to compile {p} ({side}, solc {S[side]['ver'] or 'n/a'}): {errs}")
            return finish(resf, res)
        fn_units, cunits, bnotes, imm = build(c)
        notes += bnotes
        results = list(imm)
        has_sol_change = bool(fn_units or cunits or imm)
        if not has_sol_change:
            res.update(verdict="UNSUPPORTED", unsupported_reason=NO_EXEC,
                       scope="changed non-test Solidity files have no executable difference (comments/whitespace/declarations/interfaces/helpers only)" if c.pairs else "no changed non-test Solidity source file",
                       notes=(" ".join(notes) + f" Other changed paths: {c.others[:8]}")[:900])
            if cfgchg:
                res["notes"] = "Only build configuration changed in the sample (" + ",".join(cfgchg) + "); source identical. " + res["notes"]
            return finish(resf, res)
        # ---------------- function-level harnesses
        fl = sorted(fn_units.items(), key=lambda kv: (str(kv[0][0]), str(kv[0][1])))
        items_o, items_n, fmeta, idx = [], [], {}, 0
        for (pair, k), u in fl:
            ref_n, ref_o = u["new"], u["old"]
            ln = ref_n["contract"] if ref_n["ckind"] == "library" else None
            vis = ref_n["node"].get("visibility")
            nm = f"{ref_n['contract']}.{ref_n['name']}({k[3]})" if ref_n["contract"] else f"{ref_n['name']}({k[3]})"
            r = dict(name=nm, file=pair[1], result="UNKNOWN", detail="", reason=None, why=u["why"])
            if vis == "private" and u.get("expanded") and any(x["why"].startswith("caller of changed private function " + ref_n["name"]) for x in fn_units.values()):
                notes.append(f"private function {nm} covered via its callers"); continue
            results.append(r)
            if ref_n["ckind"] == "library" and vis in ("public", "external"):
                r.update(result="UNSUPPORTED", detail="public/external library function needs linking (delegatecall to library address)", reason="global-state-or-dispatch"); continue
            sn, e = gen_wrapper(ref_n, ln, idx)
            so, e2 = gen_wrapper(ref_o, ln, idx)
            if e or e2:
                r.update(result="UNSUPPORTED", detail=e or e2, reason="checker-language-feature-unsupported"); continue
            items_n.append((idx, sn, pair[1])); items_o.append((idx, so, pair[0])); fmeta[idx] = r; idx += 1
        ho, eo = build_set(work, c, "old", items_o, "harness")
        hn, en = build_set(work, c, "new", items_n, "harness")
        # ---------------- contract-level carriers
        cmeta, cit_o, cit_n = {}, [], []
        cidx = 0
        for (pair, cname), u in sorted(cunits.items(), key=lambda kv: str(kv[0])):
            r = dict(name=f"[contract] {cname}", file=pair[1] or pair[0], result="UNKNOWN", detail="; ".join(u["reasons"][:8]), reason=None, why="contract-level change")
            results.append(r)
            u["r"] = r
            u["idx"] = cidx
            cit_o.append((cidx, f"contract K{cidx} is {cname} {{}}\n", pair[0])) if pair[0] else None
            cit_n.append((cidx, f"contract K{cidx} is {cname} {{}}\n", pair[1])) if pair[1] else None
            cmeta[cidx] = u
            cidx += 1
        co, ceo = build_set(work, c, "old", cit_o, "carrier")
        cn, cen = build_set(work, c, "new", cit_n, "carrier")
        # ---- run hevm
        jobs = []
        for i, r in fmeta.items():
            if i in eo or i in en:
                r.update(result="UNSUPPORTED", detail=eo.get(i) or en.get(i), reason="checker-language-feature-unsupported"); continue
            if i not in ho or i not in hn: r.update(result="UNSUPPORTED", detail="harness bytecode missing", reason="checker-language-feature-unsupported"); continue
            sig = None
            for s in hn[i][2]:
                if s.startswith("w("): sig = s
            jobs.append((f"u{i}", r, ho[i][0], hn[i][0], ho[i][1] or hn[i][1], HEVM_WALL, sig))
        for i, u in cmeta.items():
            r = u["r"]
            if r["detail"].startswith("added") or r["detail"].startswith("removed"): pass
            if i in ceo or i in cen or i not in co or i not in cn:
                r.update(result="UNSUPPORTED", detail=f"contract {u['name']} cannot be instantiated as a carrier without constructor arguments/abstract members (old: {ceo.get(i, 'ok')}; new: {cen.get(i, 'ok')}): {r['detail']}", reason="checker-language-feature-unsupported"); continue
            ma, mb = co[i][2], cn[i][2]
            if set(ma) != set(mb):
                r.update(result="UNSUPPORTED", detail="external interface (selectors) changed: " + str(sorted(set(ma) ^ set(mb)))[:300], reason="interface-or-state-layout-change"); continue
            jobs.append((f"c{i}", r, co[i][0], cn[i][0], co[i][1] or cn[i][1], CARRIER_WALL, None))
        def one(j):
            tag, r, a, b, im, wall, sig = j
            r.update(verdict_for_pair(work, tag, a, b, im, wall, sig))
        with ThreadPoolExecutor(2) as ex: list(ex.map(one, jobs))
        res["checker_ran"] = any(("hevm_seconds" in r) or r.get("bytecode_identical") for r in results)
        res["units"] = [{k: v for k, v in r.items() if k != "reason"} | {"unsupported_reason": r.get("reason")} for r in results]
        nots = [r for r in results if r["result"] == "NOT_EQUIV"]
        eq = [r for r in results if r["result"] == "EQUIV"]
        unsup = [r for r in results if r["result"] == "UNSUPPORTED"]
        unk = [r for r in results if r["result"] == "UNKNOWN"]
        res["scope"] = (f"{len(fn_units)} function unit(s) (changed fns + dependents) harnessed; {len(cunits)} contract-level carrier unit(s); "
                        f"{len(imm)} interface-changing/unsupported item(s)")
        res["notes"] = " ".join(notes)[:1200]
        if nots:
            u = nots[0]
            res.update(verdict="NOT_EQUIV", counterexample=u.get("counterexample") or u["detail"], not_equiv_level="internal-unit" if u["name"][0] != "[" else "public-api")
            res["not_equiv_kind"] = "intended-output-change"
        elif eq and (unsup or unk):
            res["verdict"] = "EQUIV_PARTIAL"
            res["notes"] = ("Some changed units proved equal; others not covered (see units). " + res["notes"])[:1200]
        elif unk:
            res["verdict"] = "UNKNOWN"
        elif unsup:
            res["verdict"] = "UNSUPPORTED"
            res["unsupported_reason"] = unsup[0].get("reason") or "checker-language-feature-unsupported"
        else:
            res["verdict"] = "EQUIV_UNDER_PRECOND" if any(x.get("precond") for x in eq) else "EQUIV"
            if res["verdict"] != "EQUIV": res["notes"] = "precondition: " + [x["precond"] for x in eq if x.get("precond")][0] + ". " + res["notes"]
    except Exception as e:
        res["verdict"] = "UNKNOWN"
        res["notes"] = "pipeline exception: " + traceback.format_exc()[-700:]
    res["seconds"] = round(time.time() - t0, 1)
    return finish(resf, res)


def finish(resf, res):
    os.makedirs(os.path.dirname(resf), exist_ok=True)
    json.dump(res, open(resf, "w"), indent=1, default=str)
    return res


if __name__ == "__main__":
    repo, commit = sys.argv[1], sys.argv[2]
    full = commit
    if len(commit) < 40:
        ent = json.load(open(f"{ROOT}/history-eq/results/{repo}-optimization-sample.json"))["entries"]
        full = [e["commit"] for e in ent if e["commit"].startswith(commit)][0]
    r = run(repo, full, force="--force" in sys.argv)
    print(r["verdict"], r.get("unsupported_reason"), r["scope"])
    for u in r["units"]:
        print("  ", u["result"], u["name"], (u.get("detail") or "")[:110])
