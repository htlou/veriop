#!/usr/bin/env python3
"""Compare old/new BIGNUM_NORMALIZE_* theorem statements from the HOL Light replays.

Only the CORRECT theorem mentions explicit code-size numerals: the nonoverlap
length (old 127 = 0x7f, new 192 = 0xc0) and the exit offset pc + (old 126, new
191). The SUBROUTINE theorems refer to LENGTH bignum_normalize_(t)mc, whose
definitions are the assembled byte lists. Everything else must be identical.
"""
import gzip, json, re, sys
from pathlib import Path
here = Path(__file__).resolve().parent

def theorems(side):
    f = here / f"replay-{side}.log"
    text = f.read_text() if f.exists() else gzip.open(str(f) + ".gz", "rt").read()
    log = re.sub(r'\x1b\[[0-9;]*m', '', text)
    assert "@@REPLAY_COMPLETE" in log, side
    assert not re.search(r'^(Exception|Error)', log, re.M), side
    blocks = re.findall(r'@@THM (\S+)\n(.*?)\n@@END', log, re.S)
    lengths = re.search(r'@@LENGTHS mc=(\d+) windows_mc=(\d+)', log).groups()
    return {n: " ".join(t.split()) for n, t in blocks}, tuple(map(int, lengths))

old, oldlen = theorems("old")
new, newlen = theorems("new")
size = {"old": (oldlen[0] - 4, oldlen[0] - 5), "new": (newlen[0] - 4, newlen[0] - 5)}
def norm(t, side):
    trimmed, exit_ = size[side]          # tmc = mc without ENDBR64; exit at the RET
    t = t.replace(f"(word pc,{trimmed})", "(word pc,CODESIZE)")
    t = t.replace(f"word (pc + {exit_})", "word (pc + EXITOFFSET)")
    return t
res = {"mc_bytes": {"old": oldlen[0], "new": newlen[0]},
       "windows_mc_bytes": {"old": oldlen[1], "new": newlen[1]}, "theorems": {}}
ok = set(old) == set(new) and len(old) == 5
for n in sorted(old):
    raw_equal = old[n] == new[n]
    norm_equal = norm(old[n], "old") == norm(new[n], "new")
    ok &= norm_equal
    res["theorems"][n] = {"raw_identical": raw_equal, "identical_modulo_code_size": norm_equal}
    (here / "theorems-old.txt").open("a" if n != sorted(old)[0] else "w").write(f"{n}:\n{old[n]}\n\n")
    (here / "theorems-new.txt").open("a" if n != sorted(old)[0] else "w").write(f"{n}:\n{new[n]}\n\n")
res["ok"] = ok
print(json.dumps(res, indent=2))
sys.exit(0 if ok else 1)
