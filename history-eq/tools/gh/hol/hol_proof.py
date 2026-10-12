#!/usr/bin/env python3
"""Build + run one s2n-bignum HOL Light object-code proof in a materialized tree.

usage: hol_proof.py TREE ARCH PROOF_ML_REL OUTDIR [TIMEOUT_SEC]
  TREE          materialized tree root (contains x86/, arm/, common/ ...)
  ARCH          x86 | arm
  PROOF_ML_REL  proof file relative to TREE/ARCH, e.g. proofs/bignum_sqr_8_16.ml
  OUTDIR        where logs + result.json are written
Mirrors upstream tools/build-proof.sh + run-proof.sh (native build against local
HOL Light hol_lib.cmxa) but is independent of the historical Makefile's proof rules.
Only the Makefile's  %.o / %.obj  rules are used to assemble the objects.
Result: OUTDIR/result.json {status: PASS|FAIL|TIMEOUT|BUILD_FAIL|OBJ_FAIL, thms:{name:str}, secs}
"""
import json, os, re, subprocess, sys, time, tempfile, shutil
ROOT = "/srv/home/hantaolou/code/veriop"
HOL = f"{ROOT}/benchmarks/tools/hol-light"
OPAM = f"{ROOT}/aeneas/env/opam/5.3.0"
ENV = dict(os.environ)
ENV["PATH"] = f"{OPAM}/bin:" + ENV["PATH"] + f":{os.path.dirname(os.path.abspath(__file__))}/bin"
ENV["CAML_LD_LIBRARY_PATH"] = f"{OPAM}/lib/stublibs"
ENV["LIBRARY_PATH"] = f"{ROOT}/aeneas/env/gmp/usr/lib/x86_64-linux-gnu:" + ENV.get("LIBRARY_PATH", "")
ENV["LD_LIBRARY_PATH"] = f"{ROOT}/aeneas/env/gmp/usr/lib/x86_64-linux-gnu:" + ENV.get("LD_LIBRARY_PATH", "")

def run(cmd, log, cwd=None, timeout=None, env=ENV):
    with open(log, "a") as f:
        f.write("$ " + " ".join(cmd) + "\n"); f.flush()
        try:
            r = subprocess.run(cmd, cwd=cwd, env=env, stdout=f, stderr=subprocess.STDOUT, timeout=timeout)
            return r.returncode
        except subprocess.TimeoutExpired:
            f.write("\nTIMEOUT\n"); return "timeout"

def spec_names(path):
    names = []
    for l in open(path, errors="replace"):
        m = re.match(r"let ([A-Z0-9_]*CORRECT[A-Z0-9_]*)\s*=", l)
        if m and m.group(1) not in names: names.append(m.group(1))
    return names

def apply_shims(tree, res=None):
    """Compatibility shims so 2021-2024 s2n-bignum trees replay under the pinned (2026) HOL Light; idempotent."""
    res = {} if res is None else res
    # shim 1: old base.ml files load HOL Light's update_database.ml (search-database helper needing the OCaml
    # toplevel; irrelevant to proofs, not natively compilable) -> drop that one line.
    for arch in ("x86", "arm", "riscv"):
        b = f"{tree}/{arch}/proofs/base.ml"
        if os.path.exists(b):
            t = open(b, errors="replace").read()
            if "update_database.ml" in t:
                open(b, "w").write(re.sub(r'^.*update_database\.ml.*\n', "", t, flags=re.M)); res["shim"] = "removed update_database.ml load from base.ml"
    # shim 2: pre-2024-04-04 trees use the Num constructor `Int i`; HOL Light moved to Zarith and upstream
    # s2n-bignum commit 00382f8 mechanically replaced `Int`/`Num.Int` by `num`.  Do the same replacement.
    nshim = 0
    for dp, _, fs in os.walk(tree):
        if "/.git" in dp: continue
        for fn_ in fs:
            if fn_.endswith(".ml"):
                fp = os.path.join(dp, fn_)
                t = open(fp, errors="replace").read()
                t2 = re.sub(r"\bNum\.Int\b", "num", t)
                t2 = re.sub(r"(?<![\w.'`\"])Int(?=[ \t]*[\w(])", "num", t2)
                if t2 != t: open(fp, "w").write(t2); nshim += 1
    if nshim: res["shim_int_to_num_files"] = nshim
    open(f"{tree}/.shimmed", "w").write(json.dumps(res))
    return res

