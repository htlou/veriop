#!/usr/bin/env python3
"""Solidity historical old/new equivalence tooling (hevm-based) -- helper library.

Pipeline per commit (see run_case.py):
  materialize old/new -> deps -> compile ASTs of changed .sol files -> AST diff
  -> per-changed-function harness contracts (identical ABI, old & new) -> runtime
  bytecode -> `hevm equivalence` (z3) -> verdict.
"""
import json, os, re, subprocess, sys, hashlib, shutil, tempfile, time

ROOT = "/srv/home/hantaolou/code/veriop"
GH = f"{ROOT}/history-eq/gh"
TOOLS = f"{ROOT}/history-eq/tools/gh/solidity"
SOLC_DIR = f"{ROOT}/benchmarks/tools/solc-bin"
HEVM = f"{ROOT}/benchmarks/tools/hevm-0.58.0/hevm"
Z3_DIR = f"{ROOT}/alive2/.venv/bin"
CVC5 = None
for d in os.listdir(f"{ROOT}/benchmarks/tools/smt-solvers/cvc5x") if os.path.isdir(f"{ROOT}/benchmarks/tools/smt-solvers/cvc5x") else []:
    CVC5 = f"{ROOT}/benchmarks/tools/smt-solvers/cvc5x/{d}/bin"


def sh(cmd, cwd=None, inp=None, timeout=None, env=None):
    r = subprocess.run(cmd, cwd=cwd, input=inp, capture_output=True, text=True, timeout=timeout, env=env)
    return r


# ----------------------------------------------------------------------------- solc
_list = None


def vt(v):
    return tuple(int(x) for x in v.split("."))


def get_solc(ver):
    p = f"{SOLC_DIR}/solc-{ver}"
    if os.path.exists(p) and os.access(p, os.X_OK):
        return p
    global _list
    if _list is None:
        _list = json.load(open(f"{TOOLS}/solc-list.json"))["releases"]
    fn = _list[ver]
    tmp = p + f".dl{os.getpid()}"
    r = sh(["curl", "-sSL", "-m", "300", "-o", tmp, f"https://binaries.soliditylang.org/linux-amd64/{fn}"])
    os.chmod(tmp, 0o755)
    os.replace(tmp, p)
    return p


def all_versions():
    global _list
    if _list is None:
        _list = json.load(open(f"{TOOLS}/solc-list.json"))["releases"]
    return sorted(_list, key=vt)


def sat_versions(constraint):
    """versions satisfying a `pragma solidity` constraint string (simple semver subset)."""
    out = []
    alts = [a.strip() for a in constraint.split("||")]
    for v in all_versions():
        t = vt(v)
        for alt in alts:
            ok = True
            for m in re.finditer(r"(\^|~|>=|<=|>|<|=)?\s*v?(\d+)\.(\d+)(?:\.(\d+))?", alt):
                op, a, b, c = m.group(1) or "=", int(m.group(2)), int(m.group(3)), m.group(4)
                lo = (a, b, int(c or 0))
                if op == "^":
                    hi = (a, b + 1, 0) if a == 0 else (a + 1, 0, 0)
                    good = lo <= t < hi
                elif op == "~":
                    good = lo <= t < (a, b + 1, 0)
                elif op == ">=": good = t >= lo
                elif op == ">": good = t > lo
                elif op == "<=": good = t <= lo
                elif op == "<": good = t < lo
                else:
                    good = (t == lo) if c is not None else (t[:2] == (a, b))
                ok = ok and good
            if ok:
                out.append(v)
                break
    return out


def pragma_of(text):
    cs = re.findall(r"pragma\s+solidity\s+([^;]+);", text)
    return cs


def solc_run(root, ver, std_input, timeout=600):
    solc = get_solc(ver)
    args = [solc, "--standard-json", "--allow-paths", root]
    if vt(ver) >= (0, 8, 8):
        args += ["--base-path", "."]
    r = sh(args, cwd=root, inp=json.dumps(std_input), timeout=timeout)
    try:
        return json.loads(r.stdout)
    except Exception:
        return {"errors": [{"severity": "error", "message": "solc crashed: " + r.stdout[-300:] + r.stderr[-300:]}]}


def errors_of(out):
    return [e for e in out.get("errors", []) if e.get("severity") == "error"]


def mk_input(sources, settings, outsel):
    s = {"outputSelection": outsel}
    s.update(settings)
    return {"language": "Solidity", "sources": {k: {"content": v} for k, v in sources.items()}, "settings": s}


