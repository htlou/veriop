#!/usr/bin/env python3
"""Generate the KeY model for the BitmapContainer.select(int) equivalence proof.

OLD = select(int) of upstream RoaringBitmap @7f2b0a58 (wt/base).
NEW = select(int) of the 4-word block-skip variant `t4`
      (explore-inv-free/select-variants/t4.BitmapContainer.java; the class measured in
      jmh/explore-select-t4 is explore-inv-free/cls-t4, compiled from that file).

The method bodies are extracted verbatim from the real sources. The only edits are:
  * rename select -> selectOld / selectNew (the @Override line is not part of the extract)
  * Long.bitCount(            -> PopCount.bitCount(  (KeY's JavaRedux has no Long.bitCount; stub
                                                       = uninterpreted pure function pc, see PopCount.java)
  * Util.select(              -> USel.select(        (uninterpreted pure function us, see USel.java)
  * bitmap.length & -4        -> Bits.andM4(bitmap.length)   (KeY has no rules for binaryAnd with a
                                 symbolic operand; the stub's contract is checked exhaustively for all
                                 2^31 non-negative ints by AndM4Check.java)
  * NEW only: `} else if (j >= 0) {` -> `} else { if (j >= 0) {` plus one closing brace
                                 (same Java statement; needed because KeY 3.0.0 drops loop specs
                                 inside `else if`; javac bytecode identity checked by check_else_if.sh)
  * JML loop invariants inserted (comments only) before each `for` loop
Everything else of BitmapContainer.java must be byte-identical between OLD and NEW (asserted).
"""
import hashlib, json, re, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]                      # heldout/java-key
BASE = ROOT / "wt/base/roaringbitmap/src/main/java/org/roaringbitmap/BitmapContainer.java"
NEW = ROOT / "explore-inv-free/select-variants/t4.BitmapContainer.java"
HEADER = "public char select(int j)"


def extract(text, header):
    i = text.index(header)
    j = text.index("{", i)
    depth, k = 0, j
    while True:
        if text[k] == "{":
            depth += 1
        elif text[k] == "}":
            depth -= 1
            if depth == 0:
                return text[i:k + 1]
        k += 1


# ---------------------------------------------------------------- specification macros
def S(n, p=""):
    """prefix popcount sum over words [0, n) as a mathematical integer"""
    return f"(\\sum int t; 0 <= t && t < {n}; PopCount.pc({p}bitmap[t]))"


def L(p=""):
    return f"{p}bitmap.length"


def T(k, p=""):
    """suffix popcount sum over words [k, L) as a mathematical integer. (Written with a symbolic
    upper bound L rather than as S(L) - S(k): KeY 3.0.0's heuristic rule
    bsum_induction_upper_concrete_2 loops forever on a literal reversed range such as bsum(0, -1),
    which the prefix form produces at k = -1.)"""
    return f"(\\sum int t; {k} <= t && t < {L(p)}; PopCount.pc({p}bitmap[t]))"


def B(p=""):
    # the exact branch condition of the code: cardinality >>> 1 < j && j < cardinality
    return f"(\\dl_javaUnsignedShiftRightInt({p}cardinality, 1) < j && j < {p}cardinality)"


def LO(p=""):
    return f"({p}cardinality - j)"


def CH(k, arg, p=""):
    """(char) (k * 64 + Util.select(bitmap[k], arg)) with Java int semantics"""
    return f"\\dl_javaCastChar(\\dl_javaAddInt(\\dl_javaMulInt({k}, 64), USel.us({p}bitmap[{k}], {arg})))"


def PRE(p=""):
    return [f"{p}bitmap != null",
            f"(\\forall int i; 0 <= i && i < {L(p)}; \\dl_inLong({p}bitmap[i]))",          # typing
            f"(\\forall int i; 0 <= i && i < {L(p)}; 0 <= PopCount.pc({p}bitmap[i]) && PopCount.pc({p}bitmap[i]) <= 64)",  # AX1
            "PopCount.pc(0) == 0"]                                                          # AX2


