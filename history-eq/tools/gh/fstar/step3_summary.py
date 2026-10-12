import json,glob,collections,sys,os
H="/srv/home/hantaolou/code/veriop/history-eq"
def summarize(dest):
    c=json.load(open(dest+"/classify.json"))
    cls=collections.Counter();nonfst=collections.Counter();modes=collections.Counter()
    for f in c["files"]:
        if "cmp" in f:
            for d in f["cmp"]["diffs"]: cls[d["class"]]+=1
            modes[tuple(f["cmp"]["modes"])]+=1
        else: nonfst[f["ext"]]+=1
    return cls,nonfst,modes
if __name__=="__main__":
    for r in sys.argv[1:]:
        tot=collections.Counter()
        for dest in sorted(glob.glob(f"{H}/gh/work/{r}/*")):
            cls,nf,md=summarize(dest)
            code=sum(v for k,v in cls.items() if k.startswith("code") or k in("open-change","val-added","val-removed","order"))
            fb=any('token-fallback' in m for m in md)
            tag="CODE" if code else ("ATTR" if cls.get("attr") else ("PROOF" if cls else "NONFST"))
            tot[tag]+=1
            print(r,os.path.basename(dest),tag,dict(cls),dict(nf),"FALLBACK" if fb else "")
        print(r,dict(tot))
