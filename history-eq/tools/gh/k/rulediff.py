#!/usr/bin/env python3
"""Extract K rules from old/new trees, diff them, and emit soundness-claim specs for simplification rules.

usage: rulediff.py OLD_EVMDIR NEW_EVMDIR OUTDIR [--files f1,f2,...]
  OLD_EVMDIR/NEW_EVMDIR: directories that contain the K sources (.k/.md) of the commit.
Writes OUTDIR/rules.json  : {"added":[rule...], "removed":[rule...]}
       OUTDIR/claims/<n>-{eq,rw}-spec.k : claim files (module CLAIM<n>EQ-SPEC / CLAIM<n>RW-SPEC imports VERIFICATION)
         added rules -> claims to be proven in the OLD definition (side=old)
         removed rules -> claims to be proven in the NEW definition (side=new)
         claims.json lists each claim with side and file.
"""
import re, os, sys, json, glob

ATTR_RE = re.compile(r'^[a-zA-Z][\w-]*(\(.*\))?$')

def split_top(s, sep_re):
    """positions of regex matches at bracket depth 0"""
    depth = 0; out = []; i = 0
    while i < len(s):
        c = s[i]
        if c in '([{': depth += 1
        elif c in ')]}': depth -= 1
        elif depth == 0:
            m = sep_re.match(s, i)
            if m: out.append((m.start(), m.end())); i = m.end(); continue
        i += 1
    return out

def strip_comments(t):
    return re.sub(r'//[^\n]*', '', t)

def extract_rules(path):
    txt = open(path, errors='replace').read()
    lines = txt.split('\n')
    rules = []; cur = None
    start_re = re.compile(r'^\s*rule\b')
    stop_re = re.compile(r'^\s*(rule|syntax|configuration|endmodule|module|imports|claim|context|```|//|---|-   )')
    for ln, line in enumerate(lines):
        if cur is not None:
            if line.strip() == '' or (stop_re.match(line) and not start_re.match(line) ) or start_re.match(line):
                rules.append(cur); cur = None
            else:
                cur['text'] += '\n' + line
        if cur is None and start_re.match(line):
            cur = {'text': line, 'line': ln + 1, 'file': path}
    if cur is not None: rules.append(cur)
    out = []
    for r in rules:
        t = strip_comments(r['text'])
        t = re.sub(r'\s+', ' ', t).strip()
        m = re.match(r'rule\s*(\[([\w\-.]+)\]\s*:)?\s*(.*)$', t)
        if not m: continue
        label = m.group(2); body = m.group(3)
        attrs = []
        am = re.search(r'\[([^\[\]]*(\([^()]*\))?[^\[\]]*)\]\s*$', body)
        if am:
            toks = [x.strip() for x in re.split(r',(?![^()]*\))', am.group(1))]
            if toks and all(ATTR_RE.match(x) for x in toks):
                attrs = toks; body = body[:am.start()].strip()
        req = None
        rm = split_top(body, re.compile(r'\brequires\b'))
        if rm:
            req = body[rm[0][1]:].strip(); body = body[:rm[0][0]].strip()
        ens = None
        em = split_top(req or '', re.compile(r'\bensures\b')) if req else []
        if em:
            ens = req[em[0][1]:].strip(); req = req[:em[0][0]].strip()
        am2 = split_top(body, re.compile(r'=>'))
        lhs, rhs = (body[:am2[0][0]].strip(), body[am2[0][1]:].strip()) if am2 else (body, None)
        out.append({'file': os.path.basename(path), 'line': r['line'], 'label': label, 'lhs': lhs, 'rhs': rhs, 'body': body,
                    'requires': req, 'ensures': ens, 'attrs': attrs, 'norm': t})
    return out

def sig(r, with_attrs=True, with_label=False):
    return (r['lhs'], r['rhs'], r['requires'], tuple(sorted(r['attrs'])) if with_attrs else (), r['label'] if with_label else None)

def load_dir(d, files=None):
    res = {}
    for p in sorted(glob.glob(d + '/**/*.k', recursive=True) + glob.glob(d + '/**/*.md', recursive=True)):
        rel = os.path.relpath(p, d)
        if files and not any(rel.endswith(f) for f in files): continue
        res[rel] = extract_rules(p)
    return res

BOOL_TOK = re.compile(r'(<=Int|<Int|>=Int|>Int|==Int|=/=Int|==K|=/=K|==Bool|andBool|orBool|notBool|impliesBool|xorBool)')
def guess_sort(lhs):
    s = lhs.strip()
    for _ in range(3):
        if s.startswith('(') and s.endswith(')') and not split_top(s[1:-1], re.compile(r'\)')):
            s = s[1:-1].strip()
    if s.startswith('notBool') or split_top(s, BOOL_TOK) : return 'Bool'
    if s in ('true', 'false') or re.match(r'^#?(isPrecompiledAccount|word2Bool|#rangeUInt|#rangeSInt|#rangeBool|#rangeAddress|#range)\b', s) and s.startswith(('#range', 'word2Bool','#isPrecompiled')) and not s.startswith('#range('):
        return 'Bool'
    if re.match(r'^(#rangeUInt|#rangeSInt|#rangeBool|#rangeAddress|#rangeBytes|#rangeNonce|#rangeSmall|#rangeBlockNum|#isPrecompiledAccount|word2Bool)\b', s): return 'Bool'
    if split_top(s, re.compile(r'\+Bytes')) or re.match(r'^(#buf|#range|#padRightToWidth|padRightBytes|padLeftBytes|\.Bytes|#bufStrict|Int2Bytes|#asByteStack|replaceAtBytes|#write|#newAddr)\b', s) and s.startswith(('#buf','#range(','#padRight','padRightBytes','padLeftBytes','.Bytes','#bufStrict','Int2Bytes','#write','replaceAtBytes')) or re.search(r'\[\s*[^\[\]]*:=[^\[\]]*\]\s*$', s):
        return 'Bytes'
    return 'Int'

