#!/usr/bin/env python3
"""Write one .key problem file per contract (settings from settings.key.txt)."""
from pathlib import Path
HERE = Path(__file__).resolve().parent
S = (HERE / "settings.key.txt").read_text()
POS = {
    "cc": ("BitmapRank", "computeCardinality()", 0),
    "old0": ("BitmapRank", "rankOld(char)", 0),
    "old1": ("BitmapRank", "rankOld(char)", 1),
    "new0": ("BitmapRank", "rankNew(char)", 0),
    "new1": ("BitmapRank", "rankNew(char)", 1),
}
for tag, (cls, sig, idx) in POS.items():
    name = f"{cls}[{cls}::{sig}].JML normal_behavior operation contract.{idx}"
    (HERE / f"po_{tag}.key").write_text(
        '\\profile "Java Profile";\n' + S + '\n\\javaSource ".";\n\n\\proofObligation {\n'
        '  "class" : "de.uka.ilkd.key.proof.init.FunctionalOperationContractPO",\n'
        f'  "contract" : "{name}",\n  "name" : "{name}"\n}}\n')
print("ok")
