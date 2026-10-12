#!/usr/bin/env python3
"""Replace the pinned Clang 20 AArch64 multiply-add asm calls."""

import re
import sys
from pathlib import Path

# shortcut: accepts only the pinned Clang 20 assembly forms; extend for other compilers.
umaddl = re.compile(
    r'^  (%[\w.]+) = tail call i64 asm "umaddl \$\{0:x\}, \$\{1:w\}, \$\{2:w\}, \$\{3:x\}", '
    r'"=r,r,r,r"\(i64 (%[\w.]+), i64 range\(i64 0, 4294967296\) (%[\w.]+), '
    r'i64 (?:noundef )?(%[\w.]+)\) #\d+$')
umlal = re.compile(
    r'^  (%[\w.]+) = tail call <2 x i64> asm "(umlal2?)\s+\$0\.2d, '
    r'\$1\.([24])s, \$2\.\3s", "=w,w,w,0"'
    r'\(<4 x i32> (%[\w.]+), <4 x i32> (%[\w.]+), '
    r'<2 x i64> (%[\w.]+)\) #\d+$')

lines = []
count = {"umaddl": 0, "umlal": 0, "umlal2": 0}
for line in Path(sys.argv[1]).read_text().splitlines():
    if m := umaddl.fullmatch(line):
        out, lhs, rhs, acc = m.groups()
        tmp = "%model" + out[1:]
        lines += [f"  {tmp}lo = and i64 {lhs}, 4294967295",
                  f"  {tmp}hi = and i64 {rhs}, 4294967295",
                  f"  {tmp}product = mul i64 {tmp}lo, {tmp}hi",
                  f"  {out} = add i64 {tmp}product, {acc}"]
        count["umaddl"] += 1
    elif m := umlal.fullmatch(line):
        out, instr, width, lhs, rhs, acc = m.groups()
        assert (instr, width) in (("umlal", "2"), ("umlal2", "4"))
        tmp = "%model" + out[1:]
        start = 2 if instr == "umlal2" else 0
        mask = f"<i32 {start}, i32 {start + 1}>"
        lines += [f"  {tmp}lhs = shufflevector <4 x i32> {lhs}, <4 x i32> poison, <2 x i32> {mask}",
                  f"  {tmp}rhs = shufflevector <4 x i32> {rhs}, <4 x i32> poison, <2 x i32> {mask}",
                  f"  {tmp}lhz = zext <2 x i32> {tmp}lhs to <2 x i64>",
                  f"  {tmp}rhz = zext <2 x i32> {tmp}rhs to <2 x i64>",
                  f"  {tmp}product = mul <2 x i64> {tmp}lhz, {tmp}rhz",
                  f"  {out} = add <2 x i64> {tmp}product, {acc}"]
        count[instr] += 1
    else:
        lines.append(line)

expected_umaddl = int(sys.argv[3])
expected_umlal = int(sys.argv[4]) if len(sys.argv) > 4 else 1
assert expected_umaddl in (2, 4)
assert expected_umlal in (0, 1)
assert count == {"umaddl": expected_umaddl, "umlal": expected_umlal,
                 "umlal2": expected_umlal}, count
modeled = "\n".join(lines) + "\n"
assert ' asm "' not in modeled
Path(sys.argv[2]).write_text(modeled)
print(count)
