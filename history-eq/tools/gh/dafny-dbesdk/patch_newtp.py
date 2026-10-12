#!/usr/bin/env python3
"""Iteratively add (!new) to type parameters in *dependency* (submodule) files so that
2023-era MPL/libraries sources resolve under Dafny 4.10.  Usage: patch_newtp.py ENTRY.dfy [dafny flags]
Patches only files whose path contains /submodules/ ; logs every edit to patch_newtp.log (cwd)."""
import re, subprocess, sys, os
entry = sys.argv[1]
flags = sys.argv[2:] or ["--unicode-char","false","--function-syntax","3","--allow-warnings"]
pat = re.compile(r"^(?P<file>\S+?)\((?P<line>\d+),\d+\): Error: type parameter .*perhaps try declaring type parameter '(?P<tp>\w+)' on line (?P<dl>\d+) as")
log = open("patch_newtp.log","a")
for it in range(60):
    r = subprocess.run(["dafny","resolve",entry]+flags, capture_output=True, text=True)
    out = r.stdout + r.stderr
    edits = {}
    others = []
    for l in out.splitlines():
        m = pat.match(l)
        if m: edits.setdefault((m["file"], int(m["dl"])), set()).add(m["tp"])
        elif "Error" in l and "(" in l: others.append(l)
    if not edits:
        print("done after", it, "iterations; remaining errors:", len(others))
        for o in others[:20]: print(o)
        sys.exit(0 if not others else 1)
    for (f, ln), tps in edits.items():
        if "/submodules/" not in f:
            print("refusing to patch non-dependency", f, ln); sys.exit(2)
        lines = open(f).read().split("\n")
        s = lines[ln-1]
        for tp in tps:
            if re.search(r"[<,]\s*%s\(" % tp, s):
                s2 = re.sub(r"([<,]\s*%s\()" % tp, r"\1!new,", s, count=1)
            elif re.search(r"<[^>]*\b%s\b" % tp, s):
                s2 = re.sub(r"(?<![\w(])%s(?![\w(!])" % tp, tp + "(!new)", s, count=1)
            else:
                s2 = s
            if s2 == s: print("could not patch", f, ln, s); sys.exit(3)
            log.write(f"{f}:{ln}: {s.strip()}  ==>  {s2.strip()}\n"); s = s2
        lines[ln-1] = s
        open(f,"w").write("\n".join(lines))
print("iteration limit"); sys.exit(4)
