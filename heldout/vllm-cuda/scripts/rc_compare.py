import sys, torch
a = torch.load(sys.argv[1]); b = torch.load(sys.argv[2]); assert a.keys() == b.keys()
iv = lambda t: t.view(torch.int16) if t.element_size() == 2 else t.view(torch.int32)
bad = [k for k in a if not (torch.equal(iv(a[k][0]), iv(b[k][0])) and torch.equal(iv(a[k][1]), iv(b[k][1])))]
print(f'{len(a)} cases, {len(bad)} not bitwise-equal'); [print(' ', k) for k in bad[:10]]; sys.exit(1 if bad else 0)
