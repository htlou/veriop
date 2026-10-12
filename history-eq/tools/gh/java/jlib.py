#!/usr/bin/env python3
"""Shared helpers for the Java (KeY) completion run."""
import json, os, re, subprocess, sys
ROOT = "/srv/home/hantaolou/code/veriop"
HE = f"{ROOT}/history-eq"
TOOLS = f"{HE}/tools/gh/java"
JAVA_HOME = f"{ROOT}/benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64"
JAVA = f"{JAVA_HOME}/bin/java"
JAVAC = f"{JAVA_HOME}/bin/javac"
KEY_JAR = f"{ROOT}/benchmarks/tools/key-3.0.0/key-3.0.0-exe.jar"
ENV = {**os.environ, "JAVA_HOME": JAVA_HOME, "PATH": f"{JAVA_HOME}/bin:" + os.environ["PATH"],
       "JAVA_TOOL_OPTIONS": f"-Djavax.net.ssl.trustStore={JAVA_HOME}/lib/security/cacerts -Djavax.net.ssl.trustStorePassword=changeit"}
NOFETCH = {**ENV, "GIT_NO_LAZY_FETCH": "1"}

def sh(cmd, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, env=kw.pop("env", ENV), **kw)

def repo_path(repo): return f"{ROOT}/benchmarks/repos/{repo}"

def changed_files(repo, commit):
    """raw diff between first parent and commit: list of (status, oldpath, newpath)."""
    r = sh(["git", "-C", repo_path(repo), "diff-tree", "-r", "--no-abbrev", "-M", "--raw", f"{commit}^1", commit], env=NOFETCH)
    if r.returncode:
        r = sh(["git", "-C", repo_path(repo), "diff-tree", "-r", "--no-abbrev", "-M", "--raw", f"{commit}^1", commit])
    out = []
    for l in r.stdout.splitlines():
        if not l.startswith(":"): continue
        meta, *names = l[1:].split("\t")
        st = meta.split()[4]
        out.append((st[0], names[0], names[-1]))
    return out

def module_of(path):
    m = re.match(r"(.*?)(?:^|/)src/main/java/", path)
    if m is None: return None
    i = path.index("src/main/java/")
    return path[:i]  # '' or 'common/'

def strip_comments(s):
    """Remove // and /* */ comments (string/char aware) and normalise whitespace to single spaces between tokens."""
    out = []; i = 0; n = len(s)
    while i < n:
        c = s[i]
        if c == '"' :
            if s.startswith('"""', i):
                j = s.find('"""', i + 3); j = n if j < 0 else j + 3
                out.append(s[i:j]); i = j; continue
            j = i + 1
            while j < n and s[j] != '"':
                j += 2 if s[j] == '\\' else 1
            out.append(s[i:j + 1]); i = j + 1
        elif c == "'":
            j = i + 1
            while j < n and s[j] != "'":
                j += 2 if s[j] == '\\' else 1
            out.append(s[i:j + 1]); i = j + 1
        elif s.startswith("//", i):
            j = s.find("\n", i); i = n if j < 0 else j
        elif s.startswith("/*", i):
            j = s.find("*/", i + 2); i = n if j < 0 else j + 2
            out.append(" ")
        else:
            out.append(c); i += 1
    t = "".join(out)
    return re.sub(r"\s+", " ", t).strip()

def norm(s):
    t = strip_comments(s)
    # drop whitespace around punctuation
    return re.sub(r"\s*([-+*/%&|^!<>=?:;,.(){}\[\]~])\s*", r"\1", t)

def run_analyze(files):
    if not files: return []
    # batch to keep command lines short
    members = []
    for i in range(0, len(files), 60):
        r = subprocess.run([JAVA, "-cp", f"{TOOLS}/classes", "Analyze", *files[i:i + 60]], capture_output=True, text=True, env=ENV)
        txt = r.stdout
        try:
            members += json.loads(txt)
        except Exception as e:
            raise RuntimeError(f"Analyze failed: {r.stderr[-500:]} {txt[:200]}")
    return members

# ---------------------------------------------------------------- source rewriting helpers
def _scan_code(s):
    """yield (is_code, chunk) splitting s into code vs string/char/comment literals."""
    i = 0; n = len(s); start = 0
    res = []
    while i < n:
        c = s[i]
        if c == '"' or c == "'":
            if i > start: res.append((True, s[start:i]))
            if s.startswith('"""', i):
                j = s.find('"""', i + 3); j = n if j < 0 else j + 3
            else:
                j = i + 1
                while j < n and s[j] != c: j += 2 if s[j] == '\\' else 1
                j += 1
            res.append((False, s[i:j])); i = j; start = i
        elif s.startswith("//", i) or s.startswith("/*", i):
            if i > start: res.append((True, s[start:i]))
            if s.startswith("//", i):
                j = s.find("\n", i); j = n if j < 0 else j
            else:
                j = s.find("*/", i + 2); j = n if j < 0 else j + 2
            res.append((False, " ")); i = j; start = i
        else:
            i += 1
    if start < n: res.append((True, s[start:]))
    return res

def map_code(s, fn):
    return "".join(fn(ch) if code else ch for code, ch in _scan_code(s))

def rename_tokens(s, mapping):
    if not mapping: return s
    pat = re.compile(r"(?<![\w$.])(" + "|".join(map(re.escape, sorted(mapping, key=len, reverse=True))) + r")(?![\w$])")
    pat2 = re.compile(r"(?<=[.])(" + "|".join(map(re.escape, sorted(mapping, key=len, reverse=True))) + r")(?![\w$(])")
    def f(ch):
        ch = pat.sub(lambda m: mapping[m.group(1)], ch)
        return ch
    return map_code(s, f)

_ANN = re.compile(r'@(?!interface)[A-Za-z_][\w.]*(?:\s*\((?:"(?:[^"\\]|\\.)*"|[^()"]|\((?:[^()]*)\))*\))?\s*')
def strip_annotations(s):
    return _ANN.sub("", s)

def drop_modifiers(s, drop=("private", "protected", "public", "strictfp")):
    return s  # applied on header only by caller
