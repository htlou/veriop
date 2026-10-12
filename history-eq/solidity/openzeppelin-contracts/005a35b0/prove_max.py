"""Source-audited bit-vector proof for the two historical max rewrites."""

import re
from pathlib import Path

import z3


HERE = Path(__file__).resolve().parent
HISTORY = HERE.parents[2]
for label in ("old", "new"):
    for library in ("Math", "SignedMath"):
        copied = HERE / "sources" / label / f"{library}.sol"
        historical = HISTORY / "wt" / f"oz-max-{label}" / "contracts/utils/math" / f"{library}.sol"
        assert copied.read_bytes() == historical.read_bytes(), copied

    for library, typ in (("Math", "uint256"), ("SignedMath", "int256")):
        source = (HERE / "sources" / label / f"{library}.sol").read_text()
        body = re.search(
            rf"function max\({typ} a, {typ} b\) internal pure returns \({typ}\) \{{\s*return ([^;]+);\s*\}}",
            source,
        )
        assert body and body.group(1) == f"a {'>=' if label == 'old' else '>'} b ? a : b", (label, library)

for library, typ, unsigned in (("Math", "uint256", True), ("SignedMath", "int256", False)):
    a, b = z3.BitVecs("a b", 256)
    ge = z3.UGE(a, b) if unsigned else a >= b
    gt = z3.UGT(a, b) if unsigned else a > b
    old_result = z3.If(ge, a, b)
    new_result = z3.If(gt, a, b)
    solver = z3.Solver()
    solver.add(old_result != new_result)
    verdict = solver.check()
    assert verdict == z3.unsat, (library, verdict)
    print(f"{library}.max({typ},{typ}): UNSAT inequivalence query (Z3 {z3.get_version_string()})")