def claim_texts(r, sort):
    lhs, rhs, req = r['lhs'], r['rhs'], r['requires'] or 'true'
    ctor = {'Int': 'runLemmaInt', 'Bool': 'runLemmaBool', 'Bytes': 'runLemmaBytes'}[sort]
    done = {'Int': 'doneLemmaInt', 'Bool': 'doneLemmaBool', 'Bytes': 'doneLemmaBytes'}[sort]
    eqop = {'Int': '==Int', 'Bool': '==Bool', 'Bytes': '==K'}[sort]
    eq = f"<k> runLemmaBool( ( {lhs} ) {eqop} ( {rhs} ) ) => doneLemmaBool( true ) ... </k>\n      requires {req}"
    rw = f"<k> {ctor}( {lhs} ) => {done}( {rhs} ) ... </k>\n      requires {req}"
    return eq, rw

def main():
    a = sys.argv[1:]
    old, new, out = a[0], a[1], a[2]
    files = None
    if '--files' in a: files = a[a.index('--files') + 1].split(',')
    out = os.path.abspath(out); O = load_dir(old, files); N = load_dir(new, files)
    added, removed = [], []
    for rel in sorted(set(O) | set(N)):
        oc = {}; nc = {}
        for r in O.get(rel, []): oc.setdefault(sig(r, False), []).append(r)
        for r in N.get(rel, []): nc.setdefault(sig(r, False), []).append(r)
        # rules identical up to attributes/label are "kept" (attribute-only edits recorded separately)
        for k, rs in nc.items():
            if k not in oc:
                for r in rs: r['rel'] = rel; added.append(r)
            else:
                oat = sorted(tuple(sorted(x['attrs'])) for x in oc[k]); nat = sorted(tuple(sorted(x['attrs'])) for x in rs)
                if oat != nat:
                    for r in rs: r['rel'] = rel; r['attr_only'] = True; r['old_attrs'] = [x['attrs'] for x in oc[k]]; added.append(r)
        for k, rs in oc.items():
            if k not in nc:
                for r in rs: r['rel'] = rel; removed.append(r)
    os.makedirs(out + '/claims', exist_ok=True)
    claims = []
    n = 0
    for side, rules in (('old', added), ('new', removed)):
        for r in rules:
            if r.get('attr_only'): continue
            n += 1
            r['id'] = f"{side}{n:03d}"
            simp = any(x.startswith('simplification') for x in r['attrs'])
            r['simplification'] = simp
            iscell = bool(re.search(r'<[a-zA-Z][\w-]*>', r['body']))
            r['cell'] = iscell
            if 'owise' in r['attrs'] or '#Equals' in r['norm'] or '#Top' in r['norm'] or '#And' in r['norm'] or (not iscell and (r['rhs'] is None or r['ensures'])):
                r['claim'] = None; continue
            if iscell:
                kind='cell'; mod = f"CLAIM-{r['id'].upper()}-CELL-SPEC"; fn = f"{out}/claims/{r['id']}-cell-spec.k"
                txt = r['body'] + (f"\n      requires {r['requires']}" if r['requires'] else '') + (f"\n      ensures {r['ensures']}" if r['ensures'] else '')
                open(fn,'w').write(f'requires "verification.k"\n\nmodule {mod}\n    imports VERIFICATION\n\n    claim {txt}\nendmodule\n')
                claims.append({'id': r['id'], 'kind': 'cell', 'side': side, 'file': fn, 'module': mod}); r['claim'] = True
                continue
            sort = guess_sort(r['lhs'])
            eq, rw = claim_texts(r, sort)
            r['sort'] = sort
            for kind, body in (('eq', eq), ('rw', rw)):
                mod = f"CLAIM-{r['id'].upper()}-{kind.upper()}-SPEC"
                fn = f"{out}/claims/{r['id']}-{kind}-spec.k"
                open(fn, 'w').write(f'requires "verification.k"\n\nmodule {mod}\n    imports VERIFICATION\n\n    claim {body}\nendmodule\n')
                claims.append({'id': r['id'], 'kind': kind, 'side': side, 'file': fn, 'module': mod})
            r['claim'] = True
    json.dump({'added': added, 'removed': removed}, open(out + '/rules.json', 'w'), indent=1)
    json.dump(claims, open(out + '/claims.json', 'w'), indent=1)
    print(f"added={len(added)} removed={len(removed)} claims={len(claims)}")
    for r in added + removed:
        if r.get('attr_only'): tag = 'ATTR'
        elif r.get('claim'): tag = 'CLAIM'
        elif r.get('cell'): tag='CELLNOCLAIM'
        elif not r.get('simplification', False): tag = 'NONSIMP'
        else: tag = 'NOCLAIM'
        print(tag, r.get('id', ''), r['rel'], r['lhs'][:70], '=>', (r['rhs'] or '')[:40])

if __name__ == '__main__':
    main()
