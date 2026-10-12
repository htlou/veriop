#!/usr/bin/env python3
"""Generate a relational KeY problem (old/new closure classes + Rel.rel contract) and a native differential harness
for ONE changed method with unchanged signature.

usage (module): gen_method(workdir, repo, oldrel, newrel, cls, name, params, outdir, extra_roots) -> dict
"""
import json, os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
from jlib import *

PRIMS = {"int", "long", "short", "byte", "char", "boolean", "float", "double"}
JDK_OK_TYPES = PRIMS | {"String", "Object", "void", "Throwable", "Exception", "RuntimeException", "Error",
    "IllegalArgumentException", "IllegalStateException", "IndexOutOfBoundsException", "ArrayIndexOutOfBoundsException",
    "NullPointerException", "ArithmeticException", "UnsupportedOperationException", "NegativeArraySizeException", "ClassCastException",
    "Integer", "Long", "Short", "Byte", "Character", "Boolean", "Math", "System", "Arrays"}
JDK_STUB_CLASSES = {"Integer", "Long", "Math"}
JDK_CONST = re.compile(r"^(Integer|Long|Short|Byte|Character)\.(MAX_VALUE|MIN_VALUE|SIZE|BYTES)$")
EXC_NEW_OK = {"IllegalArgumentException", "IllegalStateException", "IndexOutOfBoundsException", "ArrayIndexOutOfBoundsException",
    "NullPointerException", "ArithmeticException", "UnsupportedOperationException", "NegativeArraySizeException", "ClassCastException",
    "RuntimeException", "Exception", "Error", "AssertionError"}
STUBJ = open(f"{TOOLS}/J.java").read()
JNAMES = set(re.findall(r"static \w+ ((?:Integer|Long|Math)_\w+)\(", STUBJ))

class Unsupported(Exception):
    def __init__(self, reason, detail=""):
        super().__init__(f"{reason}: {detail}"); self.reason = reason; self.detail = detail

def split_hdr_body(m):
    t, b = m["text"], m["body"]
    if b and t.endswith(b): return t[:len(t) - len(b)], b
    i = t.find("{")
    return (t[:i], t[i:]) if i >= 0 else (t, "")

def tkind(t):
    t = t.strip().replace("final ", "").strip()
    if t.endswith("..."): t = t[:-3].strip() + "[]"
    if "<" in t: raise Unsupported("generics", t)
    if t in PRIMS: return "prim", t
    if t.endswith("[]"):
        base = t[:-2].strip()
        if base.endswith("[]"): raise Unsupported("multi-dim-array", t)
        return "arr", base
    return "obj", t

class Version:
    def __init__(self, root, roots):
        self.root = root; self.roots = roots  # roots: list of absolute src/main/java dirs
        self.cache = {}; self.index = None
    def members(self, f):
        if f not in self.cache: self.cache[f] = run_analyze([f])
        return self.cache[f]
    def build_index(self):
        if self.index is not None: return
        self.index = {}
        for r in self.roots:
            for dp, _, fs in os.walk(r):
                for fn in fs:
                    if fn.endswith(".java"): self.index.setdefault(fn[:-5], []).append(os.path.join(dp, fn))
    def find_class(self, simple, fromfile):
        # nested / same file classes first
        for m in self.members(fromfile):
            if m["kind"] == "classdecl" and m["name"] == simple: return fromfile, m["class"]
        self.build_index()
        c = self.index.get(simple, [])
        if not c: return None
        d = os.path.dirname(fromfile)
        c2 = [x for x in c if os.path.dirname(x) == d]
        f = (c2 or c)[0]
        return f, simple

