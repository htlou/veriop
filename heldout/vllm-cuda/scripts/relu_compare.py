import sys, torch
a = torch.load(sys.argv[1]); b = torch.load(sys.argv[2]); assert a.keys() == b.keys()
bad = [k for k in a if not torch.equal(a[k].view(torch.int8 if a[k].element_size()==1 else (torch.int16 if a[k].element_size()==2 else torch.int32)),
                                       b[k].view(torch.int16 if b[k].element_size()==2 else torch.int32))]
print(f'{len(a)} cases, {len(bad)} not bitwise-equal'); [print(' ', k) for k in bad[:10]]; sys.exit(1 if bad else 0)
