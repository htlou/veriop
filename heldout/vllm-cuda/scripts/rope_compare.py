import sys, torch
a = torch.load(sys.argv[1]); b = torch.load(sys.argv[2])
assert a.keys() == b.keys()
bad = [k for k in a if not (torch.equal(a[k][0], b[k][0]) and torch.equal(a[k][1], b[k][1]))]
print(f'{len(a)} cases, {len(bad)} not bitwise-equal'); [print(' ', k) for k in bad[:10]]
sys.exit(1 if bad else 0)
