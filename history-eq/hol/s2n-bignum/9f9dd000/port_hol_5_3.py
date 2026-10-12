"""Prepare throwaway s2n copies for HOL Light under the installed OCaml 5.3."""

import json
import re
import shutil
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
PORT = Path("/tmp/veriop-s2n-mul8-port")
FILES = ("common/words2.ml", "common/components.ml", "common/elf.ml", "x86/proofs/decode.ml")


def main():
    counts = {}
    for side in ("old", "new"):
        src = ROOT / "history-eq/wt" / f"s2n-mul8-{side}"
        dst = Path(str(PORT) + f"-{side}")
        if dst.exists():
            shutil.rmtree(dst)
        shutil.copytree(src, dst)
        counts[side] = {}
        for relative in FILES:
            path = dst / relative
            original = path.read_text()
            patched, n = re.subn(r"\bInt\b", "Num.num_of_int", original)
            path.write_text(patched)
            counts[side][relative] = n
        changed = set(subprocess.check_output(
            ("git", "-C", str(dst), "diff", "--name-only"), text=True).splitlines())
        assert changed == set(FILES), changed
    hol = ROOT / "benchmarks/tools/hol-light"
    zarith = ROOT / "aeneas/env/opam/5.3.0/lib/zarith"
    init = Path(str(PORT) + "-hol-init.ml")
    init.write_text(
        '#directory "+compiler-libs";;\n#load "ocamlcommon.cma";;\n'
        f'#directory "{zarith}";;\n#load "zarith.cma";;\n'
        f'#directory "{hol}";;\n#load "bignum.cmo";;\n#use "{hol}/hol.ml";;\n'
        'let _ = Bytes.length (Bytes.create 1);;\nlet bprintf = Printf.bprintf;;\n'
    )
    assert counts["old"] == counts["new"]
    assert sum(counts["old"].values()) == 32, counts
    (HERE / "port-manifest.json").write_text(json.dumps(counts, indent=2) + "\n")
    print(init)


if __name__ == "__main__":
    main()