# ----------------------------------------------------------------------------- config
def read_cfg(root):
    cfg = {"version": None, "optimizer": True, "runs": 200, "via_ir": False, "evm": None, "remappings": []}
    p = f"{root}/foundry.toml"
    if os.path.exists(p):
        t = open(p).read()
        prof = t.split("[profile.default]")[1].split("\n[")[0] if "[profile.default]" in t else t
        m = re.search(r'^solc(?:_version)?\s*=\s*"?([\d.]+)"?', prof, re.M)
        if m: cfg["version"] = m.group(1)
        m = re.search(r"^optimizer_runs\s*=\s*(\d+)", prof, re.M)
        if m: cfg["runs"] = int(m.group(1))
        m = re.search(r"^optimizer\s*=\s*(true|false)", prof, re.M)
        if m: cfg["optimizer"] = m.group(1) == "true"
        m = re.search(r"^via_ir\s*=\s*(true|false)", prof, re.M)
        if m: cfg["via_ir"] = m.group(1) == "true"
        m = re.search(r'^evm_version\s*=\s*"?(\w+)"?', prof, re.M)
        if m: cfg["evm"] = m.group(1)
        m = re.search(r"remappings\s*=\s*\[(.*?)\]", prof, re.S)
        if m: cfg["remappings"] += re.findall(r'"([^"]+)"', m.group(1))
    p = f"{root}/remappings.txt"
    if os.path.exists(p):
        cfg["remappings"] += [l.strip() for l in open(p) if "=" in l and not l.startswith("#")]
    for hp in ("hardhat.config.js", "truffle.js", "truffle-config.js", "hardhat.config.ts"):
        p = f"{root}/{hp}"
        if os.path.exists(p):
            t = open(p).read()
            m = re.search(r"""(?:version|solc)\s*:\s*(?:process\.env\.\w+\s*\|\|\s*)?['"](\d+\.\d+\.\d+)['"]""", t) or \
                re.search(r"""['"](0\.\d+\.\d+)['"]""", t)
            if m and not cfg["version"]: cfg["version"] = m.group(1)
            m = re.search(r"runs\s*:\s*(\d+)", t)
            if m: cfg["runs"] = int(m.group(1))
            m = re.search(r"enabled\s*:\s*(true|false)", t)
            if m: cfg["optimizer"] = m.group(1) == "true"
            m = re.search(r"evmVersion\s*:\s*['\"](\w+)['\"]", t)
            if m: cfg["evm"] = m.group(1)
            if re.search(r"viaIR\s*:\s*true", t): cfg["via_ir"] = True
    return cfg


def settings_of(cfg, ver):
    s = {"optimizer": {"enabled": cfg["optimizer"], "runs": cfg["runs"]}}
    if vt(ver) < (0, 5, 0) and False:
        pass
    if cfg["evm"] and vt(ver) >= (0, 4, 21):
        s["evmVersion"] = cfg["evm"]
    if cfg["via_ir"] and vt(ver) >= (0, 8, 13):
        s["viaIR"] = True
    rm = []
    for r in cfg["remappings"]:
        if r.startswith("hardhat/") or r.startswith("@ensdomains") or r.startswith("forge") or r.startswith("ds-test"):
            continue
        rm.append(r)
    if rm:
        s["remappings"] = rm
    return s


# ----------------------------------------------------------------------------- AST
def strip_comments(s):
    out, i, n = [], 0, len(s)
    while i < n:
        c = s[i]
        if c in "\"'":
            q = c
            j = i + 1
            while j < n and s[j] != q:
                if s[j] == "\\": j += 1
                j += 1
            out.append(s[i:j + 1]); i = j + 1
        elif s.startswith("//", i):
            j = s.find("\n", i)
            i = n if j < 0 else j
        elif s.startswith("/*", i):
            j = s.find("*/", i + 2)
            i = n if j < 0 else j + 2
            out.append(" ")
        else:
            out.append(c); i += 1
    return re.sub(r"\s+", " ", "".join(out)).strip()


def node_text(node, data):
    a, b, _ = node["src"].split(":")
    a, b = int(a), int(b)
    return data[a:a + b].decode("utf8", "replace")


def tstr(n):
    return ((n or {}).get("typeDescriptions") or {}).get("typeString")


def fn_sig(n):
    ps = [tstr(p) or node_text_safe(p) for p in n.get("parameters", {}).get("parameters", [])]
    return ",".join(str(x) for x in ps)


