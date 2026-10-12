"""Lightweight F* source normalizer/classifier helpers (comment stripping, decl splitting, ghost-statement stripping)."""
import re,subprocess,os,tempfile
FSTAR="/srv/home/hantaolou/code/veriop/aeneas/env/opam/5.3.0/bin/fstar.exe"

def strip_comments(s):
    out=[];i=0;n=len(s);depth=0
    while i<n:
        c=s[i]
        if depth==0:
            if c=='"':
                j=i+1
                while j<n and s[j]!='"':
                    j+=2 if s[j]=='\\' else 1
                out.append(s[i:j+1]);i=j+1;continue
            if s.startswith('(*)',i): out.append('(*)');i+=3;continue
            if s.startswith('(*',i): depth=1;i+=2;continue
            if s.startswith('//',i):
                j=s.find('\n',i)
                if j<0:j=n
                i=j;continue
            if c=="'" and i+2<n and s[i+2]=="'" : out.append(s[i:i+3]);i+=3;continue
            if c=="'" and s.startswith("'\\",i):
                j=s.find("'",i+2); out.append(s[i:j+1]);i=j+1;continue
            out.append(c);i+=1
        else:
            if s.startswith('(*',i): depth+=1;i+=2
            elif s.startswith('*)',i): depth-=1;i+=2
            else:
                if c=='\n': out.append('\n')
                i+=1
    return ''.join(out)

def fstar_print(path_text,fname,timeout=120,exe=FSTAR,extra=()):
    """parse+pretty-print with F*; returns (ok,stdout,stderr)"""
    d=tempfile.mkdtemp(dir=os.environ.get("TMPDIR","/tmp/claude-2071/scratch"))
    f=os.path.join(d,fname)
    open(f,"w").write(path_text)
    try:
        p=subprocess.run([exe,"--print",*extra,f],capture_output=True,text=True,timeout=timeout)
        return p.returncode==0,p.stdout,p.stderr
    except subprocess.TimeoutExpired:
        return False,"","timeout"

TOK=re.compile(r'"(?:[^"\\]|\\.)*"|\'[^\'\s]\'|[A-Za-z_][\w\']*(?:\.[A-Za-z_][\w\']*)*|\d[\w.]*|\[@@?|<\||\|>|[()\[\]{};,]|[^\sA-Za-z0-9_()\[\]{};,]+')
def toks(s): return TOK.findall(s)

DECL_START=re.compile(r'^(let|val|type|and|open|module|friend|include|assume|private|abstract|inline_for_extraction|noextract|unfold|irreducible|inline|opaque_to_smt|total|noeq|unopteq|class|instance|effect|new_effect|sub_effect|layered_effect|polymonadic_bind|polymonadic_subcomp|exception|splice|%splice|\[@|#|fn|ghost|unobservable|atomic|assume_|new|extract_|main|\(\*)\b|^(\[@|#|%splice|\[@@)')
def split_decls(text):
    decls=[];cur=[]
    for line in text.split('\n'):
        if line.strip()=='' : 
            if cur: cur.append(line)
            continue
        if line[0] not in ' \t' and DECL_START.match(line):
            # attribute/qualifier-only lines glue to next decl
            if cur and not _attr_only(cur):
                decls.append('\n'.join(cur).strip());cur=[]
            elif cur and _attr_only(cur) and False: pass
        cur.append(line)
    if cur: decls.append('\n'.join(cur).strip())
    return [d for d in decls if d]
QUAL=re.compile(r'^\s*(\[@@?[^\]]*\]|inline_for_extraction|noextract|unfold|abstract|private|irreducible|inline|opaque_to_smt|total|noeq|unopteq|assume|new)\s*$')
def _attr_only(lines):
    t=[l for l in lines if l.strip()]
    return bool(t) and all(QUAL.match(l) for l in t)