class Closure:
    def __init__(self, ver, file, qual, mem):
        self.ver = ver; self.items = {}; self.ext = []; self.work = []; self.seen = set()
        self.fieldseen = set(); self.opaque = set(); self.jmap = {}
        self.target = (file, qual, mem)
        self.add_method(file, qual, mem)
        while self.work:
            f, q, m = self.work.pop()
            self.process(f, q, m)
    def item(self, f, q):
        k = (f, q)
        if k not in self.items:
            ms = [m for m in self.ver.members(f) if m.get("class") == q]
            decl = [m for m in ms if m["kind"] == "classdecl"]
            if not decl: raise Unsupported("class-not-found", q)
            d = decl[0]
            if d["ret"] != "CLASS": raise Unsupported("checker-language-feature-unsupported", f"{d['ret'].lower()} {q}")
            if "." in q and "static" not in d["mods"]: raise Unsupported("inner-class-needs-outer-instance", q)
            if "abstract" in d["mods"]: pass
            self.items[k] = {"decl": d, "members": ms, "methods": {}, "fields": {}, "simple": d["name"]}
        return self.items[k]
    def add_method(self, f, q, m):
        k = (f, q, m["name"], m["params"], m["kind"])
        if k in self.seen: return
        self.seen.add(k); it = self.item(f, q)
        it["methods"][(m["name"], m["params"])] = m
        self.work.append((f, q, m))
    def add_field(self, f, q, fm):
        k = (f, q, fm["name"])
        if k in self.fieldseen: return
        self.fieldseen.add(k); it = self.item(f, q)
        mods = fm["mods"]
        if "volatile" in mods: raise Unsupported("concurrency", f"volatile field {fm['name']}")
        t = fm["ret"]
        if "<" in t: raise Unsupported("generics", f"field {fm['name']}:{t}")
        it["fields"][fm["name"]] = fm
        self.note_type(t, f)
        if fm["body"] and ("final" in mods.split()):
            self.check_init(f, q, fm)
    def note_type(self, t, f):
        t = t.strip()
        base = re.sub(r"\[\]|\.\.\.", "", t).strip()
        if base in JDK_OK_TYPES: return
        if "<" in base: raise Unsupported("generics", t)
        r = self.ver.find_class(base, f)
        if r:  # a source class: would need to be part of the closure; treat as opaque stub (identity only)
            self.opaque.add(base)
        else:
            self.opaque.add(base)
    def check_init(self, f, q, fm):
        body = uncomment(fm["body"])
        for m in re.finditer(r"([A-Za-z_][\w.]*)\s*\(", body):
            if m.group(1) in ("new",): continue
            raise Unsupported("static-init-call", f"{fm['name']} = {body[:60]}")
        for m in re.finditer(r"\bnew\s+([A-Za-z_][\w.]*)", body):
            if m.group(1) not in PRIMS: raise Unsupported("static-init-new", f"{fm['name']} = {body[:60]}")
        it = self.item(f, q)
        for idn in set(re.findall(r"(?<![\w.])[A-Za-z_]\w*", body)):
            if idn in it["fields"] or idn in PRIMS or idn in ("new", "true", "false", "null"): continue
            fl = [x for x in it["members"] if x["kind"] == "field" and x["name"] == idn]
            if fl: self.add_field(f, q, fl[0]); continue
            if idn in JDK_OK_TYPES: continue
            raise Unsupported("unresolved-identifier-in-initializer", f"{idn} in {fm['name']}")
    def process(self, f, q, m):
        it = self.item(f, q)
        mods = m["mods"].split()
        if "synchronized" in mods: raise Unsupported("concurrency", f"synchronized {m['name']}")
        if "native" in mods: raise Unsupported("checker-language-feature-unsupported", "native method")
        if not m.get("hasBody", True): raise Unsupported("checker-language-feature-unsupported", f"no body {m['name']}")
        if m.get("tparams"): raise Unsupported("generics", f"{m['name']}{m['tparams']}")
        ft = m.get("feat", {})
        for k, why in (("sync", "concurrency"), ("lambdas", "checker-language-feature-unsupported"), ("anon", "checker-language-feature-unsupported"),
                       ("localClasses", "checker-language-feature-unsupported")):
            if ft.get(k): raise Unsupported(why, f"{k} in {q}.{m['name']}")
        for t in [m["ret"]] + m["params"].split(",") if m["params"] else [m["ret"]]:
            if t and t != "void": self.note_type(t, f)
        for t in ft.get("types", []):
            if "<" in t and t.strip() not in ("var",): raise Unsupported("generics", f"local type {t}")
            if t.strip() == "var": raise Unsupported("checker-language-feature-unsupported", "var")
            self.note_type(t, f)
        for n in ft.get("news", []):
            if n not in EXC_NEW_OK and n not in PRIMS:
                if "<" in n: raise Unsupported("generics", f"new {n}")
                raise Unsupported("dependency-closure-too-large", f"allocation new {n}")
        pn = [x for x in m.get("pnames", "").split(",") if x]
        locals_ = set(ft.get("locals", [])) | set(pn)
        called_simple = set()
        for c in ft.get("calls", []):
            if re.fullmatch(r"[A-Za-z_]\w*", c) or c.startswith("this."):
                nm = c[5:] if c.startswith("this.") else c
                if "." in nm: raise Unsupported("dependency-closure-too-large", f"call {c}")
                called_simple.add(nm)
                if nm in ("super", "this"): raise Unsupported("dependency-closure-too-large", f"{nm}(...)")
                ov = [x for x in it["members"] if x["kind"] == "method" and x["name"] == nm]
                if ov:
                    for o in ov: self.add_method(f, q, o)
                    continue
                if "." in q:  # outer class static
                    oq = q.rsplit(".", 1)[0]
                    ov = [x for x in self.ver.members(f) if x.get("class") == oq and x["kind"] == "method" and x["name"] == nm and "static" in x["mods"].split()]
                    if ov:
                        for o in ov: self.add_method(f, oq, o)
                        continue
                jn = self.static_jdk(f, nm)
                if jn: self.jmap.setdefault(f, {})[nm] = jn; continue
                raise Unsupported("dependency-closure-too-large", f"unresolved/inherited call {c}")
            mm = re.fullmatch(r"([A-Za-z_]\w*)\.([A-Za-z_]\w*)", c)
            if mm:
                cl, nm = mm.groups()
                if cl in JDK_STUB_CLASSES:
                    if f"{cl}_{nm}" in JNAMES: continue
                    raise Unsupported("dependency-closure-too-large", f"JDK call {c}")
                if cl in locals_ : raise Unsupported("dependency-closure-too-large", f"call on local/param {c}")
                if cl in it["fields"] or any(x["kind"] == "field" and x["name"] == cl for x in it["members"]):
                    raise Unsupported("dependency-closure-too-large", f"call on field object {c}")
                r = self.ver.find_class(cl, f)
                if r:
                    ov = [x for x in self.ver.members(r[0]) if x.get("class") == r[1] and x["kind"] == "method" and x["name"] == nm and "static" in x["mods"].split()]
                    if ov:
                        for o in ov: self.add_method(r[0], r[1], o)
                        continue
                raise Unsupported("dependency-closure-too-large", f"call {c}")
            raise Unsupported("dependency-closure-too-large", f"call {c}")
        # identifiers
        for idn in ft.get("idents", []):
            if idn in locals_ or idn in called_simple or idn in ("this", "super", "length"): continue
            if idn in PRIMS or idn in JDK_OK_TYPES: continue
            fl = [x for x in it["members"] if x["kind"] == "field" and x["name"] == idn]
            if fl:
                self.add_field(f, q, fl[0]); continue
            if "." in q:
                oq = q.rsplit(".", 1)[0]
                fl = [x for x in self.ver.members(f) if x.get("class") == oq and x["kind"] == "field" and x["name"] == idn and "static" in x["mods"].split()]
                if fl: self.add_field(f, oq, fl[0]); continue
            if re.match(r"[A-Z]", idn):
                r = self.ver.find_class(idn, f)
                if r and idn not in ("Integer", "Long"):
                    # a class name used as qualifier: fine if followed by static field/method handled elsewhere
                    if any(s.startswith(idn + ".") for s in ft.get("selects", [])) or any(c.startswith(idn + ".") for c in ft.get("calls", [])): continue
                # static-imported constant?
                res = self.resolve_static_import(f, idn)
                if res: self.add_field(*res); continue
            raise Unsupported("dependency-closure-too-large", f"unresolved identifier {idn} in {q}.{m['name']}")
        for s in ft.get("selects", []):
            if s in ft.get("calls", []): continue
            if any(s.startswith(c.rsplit(".", 1)[0] + ".") and c.startswith(s.split(".")[0]) for c in ft.get("calls", []) if "." in c) and s in ft.get("calls", []): continue
            parts = s.split(".")
            if JDK_CONST.match(s) or s in ("System.out",): continue
            head = parts[0]
            if head == "this":
                if len(parts) == 2:
                    fl = [x for x in it["members"] if x["kind"] == "field" and x["name"] == parts[1]]
                    if fl: self.add_field(f, q, fl[0]); continue
                    raise Unsupported("dependency-closure-too-large", f"this.{parts[1]} unresolved")
                if parts[-1] == "length" and len(parts) == 3: continue
                raise Unsupported("dependency-closure-too-large", f"select {s}")
            if head in locals_ or any(x["kind"] == "field" and x["name"] == head for x in it["members"]):
                if len(parts) == 2 and parts[1] == "length": continue
                if any(c.startswith(s + ".") for c in ft.get("calls", [])): continue  # already rejected
                raise Unsupported("dependency-closure-too-large", f"member access {s}")
            if re.match(r"[A-Z]", head):
                if len(parts) == 2:
                    r = self.ver.find_class(head, f)
                    if r:
                        fl = [x for x in self.ver.members(r[0]) if x.get("class") == r[1] and x["kind"] == "field" and x["name"] == parts[1]]
                        if fl and "static" in fl[0]["mods"].split(): self.add_field(r[0], r[1], fl[0]); continue
                        if any(c == s for c in ft.get("calls", [])): continue
                raise Unsupported("dependency-closure-too-large", f"qualified reference {s}")
            raise Unsupported("dependency-closure-too-large", f"select {s}")
    def static_jdk(self, f, nm):
        for m in self.ver.members(f):
            if m["kind"] == "import" and m.get("static"):
                parts = m["name"].split(".")
                if len(parts) >= 2 and parts[-2] in JDK_STUB_CLASSES and parts[-2:-1] and (parts[-1] == nm or parts[-1] == "*") and f"{parts[-2]}_{nm}" in JNAMES:
                    return f"{parts[-2]}_{nm}"
        return None
    def resolve_static_import(self, f, name):
        for m in self.ver.members(f):
            if m["kind"] == "import" and m.get("static"):
                qn = m["name"]
                parts = qn.split(".")
                if parts[-1] == name or parts[-1] == "*":
                    cl = parts[-2] if parts[-1] == name else parts[-1 - 1] if False else parts[-2]
                    cl = parts[-2]
                    r = self.ver.find_class(cl, f)
                    if r:
                        fl = [x for x in self.ver.members(r[0]) if x.get("class") == r[1] and x["kind"] == "field" and x["name"] == name and "static" in x["mods"].split()]
                        if fl: return (r[0], r[1], fl[0])
        return None

