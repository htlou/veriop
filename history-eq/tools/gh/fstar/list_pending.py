import json,subprocess,sys,collections,os
ROOT="/srv/home/hantaolou/code/veriop"
env={**os.environ,"GIT_NO_LAZY_FETCH":"1"}
for r in sys.argv[1:]:
    d=json.load(open(f"{ROOT}/history-eq/results/{r}-optimization-sample.json"))
    for e in d["entries"]:
        if e.get("checker_status")=="checked": continue
        c=e["commit"]
        out=subprocess.run(["git","-C",f"{ROOT}/benchmarks/repos/{r}","diff-tree","-r","--no-commit-id","--name-only",f"{c}^1",c],capture_output=True,text=True,env=env).stdout.split()
        ext=collections.Counter(os.path.splitext(p)[1] or os.path.basename(p) for p in out)
        print(r,c[:10],(e.get("date") or "?")[:10],len(out),dict(ext),"|",e["subject"][:90])