def node_text_safe(p):
    return p.get("typeName", {}).get("name", "?")


def collect_items(ast, data):
    """items: key -> dict(kind, text, node, contract, ckind)"""
    items = {}

    def add(key, d):
        k = key
        i = 1
        while k in items:
            i += 1
            k = key + (i,)
        items[k] = d

    for n in ast.get("nodes", []):
        nt = n["nodeType"]
        if nt == "ContractDefinition":
            cname = n["name"]
            ckind = n.get("contractKind", "contract")
            full = n.get("fullyImplemented", True)
            # header text up to first '{'
            txt = node_text(n, data)
            hdr = strip_comments(txt[:txt.index("{")]) if "{" in txt else strip_comments(txt)
            add(("contract", cname), dict(kind="ContractHeader", text=hdr, node=n, contract=cname, ckind=ckind, impl=full))
            for m in n.get("nodes", []):
                mt = m["nodeType"]
                if mt == "FunctionDefinition":
                    nm = m.get("name") or m.get("kind") or ("constructor" if m.get("isConstructor") else "fallback")
                    if m.get("kind") == "constructor" or m.get("isConstructor"): nm = "constructor"
                    add(("fn", cname, nm, fn_sig(m)), dict(kind="Function", text=strip_comments(node_text(m, data)), node=m,
                                                         contract=cname, ckind=ckind, impl=full, name=nm))
                elif mt == "ModifierDefinition":
                    add(("mod", cname, m["name"]), dict(kind="Modifier", text=strip_comments(node_text(m, data)), node=m, contract=cname, ckind=ckind, impl=full, name=m["name"]))
                elif mt in ("PragmaDirective", "ImportDirective"):
                    pass
                else:
                    nm = m.get("name") or strip_comments(node_text(m, data))
                    add((mt, cname, nm), dict(kind=mt, text=strip_comments(node_text(m, data)), node=m, contract=cname, ckind=ckind, impl=full, name=m.get("name")))
        elif nt in ("PragmaDirective", "ImportDirective"):
            continue
        elif nt == "FunctionDefinition":
            nm = n.get("name")
            add(("fn", "", nm, fn_sig(n)), dict(kind="Function", text=strip_comments(node_text(n, data)), node=n, contract="", ckind="file", impl=True, name=nm))
        else:
            nm = n.get("name") or strip_comments(node_text(n, data))
            add((nt, "", nm), dict(kind=nt, text=strip_comments(node_text(n, data)), node=n, contract="", ckind="file", impl=True, name=n.get("name")))
    return items


def diff_items(old, new):
    ch = []
    for k, o in old.items():
        if k not in new:
            ch.append(dict(change="removed", key=k, old=o, new=None))
        elif o["text"] != new[k]["text"]:
            ch.append(dict(change="modified", key=k, old=o, new=new[k]))
    for k, nn in new.items():
        if k not in old:
            ch.append(dict(change="added", key=k, old=None, new=nn))
    return ch


# ----------------------------------------------------------------------------- harness
def base_type(ts):
    t = ts
    t = re.sub(r" (storage pointer|storage ref|storage|memory|calldata)( pointer| ref)?$", "", t)
    t = re.sub(r"(^|[\(\[ ,>])(struct|enum|contract|library|interface) ", r"\1", t)
    t = re.sub(r"^(struct|enum|contract|library|interface) ", "", t)
    return t


def param_decl(p):
    """-> (type_text, location, is_storage) or (None, reason)"""
    ts = tstr(p)
    if ts is None: return None, "no-type-string"
    if "function (" in ts or "function(" in ts or ts.startswith("type(") or "tuple" in ts: return None, f"unsupported-type:{ts}"
    loc = p.get("storageLocation", "default")
    t = base_type(ts)
    refty = bool(re.search(r"\[\]|\]$|^bytes$|^string$|\bmapping\b", t)) or ts.startswith("struct ") or "[" in t
    if ts.endswith("storage pointer") or ts.endswith("storage ref") or ts.endswith(" storage") or loc == "storage":
        return (t, "storage"), None
    if loc in ("memory", "calldata"):
        return (t, loc), None
    if ts.endswith(" memory"): return (t, "memory"), None
    if ts.endswith(" calldata"): return (t, "calldata"), None
    if refty: return (t, "memory"), None
    return (t, ""), None