def FOUND(case, p=""):
    if case == "B":
        return f"(\\exists int k; 0 <= k && k < {L(p)}; {T('k', p)} >= {LO(p)})"
    if case == "F":
        return f"(\\exists int k; 0 <= k && k < {L(p)}; {S('k + 1', p)} > j)"
    if case == "N":
        return f"(\\exists int k; 0 <= k && k < {L(p)}; {p}bitmap[k] != 0)"


def CASE(case, p=""):
    return {"B": B(p), "F": f"(!{B(p)} && j >= 0)", "N": f"(!{B(p)} && j < 0)"}[case]


def RESULT(case, r, p=""):
    """the (unique) answer: r equals the select result at the unique index k described"""
    if case == "B":
        return (f"(\\exists int k; 0 <= k && k < {L(p)} && {T('k', p)} >= {LO(p)}"
                f" && (\\forall int i; k < i && i < {L(p)}; {T('i', p)} < {LO(p)})"
                f" && {r} == {CH('k', T('k', p) + ' - ' + LO(p), p)})")
    if case == "F":
        return (f"(\\exists int k; 0 <= k && k < {L(p)} && {S('k + 1', p)} > j"
                f" && (\\forall int i; 0 <= i && i < k; {S('i + 1', p)} <= j)"
                f" && {r} == {CH('k', 'j - ' + S('k', p), p)})")
    if case == "N":
        return (f"(\\exists int k; 0 <= k && k < {L(p)} && {p}bitmap[k] != 0"
                f" && (\\forall int i; 0 <= i && i < k; {p}bitmap[i] == 0)"
                f" && {r} == {CH('k', 'j', p)})")


def jml(lines, indent="  "):
    out = [indent + "/*@ " + lines[0]] + [indent + "  @ " + l for l in lines[1:]] + [indent + "  @*/"]
    return "\n".join(out)


def contracts(cases, behaviours):
    """single-version contract of select{Old,New}: one specification case per (branch, behaviour)"""
    specs = []
    for c in cases:
        for beh in behaviours:
            req = [f"requires {x};" for x in PRE()] + [f"requires {CASE(c)};"]
            if beh == "normal":
                specs.append(["public normal_behavior"] + req + [f"requires {FOUND(c)};",
                              f"ensures {RESULT(c, chr(92) + 'result')};", "assignable \\strictly_nothing;"])
            else:
                specs.append(["public exceptional_behavior"] + req + [f"requires !{FOUND(c)};",
                              "signals_only IllegalArgumentException;",
                              "signals (IllegalArgumentException e) \\typeof(e) == \\type(IllegalArgumentException);",
                              "assignable \\nothing;"])
    if "null" in behaviours:
        specs = [["public exceptional_behavior", "requires bitmap == null;",
                  "signals_only NullPointerException;", "assignable \\nothing;"]]
    lines = []
    for i, s in enumerate(specs):
        if i:
            s = ["also"] + s
        lines += s
    return jml(lines)


