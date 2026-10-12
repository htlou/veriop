#!/usr/bin/env python3
"""merge.py <short> <tag> [--share-all-types|--no-share-types]
Mechanically combine the Aeneas output lean/C<s>/<Tag>Old/<Tag>Old.lean and <Tag>New/... into
lean/C<s>/<Tag>Both.lean (one Lean module) so that both models can be related in one theorem.
* Declarations generated for Rust std items (core::/alloc::/std::) and *type* declarations
  (structure/inductive) of the crate that are textually identical on both sides (modulo the side
  namespace) and only reference other shared declarations are emitted ONCE at the root namespace;
  all other declarations stay in their side namespace (L<s><Tag>Old / L<s><Tag>New).
* References `_root_.<SideNs>.X` to a shared X are rewritten to `_root_.X`.
Function bodies are never altered.  A report of shared declarations is printed and written to
lean/C<s>/<Tag>Both.shared.txt."""
import re, sys
from pathlib import Path
L = Path('/srv/home/hantaolou/code/veriop/history-eq/rust/lz4_flex/lean')
s, tag = sys.argv[1], sys.argv[2]
share_types = '--no-share-types' not in sys.argv
Tag = tag[0].upper() + tag[1:]
DECL = re.compile(r'^(?:@\[[^\]]*\]\s*)?(?:noncomputable\s+|private\s+|protected\s+)*(def|axiom|structure|inductive|abbrev|class|instance|theorem|opaque)\s+([^\s(:{]+)', re.M)
IDENT = re.compile(r"[A-Za-z_«][\w.'«»!?]*")
def load(side):
    ns = f'L{s}{Tag}{side}'
    t = (L/f'C{s}/{Tag}{side}/{Tag}{side}.lean').read_text()
    head, rest = t.split(f'namespace {ns}\n', 1)
    body, tail = rest.rsplit(f'end {ns}', 1)
    blocks = re.split(r'\n(?=/-- )', '\n' + body)
    out = []
    for b in blocks:
        if not b.strip():
            continue
        m = re.match(r'\s*/-- (?:Trait declaration: |Trait implementation: )?\[([^\]]*)\]', b)
        path = m.group(1) if m else ''
        d = DECL.search(b)
        kind, name = (d.group(1), d.group(2)) if d else ('?', '?')
        norm = re.sub(r"^    Source: .*$", '', b.replace(f'_root_.{ns}.', '_root_.'), flags=re.M)
        out.append(dict(path=path, kind=kind, name=name, text=b.strip('\n'), norm=norm.strip(), ns=ns))
    return ns, head, out
nso, head, bo = load('Old')
nsn, _, bn = load('New')
names = {d['name'] for d in bo} | {d['name'] for d in bn}
def refs(d):
    r = set()
    for tok in IDENT.findall(d['norm']):
        tok = tok.removeprefix('_root_.')
        while tok:
            if tok in names and tok != d['name']:
                r.add(tok); break
            if '.' not in tok: break
            tok = tok.rsplit('.', 1)[0]
    return r
no = {d['name']: d for d in bo}; nn = {d['name']: d for d in bn}
isstd = lambda d: re.match(r'(core|alloc|std)::', d['path']) is not None
cand = set()
for n in no.keys() & nn.keys():
    a, b = no[n], nn[n]
    if a['norm'] == b['norm'] and (isstd(a) or (share_types and a['kind'] in ('structure', 'inductive'))):
        cand.add(n)
for d in bo + bn:
    if isstd(d) and d['name'] not in cand and not (d['name'] in no and d['name'] in nn):
        cand.add(d['name'])  # std decl present on one side only
changed = True
while changed:
    changed = False
    for n in list(cand):
        d = no.get(n) or nn.get(n)
        if not refs(d) <= cand:
            cand.discard(n); changed = True
shared = cand
def rewrite(text, ns):
    def sub(m):
        x = m.group(1)
        t = x
        while t:
            if t in shared: return '_root_.' + x
            if '.' not in t: break
            t = t.rsplit('.', 1)[0]
        return m.group(0)
    return re.sub(r'_root_\.' + re.escape(ns) + r"\.([\w.'«»!?]+)", sub, text)
if 'noncomputable section' not in head:
    head = head.rstrip('\n') + '\n\nnoncomputable section\n'
out = [head.rstrip('\n'), '', '-- ===== shared declarations (Aeneas-generated, identical on both sides; see merge.py) =====']
emitted = set()
for d in bo + bn:
    if d['name'] in shared and d['name'] not in emitted:
        out.append(rewrite(d['text'], d['ns'])); emitted.add(d['name'])
for ns, bs in ((nso, bo), (nsn, bn)):
    out += ['', f'namespace {ns}', '']
    out += [rewrite(d['text'], ns) for d in bs if d['name'] not in shared]
    out += ['', f'end {ns}']
(L/f'C{s}/{Tag}Both.lean').write_text('\n\n'.join(out) + '\n')
rep = sorted(shared)
(L/f'C{s}/{Tag}Both.shared.txt').write_text('\n'.join(rep) + '\n')
print(f'shared {len(rep)} decls; old-only/new-specific decls: {len(bo)-len([d for d in bo if d["name"] in shared])}/{len(bn)-len([d for d in bn if d["name"] in shared])}')
