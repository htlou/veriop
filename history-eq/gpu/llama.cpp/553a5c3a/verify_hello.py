#!/usr/bin/env python3
"""Check the exact historical RPC HELLO protocol-field change."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "cuda/repos/llama.cpp"
clang = root / "alive2/toolchain/usr/bin/clang++-20"
alive = root / "alive2/build/alive2/alive-tv"
commit = "553a5c3a9fdf771be2101bc3529937963f817457"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


paths = ["ggml/include/ggml-rpc.h", "ggml/src/ggml-rpc/ggml-rpc.cpp"]
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == paths
sources = {}
blobs = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    blobs[side] = {}
    for path in paths:
        body = git("show", f"{rev}:{path}")
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        actual = subprocess.run(["git", "hash-object", "--stdin"], input=body,
                                check=True, capture_output=True).stdout.decode().strip()
        assert actual == oid
        sources[side, path] = body.decode()
        blobs[side][path] = oid

old_header = sources["old", paths[0]]
new_header = sources["new", paths[0]]
before = "#define RPC_PROTO_MAJOR_VERSION    1"
after = "#define RPC_PROTO_MAJOR_VERSION    2"
assert old_header.count(before) == 1
assert old_header.replace(before, after, 1) == new_header
assert "#define RPC_PROTO_MINOR_VERSION    0" in old_header

old_cpp = sources["old", paths[1]]
new_cpp = sources["new", paths[1]]
start = "void rpc_server::hello(rpc_msg_hello_rsp & response) {"
end = "bool rpc_server::get_alloc_size("
assert old_cpp.count(start) == new_cpp.count(start) == 1
old_hello = old_cpp[old_cpp.index(start):old_cpp.index(end, old_cpp.index(start))]
new_hello = new_cpp[new_cpp.index(start):new_cpp.index(end, new_cpp.index(start))]
assert old_hello == new_hello
assert old_hello.count("response.major = RPC_PROTO_MAJOR_VERSION;") == 1
assert old_hello.count("response.minor = RPC_PROTO_MINOR_VERSION;") == 1
for source in (old_cpp, new_cpp):
    first_hello = source[source.index("static void rpc_serve_client("):source.index("    while (true) {", source.index("static void rpc_serve_client("))]
    assert "server.hello(response);" in first_hello
    assert "send_msg(sockfd, &response, sizeof(response))" in first_hello
    assert "response.major != RPC_PROTO_MAJOR_VERSION" in source

checks = {}
for side, header in (("old", old_header), ("new", new_header)):
    macros = [re.search(r"(?m)^#define RPC_PROTO_" + label + r"_VERSION\s+\d+$", header).group()
              for label in ("MAJOR", "MINOR")]
    code = ("\n".join(macros) + "\nstruct hello_response { int major; int minor; };\n"
            "extern \"C\" int target_major() {\n"
            "    hello_response response;\n"
            "    response.major = RPC_PROTO_MAJOR_VERSION;\n"
            "    return response.major;\n}\n"
            "extern \"C\" int target_minor() {\n"
            "    hello_response response;\n"
            "    response.minor = RPC_PROTO_MINOR_VERSION;\n"
            "    return response.minor;\n}\n")
    src = here / f"{side}.cpp"
    src.write_text(code)
    subprocess.run([str(clang), "-std=c++17", "-O1", "-S", "-emit-llvm", "-fno-ident",
                    str(src), "-o", str(here / f"{side}.ll")], check=True,
                   capture_output=True, text=True)
for function, outcome in (("target_major", "incorrect"), ("target_minor", "correct")):
    for direction, a, b in (("old_to_new", "old", "new"), ("new_to_old", "new", "old")):
        result = subprocess.run([str(alive), str(here / f"{a}.ll"), str(here / f"{b}.ll"),
                                 f"--func={function}", "--smt-to", "10000"],
                                capture_output=True, text=True)
        log = result.stdout + result.stderr
        (here / f"{function}-{direction}.log").write_text(log)
        assert f"1 {outcome} transformations" in log and "0 Alive2 errors" in log, log
        checks[f"{function}/{direction}"] = outcome

(here / "result.json").write_text(json.dumps({
    "commit": commit, "changed_paths": paths, "source_blob_oids": blobs,
    "model_sha256": {side: hashlib.sha256((here / f"{side}.cpp").read_bytes()).hexdigest()
                     for side in ("old", "new")},
    "checks": checks,
    "witness": {"old_hello_major": 1, "new_hello_major": 2,
                "old_hello_minor": 0, "new_hello_minor": 0},
    "verdict": "NOT_EQUIV",
    "scope": "successful RPC HELLO response major-version field; client-server compatibility and tensor values not compared",
}, indent=2) + "\n")
print("Alive2 refutes HELLO major-field equality; unchanged minor-field control passes")