def clean_text(s):
    return uncomment(strip_annotations(s))

def uncomment(s):
    return map_code(s, lambda c: c)

def emit_member(m, rename, kind, jmap=None):
    hdr, body = split_hdr_body(m)
    hdr = clean_text(hdr); body = uncomment(body)
    hdr = re.sub(r"\b(private|protected|public|strictfp|transient)\b\s*", "", hdr)
    if kind == "field":
        return None
    t = hdr + body
    t = re.sub(r"(?<![\w$.])(Integer|Long|Math)\.(\w+)\(", lambda mm: (f"J.{mm.group(1)}_{mm.group(2)}(" if f"{mm.group(1)}_{mm.group(2)}" in JNAMES else mm.group(0)), t)
    for nm, jn in (jmap or {}).items():
        t = re.sub(r"(?<![\w$.])" + re.escape(nm) + r"\(", f"J.{jn}(", t)
    return rename_tokens(t, rename)

def emit_field(fm, rename):
    mods = fm["mods"].split()
    t = clean_text(fm["ret"]).strip()
    isfinal = "final" in mods; isstatic = "static" in mods
    decl = ("static " if isstatic else "") + ("final " if isfinal and fm["body"] else "") + t + " " + fm["name"]
    if isfinal and fm["body"]:
        decl += " = " + uncomment(fm["body"]).strip()
    decl += ";"
    # array initialiser shorthand needs the type; javac accepts "int[] x = {1,2}" as is
    decl = re.sub(r"(?<![\w$.])(Integer|Long|Math)\.(\w+)\(", lambda mm: (f"J.{mm.group(1)}_{mm.group(2)}(" if f"{mm.group(1)}_{mm.group(2)}" in JNAMES else mm.group(0)), decl)
    return rename_tokens(decl, rename)