ATTR_WORDS={'inline_for_extraction','noextract','unfold','abstract','private','irreducible','inline','opaque_to_smt','total','noeq','unopteq','assume','new'}
def head_info(decl):
    """-> (attrs(list of str), core text, kind, name)"""
    t=decl;attrs=[]
    while True:
        t=t.lstrip()
        m=re.match(r'\[@@?',t)
        if m:
            depth=0;i=0
            while i<len(t):
                if t[i]=='[':depth+=1
                elif t[i]==']':
                    depth-=1
                    if depth==0:break
                i+=1
            attrs.append(re.sub(r'\s+',' ',t[:i+1]));t=t[i+1:];continue
        m=re.match(r'([A-Za-z_]+)\b',t)
        if m and m.group(1) in ATTR_WORDS and not re.match(r'(assume|new)\s+(val|type|effect|new_effect)\b',t) :
            attrs.append(m.group(1));t=t[m.end():];continue
        if m and m.group(1) in ('assume','new'):
            attrs.append(m.group(1));t=t[m.end():];continue
        break
    t=t.strip()
    m=re.match(r'(let\s+rec|let|val|type|and|open|module|friend|include|class|instance|effect|new_effect|sub_effect|layered_effect|exception|splice|%splice|fn|ghost\s+fn|#[\w-]+)\s*(.*)',t,re.S)
    kind=m.group(1) if m else 'other'
    rest=m.group(2) if m else t
    nm=re.match(r'(\(\s*[^\s()]+\s*\)|[A-Za-z_][\w\'.]*|_)',rest)
    name=re.sub(r'\s+','',nm.group(1)) if nm else ''
    if kind=='let rec':kind='let'
    if kind=='and': 
        kind='and'
    if kind.startswith('#'):  # pragma: name=full text
        name=''
    return attrs,t,kind,name

GHOST_START=re.compile(r'^(assert|assert_norm|assume|reveal_opaque|norm_spec|calc|show|introduce|forall_intro|Classical\.\w+|FStar\.Classical\.\w+|\w*[Ll]emma\w*|\w+\.\w*[Ll]emma\w*|\w+_lemma\w*|\w+\.\w*_lemma\w*|\w+\.eq_intro|eq_intro|\w+_eq_intro|\w+\.\w*extensionality\w*|reveal\w*|\w*_reveal\w*|\w+\.reveal\w*)$')
def strip_ghost_stmts(tokens):
    """remove ghost statements (assert/lemma calls) at statement positions; replace by nothing and fix `;`"""
    out=[];i=0;n=len(tokens)
    prev_ok={';','=','(','begin','then','else','in','->','{','do','fun'}
    while i<n:
        t=tokens[i]
        p=out[-1] if out else '='
        if GHOST_START.match(t) and (p in prev_ok or p=='\n') and not (n>i+1 and tokens[i+1] in (':','=') ) and not (p=='=' and False):
            # consume until ';' at depth 0 or unmatched closer
            j=i;depth=0
            while j<n:
                x=tokens[j]
                if x in '([{' and len(x)==1 : depth+=1
                elif x in ')]}' and len(x)==1:
                    if depth==0:break
                    depth-=1
                elif x=='[@' or x=='[@@': depth+=1
                elif x==';' and depth==0: break
                elif x in('end','else','then','in') and depth==0 and j>i+0: 
                    if x in('end','else','in','then') : break
                j+=1
            # statement consumed i..j (j at ';' or closer)
            if j<n and tokens[j]==';': j+=1; out_extra=None
            else:
                # last statement: make it unit
                out.append('()') 
            i=j;continue
        out.append(t);i+=1
    # clean
    s=out
    changed=True
    while changed:
        changed=False
        for k in range(len(s)-2):
            if s[k]=='(' and s[k+1]==')' and k+2<len(s) and s[k+2]==';' : del s[k:k+3];changed=True;break
        if changed: continue
        for k in range(len(s)-2):
            if s[k]==';' and s[k+1]=='(' and s[k+2]==')': del s[k:k+3];changed=True;break
    return s

def is_lemma_decl(decl_text,name):
    return bool(re.search(r'\bLemma\b',decl_text)) or bool(re.match(r'(\w+\.)*(lemma_|\w*_lemma)',name)) or name.startswith('lemma')
