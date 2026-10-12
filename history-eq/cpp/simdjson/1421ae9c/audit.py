from pathlib import Path
import re
import subprocess

repo = Path("benchmarks/repos/simdjson")
here = Path(__file__).parent
commit = "1421ae9cecb6e674c268e233535f33fad1b4228f"
wrapper = (here / "umul128.cpp").read_text()


def source(rev):
    return subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:src/to_chars.cpp"], text=True)


def body(text, name):
    match = re.search(r"\b" + name + r"\([^;]*?\)\s*noexcept\s*\{(.*?)^\}", text, re.S | re.M)
    assert match, name
    return match.group(1)


def normalize(text):
    text = re.sub(r"//[^\n]*", "", text)
    return re.sub(r"\s+", "", text)


before, after = source(commit + "^"), source(commit)
for name in ("umul128", "umul128_upper64"):
    old = body(before, name)
    revised = body(after, name)
    intrinsic = revised.split("#if defined(__SIZEOF_INT128__)", 1)[1].split("#else", 1)[0]
    fallback = revised.split("#else", 1)[1].split("#endif", 1)[0]
    assert normalize(old) == normalize(fallback)
    assert normalize(old) == normalize(body(wrapper, "old_" + name))
    assert normalize(intrinsic) == normalize(body(wrapper, "new_" + name))
    print(name + ": both historical branches match the checked wrappers")