def emit_classes(cl, suffix, rename_extra=None):
    """Return java text for all closure classes of closure cl with names suffixed."""
    rename = {it["simple"]: it["simple"] + suffix for it in cl.items.values()}
    out = []
    for (f, q), it in cl.items.items():
        lines = [f"final class {it['simple']}{suffix} {{"]
        for fn, fm in it["fields"].items(): lines.append("    " + emit_field(fm, rename))
        for (mn, mp), m in it["methods"].items():
            if m["kind"] != "method": raise Unsupported("constructor-in-closure", mn)
            lines.append("    " + emit_member(m, rename, "method", cl.jmap.get(f)))
        lines.append("}")
        out.append("\n".join(lines))
    return "\n\n".join(out), rename

def array_eq(a, b, pre=False):
    return f"((({a}) == null) == (({b}) == null) && (({a}) == null || (({a}).length == ({b}).length && (\\forall int i; 0 <= i && i < ({a}).length; ({a})[i] == ({b})[i]))))"

def gen_method(wd, repo, oldrel, newrel, cls, name, params, outdir, extra_roots=()):
    os.makedirs(outdir, exist_ok=True)
    vers = {}
    for tag, rel in (("old", oldrel), ("new", newrel)):
        root = f"{wd}/{tag}"
        roots = [f"{root}/{x}" for x in extra_roots] + [os.path.join(root, os.path.dirname(rel))]
        # source roots: everything under */src/main/java present in the tree
        sr = []
        for dp, dn, _ in os.walk(root):
            if dp.endswith("src/main/java"): sr.append(dp); dn[:] = []
        vers[tag] = Version(root, sr)
    res = {"status": None}
    tgt = {}
    for tag, rel in (("old", oldrel), ("new", newrel)):
        v = vers[tag]; f = f"{v.root}/{rel}"
        ms = [m for m in v.members(f) if m.get("class") == cls and m["kind"] == "method" and m["name"] == name and m["params"] == params]
        if len(ms) != 1: raise Unsupported("target-not-found", f"{tag} {cls}.{name}({params})")
        tgt[tag] = (f, ms[0])
    # closures
    cls_ = {}
    for tag in ("old", "new"):
        f, m = tgt[tag]
        cls_[tag] = Closure(vers[tag], f, cls, m)
    m = tgt["new"][1]
    mods = m["mods"].split(); isstatic = "static" in mods
    ret = m["ret"].strip()
    if "<" in ret: raise Unsupported("generics", ret)
    ptypes = [p.strip() for p in params.split(",")] if params else []
    pnames = [x for x in m["pnames"].split(",") if x]
    kinds = [tkind(t) for t in ptypes]
    rk = None if ret == "void" else tkind(ret)
    if rk and rk[0] == "arr" and False: pass
    codes = {}
    # target class closure item
    texts = {}
    renames = {}
    for tag, suf in (("old", "_old"), ("new", "_new")):
        texts[tag], renames[tag] = emit_classes(cls_[tag], suf)
    tsimple = cls.split(".")[-1]
    # opaque types
    opaque = sorted((cls_["old"].opaque | cls_["new"].opaque) - set(renames["old"]) - set(renames["new"]) - JDK_OK_TYPES)
    stubs = "\n".join(f"class {t} {{}}" for t in opaque)
    # relation
    top_o = cls_["old"].items[(tgt["old"][0], cls)]; top_n = cls_["new"].items[(tgt["new"][0], cls)]
    # state: instance fields of target class (union of old/new referenced) + non-final statics of all closure classes
    inst_fields = []  # (name, kind, type) must exist in both
    for fn, fm in list(top_o["fields"].items()):
        if "static" in fm["mods"].split(): continue
        inst_fields.append((fn, fm))
    for fn, fm in top_n["fields"].items():
        if "static" in fm["mods"].split() or fn in dict(inst_fields): continue
        inst_fields.append((fn, fm))
    static_state = []
    for tag in ("old", "new"):
        for (f, q), it in cls_[tag].items.items():
            for fn, fm in it["fields"].items():
                if "static" in fm["mods"].split() and "final" not in fm["mods"].split():
                    key = (it["simple"], fn)
                    if key not in [(a, b) for a, b, _ in static_state]: static_state.append((it["simple"], fn, fm))
    # instance field must exist as a declaration in both classes (otherwise cannot twin the state)
    for fn, fm in inst_fields:
        for it, tag in ((top_o, "old"), (top_n, "new")):
            if fn not in it["fields"]:
                # field referenced only by one version: add declaration to the other so that states can be twinned
                src = [x for x in it["members"] if x["kind"] == "field" and x["name"] == fn]
                if not src: raise Unsupported("interface-or-state-layout-change", f"field {fn} absent in {tag} class")
                it["fields"][fn] = src[0]
    # re-emit (fields may have been added)
    for tag, suf in (("old", "_old"), ("new", "_new")):
        texts[tag], renames[tag] = emit_classes(cls_[tag], suf)
    # --- build Rel
    O, N = tsimple + "_old", tsimple + "_new"
    params_decl, pre, post, args_o, args_n, arrs = [], [], [], [], [], []
    if not isstatic:
        params_decl += [f"{O} self_o", f"{N} self_n"]
        pre.append("self_o != null && self_n != null")
        for fn, fm in inst_fields:
            k = tkind(fm["ret"])
            a, b = f"self_o.{fn}", f"self_n.{fn}"
            if k[0] == "arr":
                pre.append(array_eq(a, b)); post.append(array_eq(a, b)); arrs += [a, b]
            else:
                pre.append(f"{a} == {b}"); post.append(f"{a} == {b}")
    for (cn, fn, fm) in static_state:
        k = tkind(fm["ret"])
        a, b = f"{cn}_old.{fn}", f"{cn}_new.{fn}"
        if k[0] == "arr": pre.append(array_eq(a, b)); post.append(array_eq(a, b)); arrs += [a, b]
        else: pre.append(f"{a} == {b}"); post.append(f"{a} == {b}")
    for i, (t, (k, base)) in enumerate(zip(ptypes, kinds)):
        t2 = t.replace("...", "[]").replace("final ", "").strip()
        if k == "arr":
            params_decl += [f"{t2} p{i}_o", f"{t2} p{i}_n"]
            pre.append(array_eq(f"p{i}_o", f"p{i}_n")); post.append(array_eq(f"p{i}_o", f"p{i}_n")); arrs += [f"p{i}_o", f"p{i}_n"]
            args_o.append(f"p{i}_o"); args_n.append(f"p{i}_n")
        else:
            params_decl.append(f"{t2} p{i}")
            args_o.append(f"p{i}"); args_n.append(f"p{i}")
    for i in range(len(arrs)):
        for j in range(i + 1, len(arrs)):
            pre.append(f"({arrs[i]} == null || {arrs[j]} == null || {arrs[i]} != {arrs[j]})")
    pre_s = "\n      @   && ".join(pre) if pre else "true"
    post_pre = ["eo == en"]
    decl_res = ""
    if rk:
        rt = ret
        decl_res = f"    static {rt} ro; static {rt} rn;\n"
        if rk[0] == "arr": post_pre.append("(eo != 0 || " + array_eq("ro", "rn") + ")")
        else: post_pre.append("(eo != 0 || ro == rn)")
    post_s = "\n      @   && ".join(post_pre + post)
    call_o = (f"self_o.{name}" if not isstatic else f"{O}.{name}") + "(" + ", ".join(args_o) + ")"
    call_n = (f"self_n.{name}" if not isstatic else f"{N}.{name}") + "(" + ", ".join(args_n) + ")"
    asn_o = f"ro = {call_o};" if rk else f"{call_o};"
    asn_n = f"rn = {call_n};" if rk else f"{call_n};"
    excs = ["NullPointerException", "ArrayIndexOutOfBoundsException", "IndexOutOfBoundsException", "ArithmeticException", "NegativeArraySizeException",
            "ClassCastException", "IllegalArgumentException", "RuntimeException", "Error"]
    alltext = texts["old"] + texts["new"]
    extra_exc = [e for e in ("IllegalStateException", "UnsupportedOperationException") if re.search(r"\b" + e + r"\b", alltext)]
    if extra_exc: excs = excs[:7] + extra_exc + excs[7:]
    stubs += "".join(f"\nclass {e} extends RuntimeException {{ {e}() {{ super(); }} {e}(String s) {{ super(s); }} }}" for e in extra_exc)
    code_fn = "    static int code(Throwable t) {\n" + "".join(f"        if (t instanceof {e}) return {i + 1};\n" for i, e in enumerate(excs)) + "        return 99;\n    }\n"
    rel = f"""final class Rel {{
    static int eo; static int en;
{decl_res}{code_fn}
    /*@ public normal_behavior
      @ requires {pre_s};
      @ ensures {post_s};
      @ assignable \\everything;
      @*/
    public static void rel({", ".join(params_decl)}) {{
        eo = 0; en = 0;
        try {{ {asn_o} }} catch (Throwable t) {{ eo = code(t); }}
        try {{ {asn_n} }} catch (Throwable t) {{ en = code(t); }}
    }}
}}
"""
    uses_j = ("J." in texts["old"]) or ("J." in texts["new"])
    full = "\n\n".join([rel, texts["old"], texts["new"], stubs] + ([STUBJ.replace("final class J", "final class J")] if uses_j else []))
    kdir = f"{outdir}/key"; os.makedirs(kdir, exist_ok=True)
    open(f"{kdir}/Rel.java", "w").write(full)
    info = {"status": "generated", "uses_jdk_stubs": uses_j, "classes": sorted({it["simple"] for tag in cls_ for it in cls_[tag].items.values()}),
            "static": isstatic, "ret": ret, "ptypes": ptypes, "pnames": pnames, "instance_fields": [f for f, _ in inst_fields],
            "static_state": [f"{c}.{f}" for c, f, _ in static_state], "opaque": opaque,
            "n_methods": {t: sum(len(it["methods"]) for it in cls_[t].items.values()) for t in cls_},
            "loops": {t: sum(m.get("feat", {}).get("loops", 0) for it in cls_[t].items.values() for m in it["methods"].values()) for t in cls_},
            "arrays_distinct_assumption": len(arrs) >= 4 or (len(arrs) >= 2 and False)}
    info["array_count"] = len(arrs) // 2
    json.dump(info, open(f"{outdir}/gen.json", "w"), indent=1)
    gen_diff(outdir, full, info, kinds, ptypes, isstatic, inst_fields, static_state, tsimple, name, rk)
    return info

