#!/usr/bin/env python3
"""Write one .key proof-obligation file per contract (settings from settings.key.txt).
Tags: {old,new}_{nB,nF,nN,eB,eF,eN}, rel_{resB,resF,resN,thrB,thrF,thrN}, null_{old,new}, mut_{nB,eB}."""
from pathlib import Path
HERE = Path(__file__).resolve().parent
SET = (HERE / "settings.key.txt").read_text()
CASES = {"B": 0, "F": 1, "N": 2}
POS = {}
for side, m in (("old", "selectOld(int)"), ("new", "selectNew(int)")):
    for c, i in CASES.items():
        POS[f"{side}_n{c}"] = ("sel", m, f"normal_behavior operation contract.{i}", "ban")
        POS[f"{side}_e{c}"] = ("sel", m, f"exceptional_behavior operation contract.{i}", "ban")
for c in CASES:
    POS[f"rel_res{c}"] = ("sel", f"sameResult{c}(sel.BitmapSelect,int)", "normal_behavior operation contract.0", "ban")
    POS[f"rel_thr{c}"] = ("sel", f"sameThrow{c}(sel.BitmapSelect,int)", "normal_behavior operation contract.0", "ban")
for side, m in (("old", "selectOld(int)"), ("new", "selectNew(int)")):
    POS[f"null_{side}"] = ("selnull", m, "exceptional_behavior operation contract.0", "allow")
for c, i in CASES.items():
    POS[f"mut_n{c}"] = ("selmut", "selectNew(int)", f"normal_behavior operation contract.{i}", "ban")
    POS[f"mut_e{c}"] = ("selmut", "selectNew(int)", f"exceptional_behavior operation contract.{i}", "ban")
for tag, (pkg, m, c, rte) in POS.items():
    name = f"{pkg}.BitmapSelect[{pkg}.BitmapSelect::{m}].JML {c}"
    s = SET.replace('"runtimeExceptions:ban"', f'"runtimeExceptions:{rte}"')
    (HERE / f"po_{tag}.key").write_text('\\profile "Java Profile";\n' + s + f'\n\\javaSource ".";\n\n'
        '\\proofObligation {\n  "class" : "de.uka.ilkd.key.proof.init.FunctionalOperationContractPO",\n'
        f'  "contract" : "{name}",\n  "name" : "{name}"\n}}\n')
print(" ".join(POS))