def gen_wrapper(item, libname, idx):
    """Return (src_of_contract, error) wrapping function item (internal lib fn) as external H<idx>.w"""
    n = item["node"]
    vis = n.get("visibility")
    if vis == "private":
        return None, "private-function"
    params = n["parameters"]["parameters"]
    rets = n["returnParameters"]["parameters"]
    decls, args, svars = [], [], []
    for i, p in enumerate(params):
        d, e = param_decl(p)
        if d is None: return None, e
        t, loc = d
        if loc == "storage":
            svars.append(f"    {t} s{i};")
            args.append(f"s{i}")
        else:
            decls.append(f"{t} {loc} a{i}".replace("  ", " "))
            args.append(f"a{i}")
    rts = []
    for r in rets:
        d, e = param_decl(r)
        if d is None: return None, "return-" + e
        t, loc = d
        if loc == "storage": return None, f"return-storage-pointer:{tstr(r)}"
        rts.append(f"{t} {loc}".strip())
    callee = f"{libname}.{n['name']}" if libname else n["name"]
    body = f"{callee}({', '.join(args)})"
    ret = f" returns ({', '.join(rts)})" if rts else ""
    stmt = f"return {body};" if rts else f"{body};"
    src = (f"contract H{idx} {{\n" + "\n".join(svars) + ("\n" if svars else "") +
           f"    function w({', '.join(decls)}) external{ret} {{ {stmt} }}\n}}\n")
    return src, None


def opcodes_have_calls(h):
    b = bytes.fromhex(h) if len(h) % 2 == 0 else b""
    i = 0
    while i < len(b):
        o = b[i]
        if 0x60 <= o <= 0x7f:
            i += o - 0x5f
        elif o in (0xf0, 0xf1, 0xf2, 0xf4, 0xf5, 0xfa):
            return True
        i += 1
    return False


# ----------------------------------------------------------------------------- bytecode
def strip_meta(h):
    if len(h) < 8: return h
    try:
        n = int(h[-4:], 16)
    except Exception:
        return h
    if 2 * n + 4 < len(h) and h[len(h) - 4 - 2 * n:][:2] in ("a1", "a2", "a3"):
        return h[:len(h) - 4 - 2 * n]
    return h


# ----------------------------------------------------------------------------- hevm
def hevm_equiv(ha, hb, workdir, tag, timeout=600, smt_timeout=120, solver="z3", sig=None, extra=()):
    fa, fb = f"{workdir}/{tag}.a.hex", f"{workdir}/{tag}.b.hex"
    open(fa, "w").write(ha); open(fb, "w").write(hb)
    cmd = [HEVM, "equivalence", "--code-a-file", fa, "--code-b-file", fb, "--solver", solver,
           "--smt-timeout", str(smt_timeout), "--num-solvers", "2"]
    if sig: cmd += ["--sig", sig]
    cmd += list(extra)
    env = {**os.environ, "PATH": f"{Z3_DIR}:{TOOLS}/bin:{CVC5 or ''}:{os.environ['PATH']}"}
    t0 = time.time()
    try:
        r = sh(cmd, timeout=timeout, env=env)
        out = r.stdout + r.stderr
        rc = r.returncode
    except subprocess.TimeoutExpired as e:
        out = ((e.stdout or b"").decode() if isinstance(e.stdout, bytes) else (e.stdout or "")) + "\nHARNESS-TIMEOUT"
        rc = -9
    dt = time.time() - t0
    out_clean = re.sub(r"\x1b\[[0-9;]*m", "", out)
    open(f"{workdir}/{tag}.hevm.log", "w").write(" ".join(cmd) + "\n" + out_clean)
    return out_clean, rc, dt


def classify_hevm(out, rc):
    if "HARNESS-TIMEOUT" in out: return "UNKNOWN", "wall-clock timeout"
    if "may not behave equivalently" in out or "partially explore" in out:
        why = "; ".join(l.strip() for l in out.splitlines() if re.search(r"->|Unexpected|unknown|timeout", l, re.I))[:300]
        return "UNKNOWN", "hevm only partially explored / inconclusive: " + why
    if "Not equivalent" in out:
        return "NOT_EQUIV", out
    if "No discrepancies found" in out and "Contracts behave equivalently" in out:
        if re.search(r"(?i)(partial|unable to|timed? ?out|unknown)", out):
            return "UNKNOWN", "no discrepancy but warnings: " + \
                   "; ".join(l.strip() for l in out.splitlines() if re.search(r"(?i)(partial|unable|timed|unknown)", l))[:300]
        return "EQUIV", "No discrepancies found"
    return "UNKNOWN", out[-400:]