def gen_diff(outdir, full, info, kinds, ptypes, isstatic, inst_fields, static_state, tsimple, name, rk):
    """Native differential harness: same closure classes compiled with javac, random inputs, compare result/exception/state."""
    ddir = f"{outdir}/diff"; os.makedirs(ddir, exist_ok=True)
    O, N = tsimple + "_old", tsimple + "_new"
    L = []
    L.append("import java.util.*;")
    L.append("public class Diff {")
    L.append("  static Random R = new Random(12345);")
    L.append("  static int gi() { int c = R.nextInt(10); switch (c) { case 0: return 0; case 1: return 1; case 2: return -1; case 3: return Integer.MAX_VALUE; case 4: return Integer.MIN_VALUE; case 5: return R.nextInt(8); case 6: return R.nextInt(256) - 128; case 7: return R.nextInt(70000); default: return R.nextInt(); } }")
    L.append("  static long gl() { int c = R.nextInt(8); switch (c) { case 0: return 0; case 1: return -1; case 2: return Long.MAX_VALUE; case 3: return Long.MIN_VALUE; case 4: return R.nextInt(64); case 5: return 1L << R.nextInt(64); default: return R.nextLong(); } }")
    L.append("  static int code(Throwable t) { return t == null ? 0 : t.getClass().getName().hashCode(); }")
    def gen_prim(t):
        return {"int": "gi()", "long": "gl()", "short": "(short) gi()", "byte": "(byte) gi()", "char": "(char) gi()", "boolean": "R.nextBoolean()", "float": "(float) R.nextGaussian()", "double": "R.nextGaussian()"}[t]
    def gen_arr(base):
        if base in PRIMS:
            return f"new {base}[0]" , None
        return None, None
    L.append("  static boolean eq(Object a, Object b) { if (a == null || b == null) return a == b; if (a.getClass().isArray()) { int n = java.lang.reflect.Array.getLength(a); if (n != java.lang.reflect.Array.getLength(b)) return false; for (int i = 0; i < n; i++) if (!Objects.equals(java.lang.reflect.Array.get(a, i), java.lang.reflect.Array.get(b, i))) return false; return true; } return Objects.equals(a, b); }")
    L.append("  static String show(Object a) { if (a == null) return \"null\"; if (a.getClass().isArray()) { int n = java.lang.reflect.Array.getLength(a); StringBuilder sb = new StringBuilder(\"[\"); for (int i = 0; i < n && i < 40; i++) sb.append(java.lang.reflect.Array.get(a, i)).append(' '); return sb.append(\"]\").toString(); } return String.valueOf(a); }")
    L.append("  static Object arrOf(String base, int len, int mode) { switch (base) {")
    for b in ("int", "long", "short", "byte", "char", "boolean", "float", "double"):
        elem = {"int": "(mode == 0 ? gi() : R.nextInt(5))", "long": "(mode == 0 ? gl() : R.nextInt(5))", "short": "(short) (mode == 0 ? gi() : R.nextInt(5))", "byte": "(byte) (mode == 0 ? gi() : R.nextInt(5))",
                "char": "(char) (mode == 0 ? gi() : R.nextInt(5))", "boolean": "R.nextBoolean()", "float": "(float) R.nextGaussian()", "double": "R.nextGaussian()"}[b]
        L.append(f"    case \"{b}\": {{ {b}[] a = new {b}[len]; for (int i = 0; i < len; i++) a[i] = {elem}; return a; }}")
    L.append("    default: return java.lang.reflect.Array.newInstance(Object.class, len); } }")
    L.append("  static Object copyArr(Object a) { if (a == null) return null; int n = java.lang.reflect.Array.getLength(a); Object b = java.lang.reflect.Array.newInstance(a.getClass().getComponentType(), n); System.arraycopy(a, 0, b, 0, n); return b; }")
    L.append("  public static void main(String[] args) throws Exception {")
    L.append("    int iters = args.length > 0 ? Integer.parseInt(args[0]) : 200000; int found = 0; int ok = 0; int excBoth = 0;")
    L.append("    for (int it = 0; it < iters && found < 5; it++) {")
    L.append("      int mode = R.nextInt(2);")
    decl = []; ao = []; an = []; show = []
    for i, ((k, base), t) in enumerate(zip(kinds, ptypes)):
        t2 = t.replace("...", "[]").replace("final ", "").strip()
        if k == "prim":
            L.append(f"      {t2} p{i} = {gen_prim(base)};"); ao.append(f"p{i}"); an.append(f"p{i}"); show.append(f"\"p{i}=\" + p{i}")
        elif k == "arr":
            if base in PRIMS:
                L.append(f"      {t2} p{i}_o = R.nextInt(8) == 0 ? null : ({t2}) arrOf(\"{base}\", R.nextInt(10), mode); {t2} p{i}_n = ({t2}) copyArr(p{i}_o);")
            else:
                L.append(f"      {t2} p{i}_o = R.nextInt(8) == 0 ? null : new {base}[R.nextInt(5)]; {t2} p{i}_n = ({t2}) copyArr(p{i}_o);")
            ao.append(f"p{i}_o"); an.append(f"p{i}_n"); show.append(f"\"p{i}=\" + show(p{i}_o)")
        else:
            L.append(f"      {t2} p{i} = null;"); ao.append(f"p{i}"); an.append(f"p{i}"); show.append(f"\"p{i}=null\"")
    if not isstatic:
        L.append(f"      {O} so = new {O}(); {N} sn = new {N}();")
        for fn, fm in inst_fields:
            k, base = tkind(fm["ret"])
            t = fm["ret"].strip()
            if k == "prim":
                L.append(f"      so.{fn} = {gen_prim(base)}; sn.{fn} = so.{fn};"); show.append(f"\"{fn}=\" + so.{fn}")
            elif k == "arr" and base in PRIMS:
                L.append(f"      so.{fn} = ({t}) arrOf(\"{base}\", R.nextInt(10), mode); sn.{fn} = ({t}) copyArr(so.{fn});"); show.append(f"\"{fn}=\" + show(so.{fn})")
            else:
                L.append(f"      so.{fn} = null; sn.{fn} = null;")
    for (cn, fn, fm) in static_state:
        k, base = tkind(fm["ret"]); t = fm["ret"].strip()
        if k == "prim": L.append(f"      {cn}_old.{fn} = {gen_prim(base)}; {cn}_new.{fn} = {cn}_old.{fn};"); show.append(f"\"{fn}=\" + {cn}_old.{fn}")
        elif k == "arr" and base in PRIMS: L.append(f"      {cn}_old.{fn} = ({t}) arrOf(\"{base}\", R.nextInt(10), mode); {cn}_new.{fn} = ({t}) copyArr({cn}_old.{fn});")
        else: L.append(f"      {cn}_old.{fn} = null; {cn}_new.{fn} = null;")
    co = (f"so.{name}" if not isstatic else f"{O}.{name}") + "(" + ", ".join(ao) + ")"
    cn_ = (f"sn.{name}" if not isstatic else f"{N}.{name}") + "(" + ", ".join(an) + ")"
    L.append("      Object ro = null, rn = null; Throwable eo = null, en = null;")
    L.append(f"      try {{ {'ro = ' if rk else ''}{co}; }} catch (Throwable t) {{ eo = t; }}")
    L.append(f"      try {{ {'rn = ' if rk else ''}{cn_}; }} catch (Throwable t) {{ en = t; }}")
    st = ["eq(ro, rn)", "(eo == null) == (en == null)", "(eo == null || eo.getClass() == en.getClass())"]
    for i, ((k, base)) in enumerate(kinds):
        if k == "arr": st.append(f"eq(p{i}_o, p{i}_n)")
    if not isstatic:
        for fn, fm in inst_fields: st.append(f"eq(so.{fn}, sn.{fn})")
    for (cn, fn, fm) in static_state: st.append(f"eq({cn}_old.{fn}, {cn}_new.{fn})")
    L.append("      if (eo != null && en != null) excBoth++; else ok++;")
    L.append("      if (!(" + " && ".join(st) + ")) { found++; System.out.println(\"DIFF input: \" + " + (" + \" \" + ".join(show) if show else "\"\"") + " + \" | old result=\" + show(ro) + \" exc=\" + eo + \" | new result=\" + show(rn) + \" exc=\" + en); }")
    L.append("    }")
    L.append("    System.out.println(\"DONE found=\" + found + \" normal=\" + ok + \" bothExc=\" + excBoth);")
    L.append("  }")
    L.append("}")
    open(f"{ddir}/Diff.java", "w").write("\n".join(L))
    # classes (strip the Rel contract class: keep it, javac ignores comments) -> write as Closure.java
    open(f"{ddir}/Closure.java", "w").write(full)
