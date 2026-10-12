import os, re, subprocess, sys, time, shutil, tempfile
sys.path.insert(0, os.path.dirname(__file__))
from jlib import *

def run_key(kdir, timeout_ms=120000, hard=600, maxsteps=None):
    """Run KeY 3.0 auto mode on kdir/Rel.java with cwd=kdir. Returns dict."""
    home = tempfile.mkdtemp(prefix="keyhome_", dir="/tmp/claude-2071")
    t0 = time.time()
    log = f"{kdir}/key.log"
    try:
        p = subprocess.run(f"printf '0\\n' | {JAVA} -Xmx3g -Duser.home={home} -jar {KEY_JAR} --auto --timeout={timeout_ms} -v 4 Rel.java",
                           shell=True, cwd=kdir, capture_output=True, text=True, timeout=hard, env=ENV)
        out = p.stdout + p.stderr
        rc = p.returncode
    except subprocess.TimeoutExpired as e:
        out = (e.stdout or b"").decode() if isinstance(e.stdout, bytes) else (e.stdout or "")
        rc = -9
    finally:
        shutil.rmtree(home, ignore_errors=True)
    open(log, "w").write(out)
    res = {"seconds": round(time.time() - t0, 1), "rc": rc}
    m = re.search(r"Number of goals remaining open: (\d+)", out)
    res["open_goals"] = int(m.group(1)) if m else None
    res["proved"] = bool(re.search(r"\bProved\b", out)) and res["open_goals"] == 0
    m = re.search(r"Proof steps: (\d+)", out); res["steps"] = int(m.group(1)) if m else None
    errs = [l for l in out.splitlines() if re.search(r"ERROR|Exception|rror:|cannot|unsupported|Unsolved|not supported|Parse|parse", l, re.I) and "DEBUG" not in l and "TRACE" not in l and "Picked" not in l]
    res["errors"] = [re.sub(r"\x1b\[[0-9;]*m", "", e)[:300] for e in errs[:6]]
    if res["open_goals"] is None: res["state"] = "rejected-or-error"
    elif res["proved"]: res["state"] = "proved"
    else: res["state"] = "open"
    # cleanup bulky proof files
    for fn in os.listdir(kdir):
        if fn.endswith(".proof") and os.path.getsize(f"{kdir}/{fn}") > 2_000_000: os.remove(f"{kdir}/{fn}")
    return res

def run_diff(ddir, iters=300000, hard=300):
    r = subprocess.run([JAVAC, "-nowarn", "-d", "out", "Closure.java", "Diff.java"], cwd=ddir, capture_output=True, text=True, env=ENV)
    os.makedirs(f"{ddir}/out", exist_ok=True)
    r = subprocess.run([JAVAC, "-nowarn", "-d", "out", "Closure.java", "Diff.java"], cwd=ddir, capture_output=True, text=True, env=ENV)
    if r.returncode:
        return {"state": "compile-error", "errors": [l for l in r.stderr.splitlines() if "error" in l][:5]}
    try:
        p = subprocess.run([JAVA, "-cp", "out", "Diff", str(iters)], cwd=ddir, capture_output=True, text=True, timeout=hard, env=ENV)
    except subprocess.TimeoutExpired:
        return {"state": "timeout"}
    lines = [l for l in p.stdout.splitlines() if l.startswith("DIFF") or l.startswith("DONE")]
    open(f"{ddir}/diff.log", "w").write(p.stdout + p.stderr[-2000:])
    diffs = [l for l in lines if l.startswith("DIFF")]
    done = [l for l in lines if l.startswith("DONE")]
    return {"state": "diff-found" if diffs else "no-diff", "diffs": diffs[:3], "done": done[-1] if done else None, "stderr": p.stderr[-300:] if p.returncode else ""}
