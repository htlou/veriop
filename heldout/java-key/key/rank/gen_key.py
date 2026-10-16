#!/usr/bin/env python3
"""Generate the KeY proof inputs for BitmapContainer.rank (old = base worktree, new = cand worktree).

The method bodies are extracted verbatim from the real sources; the only edits are
  * rename rank -> rankOld / rankNew, drop @Override
  * Long.bitCount(          -> PopCount.bitCount(   (uninterpreted stub, see PopCount.java)
  * Character.MAX_VALUE     -> 65535   (KeY's JavaRedux Character has no MAX_VALUE; KeY also mis-parses the char literal '\\uffff' as 92)
  * JML loop invariants inserted (comments only) before each `for` loop
Everything is recorded in provenance.json.
"""
import hashlib, json, re, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
WT = HERE.parents[1] / "wt"
SRC = "roaringbitmap/src/main/java/org/roaringbitmap/BitmapContainer.java"


def extract(text, header):
    i = text.index(header)
    # include a preceding "@Override" line if present
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


SUM = "(\\sum int i; 0 <= i && i < {hi}; PopCount.pc(bitmap[i]))"
INV = {
    # old forward loop (base) and new forward loop (cand)
    "for (int k = 0; k < (lowbits + 1) >>> 6; ++k) {":
        "/*@ loop_invariant 0 <= k && k <= ((lowbits + 1) / 64)\n"
        "  @   && answer == " + SUM.format(hi="k") + "\n"
        "  @   && 0 <= answer && answer <= 64 * k;\n"
        "  @ decreasing ((lowbits + 1) / 64) - k;\n"
        "  @ assignable \\strictly_nothing;\n  @*/",
    "for (int k = 0; k < end; ++k) {":
        "/*@ loop_invariant 0 <= k && k <= end\n"
        "  @   && answer == " + SUM.format(hi="k") + "\n"
        "  @   && 0 <= answer && answer <= 64 * k;\n"
        "  @ decreasing end - k;\n"
        "  @ assignable \\strictly_nothing;\n  @*/",
    "for (int k = end; k < bitmap.length; ++k) {":
        "/*@ loop_invariant end <= k && k <= bitmap.length\n"
        "  @   && answer == cardinality - (\\sum int i; end <= i && i < k; PopCount.pc(bitmap[i]))\n"
        "  @   && 0 <= cardinality - answer && cardinality - answer <= 64 * (k - end);\n"
        "  @ decreasing bitmap.length - k;\n"
        "  @ assignable \\strictly_nothing;\n  @*/",
    "for (int k = 0; k < this.bitmap.length; k++) {":
        "/*@ loop_invariant 0 <= k && k <= this.bitmap.length\n"
        "  @   && this.cardinality == " + SUM.format(hi="k") + "\n"
        "  @   && 0 <= this.cardinality && this.cardinality <= 64 * k;\n"
        "  @ decreasing this.bitmap.length - k;\n"
        "  @ assignable this.cardinality;\n  @*/",
}


def transform(method, newname):
    m = method.replace("public int rank(char lowbits)", f"public int {newname}(char lowbits)", 1)
    m = m.replace("Long.bitCount(", "PopCount.bitCount(").replace("Character.MAX_VALUE", "65535")
    for header, inv in INV.items():
        if header in m:
            indent = re.search(r"\n([ \t]*)" + re.escape(header), m).group(1)
            m = m.replace(header, inv.replace("\n", "\n" + indent) + "\n" + indent + header)
    return m


def main():
    prov = {"sources": {}, "edits": __doc__}
    texts = {}
    for side in ("base", "cand"):
        p = WT / side / SRC
        t = p.read_text()
        texts[side] = t
        prov["sources"][side] = {"path": str(p), "sha256": hashlib.sha256(t.encode()).hexdigest()}
    rank_old = extract(texts["base"], "public int rank(char lowbits)")
    rank_new = extract(texts["cand"], "public int rank(char lowbits)")
    cc_old = extract(texts["base"], "void computeCardinality()")
    cc_new = extract(texts["cand"], "void computeCardinality()")
    assert cc_old == cc_new, "computeCardinality changed"
    # all of BitmapContainer outside rank() must be identical between base and cand
    assert texts["base"].replace(rank_old, "") == texts["cand"].replace(rank_new, ""), "other code differs"
    prov["methods"] = {k: hashlib.sha256(v.encode()).hexdigest() for k, v in
                       (("rank_old", rank_old), ("rank_new", rank_new), ("computeCardinality", cc_old))}
    prov["only_rank_differs"] = True
    tpl = (HERE / "BitmapRank.template.java").read_text()
    out = (tpl.replace("  // RANK_OLD", "  " + transform(rank_old, "rankOld"))
              .replace("  // RANK_NEW", "  " + transform(rank_new, "rankNew"))
              .replace("  // COMPUTE_CARDINALITY", "  " + transform(cc_old, "computeCardinality")))
    (HERE / "BitmapRank.java").write_text(out)
    prov["generated"] = {"BitmapRank.java": hashlib.sha256(out.encode()).hexdigest()}
    (HERE / "provenance.json").write_text(json.dumps(prov, indent=2) + "\n")
    print("wrote BitmapRank.java")


if __name__ == "__main__":
    main()
