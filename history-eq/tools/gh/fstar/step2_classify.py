#!/usr/bin/env python3
"""Per-commit structural classification of F* diffs (old vs new): proof-only / attribute-only / code change."""
import json,sys,os,glob,re,hashlib,subprocess
sys.path.insert(0,os.path.dirname(__file__))
from fsparse import *
from concurrent.futures import ThreadPoolExecutor
H="/srv/home/hantaolou/code/veriop/history-eq"
PIN="/srv/home/hantaolou/code/veriop/benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe"
EXTRACT_ATTRS=('inline_for_extraction','noextract','CInline','c_inline','"c_inline"','Substitute','CAbstractStruct','CMacro','StackInline','CConst','CPrologue','CEpilogue','Comment','unfold','inline','inline_let','"substitute"','CNoInline','"c_noinline"','KrmlPrivate','Gc','noinline')
def read(dest,side,path):
    f=f"{dest}/{side}/{path}"
    return open(f,errors='replace').read() if os.path.exists(f) else None

def normalize(src,fname,exe):
    """returns (decl list, mode)"""
    st=strip_comments(src)
    ok,out,err=fstar_print(st,fname,exe=exe)
    if ok and out.strip(): return split_decls(out),"fstar-print"
    return split_decls(st),"token-fallback"

def cls_attr(a): 
    return tuple(sorted(set(x for x in a)))

def decl_key(d):
    at,core,kind,name=head_info(d)
    return at,core,kind,name

def norm_tokens(core): return toks(core)

def compare_file(old,new,fname,exe):
    D1,m1=normalize(old or "",fname,exe) if old is not None else ([],'absent')
    D2,m2=normalize(new or "",fname,exe) if new is not None else ([],'absent')
    def index(D):
        idx=[];cnt={}
        for d in D:
            at,core,kind,name=head_info(d)
            if kind.startswith('#'): k=('pragma',re.sub(r'\s+',' ',core)); 
            else: k=(kind if kind!='and' else 'let',name)
            c=cnt.get(k,0);cnt[k]=c+1
            idx.append(((k,c),at,core,kind,name,d))
        return idx
    I1=index(D1);I2=index(D2)
    m1d={x[0]:x for x in I1};m2d={x[0]:x for x in I2}
    diffs=[]
    for k in list(m1d)+[k for k in m2d if k not in m1d]:
        a=m1d.get(k);b=m2d.get(k)
        kk=k[0]
        if kk[0]=='pragma':
            diffs.append({"key":list(kk),"class":"pragma","change":"removed" if b is None else "added"}); continue
        if a and b:
            ta=toks(a[2]);tb=toks(b[2])
            if ta==tb:
                if cls_attr(a[1])!=cls_attr(b[1]):
                    diffs.append({"key":list(kk),"class":"attr","old":a[1],"new":b[1]})
                continue
            # core differs
            nm=kk[1]
            lem=is_lemma_decl(a[2],nm) and is_lemma_decl(b[2],nm)
            if lem: diffs.append({"key":list(kk),"class":"lemma-decl-modified"});continue
            sa=strip_ghost_stmts(list(ta));sb=strip_ghost_stmts(list(tb))
            if sa==sb:
                diffs.append({"key":list(kk),"class":"ghost-stmt-only"})
                if cls_attr(a[1])!=cls_attr(b[1]): diffs.append({"key":list(kk),"class":"attr","old":a[1],"new":b[1]})
            else:
                diffs.append({"key":list(kk),"class":"code","attr_changed":cls_attr(a[1])!=cls_attr(b[1]),"old":a[2][:3000],"new":b[2][:3000]})
        else:
            x=a or b
            nm=kk[1];core=x[2]
            side="removed" if b is None else "added"
            if kk[0] in('open','module','friend','include'):
                diffs.append({"key":list(kk),"class":"open-change","change":side})
            elif is_lemma_decl(core,nm): diffs.append({"key":list(kk),"class":"lemma-decl-"+side})
            elif kk[0]=='val' : diffs.append({"key":list(kk),"class":"val-"+side,"text":core[:600]})
            else: diffs.append({"key":list(kk),"class":"code-"+side,"text":core[:3000],"attrs":x[1]})
    return {"modes":[m1,m2],"diffs":diffs,"ndecl":[len(I1),len(I2)],"order_changed":[k[0] for k in I1 if k[0] in m2d]!=[k[0] for k in I2 if k[0] in m1d]}

def case(dest):
    m=json.load(open(dest+"/meta.json"))
    repo=m["repo"]
    exe=PIN if repo=="everparse" else FSTAR
    res={"commit":m["commit"],"files":[]}
    for ch in m["changed"]:
        st=ch["status"][0];paths=ch["paths"]
        op=paths[0];np_=paths[-1]
        ext=os.path.splitext(np_)[1]
        base=os.path.basename(np_)
        ent={"status":st,"old":op,"new":np_,"ext":ext or base}
        if ext in('.fst','.fsti'):
            old=read(dest,"old",op) if st!='A' else None
            new=read(dest,"new",np_) if st!='D' else None
            ent["cmp"]=compare_file(old,new,os.path.basename(np_),exe)
        res["files"].append(ent)
    json.dump(res,open(dest+"/classify.json","w"),indent=1)
    return dest
if __name__=="__main__":
    ds=[d for r in sys.argv[1:] for d in sorted(glob.glob(f"{H}/gh/work/{r}/*/meta.json"))]
    with ThreadPoolExecutor(24) as ex:
        for d in ex.map(case,[os.path.dirname(x) for x in ds]): pass
    print(len(ds))
