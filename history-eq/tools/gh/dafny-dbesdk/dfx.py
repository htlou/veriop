"""Tiny Dafny source-chunk extractor (brace matching) used by the DBESDK relational harness builders."""
import re

def _skip(text, i):
    """return index after a string/char literal or comment starting at i, else i"""
    if text.startswith("//", i):
        j = text.find("\n", i); return len(text) if j < 0 else j
    if text.startswith("/*", i):
        j = text.find("*/", i); return len(text) if j < 0 else j + 2
    if text[i] == '"':
        j = i + 1
        while text[j] != '"':
            j += 2 if text[j] == "\\" else 1
        return j + 1
    return i

def extract(text, start_pat, nth=0):
    """Return the exact text (from the beginning of the line holding the match through the matching
    closing brace of the declaration body) of the declaration whose first line matches start_pat."""
    ms = list(re.finditer(start_pat, text, re.M))
    if len(ms) <= nth: raise KeyError(start_pat)
    m = ms[nth]
    ls = text.rfind("\n", 0, m.start()) + 1
    i = m.start(); depth = 0; body = False
    while i < len(text):
        j = _skip(text, i)
        if j != i: i = j; continue
        c = text[i]
        if c == "{":
            if text.startswith("{:", i) and not body and depth == 0:
                # attribute: skip to matching }
                d = 1; i += 2
                while d:
                    if text[i] == "{": d += 1
                    elif text[i] == "}": d -= 1
                    i += 1
                continue
            depth += 1; body = True
        elif c == "}":
            depth -= 1
            if body and depth == 0:
                return text[ls:i + 1]
        i += 1
    raise ValueError("unterminated " + start_pat)

def header(chunk):
    """declaration text up to (not including) the body-opening brace"""
    i = chunk.rfind("\n{"); 
    return chunk

def inject_before_body(chunk, spec_lines):
    """insert spec lines before the first body-opening '{' line (specification-only edit)."""
    # body opens at the first '{' not preceded by ':' and at depth 0 that is on its own line or at line end
    lines = chunk.split("\n")
    for k, l in enumerate(lines):
        s = l.strip()
        if s == "{" or (s.endswith("{") and not s.startswith("//") and "{:" not in s.split("{")[-1] and k > 0 and s != "{:"):
            if s == "{" or re.search(r"\)\s*\{$", s) or re.search(r"\)\s*:\s*[^{]*\{$", s):
                return "\n".join(lines[:k] + spec_lines + lines[k:])
    raise ValueError("no body brace line found")