# ---------------------------------------------------------------- loop invariants
SK, SK1 = S("k"), S("k + 1")
SL = S("bitmap.length")
INV = {
    # OLD, cardinality branch: backward word loop (skips zero words)
    "for (int k = bitmap.length - 1; k >= 0; --k) {": [
        "loop_invariant -1 <= k && k < bitmap.length",
        f"  && leftover == (cardinality - j) - {T('k + 1')}",
        "  && 1 <= leftover",
        f"  && (\\forall int i; k < i && i < bitmap.length; {T('i')} < cardinality - j);",
        "decreasing k + 1;", "assignable \\strictly_nothing;"],
    # OLD else-branch (j >= 0 and j < 0) and NEW j < 0 branch (verbatim copy): forward word loop
    "for (int k = 0; k < bitmap.length; ++k) {": [
        "loop_invariant 0 <= k && k <= bitmap.length",
        f"  && (j >= 0 ==> leftover == j - {SK} && 0 <= leftover",
        f"        && (\\forall int i; 0 <= i && i < k; {S('i + 1')} <= j))",
        "  && (j < 0 ==> leftover == j && (\\forall int i; 0 <= i && i < k; bitmap[i] == 0));",
        "decreasing bitmap.length - k;", "assignable \\strictly_nothing;"],
    # NEW, cardinality branch: backward 4-word block loop
    "for (; k >= 4; k -= 4) {": [
        "loop_invariant 0 <= k && k <= bitmap.length",
        f"  && leftover == (cardinality - j) - {T('k')}",
        "  && 1 <= leftover",
        f"  && (\\forall int i; k <= i && i < bitmap.length; {T('i')} < cardinality - j);",
        "decreasing k;", "assignable \\strictly_nothing;"],
    # NEW, cardinality branch: backward word loop
    "for (k = k - 1; k >= 0; --k) {": [
        "loop_invariant -1 <= k && k < bitmap.length",
        f"  && leftover == (cardinality - j) - {T('k + 1')}",
        "  && 1 <= leftover",
        f"  && (\\forall int i; k < i && i < bitmap.length; {T('i')} < cardinality - j);",
        "decreasing k + 1;", "assignable \\strictly_nothing;"],
    # NEW, j >= 0 branch: forward 4-word block loop
    "for (; k < limit; k += 4) {": [
        "loop_invariant 0 <= k && k <= limit && k % 4 == 0",
        f"  && leftover == j - {SK} && 0 <= leftover",
        f"  && (\\forall int i; 0 <= i && i < k; {S('i + 1')} <= j);",
        "decreasing limit - k;", "assignable \\strictly_nothing;"],
    # NEW, j >= 0 branch: forward word loop
    "for (; k < bitmap.length; ++k) {": [
        "loop_invariant 0 <= k && k <= bitmap.length",
        f"  && leftover == j - {SK} && 0 <= leftover",
        f"  && (\\forall int i; 0 <= i && i < k; {S('i + 1')} <= j);",
        "decreasing bitmap.length - k;", "assignable \\strictly_nothing;"],
}


def transform(method, newname, mutate=None):
    m = method.replace(HEADER, f"public char {newname}(int j)", 1)
    m = m.replace("Long.bitCount(", "PopCount.bitCount(").replace("Util.select(", "USel.select(")
    m = m.replace("bitmap.length & -4", "Bits.andM4(bitmap.length)")
    if "} else if (j >= 0) {" in m:
        # KeY 3.0.0 does not attach JML loop specs to loops inside an `else if` branch
        # (tool/LoopSpecs.java shows spec=false). `else if (c) S1 else S2` and
        # `else { if (c) S1 else S2 }` are the same Java statement (javac emits identical
        # bytecode, checked by check_else_if.sh), so the model uses the braced form.
        assert m.count("} else if (j >= 0) {") == 1
        m = m.replace("} else if (j >= 0) {", "} else { if (j >= 0) {")
        tail = "    }\n    throw new IllegalArgumentException"
        assert m.count(tail) == 1
        m = m.replace(tail, "    } }\n    throw new IllegalArgumentException")
    if mutate:
        old, new = mutate
        assert m.count(old) == 1, ("mutation site not unique", old)
        m = m.replace(old, new)
    for header, inv in INV.items():
        if header in m:
            indent = re.search(r"\n([ \t]*)" + re.escape(header), m).group(1)
            m = m.replace(header, jml(inv, indent).lstrip() + "\n" + indent + header)
    return m


