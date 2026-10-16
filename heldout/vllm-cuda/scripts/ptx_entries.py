"""List PTX entries (mangled + demangled) with their parameter types."""
import re, subprocess, sys
src = open(sys.argv[1]).read()
pat = sys.argv[2] if len(sys.argv) > 2 else ''
for m in re.finditer(r'\.entry\s+(\S+)\(\s*(.*?)\)', src, re.S):
    name, params = m.group(1), m.group(2)
    dem = subprocess.run(['c++filt', name], capture_output=True, text=True).stdout.strip()
    if pat and not re.search(pat, dem):
        continue
    types = [re.search(r'\.param\s+(?:\.align \d+\s+)?(\.\w+)', p).group(1) + ('[]' if '[' in p else '') for p in params.split(',') if p.strip()]
    print(name); print('   ', dem[:230]); print('   ', ' '.join(types))
