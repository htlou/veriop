#!/usr/bin/env python3
"""Build the relational KeY bundle: package rel = model from ../rank (regenerated from the real
sources by ../rank/gen_key.py) + direct relational product methods from relational.java.part."""
import hashlib, json, subprocess
from pathlib import Path
H = Path(__file__).resolve().parent
subprocess.run(["python3", str(H.parent / "rank" / "gen_key.py")], check=True)
model = (H.parent / "rank" / "BitmapRank.java").read_text()
cut = model.find("\n  /* RELATIONAL checks")
if cut >= 0:
    model = model[:cut] + "\n}\n"
body = model.rstrip()
assert body.endswith("}")
rel = (H / "relational.java.part").read_text()
# validate(): unchanged library method that defines a valid BitmapContainer (used to justify INV)
import sys; sys.path.insert(0, str(H.parent / "rank")); import gen_key
src = (H.parent.parent / "wt" / "base" / gen_key.SRC).read_text()
val = gen_key.extract(src, "public Boolean validate()")
VAL_SHA = hashlib.sha256(val.encode()).hexdigest()
val = (val.replace("public Boolean validate()", "public boolean validate()")       # boxing removed
          .replace("ArrayContainer.DEFAULT_MAX_SIZE", "4096")                     # constant value
          .replace("Long.bitCount(", "PopCount.bitCount("))
hdr = "for (int k = 0; k < this.bitmap.length; k++) {"
assert val.count(hdr) == 1
val = val.replace(hdr, """/*@ loop_invariant 0 <= k && k <= this.bitmap.length
      @   && computed_cardinality == (\\sum int i; 0 <= i && i < k; PopCount.pc(bitmap[i]))
      @   && 0 <= computed_cardinality && computed_cardinality <= 64 * k;
      @ decreasing this.bitmap.length - k;
      @ assignable \\strictly_nothing;
      @*/
    """ + hdr)
rel = rel.replace("  // VALIDATE", "  " + val)
out = "package rel;\n\n" + body[:-1] + rel + "}\n"
def drop_method(text, header):
    i = text.index(header); j = text.rindex("  /*@ public normal_behavior", 0, i); k = text.index("\n  }\n", i) + 5
    return text[:j] + text[k:]
nm_src = out
out = drop_method(out, "  public static boolean same(")   # package rel keeps only sameMax (x == 65535)
(H / "rel").mkdir(exist_ok=True)
(H / "rel" / "BitmapRank.java").write_text(out)
(H / "rel" / "PopCount.java").write_text("package rel;\n\n" + (H.parent / "rank" / "PopCount.java").read_text())
S = (H.parent / "rank" / "settings.key.txt").read_text()
POS = {"cc": ("computeCardinality()", 0), "old0": ("rankOld(char)", 0), "old1": ("rankOld(char)", 1),
       "new0": ("rankNew(char)", 0), "new1": ("rankNew(char)", 1),
       "samemax": ("sameMax(rel.BitmapRank,rel.BitmapRank,char)", 0),
       "validate": ("validate()", 0)}
extra = (H / "extra_pos.json")
if extra.exists():
    POS.update({k: tuple(v) for k, v in json.loads(extra.read_text()).items()})
EXPAND = set()  # inline both rank bodies (with their loop invariants) instead of using contracts
for tag, (sig, idx) in POS.items():
    name = f"rel.BitmapRank[rel.BitmapRank::{sig}].JML normal_behavior operation contract.{idx}"
    St = S.replace('"METHOD_CONTRACT"', '"METHOD_EXPAND"') if tag in EXPAND else S
    (H / f"po_{tag}.key").write_text('\\profile "Java Profile";\n' + St + '\n\\javaSource ".";\n\n\\proofObligation {\n'
        '  "class" : "de.uka.ilkd.key.proof.init.FunctionalOperationContractPO",\n'
        f'  "contract" : "{name}",\n  "name" : "{name}"\n}}\n')
prov = json.loads((H.parent / "rank" / "provenance.json").read_text())
prov["validate_source_sha256"] = VAL_SHA
prov["relational_model_sha256"] = hashlib.sha256(out.encode()).hexdigest()

# ---- package relnm: same model, but rankOld/rankNew carry ONLY the lowbits != 65535 contract, so
# that applying them in the product program uses an assignable-\strictly_nothing contract (KeY combines
# all contracts of a method on application, and the combined frame anonymises the heap, which blocks
# the bsum comparison). Only the non-MAX product obligation `same` is proved in this package.
import re as _re
nm = nm_src.replace("package rel;", "package relnm;")
blk = _re.compile(r"\n    @ also\n    @ public normal_behavior\n(?:    @ .*\n)*?    @ requires lowbits == 65535;\n(?:    @ .*\n)*?(?=    @\*/)")
nm, nsub = blk.subn("\n", nm)
assert nsub == 2, nsub
nm = drop_method(nm, "  public static boolean sameMax(")
nm = drop_method(nm, "  public boolean validate()")
(H / "relnm").mkdir(exist_ok=True)
(H / "relnm" / "BitmapRank.java").write_text(nm)
(H / "relnm" / "PopCount.java").write_text("package relnm;\n\n" + (H.parent / "rank" / "PopCount.java").read_text())
for tag, (sig, idx) in {"nm_old0": ("rankOld(char)", 0), "nm_new0": ("rankNew(char)", 0),
                        "nm_cc": ("computeCardinality()", 0),
                        "nm_same": ("same(relnm.BitmapRank,relnm.BitmapRank,char)", 0)}.items():
    name = f"relnm.BitmapRank[relnm.BitmapRank::{sig}].JML normal_behavior operation contract.{idx}"
    (H / f"po_{tag}.key").write_text('\\profile "Java Profile";\n' + S + '\n\\javaSource ".";\n\n\\proofObligation {\n'
        '  "class" : "de.uka.ilkd.key.proof.init.FunctionalOperationContractPO",\n'
        f'  "contract" : "{name}",\n  "name" : "{name}"\n}}\n')
prov["relnm_model_sha256"] = hashlib.sha256(nm.encode()).hexdigest()
(H / "provenance.json").write_text(json.dumps(prov, indent=2) + "\n")
print("ok", list(POS))
