#!/usr/bin/env python3
"""The V2 case list with the unroll factor used for each case.
u(s,z) = max(z, r) with r = s-z if s-z < 4 else 0: the leading-zero loop needs z
back edges; when fewer than 4 digits follow the zeros the old body takes the
general path whose per-character loop needs r back edges.  Sufficiency is not
assumed: every run must pass the [sink-check] query."""
def unroll(s, z):
    r = s - z if s - z < 4 else 0
    return max(z, r)
def cases():
    return [(f'v2_s{s}_z{z}_L{L}', unroll(s, z)) for s in (5, 4) for z in range(s + 1) for L in range(8, 17)]
if __name__ == '__main__':
    print(' '.join(f'{c}:{u}' for c, u in cases()))
