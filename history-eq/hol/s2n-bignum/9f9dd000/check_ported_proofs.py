"""Audit archived HOL Light output for both historical machine-code proofs."""

import gzip
import hashlib
import json
import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
NAMES = ("BIGNUM_MUL_8_16_CORRECT", "BIGNUM_MUL_8_16_SUBROUTINE_CORRECT")
OBJECT_HASHES = {
    "old": "8063076d61e902acc20325f1ada6b54d8c2397dfc17351d19bfc26ce2ba626ba",
    "new": "286f2c05ec002dffd735ef4152d8511ae8d62c3ff79517c355ee44cb4b93f18d",
}


def extract(log, name):
    marker = f"val {name} : thm ="
    assert log.count(marker) == 1, name
    start = log.index(marker)
    stops = ("\nStepping", "\nCPU time", "\nval it", "\n# ")
    end = min(pos for token in stops if (pos := log.find(token, start)) >= 0)
    theorem = log[start:end].rstrip() + "\n"
    assert "bignum_from_memory (z,16) s = a * b" in " ".join(theorem.split())
    return theorem


def main():
    changed = subprocess.check_output(("git", "-C", str(ROOT / "benchmarks/repos/s2n-bignum"),
                                       "diff-tree", "--no-commit-id", "--name-only", "-r",
                                       "9f9dd0002c9ef5ab1db2ddb7d1fdaa26824c3b3b"),
                                      text=True).splitlines()
    assert set(changed) == {"x86/fastmul/bignum_mul_8_16.S", "x86/proofs/bignum_mul_8_16.ml"}
    report = {}
    theorems = {}
    for side in ("old", "new"):
        archive = HERE / f"ported-{side}-proof.log.gz"
        raw = gzip.open(archive, "rt", errors="replace").read()
        log = re.sub(r"\x1b\[[0-9;]*[mK]", "", raw)
        assert "Error:" not in log and "Exception:" not in log
        assert log.rstrip().endswith("#")
        thms = {name: extract(log, name) for name in NAMES}
        theorems[side] = thms
        (HERE / f"ported-{side}-theorems.txt").write_text("\n".join(thms.values()))
        worktree = ROOT / "history-eq/wt" / f"s2n-mul8-{side}"
        rev = subprocess.check_output(("git", "-C", str(worktree), "rev-parse", "HEAD"),
                                      text=True).strip()
        obj = worktree / "x86/fastmul/bignum_mul_8_16.o"
        obj_hash = hashlib.sha256(obj.read_bytes()).hexdigest()
        assert obj_hash == OBJECT_HASHES[side]
        report[side] = {"revision": rev, "object_sha256": obj_hash,
                        "log_sha256": hashlib.sha256(archive.read_bytes()).hexdigest(),
                        "theorems": list(thms)}

    normalized_old_main = theorems["old"][NAMES[0]].replace("1272", "<code-size>").replace(
        "1261", "<exit-offset>")
    normalized_new_main = theorems["new"][NAMES[0]].replace("1227", "<code-size>").replace(
        "1216", "<exit-offset>")
    assert normalized_old_main == normalized_new_main
    assert theorems["old"][NAMES[1]].replace("1272", "<code-size>") == theorems["new"][
        NAMES[1]].replace("1227", "<code-size>")
    report["common_result"] = "both proven subroutines return a*b under the intersection of their preconditions"
    (HERE / "ported-proof-summary.json").write_text(json.dumps(report, indent=2) + "\n")
    print(report["common_result"])


if __name__ == "__main__":
    main()
