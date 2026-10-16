#!/usr/bin/env python3
"""Check that the benchmarked binaries contain exactly the proved machine code.

For each side (old = pinned s2n-bignum, new = optimized), compare:
  (1) the byte literal in x86/proofs/bignum_normalize.ml (what HOL Light proved;
      define_assert_from_elf also checks it against the .o at proof time),
  (2) the .text of x86/generic/bignum_normalize.o,
  (3) the bytes of symbol bignum_normalize inside bench/bin/benchmark-{base,new}.
Also prints SHA-256 hashes of the relevant files.
"""
import hashlib, json, re, subprocess, sys
from pathlib import Path
here = Path(__file__).resolve().parent
wt = here.parents[1] / "history-eq/wt"
sides = {"old": (wt / "s2n-asmhol-base", here / "bench/bin/benchmark-base"),
         "new": (wt / "s2n-asmhol-new", here / "bench/bin/benchmark-new")}

def sh(*a): return subprocess.check_output(a, text=True)

def literal_bytes(ml):
    s = ml.read_text()
    a = s.index('define_assert_from_elf "bignum_normalize_mc"')
    blk = s[s.index('[', a):s.index('];;', a)]
    blk = re.sub(r'\(\*.*?\*\)', '', blk, flags=re.S)
    return bytes(int(x, 16) for x in re.findall(r'0x[0-9a-fA-F]{2}', blk))

def text_of_obj(o):
    tmp = Path("/tmp") / ("veriop_text_" + hashlib.sha256(str(o).encode()).hexdigest()[:8])
    subprocess.check_call(["objcopy", "-O", "binary", "--only-section=.text", str(o), str(tmp)])
    b = tmp.read_bytes(); tmp.unlink(); return b

def symbol_bytes(exe, sym="bignum_normalize"):
    addr = size = None
    for line in sh("nm", "-S", str(exe)).splitlines():
        p = line.split()
        if len(p) == 4 and p[3] == sym: addr, size = int(p[0], 16), int(p[1], 16)
    data = Path(exe).read_bytes()
    for line in sh("readelf", "-lW", str(exe)).splitlines():
        p = line.split()
        if p and p[0] == "LOAD":
            off, va, fsz = int(p[1], 16), int(p[2], 16), int(p[4], 16)
            if va <= addr < va + fsz:
                return data[off + addr - va: off + addr - va + size]
    raise SystemExit("symbol not found")

out = {"ok": True}
for side, (tree, exe) in sides.items():
    lit = literal_bytes(tree / "x86/proofs/bignum_normalize.ml")
    txt = text_of_obj(tree / "x86/generic/bignum_normalize.o")
    sym = symbol_bytes(exe)
    ok = lit == txt and sym[:len(lit)] == lit and all(b in (0x90, 0xcc, 0) for b in sym[len(lit):])
    out[side] = {"code_bytes": len(lit), "literal_eq_obj_text": lit == txt,
                 "benchmark_symbol_matches": sym[:len(lit)] == lit, "ok": ok,
                 "sha256": {str(f.relative_to(here.parents[1])): hashlib.sha256(f.read_bytes()).hexdigest()
                            for f in [tree / "x86/generic/bignum_normalize.S",
                                      tree / "x86/proofs/bignum_normalize.ml",
                                      tree / "x86/generic/bignum_normalize.o",
                                      tree / "x86/generic/bignum_normalize.obj", exe]},
                 "git_head": sh("git", "-C", str(tree), "rev-parse", "HEAD").strip()}
    out["ok"] &= ok
print(json.dumps(out, indent=2))
sys.exit(0 if out["ok"] else 1)
