#!/usr/bin/env python3
"""Match the pre-commit Keccak model to the published textbook proof model."""

from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
REPO = ROOT / "benchmarks/repos/SymCrypt"
GENERATED = ROOT / "benchmarks/build/symcrust-sha3-narrow/lean/Symcrust/Code"
PUBLISHED = REPO / "SymCRust/lean/Symcrust/Code"
OLD = HERE / "old/lean/Symcrust/Code"


def body(source, name):
    match = re.search(r"(?ms)^def " + re.escape(name) +
                      r"\b.*?(?=\n\n/--|\n\nend symcrust|\Z)", source)
    assert match, name
    return re.sub(r"\s+", "", match.group().strip())


def main():
    assert subprocess.check_output(["git", "-C", str(REPO), "rev-parse", "HEAD"],
                                   text=True).strip() == "c2e575ace0ea4b6b7a4184c1f19b81d1d5b2b5be"
    old_source = ROOT / "history-eq/wt/symcrust-c2e575a-old/SymCRust/src/sha3/sha3_impl.rs"
    assert old_source.read_bytes() == subprocess.check_output(
        ["git", "-C", str(REPO), "show", "c2e575a^:SymCRust/src/sha3/sha3_impl.rs"])
    old = (OLD / "Funs.lean").read_text()
    new = (GENERATED / "Funs.lean").read_text()
    published = (PUBLISHED / "Funs.lean").read_text()
    assert not re.search(r"\b(sorry|admit|axiom)\b", old + new)
    assert (OLD / "Types.lean").read_bytes() == (GENERATED / "Types.lean").read_bytes()
    names = re.findall(r"^def (sha3\.sha3_impl\.\S+)", old, re.M)
    assert len(names) == 15
    for name in names:
        target = name.replace("keccak_permute_loop", "keccak_permute_textbook_loop") \
                     if name.endswith("keccak_permute_loop") else \
                 name.replace("keccak_permute", "keccak_permute_textbook") \
                     if name.endswith("keccak_permute") else name
        assert body(old, name).replace(name, target) == body(new, target), name
    for name in re.findall(r"^def (sha3\.\S+)", new, re.M):
        assert body(new, name) == body(published, name), name
    axioms = (HERE / "axioms.log").read_text()
    assert "depends on axioms: [propext, Classical.choice, Quot.sound]" in axioms
    print(f"PASS: {len(names)} pre-commit definitions match textbook model; "
          "all generated SHA3 definitions match published proof model; checked theorem axioms")


if __name__ == "__main__":
    main()