# ---------------------------------------------------------------- relational (product) methods
def relational():
    out = []
    # normal behaviour: same result, nothing written, for every non-null state in which OLD returns normally
    for c in "BFN":
        req = [f"requires a != null;"] + [f"requires {x};" for x in PRE("a.")] + \
              [f"requires {CASE(c, 'a.')};", f"requires {FOUND(c, 'a.')};"]
        out.append(jml(["public normal_behavior"] + req + ["ensures \\result;", "assignable \\strictly_nothing;"]))
        out.append(f"""  public static boolean sameResult{c}(BitmapSelect a, int j) {{
    char r1 = a.selectOld(j);
    char r2 = a.selectNew(j);
    return r1 == r2;
  }}
""")
    # exceptional behaviour: both throw IllegalArgumentException, nothing pre-existing written
    for c in "BFN":
        req = [f"requires a != null;"] + [f"requires {x};" for x in PRE("a.")] + \
              [f"requires {CASE(c, 'a.')};", f"requires !{FOUND(c, 'a.')};"]
        out.append(jml(["public normal_behavior"] + req + ["ensures \\result;", "assignable \\nothing;"]))
        out.append(f"""  public static boolean sameThrow{c}(BitmapSelect a, int j) {{
    boolean t1 = false;
    boolean t2 = false;
    try {{
      a.selectOld(j);
    }} catch (IllegalArgumentException e) {{
      t1 = true;
    }}
    try {{
      a.selectNew(j);
    }} catch (IllegalArgumentException e) {{
      t2 = true;
    }}
    return t1 && t2;
  }}
""")
    return "\n".join(out)


CLASS = """package {pkg};

/**
 * GENERATED by gen_sel.py -- KeY model of org.roaringbitmap.BitmapContainer for the
 * select(int) equivalence proof. Fields mirror BitmapContainer (bitmap, cardinality).
 * No class invariant is assumed: the public constructor BitmapContainer(long[], int) stores an
 * arbitrary array (possibly null, any length) and an arbitrary int cardinality.
 */
public final class BitmapSelect {{
  public long[] bitmap;
  public int cardinality;

{spec_old}
  {old}

{spec_new}
  {new}
{rel}
}}
"""

STUBS = ["PopCount.java", "USel.java", "Bits.java"]


def build(pkg, old_m, new_m, behaviours, cases="BFN", rel=False, mutate=None):
    d = HERE / pkg
    d.mkdir(exist_ok=True)
    text = CLASS.format(pkg=pkg,
                        spec_old=contracts(cases, behaviours), old=transform(old_m, "selectOld"),
                        spec_new=contracts(cases, behaviours), new=transform(new_m, "selectNew", mutate),
                        rel=relational() if rel else "")
    (d / "BitmapSelect.java").write_text(text)
    for s in STUBS:
        (d / s).write_text(f"package {pkg};\n\n" + (HERE / "stubs" / s).read_text())
    return hashlib.sha256(text.encode()).hexdigest()


MUTANT = ("        if (bits >= leftover) {\n          break;",
          "        if (bits > leftover) {\n          break;")


def main():
    base, new = BASE.read_text(), NEW.read_text()
    old_m, new_m = extract(base, HEADER), extract(new, HEADER)
    assert base.replace(old_m, "") == new.replace(new_m, ""), "code outside select() differs"
    prov = {"edits": __doc__,
            "sources": {"old": {"path": str(BASE), "sha256": hashlib.sha256(base.encode()).hexdigest()},
                        "new": {"path": str(NEW), "sha256": hashlib.sha256(new.encode()).hexdigest()}},
            "methods_sha256": {"select_old": hashlib.sha256(old_m.encode()).hexdigest(),
                               "select_new": hashlib.sha256(new_m.encode()).hexdigest()},
            "only_select_differs": True, "generated": {}}
    # sel: all single-version contracts (normal + IAE cases) and the relational product methods
    prov["generated"]["sel"] = build("sel", old_m, new_m, ["normal", "exc"], rel=True)
    # selnull: bitmap == null -> NullPointerException (proved with runtimeExceptions:allow)
    prov["generated"]["selnull"] = build("selnull", old_m, new_m, ["null"])
    # selmut: negative control, NEW with `>=` -> `>` in the backward block loop
    prov["generated"]["selmut"] = build("selmut", old_m, new_m, ["normal", "exc"], mutate=MUTANT)
    prov["mutant"] = {"from": MUTANT[0], "to": MUTANT[1]}
    (HERE / "provenance.json").write_text(json.dumps(prov, indent=2) + "\n")
    print("generated sel/, selnull/, selmut/")


if __name__ == "__main__":
    main()
