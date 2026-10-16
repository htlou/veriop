import re, sys, subprocess
txt = open(sys.argv[1]).read()
start = txt.index(sys.argv[2])
blk = txt[start:]
blk = blk[blk.index("[MachCode]"):blk.index("[/MachCode]")]
hexes = []
base = None
for line in blk.splitlines():
    m = re.match(r"\s*0x([0-9a-f]+): ((?:[0-9a-f]{2,4}\s?\|?\s?)+)$", line)
    if m and not line.strip().endswith(":"):
        addr = int(m.group(1), 16)
        if base is None: base = addr
        h = re.sub(r"[^0-9a-f]", "", m.group(2))
        hexes.append((addr, h))
data = bytearray()
for addr, h in hexes:
    off = addr - base
    if off > len(data): data += b"\x90" * (off - len(data))
    b = bytes.fromhex(h)
    data[off:off+len(b)] = b
open("code.bin", "wb").write(data)
print(subprocess.run(["objdump", "-D", "-b", "binary", "-mi386:x86-64", f"--adjust-vma={base}", "code.bin"], capture_output=True, text=True).stdout)