def main():
    tree, arch, mlrel, out = sys.argv[1:5]
    timeout = int(sys.argv[5]) if len(sys.argv) > 5 else 4800
    tree = os.path.abspath(tree); out = os.path.abspath(out)
    os.makedirs(out, exist_ok=True)
    log = f"{out}/build.log"; open(log, "w").close()
    res = {"tree": tree, "arch": arch, "proof": mlrel, "status": None, "thms": {}}
    t0 = time.time()
    base = mlrel[:-3]
    proof_dir, fn = os.path.split(base)             # e.g. proofs, bignum_x   (proof is arch/proofs/fn.ml)
    # locate object source: arch/<dir>/fn.S
    srcdir = None
    for d in sorted(os.listdir(f"{tree}/{arch}")):
        if os.path.isfile(f"{tree}/{arch}/{d}/{fn}.S"): srcdir = d; break
    if srcdir is None:
        res["status"] = "OBJ_FAIL"; res["detail"] = "no .S for proof"
        json.dump(res, open(f"{out}/result.json", "w"), indent=1); return
    objs = [f"{srcdir}/{fn}.o"]
    rc = run(["make", "-C", f"{tree}/{arch}"] + objs, log, timeout=600)
    if arch == "x86":   # Windows-ABI object only exists in newer Makefiles
        run(["make", "-C", f"{tree}/{arch}", f"{srcdir}/{fn}.obj"], log, timeout=600)
    if rc != 0 or not all(os.path.exists(f"{tree}/{arch}/{o}") for o in objs):
        res["status"] = "OBJ_FAIL"; res["secs"] = time.time() - t0
        json.dump(res, open(f"{out}/result.json", "w"), indent=1); return
    if not os.path.exists(f"{tree}/.shimmed"): apply_shims(tree, res)
    names = spec_names(f"{tree}/{arch}/{mlrel}")
    tmp = tempfile.mkdtemp(prefix="s2nproof", dir=out)
    tpl = f"{tmp}/t.ml"
    with open(tpl, "w") as f:
        f.write("open Printf;;\nlet s2n_t0 = Unix.time();;\n")
        if not re.search(rf'needs "{arch}/proofs/base.ml"', open(f"{tree}/{arch}/{mlrel}", errors="replace").read()):
            f.write(f'loadt "{arch}/proofs/base.ml";;\n')    # pre-2023 proof files relied on the Makefile to load base.ml first
        f.write(f'loadt "{arch}/{mlrel}";;\ncheck_axioms ();;\n')
        for n in names:
            f.write(f'Printf.printf "val {n} : thm = %s\\n" (string_of_thm {n});;\n')
        f.write('Printf.printf "Running time: %f sec\\n" (Unix.time () -. s2n_t0);;\n')
    inl = f"{tmp}/i.ml"; cmx = f"{tmp}/i.cmx"; exe = f"{out}/proof.native"
    env = dict(ENV); env["HOLLIGHT_DIR"] = HOL
    rc = run(["ocaml", f"{HOL}/inline_load.ml", tpl, inl], log, cwd=tree, env=env, timeout=900)
    env2 = dict(env); env2["OCAMLRUNPARAM"] = "l=2000000000"
    pp = f"camlp5r pa_lexer.cmo pa_extend.cmo q_MLast.cmo -I \"{HOL}\" pa_j.cmo"
    open(f"{tmp}/i.mli", "w").close()   # empty interface: lets pre-2024 files with weak (non-generalizable) top-level types compile
    if rc == 0:
        rc = run(["ocamlopt.byte", "-c", f"{tmp}/i.mli"], log, cwd=tree, env=env2, timeout=300)
    if rc == 0:
        rc = run(["ocamlopt.byte", "-pp", pp, "-I", HOL, "-I", "+unix", "-I", tmp, "-c", "hol_lib.cmxa", inl, "-w", "-a"], log, cwd=tree, env=env2, timeout=1800)
    if rc == 0:
        rc = run(["ocamlfind", "ocamlopt", "-package", "zarith,unix", "-linkpkg", "hol_lib.cmxa", "-I", HOL, cmx, "-o", exe], log, cwd=tree, env=env2, timeout=1800)
    if rc == 0: shutil.rmtree(tmp, ignore_errors=True)
    if rc != 0:
        res["status"] = "BUILD_FAIL" if rc != "timeout" else "TIMEOUT"; res["phase"] = "build"; res["secs"] = time.time() - t0
        json.dump(res, open(f"{out}/result.json", "w"), indent=1); return
    t1 = time.time()
    rl = f"{out}/run.log"
    with open(rl, "w") as f:
        try:
            r = subprocess.run([exe], cwd=tree, env=env2, stdout=f, stderr=subprocess.STDOUT, timeout=timeout)
            rc = r.returncode
        except subprocess.TimeoutExpired:
            rc = "timeout"
    txt = open(rl, errors="replace").read()
    for m in re.finditer(r"^val ([A-Z0-9_]+) : thm = (.*?)(?=^val |^Running time|\Z)", txt, re.S | re.M):
        res["thms"][m.group(1)] = " ".join(m.group(2).split())
    bad = re.search(r"error:|exception:|Exception|Error in included file|Failure", txt, re.I)
    res["run_secs"] = time.time() - t1; res["secs"] = time.time() - t0
    if rc == "timeout": res["status"] = "TIMEOUT"
    elif rc != 0 or bad or len(res["thms"]) < len(names) or not names: 
        res["status"] = "FAIL"; res["detail"] = (bad.group(0) if bad else f"rc={rc} thms={len(res['thms'])}/{len(names)}")
    else: res["status"] = "PASS"
    res["spec_names"] = names
    try: os.remove(exe)
    except OSError: pass
    json.dump(res, open(f"{out}/result.json", "w"), indent=1)

if __name__ == "__main__": main()
